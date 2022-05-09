; ModuleID = '/llk/IR_all_yes/drivers/usb/serial/ssu100.c_pt.bc'
source_filename = "../drivers/usb/serial/ssu100.c"
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
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.ssu100_port_private = type { %struct.spinlock, i8, i8 }
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

@__initcall__kmod_ssu100__252_540_usb_serial_module_init6 = internal global ptr @usb_serial_module_init, section ".initcall6.init", align 4
@serial_drivers = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @ssu100_device, ptr null], [24 x i8] zeroinitializer }, align 32
@__exitcall_usb_serial_module_exit = internal global ptr @usb_serial_module_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description253 = internal constant [56 x i8] c"ssu100.description=Quatech SSU-100 USB to Serial Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file254 = internal constant [38 x i8] c"ssu100.file=drivers/usb/serial/ssu100\00", section ".modinfo", align 1
@__UNIQUE_ID_license255 = internal constant [22 x i8] c"ssu100.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ssu100\00", [25 x i8] zeroinitializer }, align 32
@id_table = internal constant { [2 x %struct.usb_device_id], [48 x i8] } { [2 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 1565, i16 -16352, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@ssu100_device = internal global { %struct.usb_serial_driver, [72 x i8] } { %struct.usb_serial_driver { ptr @.str.1, ptr @id_table, %struct.list_head zeroinitializer, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, %struct.usb_dynids zeroinitializer, i8 1, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, ptr @ssu100_attach, ptr null, ptr null, ptr null, ptr @ssu100_port_probe, ptr @ssu100_port_remove, ptr null, ptr null, ptr null, ptr @ssu100_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ssu100_set_termios, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ssu100_tiocmget, ptr @ssu100_tiocmset, ptr @usb_serial_generic_tiocmiwait, ptr @usb_serial_generic_get_icount, ptr @ssu100_dtr_rts, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ssu100_process_read_urb, ptr null }, [72 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Quatech SSU-100 USB to Serial Driver\00", [59 x i8] zeroinitializer }, align 32
@ssu100_initdevice.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 0, i8 42, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ssu100_initdevice\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/usb/serial/ssu100.c\00", [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s - get_device failed %i\0A\00", [37 x i8] zeroinitializer }, align 32
@ssu100_initdevice.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.5, i8 0, i8 44, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s - setdevice failed %i\0A\00", [38 x i8] zeroinitializer }, align 32
@ssu100_initdevice.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.6, i8 0, i8 45, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s - set prebuffer level failed %i\0A\00", [60 x i8] zeroinitializer }, align 32
@ssu100_initdevice.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.7, i8 0, i8 47, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s - set ATFprebuffer level failed %i\0A\00", [57 x i8] zeroinitializer }, align 32
@ssu100_initdevice.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 0, i8 48, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@ssu100_initdevice.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.5, i8 0, i8 51, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@ssu100_port_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&priv->status_lock\00", [45 x i8] zeroinitializer }, align 32
@ssu100_open.__UNIQUE_ID_ddebug250 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.3, ptr @.str.10, i8 0, i8 77, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ssu100_open\00", [20 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s - open failed %i\0A\00", [43 x i8] zeroinitializer }, align 32
@ssu100_open.__UNIQUE_ID_ddebug251 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.3, ptr @.str.11, i8 0, i8 81, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s - set uart failed\0A\00", [42 x i8] zeroinitializer }, align 32
@ssu100_set_termios.__UNIQUE_ID_ddebug246 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.12, ptr @.str.3, ptr @.str.13, i8 0, i8 63, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ssu100_set_termios\00", [45 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s - got baud = %d\0A\00", [44 x i8] zeroinitializer }, align 32
@ssu100_set_termios.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.12, ptr @.str.3, ptr @.str.11, i8 0, i8 66, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@ssu100_set_termios.__UNIQUE_ID_ddebug248 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.12, ptr @.str.3, ptr @.str.14, i8 0, i8 68, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s - set HW flow control failed\0A\00", [63 x i8] zeroinitializer }, align 32
@ssu100_set_termios.__UNIQUE_ID_ddebug249 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.12, ptr @.str.3, ptr @.str.15, i8 0, i8 71, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s - set SW flow control failed\0A\00", [63 x i8] zeroinitializer }, align 32
@update_mctrl.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.3, ptr @.str.17, i8 0, i8 35, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"update_mctrl\00", [19 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s - DTR|RTS not being set|cleared\0A\00", [60 x i8] zeroinitializer }, align 32
@update_mctrl.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.3, ptr @.str.18, i8 0, i8 38, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s Error from MODEM_CTRL urb\0A\00", [34 x i8] zeroinitializer }, align 32
@ssu100_dtr_rts._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.3, i32 409, ptr @.str.21, ptr @.str.22 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"error from flowcontrol urb\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ssu100_dtr_rts\00", [17 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ssu100_dtr_rts._entry_ptr = internal global ptr @ssu100_dtr_rts._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.23 = private unnamed_addr constant [15 x i8] c"serial_drivers\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 536, i32 41 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 540, i32 1 }
@___asan_gen_.29 = private unnamed_addr constant [9 x i8] c"id_table\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 54, i32 35 }
@___asan_gen_.32 = private unnamed_addr constant [14 x i8] c"ssu100_device\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 515, i32 33 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 520, i32 22 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 169, i32 3 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 177, i32 3 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 183, i32 3 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 189, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 347, i32 2 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 309, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 326, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 254, i32 2 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 275, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 287, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 140, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 153, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.104 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.105 = private constant [31 x i8] c"../drivers/usb/serial/ssu100.c\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 409, i32 4 }
@llvm.compiler.used = appending global [35 x ptr] [ptr @__UNIQUE_ID_description253, ptr @__UNIQUE_ID_file254, ptr @__UNIQUE_ID_license255, ptr @__exitcall_usb_serial_module_exit, ptr @__initcall__kmod_ssu100__252_540_usb_serial_module_init6, ptr @ssu100_dtr_rts._entry, ptr @ssu100_dtr_rts._entry_ptr, ptr @usb_serial_module_exit, ptr @serial_drivers, ptr @.str, ptr @id_table, ptr @ssu100_device, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @ssu100_port_probe.__key, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22], section "llvm.metadata"
@0 = internal global [28 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serial_drivers to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @id_table to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssu100_device to i32), i32 312, i32 384, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssu100_port_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssu100_dtr_rts._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }]
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
define internal i32 @ssu100_attach(ptr nocapture noundef readonly %serial) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %serial to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %serial, align 4
  %call = tail call fastcc i32 @ssu100_initdevice(ptr noundef %1)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ssu100_port_probe(ptr nocapture noundef writeonly %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 48) #8
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__raw_spin_lock_init(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.8, ptr noundef nonnull @ssu100_port_probe.__key, i16 noundef signext 3) #5
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
define internal void @ssu100_port_remove(ptr nocapture noundef readonly %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @kfree(ptr noundef %1) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ssu100_open(ptr noundef %tty, ptr noundef %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 2) #8
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %3, align 8
  %shl.i = shl i32 %8, 8
  %or4 = or i32 %shl.i, -2147483520
  %call5 = tail call i32 @usb_control_msg(ptr noundef %3, i32 noundef %or4, i8 noundef zeroext -54, i8 noundef zeroext -64, i16 noundef zeroext 1, i16 noundef zeroext 0, ptr noundef nonnull %call7.i.i, i16 noundef zeroext 2, i32 noundef 300) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call5)
  %cmp = icmp slt i32 %call5, 2
  br i1 %cmp, label %do.body, label %do.body19

do.body:                                          ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ssu100_open.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ssu100_open, %if.then11)) #5
          to label %do.end [label %if.then11], !srcloc !80

if.then11:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %dev12 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ssu100_open.__UNIQUE_ID_ddebug250, ptr noundef %dev12, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.9, i32 noundef %call5) #5
  br label %do.end

do.end:                                           ; preds = %if.then11, %do.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call5)
  %cmp14 = icmp sgt i32 %call5, -1
  %spec.store.select = select i1 %cmp14, i32 -5, i32 %call5
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #5
  br label %cleanup

do.body19:                                        ; preds = %if.end
  %call23 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #5
  %9 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %call7.i.i, align 8
  %shadowLSR = getelementptr inbounds %struct.ssu100_port_private, ptr %5, i32 0, i32 1
  %11 = ptrtoint ptr %shadowLSR to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %shadowLSR, align 4
  %arrayidx28 = getelementptr i8, ptr %call7.i.i, i32 1
  %12 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx28, align 1
  %shadowMSR = getelementptr inbounds %struct.ssu100_port_private, ptr %5, i32 0, i32 2
  %14 = ptrtoint ptr %shadowMSR to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %shadowMSR, align 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %call23) #5
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #5
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %3, align 8
  %shl.i.i = shl i32 %16, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %call1.i = tail call i32 @usb_control_msg(ptr noundef %3, i32 noundef %or.i, i8 noundef zeroext -63, i8 noundef zeroext 64, i16 noundef zeroext 48, i16 noundef zeroext 768, ptr noundef null, i16 noundef zeroext 0, i32 noundef 300) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp31 = icmp slt i32 %call1.i, 0
  br i1 %cmp31, label %do.body34, label %do.body19.if.end51_crit_edge

do.body19.if.end51_crit_edge:                     ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end51

do.body34:                                        ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ssu100_open.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ssu100_open, %if.then46)) #5
          to label %if.end51 [label %if.then46], !srcloc !80

if.then46:                                        ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #7
  %dev47 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ssu100_open.__UNIQUE_ID_ddebug251, ptr noundef %dev47, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.9) #5
  br label %if.end51

if.end51:                                         ; preds = %if.then46, %do.body34, %do.body19.if.end51_crit_edge
  %tobool52.not = icmp eq ptr %tty, null
  br i1 %tobool52.not, label %if.end51.if.end54_crit_edge, label %if.then53

if.end51.if.end54_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end54

if.then53:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #7
  %termios = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13
  tail call void @ssu100_set_termios(ptr noundef nonnull %tty, ptr noundef %port, ptr noundef %termios)
  br label %if.end54

if.end54:                                         ; preds = %if.then53, %if.end51.if.end54_crit_edge
  %call55 = tail call i32 @usb_serial_generic_open(ptr noundef %tty, ptr noundef %port) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end54, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.store.select, %do.end ], [ %call55, %if.end54 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ssu100_set_termios(ptr noundef %tty, ptr noundef %port, ptr nocapture noundef readnone %old_termios) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
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
  %and = and i32 %5, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %and3 = and i32 %5, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  %. = select i1 %tobool4.not, i16 24, i16 8
  %urb_value.0 = select i1 %tobool.not, i16 0, i16 %.
  %and11 = lshr i32 %5, 4
  %6 = and i32 %and11, 3
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i32 %6, label %if.end10.unreachabledefault [
    i32 0, label %entry.sw.epilog_crit_edge
    i32 1, label %sw.bb15
    i32 2, label %sw.bb19
    i32 3, label %sw.bb23
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb15:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %8 = or i16 %urb_value.0, 1
  br label %sw.epilog

sw.bb19:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %9 = or i16 %urb_value.0, 2
  br label %sw.epilog

if.end10.unreachabledefault:                      ; preds = %entry
  unreachable

sw.bb23:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %10 = or i16 %urb_value.0, 3
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb23, %sw.bb19, %sw.bb15, %entry.sw.epilog_crit_edge
  %urb_value.1 = phi i16 [ %10, %sw.bb23 ], [ %9, %sw.bb19 ], [ %8, %sw.bb15 ], [ %urb_value.0, %entry.sw.epilog_crit_edge ]
  %call.i = tail call i32 @tty_termios_baud_rate(ptr noundef %termios2) #5
  %conv27 = trunc i32 %call.i to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv27)
  %tobool28.not = icmp eq i16 %conv27, 0
  %spec.store.select = select i1 %tobool28.not, i16 9600, i16 %conv27
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ssu100_set_termios.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ssu100_set_termios, %if.then35)) #5
          to label %do.end [label %if.then35], !srcloc !80

if.then35:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  %dev36 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  %conv37 = zext i16 %spec.store.select to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ssu100_set_termios.__UNIQUE_ID_ddebug246, ptr noundef %dev36, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.12, i32 noundef %conv37) #5
  br label %do.end

do.end:                                           ; preds = %if.then35, %sw.epilog
  %conv39 = zext i16 %spec.store.select to i32
  %conv39.frozen = freeze i32 %conv39
  %div = udiv i32 460800, %conv39.frozen
  %conv40 = trunc i32 %div to i16
  %11 = mul i32 %div, %conv39.frozen
  %rem.decomposed = sub i32 460800, %11
  %mul = shl nuw nsw i32 %rem.decomposed, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %conv39)
  %cmp.not = icmp uge i32 %mul, %conv39
  call void @__sanitizer_cov_trace_const_cmp2(i16 110, i16 %spec.store.select)
  %cmp47.not = icmp ne i16 %spec.store.select, 110
  %not.or.cond = and i1 %cmp47.not, %cmp.not
  %inc = zext i1 %not.or.cond to i16
  %divisor.0 = add i16 %inc, %conv40
  %shl = shl nsw i16 %urb_value.1, 8
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %3, align 8
  %shl.i.i = shl i32 %13, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %call1.i = tail call i32 @usb_control_msg(ptr noundef %3, i32 noundef %or.i, i8 noundef zeroext -63, i8 noundef zeroext 64, i16 noundef zeroext %divisor.0, i16 noundef zeroext %shl, ptr noundef null, i16 noundef zeroext 0, i32 noundef 300) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp54 = icmp slt i32 %call1.i, 0
  br i1 %cmp54, label %do.body57, label %do.end.if.end74_crit_edge

do.end.if.end74_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end74

do.body57:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ssu100_set_termios.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ssu100_set_termios, %if.then69)) #5
          to label %if.end74 [label %if.then69], !srcloc !80

if.then69:                                        ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #7
  %dev70 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ssu100_set_termios.__UNIQUE_ID_ddebug247, ptr noundef %dev70, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12) #5
  br label %if.end74

if.end74:                                         ; preds = %if.then69, %do.body57, %do.end.if.end74_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %tobool76.not = icmp sgt i32 %5, -1
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %3, align 8
  %shl.i.i192 = shl i32 %15, 8
  %or.i193 = or i32 %shl.i.i192, -2147483648
  %.207 = select i1 %tobool76.not, i16 0, i16 528
  %call1.i194 = tail call i32 @usb_control_msg(ptr noundef %3, i32 noundef %or.i193, i8 noundef zeroext -59, i8 noundef zeroext 64, i16 noundef zeroext %.207, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 300) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i194)
  %cmp82 = icmp slt i32 %call1.i194, 0
  br i1 %cmp82, label %do.body85, label %if.end74.if.end102_crit_edge

if.end74.if.end102_crit_edge:                     ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end102

do.body85:                                        ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ssu100_set_termios.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ssu100_set_termios, %if.then97)) #5
          to label %if.end102 [label %if.then97], !srcloc !80

if.then97:                                        ; preds = %do.body85
  call void @__sanitizer_cov_trace_pc() #7
  %dev98 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ssu100_set_termios.__UNIQUE_ID_ddebug248, ptr noundef %dev98, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.12) #5
  br label %if.end102

if.end102:                                        ; preds = %if.then97, %do.body85, %if.end74.if.end102_crit_edge
  %16 = ptrtoint ptr %termios2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %termios2, align 4
  %18 = and i32 %17, 5120
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %if.end102.if.end126_crit_edge, label %if.then110

if.end102.if.end126_crit_edge:                    ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end126

if.then110:                                       ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx = getelementptr %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 5, i32 8
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx, align 1
  %conv112 = zext i8 %21 to i16
  %shl113 = shl nuw i16 %conv112, 8
  %arrayidx118 = getelementptr %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 5, i32 9
  %22 = ptrtoint ptr %arrayidx118 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx118, align 1
  %conv120 = zext i8 %23 to i16
  %or121 = or i16 %shl113, %conv120
  br label %if.end126

if.end126:                                        ; preds = %if.then110, %if.end102.if.end126_crit_edge
  %.sink205 = phi i16 [ %or121, %if.then110 ], [ 0, %if.end102.if.end126_crit_edge ]
  %24 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %3, align 8
  %shl.i.i198 = shl i32 %25, 8
  %or.i199 = or i32 %shl.i.i198, -2147483648
  %call1.i200 = tail call i32 @usb_control_msg(ptr noundef %3, i32 noundef %or.i199, i8 noundef zeroext -58, i8 noundef zeroext 64, i16 noundef zeroext %.sink205, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 300) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i200)
  %cmp127 = icmp slt i32 %call1.i200, 0
  br i1 %cmp127, label %do.body130, label %if.end126.if.end147_crit_edge

if.end126.if.end147_crit_edge:                    ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end147

do.body130:                                       ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ssu100_set_termios.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ssu100_set_termios, %if.then142)) #5
          to label %if.end147 [label %if.then142], !srcloc !80

if.then142:                                       ; preds = %do.body130
  call void @__sanitizer_cov_trace_pc() #7
  %dev143 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ssu100_set_termios.__UNIQUE_ID_ddebug249, ptr noundef %dev143, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.12) #5
  br label %if.end147

if.end147:                                        ; preds = %if.then142, %do.body130, %if.end126.if.end147_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ssu100_tiocmget(ptr nocapture noundef readonly %tty) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
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
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 2) #8
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %5, align 8
  %shl.i.i = shl i32 %8, 8
  %or1.i = or i32 %shl.i.i, -2147483520
  %call2.i = tail call i32 @usb_control_msg(ptr noundef %5, i32 noundef %or1.i, i8 noundef zeroext -64, i8 noundef zeroext -64, i16 noundef zeroext 4, i16 noundef zeroext 0, ptr noundef nonnull %call7.i.i, i16 noundef zeroext 1, i32 noundef 300) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp3.i = icmp eq i32 %call2.i, 0
  %ret.0.i = select i1 %cmp3.i, i32 -5, i32 %call2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %cmp = icmp slt i32 %ret.0.i, 0
  br i1 %cmp, label %if.end.mget_out_crit_edge, label %if.end4

if.end.mget_out_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %mget_out

if.end4:                                          ; preds = %if.end
  %add.ptr = getelementptr i8, ptr %call7.i.i, i32 1
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %5, align 8
  %shl.i.i54 = shl i32 %10, 8
  %or1.i55 = or i32 %shl.i.i54, -2147483520
  %call2.i56 = tail call i32 @usb_control_msg(ptr noundef %5, i32 noundef %or1.i55, i8 noundef zeroext -64, i8 noundef zeroext -64, i16 noundef zeroext 6, i16 noundef zeroext 0, ptr noundef %add.ptr, i16 noundef zeroext 1, i32 noundef 300) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i56)
  %cmp3.i57 = icmp eq i32 %call2.i56, 0
  %ret.0.i58 = select i1 %cmp3.i57, i32 -5, i32 %call2.i56
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i58)
  %cmp6 = icmp slt i32 %ret.0.i58, 0
  br i1 %cmp6, label %if.end4.mget_out_crit_edge, label %if.end8

if.end4.mget_out_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %mget_out

if.end8:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  %11 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %call7.i.i, align 8
  %conv = zext i8 %12 to i32
  %and = shl nuw nsw i32 %conv, 1
  %or = and i32 %and, 6
  %13 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %add.ptr, align 1
  %conv16 = zext i8 %14 to i32
  %and17 = shl nuw nsw i32 %conv16, 1
  %15 = and i32 %and17, 32
  %or20 = or i32 %15, %or
  %and23 = lshr i32 %conv16, 1
  %16 = and i32 %and23, 64
  %or26 = or i32 %or20, %16
  %17 = and i32 %and17, 128
  %or32 = or i32 %or26, %17
  %and35 = shl nuw nsw i32 %conv16, 3
  %18 = and i32 %and35, 256
  %or38 = or i32 %or32, %18
  br label %mget_out

mget_out:                                         ; preds = %if.end8, %if.end4.mget_out_crit_edge, %if.end.mget_out_crit_edge
  %r.0 = phi i32 [ %ret.0.i, %if.end.mget_out_crit_edge ], [ %ret.0.i58, %if.end4.mget_out_crit_edge ], [ %or38, %if.end8 ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #5
  br label %cleanup

cleanup:                                          ; preds = %mget_out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %r.0, %mget_out ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ssu100_tiocmset(ptr nocapture noundef readonly %tty, i32 noundef %set, i32 noundef %clear) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
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
  %or.i = or i32 %clear, %set
  %and.i = and i32 %or.i, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, 0
  br i1 %cmp.i, label %do.body.i, label %if.end5.i

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @update_mctrl.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ssu100_tiocmset, %if.then3.i)) #5
          to label %update_mctrl.exit [label %if.then3.i], !srcloc !80

if.then3.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev4.i = getelementptr inbounds %struct.usb_device, ptr %5, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @update_mctrl.__UNIQUE_ID_ddebug238, ptr noundef %dev4.i, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.16) #5
  br label %update_mctrl.exit

if.end5.i:                                        ; preds = %entry
  %6 = trunc i32 %set to i16
  %7 = shl i16 %6, 7
  %shl.i.i = and i16 %7, 768
  %or.i.i = or i16 %shl.i.i, 4
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %5, align 8
  %shl.i.i.i = shl i32 %9, 8
  %or3.i.i = or i32 %shl.i.i.i, -2147483648
  %call4.i.i = tail call i32 @usb_control_msg(ptr noundef %5, i32 noundef %or3.i.i, i8 noundef zeroext -64, i8 noundef zeroext 64, i16 noundef zeroext %or.i.i, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 300) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %cmp18.i = icmp slt i32 %call4.i.i, 0
  br i1 %cmp18.i, label %do.body21.i, label %if.end5.i.update_mctrl.exit_crit_edge

if.end5.i.update_mctrl.exit_crit_edge:            ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %update_mctrl.exit

do.body21.i:                                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @update_mctrl.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ssu100_tiocmset, %if.then33.i)) #5
          to label %update_mctrl.exit [label %if.then33.i], !srcloc !80

if.then33.i:                                      ; preds = %do.body21.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev34.i = getelementptr inbounds %struct.usb_device, ptr %5, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @update_mctrl.__UNIQUE_ID_ddebug239, ptr noundef %dev34.i, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.16) #5
  br label %update_mctrl.exit

update_mctrl.exit:                                ; preds = %if.then33.i, %do.body21.i, %if.end5.i.update_mctrl.exit_crit_edge, %if.then3.i, %do.body.i
  %retval.0.i = phi i32 [ 0, %if.then3.i ], [ %call4.i.i, %if.then33.i ], [ %call4.i.i, %if.end5.i.update_mctrl.exit_crit_edge ], [ 0, %do.body.i ], [ %call4.i.i, %do.body21.i ]
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_serial_generic_tiocmiwait(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_serial_generic_get_icount(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ssu100_dtr_rts(ptr noundef %port, i32 noundef %on) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on)
  %tobool.not = icmp eq i32 %on, 0
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 8
  %shl.i.i = shl i32 %5, 8
  %or3.i = or i32 %shl.i.i, -2147483648
  br i1 %tobool.not, label %if.then, label %if.then6.critedge

if.then:                                          ; preds = %entry
  %call4.i = tail call i32 @usb_control_msg(ptr noundef %3, i32 noundef %or3.i, i8 noundef zeroext -64, i8 noundef zeroext 64, i16 noundef zeroext 4, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 300) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp = icmp slt i32 %call4.i, 0
  br i1 %cmp, label %do.end, label %if.then.if.else_crit_edge

if.then.if.else_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %dev3 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3, ptr noundef nonnull @.str.19) #9
  br label %if.else

if.then6.critedge:                                ; preds = %entry
  %call4.i.i = tail call i32 @usb_control_msg(ptr noundef %3, i32 noundef %or3.i, i8 noundef zeroext -64, i8 noundef zeroext 64, i16 noundef zeroext 772, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 300) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %cmp18.i = icmp slt i32 %call4.i.i, 0
  br i1 %cmp18.i, label %do.body21.i, label %if.then6.critedge.if.end9_crit_edge

if.then6.critedge.if.end9_crit_edge:              ; preds = %if.then6.critedge
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9

do.body21.i:                                      ; preds = %if.then6.critedge
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @update_mctrl.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ssu100_dtr_rts, %if.end9.sink.split)) #5
          to label %if.end9 [label %if.end9.sink.split], !srcloc !80

if.else:                                          ; preds = %do.end, %if.then.if.else_crit_edge
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %3, align 8
  %shl.i.i.i15 = shl i32 %7, 8
  %or3.i.i16 = or i32 %shl.i.i.i15, -2147483648
  %call4.i.i17 = tail call i32 @usb_control_msg(ptr noundef %3, i32 noundef %or3.i.i16, i8 noundef zeroext -64, i8 noundef zeroext 64, i16 noundef zeroext 4, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 300) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i17)
  %cmp18.i18 = icmp slt i32 %call4.i.i17, 0
  br i1 %cmp18.i18, label %do.body21.i19, label %if.else.if.end9_crit_edge

if.else.if.end9_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9

do.body21.i19:                                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @update_mctrl.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ssu100_dtr_rts, %if.end9.sink.split)) #5
          to label %if.end9 [label %if.end9.sink.split], !srcloc !80

if.end9.sink.split:                               ; preds = %do.body21.i19, %do.body21.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev34.i20 = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @update_mctrl.__UNIQUE_ID_ddebug239, ptr noundef %dev34.i20, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.16) #5
  br label %if.end9

if.end9:                                          ; preds = %if.end9.sink.split, %do.body21.i19, %if.else.if.end9_crit_edge, %do.body21.i, %if.then6.critedge.if.end9_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ssu100_process_read_urb(ptr nocapture noundef readonly %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
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
  %cmp = icmp ugt i32 %5, 3
  br i1 %cmp, label %land.lhs.true, label %entry.if.end30_crit_edge

entry.if.end30_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end30

land.lhs.true:                                    ; preds = %entry
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 27, i8 %7)
  %cmp1 = icmp eq i8 %7, 27
  br i1 %cmp1, label %land.lhs.true3, label %land.lhs.true.if.end32_crit_edge

land.lhs.true.if.end32_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end32

land.lhs.true3:                                   ; preds = %land.lhs.true
  %arrayidx4 = getelementptr i8, ptr %3, i32 1
  %8 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 27, i8 %9)
  %cmp6 = icmp eq i8 %9, 27
  br i1 %cmp6, label %land.lhs.true8, label %land.lhs.true3.if.end32_crit_edge

land.lhs.true3.if.end32_crit_edge:                ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end32

land.lhs.true8:                                   ; preds = %land.lhs.true3
  %arrayidx9 = getelementptr i8, ptr %3, i32 2
  %10 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx9, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %11)
  %switch = icmp ult i8 %11, 2
  br i1 %switch, label %if.then, label %land.lhs.true8.if.end32_crit_edge

land.lhs.true8.if.end32_crit_edge:                ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end32

if.then:                                          ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp19 = icmp eq i8 %11, 0
  br i1 %cmp19, label %if.then21, label %if.then.if.then27_crit_edge

if.then.if.then27_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then27

if.then21:                                        ; preds = %if.then
  %arrayidx22 = getelementptr i8, ptr %3, i32 3
  %12 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx22, align 1
  %driver_data.i.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32, i32 8
  %14 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %driver_data.i.i.i, align 4
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %15) #5
  %shadowLSR.i = getelementptr inbounds %struct.ssu100_port_private, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %shadowLSR.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %13, ptr %shadowLSR.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %15, i32 noundef %call3.i) #5
  %conv7.i = zext i8 %13 to i32
  %and.i = and i32 %conv7.i, 30
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then21.if.end_crit_edge, label %if.then.i

if.then21.if.end_crit_edge:                       ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then.i:                                        ; preds = %if.then21
  %and9.i = and i32 %conv7.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %tobool10.not.i = icmp eq i32 %and9.i, 0
  br i1 %tobool10.not.i, label %if.end.i, label %if.end.i.thread

if.end.i:                                         ; preds = %if.then.i
  %and14.i = and i32 %conv7.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i)
  %tobool15.not.i = icmp eq i32 %and14.i, 0
  br i1 %tobool15.not.i, label %if.end24.i.thread, label %if.end.i.if.end24.i.sink.split_crit_edge

if.end.i.if.end24.i.sink.split_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end24.i.sink.split

if.end.i.thread:                                  ; preds = %if.then.i
  %brk.i = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 27, i32 9
  %17 = ptrtoint ptr %brk.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %brk.i, align 4
  %inc.i = add i32 %18, 1
  store i32 %inc.i, ptr %brk.i, align 4
  %call12.i = tail call i32 @usb_serial_handle_break(ptr noundef %1) #5
  %and14.i100 = and i32 %conv7.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i100)
  %tobool15.not.i101 = icmp eq i32 %and14.i100, 0
  br i1 %tobool15.not.i101, label %if.end.i.thread.if.end24.i_crit_edge, label %if.end.i.thread.if.end24.i.sink.split_crit_edge

if.end.i.thread.if.end24.i.sink.split_crit_edge:  ; preds = %if.end.i.thread
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end24.i.sink.split

if.end.i.thread.if.end24.i_crit_edge:             ; preds = %if.end.i.thread
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end24.i

if.end24.i.sink.split:                            ; preds = %if.end.i.thread.if.end24.i.sink.split_crit_edge, %if.end.i.if.end24.i.sink.split_crit_edge
  %flag.1.ph = phi i8 [ 1, %if.end.i.thread.if.end24.i.sink.split_crit_edge ], [ 3, %if.end.i.if.end24.i.sink.split_crit_edge ]
  %parity.i = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 27, i32 7
  %19 = ptrtoint ptr %parity.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %parity.i, align 4
  %inc18.i105 = add i32 %20, 1
  store i32 %inc18.i105, ptr %parity.i, align 4
  br label %if.end24.i

if.end24.i:                                       ; preds = %if.end24.i.sink.split, %if.end.i.thread.if.end24.i_crit_edge
  %flag.1 = phi i8 [ 1, %if.end.i.thread.if.end24.i_crit_edge ], [ %flag.1.ph, %if.end24.i.sink.split ]
  %and26.i = and i32 %conv7.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26.i)
  %tobool27.not.i = icmp eq i32 %and26.i, 0
  br i1 %tobool27.not.i, label %if.end24.i.if.end36.i_crit_edge, label %if.end24.i.if.end36.i.sink.split_crit_edge

if.end24.i.if.end36.i.sink.split_crit_edge:       ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end36.i.sink.split

if.end24.i.if.end36.i_crit_edge:                  ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end36.i

if.end24.i.thread:                                ; preds = %if.end.i
  %and26.i108 = and i32 %conv7.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26.i108)
  %tobool27.not.i109 = icmp eq i32 %and26.i108, 0
  br i1 %tobool27.not.i109, label %if.end24.i.thread.if.end36.i_crit_edge, label %if.end24.i.thread.if.end36.i.sink.split_crit_edge

if.end24.i.thread.if.end36.i.sink.split_crit_edge: ; preds = %if.end24.i.thread
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end36.i.sink.split

if.end24.i.thread.if.end36.i_crit_edge:           ; preds = %if.end24.i.thread
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end36.i

if.end36.i.sink.split:                            ; preds = %if.end24.i.thread.if.end36.i.sink.split_crit_edge, %if.end24.i.if.end36.i.sink.split_crit_edge
  %flag.2.ph = phi i8 [ %flag.1, %if.end24.i.if.end36.i.sink.split_crit_edge ], [ 2, %if.end24.i.thread.if.end36.i.sink.split_crit_edge ]
  %frame.i112 = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 27, i32 6
  %21 = ptrtoint ptr %frame.i112 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %frame.i112, align 8
  %inc30.i = add i32 %22, 1
  store i32 %inc30.i, ptr %frame.i112, align 8
  br label %if.end36.i

if.end36.i:                                       ; preds = %if.end36.i.sink.split, %if.end24.i.thread.if.end36.i_crit_edge, %if.end24.i.if.end36.i_crit_edge
  %flag.2 = phi i8 [ %flag.1, %if.end24.i.if.end36.i_crit_edge ], [ 0, %if.end24.i.thread.if.end36.i_crit_edge ], [ %flag.2.ph, %if.end36.i.sink.split ]
  %and38.i = and i32 %conv7.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38.i)
  %tobool39.not.i = icmp eq i32 %and38.i, 0
  br i1 %tobool39.not.i, label %if.end36.i.if.end_crit_edge, label %if.then40.i

if.end36.i.if.end_crit_edge:                      ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then40.i:                                      ; preds = %if.end36.i
  %overrun.i = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 27, i32 8
  %23 = ptrtoint ptr %overrun.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %overrun.i, align 8
  %inc42.i = add i32 %24, 1
  store i32 %inc42.i, ptr %overrun.i, align 8
  %port43.i = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 1
  %tail.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 1, i32 0, i32 8
  %25 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %tail.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.tty_buffer, ptr %26, i32 0, i32 5
  %27 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i, label %if.then40.i.if.end12.i.i_crit_edge

if.then40.i.if.end12.i.i_crit_edge:               ; preds = %if.then40.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12.i.i

land.lhs.true.i.i:                                ; preds = %if.then40.i
  %used.i.i = getelementptr inbounds %struct.tty_buffer, ptr %26, i32 0, i32 1
  %29 = ptrtoint ptr %used.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %used.i.i, align 4
  %size.i.i = getelementptr inbounds %struct.tty_buffer, ptr %26, i32 0, i32 2
  %31 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %size.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %32)
  %cmp3.i.i = icmp slt i32 %30, %32
  br i1 %cmp3.i.i, label %if.end.i.i, label %land.lhs.true.i.i.if.end12.i.i_crit_edge

land.lhs.true.i.i.if.end12.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %data.i.i.i.i = getelementptr inbounds %struct.tty_buffer, ptr %26, i32 0, i32 6
  %add.ptr.i.i.i.i = getelementptr i8, ptr %data.i.i.i.i, i32 %30
  %add.ptr.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i.i, i32 %32
  %33 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 4, ptr %add.ptr.i.i.i, align 1
  %34 = ptrtoint ptr %used.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %used.i.i, align 4
  %inc.i.i = add i32 %35, 1
  store i32 %inc.i.i, ptr %used.i.i, align 4
  %add.ptr.i1.i.i = getelementptr i8, ptr %data.i.i.i.i, i32 %35
  %36 = ptrtoint ptr %add.ptr.i1.i.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 0, ptr %add.ptr.i1.i.i, align 1
  br label %if.end

if.end12.i.i:                                     ; preds = %land.lhs.true.i.i.if.end12.i.i_crit_edge, %if.then40.i.if.end12.i.i_crit_edge
  %call13.i.i = tail call i32 @__tty_insert_flip_char(ptr noundef %port43.i, i8 noundef zeroext 0, i8 noundef zeroext 4) #5
  br label %if.end

if.end:                                           ; preds = %if.end12.i.i, %if.end.i.i, %if.end36.i.if.end_crit_edge, %if.then21.if.end_crit_edge
  %flag.4.ph = phi i8 [ %flag.2, %if.end12.i.i ], [ %flag.2, %if.end.i.i ], [ %flag.2, %if.end36.i.if.end_crit_edge ], [ 0, %if.then21.if.end_crit_edge ]
  %37 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %37)
  %.pr = load i8, ptr %arrayidx9, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %.pr)
  %cmp25 = icmp eq i8 %.pr, 1
  br i1 %cmp25, label %if.end.if.then27_crit_edge, label %if.end.if.end29_crit_edge

if.end.if.end29_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end29

if.end.if.then27_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then27

if.then27:                                        ; preds = %if.end.if.then27_crit_edge, %if.then.if.then27_crit_edge
  %flag.4118 = phi i8 [ %flag.4.ph, %if.end.if.then27_crit_edge ], [ 0, %if.then.if.then27_crit_edge ]
  %arrayidx28 = getelementptr i8, ptr %3, i32 3
  %38 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx28, align 1
  %driver_data.i.i.i78 = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32, i32 8
  %40 = ptrtoint ptr %driver_data.i.i.i78 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %driver_data.i.i.i78, align 4
  %call3.i79 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %41) #5
  %shadowMSR.i = getelementptr inbounds %struct.ssu100_port_private, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %shadowMSR.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %39, ptr %shadowMSR.i, align 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %41, i32 noundef %call3.i79) #5
  %conv7.i80 = zext i8 %39 to i32
  %and.i81 = and i32 %conv7.i80, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i81)
  %tobool.not.i82 = icmp eq i32 %and.i81, 0
  br i1 %tobool.not.i82, label %if.then27.if.end29_crit_edge, label %if.then.i85

if.then27.if.end29_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end29

if.then.i85:                                      ; preds = %if.then27
  %and9.i83 = and i32 %conv7.i80, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i83)
  %tobool10.not.i84 = icmp eq i32 %and9.i83, 0
  br i1 %tobool10.not.i84, label %if.then.i85.if.end.i88_crit_edge, label %if.then11.i87

if.then.i85.if.end.i88_crit_edge:                 ; preds = %if.then.i85
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i88

if.then11.i87:                                    ; preds = %if.then.i85
  call void @__sanitizer_cov_trace_pc() #7
  %icount.i = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 27
  %43 = ptrtoint ptr %icount.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %icount.i, align 8
  %inc.i86 = add i32 %44, 1
  store i32 %inc.i86, ptr %icount.i, align 8
  br label %if.end.i88

if.end.i88:                                       ; preds = %if.then11.i87, %if.then.i85.if.end.i88_crit_edge
  %and13.i = and i32 %conv7.i80, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i)
  %tobool14.not.i = icmp eq i32 %and13.i, 0
  br i1 %tobool14.not.i, label %if.end.i88.if.end18.i_crit_edge, label %if.then15.i

if.end.i88.if.end18.i_crit_edge:                  ; preds = %if.end.i88
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18.i

if.then15.i:                                      ; preds = %if.end.i88
  call void @__sanitizer_cov_trace_pc() #7
  %dsr.i = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 27, i32 1
  %45 = ptrtoint ptr %dsr.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %dsr.i, align 4
  %inc17.i = add i32 %46, 1
  store i32 %inc17.i, ptr %dsr.i, align 4
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.then15.i, %if.end.i88.if.end18.i_crit_edge
  %and20.i = and i32 %conv7.i80, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20.i)
  %tobool21.not.i = icmp eq i32 %and20.i, 0
  br i1 %tobool21.not.i, label %if.end18.i.if.end25.i_crit_edge, label %if.then22.i89

if.end18.i.if.end25.i_crit_edge:                  ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end25.i

if.then22.i89:                                    ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #7
  %dcd.i = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 27, i32 3
  %47 = ptrtoint ptr %dcd.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %dcd.i, align 4
  %inc24.i = add i32 %48, 1
  store i32 %inc24.i, ptr %dcd.i, align 4
  br label %if.end25.i

if.end25.i:                                       ; preds = %if.then22.i89, %if.end18.i.if.end25.i_crit_edge
  %and27.i = and i32 %conv7.i80, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27.i)
  %tobool28.not.i = icmp eq i32 %and27.i, 0
  br i1 %tobool28.not.i, label %if.end25.i.if.end32.i_crit_edge, label %if.then29.i

if.end25.i.if.end32.i_crit_edge:                  ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end32.i

if.then29.i:                                      ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #7
  %rng.i = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 27, i32 2
  %49 = ptrtoint ptr %rng.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %rng.i, align 8
  %inc31.i = add i32 %50, 1
  store i32 %inc31.i, ptr %rng.i, align 8
  br label %if.end32.i

if.end32.i:                                       ; preds = %if.then29.i, %if.end25.i.if.end32.i_crit_edge
  %delta_msr_wait.i = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 1, i32 9
  tail call void @__wake_up(ptr noundef %delta_msr_wait.i, i32 noundef 1, i32 noundef 1, ptr noundef null) #5
  br label %if.end29

if.end29:                                         ; preds = %if.end32.i, %if.then27.if.end29_crit_edge, %if.end.if.end29_crit_edge
  %flag.4117 = phi i8 [ %flag.4.ph, %if.end.if.end29_crit_edge ], [ %flag.4118, %if.then27.if.end29_crit_edge ], [ %flag.4118, %if.end32.i ]
  %sub = add i32 %5, -4
  %add.ptr = getelementptr i8, ptr %3, i32 4
  br label %if.end30

if.end30:                                         ; preds = %if.end29, %entry.if.end30_crit_edge
  %flag.5 = phi i8 [ %flag.4117, %if.end29 ], [ 0, %entry.if.end30_crit_edge ]
  %len.0 = phi i32 [ %sub, %if.end29 ], [ %5, %entry.if.end30_crit_edge ]
  %ch.0 = phi ptr [ %add.ptr, %if.end29 ], [ %3, %entry.if.end30_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.0)
  %tobool.not = icmp eq i32 %len.0, 0
  br i1 %tobool.not, label %if.end30.cleanup_crit_edge, label %if.end30.if.end32_crit_edge

if.end30.if.end32_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end32

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end32:                                         ; preds = %if.end30.if.end32_crit_edge, %land.lhs.true8.if.end32_crit_edge, %land.lhs.true3.if.end32_crit_edge, %land.lhs.true.if.end32_crit_edge
  %ch.0125 = phi ptr [ %ch.0, %if.end30.if.end32_crit_edge ], [ %3, %land.lhs.true8.if.end32_crit_edge ], [ %3, %land.lhs.true3.if.end32_crit_edge ], [ %3, %land.lhs.true.if.end32_crit_edge ]
  %len.0124 = phi i32 [ %len.0, %if.end30.if.end32_crit_edge ], [ %5, %land.lhs.true8.if.end32_crit_edge ], [ %5, %land.lhs.true3.if.end32_crit_edge ], [ %5, %land.lhs.true.if.end32_crit_edge ]
  %flag.5123 = phi i8 [ %flag.5, %if.end30.if.end32_crit_edge ], [ 0, %land.lhs.true8.if.end32_crit_edge ], [ 0, %land.lhs.true3.if.end32_crit_edge ], [ 0, %land.lhs.true.if.end32_crit_edge ]
  %sysrq = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 31
  %51 = ptrtoint ptr %sysrq to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %sysrq, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool33.not = icmp eq i32 %52, 0
  %port44 = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 1
  br i1 %tobool33.not, label %if.else43, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end32
  %tail.i = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 1, i32 0, i32 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %flag.5123)
  %cmp.i = icmp eq i8 %flag.5123, 0
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %ch.1128 = phi ptr [ %ch.0125, %for.body.lr.ph ], [ %incdec.ptr, %for.inc.for.body_crit_edge ]
  %i.0127 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %53 = ptrtoint ptr %ch.1128 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %ch.1128, align 1
  %conv37 = zext i8 %54 to i32
  %call = tail call i32 @usb_serial_handle_sysrq_char(ptr noundef %1, i32 noundef %conv37) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool38.not = icmp eq i32 %call, 0
  br i1 %tobool38.not, label %if.then39, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then39:                                        ; preds = %for.body
  %55 = ptrtoint ptr %ch.1128 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %ch.1128, align 1
  %57 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %tail.i, align 4
  %flags.i = getelementptr inbounds %struct.tty_buffer, ptr %58, i32 0, i32 5
  %59 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %flags.i, align 4
  %and.i90 = and i32 %60, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i90)
  %tobool.not.i91 = icmp eq i32 %and.i90, 0
  %61 = or i1 %cmp.i, %tobool.not.i91
  br i1 %61, label %land.lhs.true.i, label %if.then39.if.end12.i_crit_edge

if.then39.if.end12.i_crit_edge:                   ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12.i

land.lhs.true.i:                                  ; preds = %if.then39
  %used.i = getelementptr inbounds %struct.tty_buffer, ptr %58, i32 0, i32 1
  %62 = ptrtoint ptr %used.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %used.i, align 4
  %size.i = getelementptr inbounds %struct.tty_buffer, ptr %58, i32 0, i32 2
  %64 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %63, i32 %65)
  %cmp3.i = icmp slt i32 %63, %65
  br i1 %cmp3.i, label %if.then.i92, label %land.lhs.true.i.if.end12.i_crit_edge

land.lhs.true.i.if.end12.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12.i

if.then.i92:                                      ; preds = %land.lhs.true.i
  br i1 %tobool.not.i91, label %if.then8.i, label %if.then.i92.if.end.i95_crit_edge

if.then.i92.if.end.i95_crit_edge:                 ; preds = %if.then.i92
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i95

if.then8.i:                                       ; preds = %if.then.i92
  call void @__sanitizer_cov_trace_pc() #7
  %data.i.i.i = getelementptr inbounds %struct.tty_buffer, ptr %58, i32 0, i32 6
  %add.ptr.i.i.i93 = getelementptr i8, ptr %data.i.i.i, i32 %63
  %add.ptr.i.i = getelementptr i8, ptr %add.ptr.i.i.i93, i32 %65
  %66 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %flag.5123, ptr %add.ptr.i.i, align 1
  br label %if.end.i95

if.end.i95:                                       ; preds = %if.then8.i, %if.then.i92.if.end.i95_crit_edge
  %67 = ptrtoint ptr %used.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %used.i, align 4
  %inc.i94 = add i32 %68, 1
  store i32 %inc.i94, ptr %used.i, align 4
  %data.i.i = getelementptr inbounds %struct.tty_buffer, ptr %58, i32 0, i32 6
  %add.ptr.i1.i = getelementptr i8, ptr %data.i.i, i32 %68
  %69 = ptrtoint ptr %add.ptr.i1.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %56, ptr %add.ptr.i1.i, align 1
  br label %for.inc

if.end12.i:                                       ; preds = %land.lhs.true.i.if.end12.i_crit_edge, %if.then39.if.end12.i_crit_edge
  %call13.i = tail call i32 @__tty_insert_flip_char(ptr noundef %port44, i8 noundef zeroext %56, i8 noundef zeroext %flag.5123) #5
  br label %for.inc

for.inc:                                          ; preds = %if.end12.i, %if.end.i95, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.0127, 1
  %incdec.ptr = getelementptr i8, ptr %ch.1128, i32 1
  %exitcond.not = icmp eq i32 %inc, %len.0124
  br i1 %exitcond.not, label %for.inc.if.end46_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.if.end46_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end46

if.else43:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #7
  %call45 = tail call i32 @tty_insert_flip_string_fixed_flag(ptr noundef %port44, ptr noundef %ch.0125, i8 noundef zeroext %flag.5123, i32 noundef %len.0124) #5
  br label %if.end46

if.end46:                                         ; preds = %if.else43, %for.inc.if.end46_crit_edge
  %port47 = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 1
  tail call void @tty_flip_buffer_push(ptr noundef %port47) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end46, %if.end30.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ssu100_initdevice(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 3) #8
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %dev, align 8
  %shl.i.i = shl i32 %2, 8
  %or1.i = or i32 %shl.i.i, -2147483520
  %call2.i = tail call i32 @usb_control_msg(ptr noundef %dev, i32 noundef %or1.i, i8 noundef zeroext -62, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %call7.i.i, i16 noundef zeroext 3, i32 noundef 300) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call2.i)
  %3 = icmp ult i32 %call2.i, 3
  %ret.0.i = select i1 %3, i32 -5, i32 %call2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %cmp = icmp slt i32 %ret.0.i, 0
  br i1 %cmp, label %do.body, label %if.end10

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ssu100_initdevice.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ssu100_initdevice, %if.then7)) #5
          to label %out [label %if.then7], !srcloc !80

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %dev8 = getelementptr inbounds %struct.usb_device, ptr %dev, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ssu100_initdevice.__UNIQUE_ID_ddebug240, ptr noundef %dev8, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef %ret.0.i) #5
  br label %out

if.end10:                                         ; preds = %if.end
  %arrayidx = getelementptr i8, ptr %call7.i.i, i32 1
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  %6 = and i8 %5, 127
  store i8 %6, ptr %arrayidx, align 1
  %conv.i = zext i8 %6 to i16
  %shl.i = shl nuw nsw i16 %conv.i, 8
  %7 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %call7.i.i, align 8
  %conv5.i = zext i8 %8 to i16
  %or.i = or i16 %shl.i, %conv5.i
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %dev, align 8
  %shl.i.i.i = shl i32 %10, 8
  %or.i.i = or i32 %shl.i.i.i, -2147483648
  %call1.i.i = tail call i32 @usb_control_msg(ptr noundef %dev, i32 noundef %or.i.i, i8 noundef zeroext -62, i8 noundef zeroext 64, i16 noundef zeroext %or.i, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 300) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp13 = icmp slt i32 %call1.i.i, 0
  br i1 %cmp13, label %do.body16, label %if.end33

do.body16:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ssu100_initdevice.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ssu100_initdevice, %if.then28)) #5
          to label %out [label %if.then28], !srcloc !80

if.then28:                                        ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #7
  %dev29 = getelementptr inbounds %struct.usb_device, ptr %dev, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ssu100_initdevice.__UNIQUE_ID_ddebug241, ptr noundef %dev29, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2, i32 noundef %call1.i.i) #5
  br label %out

if.end33:                                         ; preds = %if.end10
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %dev, align 8
  %shl.i.i186 = shl i32 %12, 8
  %or.i187 = or i32 %shl.i.i186, -2147483648
  %call1.i = tail call i32 @usb_control_msg(ptr noundef %dev, i32 noundef %or.i187, i8 noundef zeroext -52, i8 noundef zeroext 64, i16 noundef zeroext 128, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 300) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp35 = icmp slt i32 %call1.i, 0
  br i1 %cmp35, label %do.body38, label %if.end55

do.body38:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ssu100_initdevice.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ssu100_initdevice, %if.then50)) #5
          to label %out [label %if.then50], !srcloc !80

if.then50:                                        ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #7
  %dev51 = getelementptr inbounds %struct.usb_device, ptr %dev, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ssu100_initdevice.__UNIQUE_ID_ddebug242, ptr noundef %dev51, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.2, i32 noundef %call1.i) #5
  br label %out

if.end55:                                         ; preds = %if.end33
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dev, align 8
  %shl.i.i188 = shl i32 %14, 8
  %or.i189 = or i32 %shl.i.i188, -2147483648
  %call1.i190 = tail call i32 @usb_control_msg(ptr noundef %dev, i32 noundef %or.i189, i8 noundef zeroext -51, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 300) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i190)
  %cmp57 = icmp slt i32 %call1.i190, 0
  br i1 %cmp57, label %do.body60, label %if.end77

do.body60:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ssu100_initdevice.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ssu100_initdevice, %if.then72)) #5
          to label %out [label %if.then72], !srcloc !80

if.then72:                                        ; preds = %do.body60
  call void @__sanitizer_cov_trace_pc() #7
  %dev73 = getelementptr inbounds %struct.usb_device, ptr %dev, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ssu100_initdevice.__UNIQUE_ID_ddebug243, ptr noundef %dev73, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.2, i32 noundef %call1.i190) #5
  br label %out

if.end77:                                         ; preds = %if.end55
  %15 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %dev, align 8
  %shl.i.i191 = shl i32 %16, 8
  %or1.i192 = or i32 %shl.i.i191, -2147483520
  %call2.i193 = tail call i32 @usb_control_msg(ptr noundef %dev, i32 noundef %or1.i192, i8 noundef zeroext -62, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %call7.i.i, i16 noundef zeroext 3, i32 noundef 300) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call2.i193)
  %17 = icmp ult i32 %call2.i193, 3
  %ret.0.i194 = select i1 %17, i32 -5, i32 %call2.i193
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i194)
  %cmp79 = icmp slt i32 %ret.0.i194, 0
  br i1 %cmp79, label %do.body82, label %if.end99

do.body82:                                        ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ssu100_initdevice.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ssu100_initdevice, %if.then94)) #5
          to label %out [label %if.then94], !srcloc !80

if.then94:                                        ; preds = %do.body82
  call void @__sanitizer_cov_trace_pc() #7
  %dev95 = getelementptr inbounds %struct.usb_device, ptr %dev, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ssu100_initdevice.__UNIQUE_ID_ddebug244, ptr noundef %dev95, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef %ret.0.i194) #5
  br label %out

if.end99:                                         ; preds = %if.end77
  %18 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %call7.i.i, align 8
  %20 = and i8 %19, 60
  %21 = or i8 %20, 2
  store i8 %21, ptr %call7.i.i, align 8
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx, align 1
  %24 = and i8 %23, -66
  store i8 %24, ptr %arrayidx, align 1
  %conv.i196 = zext i8 %24 to i16
  %shl.i197 = shl nuw i16 %conv.i196, 8
  %conv5.i198 = zext i8 %21 to i16
  %or.i199 = or i16 %shl.i197, %conv5.i198
  %25 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %dev, align 8
  %shl.i.i.i200 = shl i32 %26, 8
  %or.i.i201 = or i32 %shl.i.i.i200, -2147483648
  %call1.i.i202 = tail call i32 @usb_control_msg(ptr noundef %dev, i32 noundef %or.i.i201, i8 noundef zeroext -62, i8 noundef zeroext 64, i16 noundef zeroext %or.i199, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 300) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i202)
  %cmp116 = icmp slt i32 %call1.i.i202, 0
  br i1 %cmp116, label %do.body119, label %if.end99.out_crit_edge

if.end99.out_crit_edge:                           ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

do.body119:                                       ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ssu100_initdevice.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ssu100_initdevice, %if.then131)) #5
          to label %out [label %if.then131], !srcloc !80

if.then131:                                       ; preds = %do.body119
  call void @__sanitizer_cov_trace_pc() #7
  %dev132 = getelementptr inbounds %struct.usb_device, ptr %dev, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ssu100_initdevice.__UNIQUE_ID_ddebug245, ptr noundef %dev132, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2, i32 noundef %call1.i.i202) #5
  br label %out

out:                                              ; preds = %if.then131, %do.body119, %if.end99.out_crit_edge, %if.then94, %do.body82, %if.then72, %do.body60, %if.then50, %do.body38, %if.then28, %do.body16, %if.then7, %do.body
  %result.0 = phi i32 [ %ret.0.i, %if.then7 ], [ %call1.i.i, %if.then28 ], [ %call1.i, %if.then50 ], [ %call1.i190, %if.then72 ], [ %ret.0.i194, %if.then94 ], [ %call1.i.i202, %if.then131 ], [ %call1.i.i202, %if.end99.out_crit_edge ], [ %ret.0.i, %do.body ], [ %call1.i.i, %do.body16 ], [ %call1.i, %do.body38 ], [ %call1.i190, %do.body60 ], [ %ret.0.i194, %do.body82 ], [ %call1.i.i202, %do.body119 ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #5
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %result.0, %out ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_serial_generic_open(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_termios_baud_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_serial_handle_sysrq_char(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_insert_flip_string_fixed_flag(ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_flip_buffer_push(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_serial_handle_break(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

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

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !9, !11, !13, !15, !17, !19, !20, !21, !22, !24, !25, !27, !28, !30, !31, !33, !35, !37, !38, !40, !41, !42, !44, !45, !47, !48, !49, !51, !53, !54, !56, !57, !59, !60, !61, !63, !64, !66, !67, !68, !69, !70}
!llvm.module.flags = !{!71, !72, !73, !74, !75, !76, !77, !78}
!llvm.ident = !{!79}

!0 = !{ptr @__initcall__kmod_ssu100__252_540_usb_serial_module_init6, !1, !"__initcall__kmod_ssu100__252_540_usb_serial_module_init6", i1 false, i1 false}
!1 = !{!"../drivers/usb/serial/ssu100.c", i32 540, i32 1}
!2 = !{ptr @__exitcall_usb_serial_module_exit, !1, !"__exitcall_usb_serial_module_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description253, !4, !"__UNIQUE_ID_description253", i1 false, i1 false}
!4 = !{!"../drivers/usb/serial/ssu100.c", i32 542, i32 1}
!5 = !{ptr @__UNIQUE_ID_file254, !6, !"__UNIQUE_ID_file254", i1 false, i1 false}
!6 = !{!"../drivers/usb/serial/ssu100.c", i32 543, i32 1}
!7 = !{ptr @__UNIQUE_ID_license255, !6, !"__UNIQUE_ID_license255", i1 false, i1 false}
!8 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @id_table, !10, !"id_table", i1 false, i1 false}
!10 = !{!"../drivers/usb/serial/ssu100.c", i32 54, i32 35}
!11 = !{ptr @serial_drivers, !12, !"serial_drivers", i1 false, i1 false}
!12 = !{!"../drivers/usb/serial/ssu100.c", i32 536, i32 41}
!13 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/usb/serial/ssu100.c", i32 520, i32 22}
!15 = !{ptr @ssu100_device, !16, !"ssu100_device", i1 false, i1 false}
!16 = !{!"../drivers/usb/serial/ssu100.c", i32 515, i32 33}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/usb/serial/ssu100.c", i32 169, i32 3}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @ssu100_initdevice.__UNIQUE_ID_ddebug240, !18, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!22 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/usb/serial/ssu100.c", i32 177, i32 3}
!24 = !{ptr @ssu100_initdevice.__UNIQUE_ID_ddebug241, !23, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!25 = !{ptr @.str.6, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/usb/serial/ssu100.c", i32 183, i32 3}
!27 = !{ptr @ssu100_initdevice.__UNIQUE_ID_ddebug242, !26, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!28 = !{ptr @.str.7, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/usb/serial/ssu100.c", i32 189, i32 3}
!30 = !{ptr @ssu100_initdevice.__UNIQUE_ID_ddebug243, !29, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!31 = !{ptr @ssu100_initdevice.__UNIQUE_ID_ddebug244, !32, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!32 = !{!"../drivers/usb/serial/ssu100.c", i32 195, i32 3}
!33 = !{ptr @ssu100_initdevice.__UNIQUE_ID_ddebug245, !34, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!34 = !{!"../drivers/usb/serial/ssu100.c", i32 206, i32 3}
!35 = !{ptr @ssu100_port_probe.__key, !36, !"__key", i1 false, i1 false}
!36 = !{!"../drivers/usb/serial/ssu100.c", i32 347, i32 2}
!37 = !{ptr @.str.8, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.9, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/usb/serial/ssu100.c", i32 309, i32 3}
!40 = !{ptr @.str.10, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @ssu100_open.__UNIQUE_ID_ddebug250, !39, !"__UNIQUE_ID_ddebug250", i1 false, i1 false}
!42 = !{ptr @.str.11, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/usb/serial/ssu100.c", i32 326, i32 3}
!44 = !{ptr @ssu100_open.__UNIQUE_ID_ddebug251, !43, !"__UNIQUE_ID_ddebug251", i1 false, i1 false}
!45 = !{ptr @.str.12, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/usb/serial/ssu100.c", i32 254, i32 2}
!47 = !{ptr @.str.13, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @ssu100_set_termios.__UNIQUE_ID_ddebug246, !46, !"__UNIQUE_ID_ddebug246", i1 false, i1 false}
!49 = !{ptr @ssu100_set_termios.__UNIQUE_ID_ddebug247, !50, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!50 = !{!"../drivers/usb/serial/ssu100.c", i32 266, i32 3}
!51 = !{ptr @.str.14, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/usb/serial/ssu100.c", i32 275, i32 3}
!53 = !{ptr @ssu100_set_termios.__UNIQUE_ID_ddebug248, !52, !"__UNIQUE_ID_ddebug248", i1 false, i1 false}
!54 = !{ptr @.str.15, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/usb/serial/ssu100.c", i32 287, i32 3}
!56 = !{ptr @ssu100_set_termios.__UNIQUE_ID_ddebug249, !55, !"__UNIQUE_ID_ddebug249", i1 false, i1 false}
!57 = !{ptr @.str.16, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/usb/serial/ssu100.c", i32 140, i32 3}
!59 = !{ptr @.str.17, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @update_mctrl.__UNIQUE_ID_ddebug238, !58, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!61 = !{ptr @.str.18, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/usb/serial/ssu100.c", i32 153, i32 3}
!63 = !{ptr @update_mctrl.__UNIQUE_ID_ddebug239, !62, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!64 = !{ptr @.str.19, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/usb/serial/ssu100.c", i32 409, i32 4}
!66 = !{ptr @.str.20, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @.str.21, !65, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @.str.22, !65, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @ssu100_dtr_rts._entry, !65, !"_entry", i1 false, i1 false}
!70 = !{ptr @ssu100_dtr_rts._entry_ptr, !65, !"_entry_ptr", i1 false, i1 false}
!71 = !{i32 1, !"wchar_size", i32 2}
!72 = !{i32 1, !"min_enum_size", i32 4}
!73 = !{i32 8, !"branch-target-enforcement", i32 0}
!74 = !{i32 8, !"sign-return-address", i32 0}
!75 = !{i32 8, !"sign-return-address-all", i32 0}
!76 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!77 = !{i32 7, !"uwtable", i32 1}
!78 = !{i32 7, !"frame-pointer", i32 2}
!79 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!80 = !{i64 2148221226, i64 2148221231, i64 2148221244, i64 2148221288, i64 2148221322, i64 2148221343}
