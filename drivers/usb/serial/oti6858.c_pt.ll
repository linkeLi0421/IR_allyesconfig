; ModuleID = '/llk/IR_all_yes/drivers/usb/serial/oti6858.c_pt.bc'
source_filename = "../drivers/usb/serial/oti6858.c"
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
%struct.oti6858_private = type { %struct.spinlock, %struct.oti6858_control_pkt, %struct.anon.75, %struct.delayed_work, %struct.anon.76, i8, i8, %struct.delayed_work, ptr }
%struct.oti6858_control_pkt = type { i16, i8, i8, i8, i8, i8, i8 }
%struct.anon.75 = type { i8, i8 }
%struct.anon.76 = type { i16, i8, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }

@__initcall__kmod_oti6858__256_838_usb_serial_module_init6 = internal global ptr @usb_serial_module_init, section ".initcall6.init", align 4
@serial_drivers = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @oti6858_device, ptr null], [24 x i8] zeroinitializer }, align 32
@__exitcall_usb_serial_module_exit = internal global ptr @usb_serial_module_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description257 = internal constant [79 x i8] c"oti6858.description=Ours Technology Inc. OTi-6858 USB to serial adapter driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author258 = internal constant [55 x i8] c"oti6858.author=Tomasz Michal Lukaszewski <FIXME@FIXME>\00", section ".modinfo", align 1
@__UNIQUE_ID_file259 = internal constant [40 x i8] c"oti6858.file=drivers/usb/serial/oti6858\00", section ".modinfo", align 1
@__UNIQUE_ID_license260 = internal constant [23 x i8] c"oti6858.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"oti6858\00", [24 x i8] zeroinitializer }, align 32
@id_table = internal constant { [2 x %struct.usb_device_id], [48 x i8] } { [2 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 3744, i16 26712, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@oti6858_device = internal global { %struct.usb_serial_driver, [72 x i8] } { %struct.usb_serial_driver { ptr null, ptr @id_table, %struct.list_head zeroinitializer, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, %struct.usb_dynids zeroinitializer, i8 1, i8 1, i8 1, i8 1, i8 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @oti6858_port_probe, ptr @oti6858_port_remove, ptr null, ptr null, ptr null, ptr @oti6858_open, ptr @oti6858_close, ptr @oti6858_write, ptr @oti6858_write_room, ptr null, ptr null, ptr null, ptr @oti6858_set_termios, ptr null, ptr @oti6858_chars_in_buffer, ptr null, ptr null, ptr null, ptr null, ptr @oti6858_tiocmget, ptr @oti6858_tiocmset, ptr @usb_serial_generic_tiocmiwait, ptr null, ptr null, ptr null, ptr @oti6858_init_termios, ptr @oti6858_read_int_callback, ptr null, ptr @oti6858_read_bulk_callback, ptr @oti6858_write_bulk_callback, ptr null, ptr null }, [72 x i8] zeroinitializer }, align 32
@oti6858_port_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&priv->lock\00", [20 x i8] zeroinitializer }, align 32
@oti6858_port_probe.__key.2 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"(work_completion)(&(&priv->delayed_setup_work)->work)\00", [42 x i8] zeroinitializer }, align 32
@oti6858_port_probe.__key.4 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"&(&priv->delayed_setup_work)->timer\00", [60 x i8] zeroinitializer }, align 32
@oti6858_port_probe.__key.6 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"(work_completion)(&(&priv->delayed_write_work)->work)\00", [42 x i8] zeroinitializer }, align 32
@oti6858_port_probe.__key.8 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"&(&priv->delayed_write_work)->timer\00", [60 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@setup_line._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.12, i32 218, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s(): error reading status\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"setup_line\00", [21 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/usb/serial/oti6858.c\00", [35 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@setup_line._entry_ptr = internal global ptr @setup_line._entry, section ".printk_index", align 4
@setup_line.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.12, ptr @.str.15, i8 0, i8 63, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s(): submitting interrupt urb\0A\00", [32 x i8] zeroinitializer }, align 32
@setup_line._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.11, ptr @.str.12, i32 256, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s(): usb_submit_urb() failed with error %d\0A\00", [51 x i8] zeroinitializer }, align 32
@setup_line._entry_ptr.18 = internal global ptr @setup_line._entry.16, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@send_data.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.19, ptr @.str.12, ptr @.str.15, i8 0, i8 76, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"send_data\00", [22 x i8] zeroinitializer }, align 32
@send_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.19, ptr @.str.12, i32 308, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@send_data._entry_ptr = internal global ptr @send_data._entry, section ".printk_index", align 4
@send_data.__print_once = internal global { i1, [31 x i8] } zeroinitializer, align 32
@send_data._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.19, ptr @.str.12, i32 320, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@send_data._entry_ptr.21 = internal global ptr @send_data._entry.20, section ".printk_index", align 4
@oti6858_open.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.22, ptr @.str.12, ptr @.str.15, i8 0, i8 -122, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"oti6858_open\00", [19 x i8] zeroinitializer }, align 32
@oti6858_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.22, ptr @.str.12, i32 543, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@oti6858_open._entry_ptr = internal global ptr @oti6858_open._entry, section ".printk_index", align 4
@oti6858_close.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.23, ptr @.str.12, ptr @.str.24, i8 0, i8 -115, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"oti6858_close\00", [18 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s(): after buf_clear()\0A\00", [39 x i8] zeroinitializer }, align 32
@oti6858_close.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.23, ptr @.str.12, ptr @.str.25, i8 0, i8 -113, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s(): shutting down urbs\0A\00", [38 x i8] zeroinitializer }, align 32
@oti6858_tiocmget.__UNIQUE_ID_ddebug246 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.26, ptr @.str.12, ptr @.str.27, i8 0, i8 -98, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"oti6858_tiocmget\00", [47 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s() = 0x%08x\0A\00", [17 x i8] zeroinitializer }, align 32
@oti6858_tiocmset.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.28, ptr @.str.12, ptr @.str.29, i8 0, i8 -110, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"oti6858_tiocmset\00", [47 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s(set = 0x%08x, clear = 0x%08x)\0A\00", [62 x i8] zeroinitializer }, align 32
@oti6858_read_int_callback.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.30, ptr @.str.12, ptr @.str.31, i8 0, i8 -93, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"oti6858_read_int_callback\00", [38 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s(): urb shutting down with status: %d\0A\00", [55 x i8] zeroinitializer }, align 32
@oti6858_read_int_callback.__UNIQUE_ID_ddebug248 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.30, ptr @.str.12, ptr @.str.32, i8 0, i8 -92, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s(): nonzero urb status received: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@oti6858_read_int_callback.__UNIQUE_ID_ddebug249 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.30, ptr @.str.12, ptr @.str.33, i8 0, i8 -88, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s(): scheduling setup_line()\0A\00", [33 x i8] zeroinitializer }, align 32
@oti6858_read_int_callback.__UNIQUE_ID_ddebug250 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.30, ptr @.str.12, ptr @.str.33, i8 0, i8 -84, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@oti6858_read_int_callback._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.30, ptr @.str.12, i32 730, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s(): usb_submit_urb() failed, error %d\0A\00", [55 x i8] zeroinitializer }, align 32
@oti6858_read_int_callback._entry_ptr = internal global ptr @oti6858_read_int_callback._entry, section ".printk_index", align 4
@oti6858_read_int_callback._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.30, ptr @.str.12, i32 758, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@oti6858_read_int_callback._entry_ptr.36 = internal global ptr @oti6858_read_int_callback._entry.35, section ".printk_index", align 4
@oti6858_read_bulk_callback.__UNIQUE_ID_ddebug251 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.37, ptr @.str.12, ptr @.str.38, i8 0, i8 -62, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"oti6858_read_bulk_callback\00", [37 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s(): unable to handle the error, exiting\0A\00", [53 x i8] zeroinitializer }, align 32
@oti6858_read_bulk_callback._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.37, ptr @.str.12, i32 790, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@oti6858_read_bulk_callback._entry_ptr = internal global ptr @oti6858_read_bulk_callback._entry, section ".printk_index", align 4
@oti6858_write_bulk_callback.__UNIQUE_ID_ddebug252 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.39, ptr @.str.12, ptr @.str.31, i8 0, i8 -54, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"oti6858_write_bulk_callback\00", [36 x i8] zeroinitializer }, align 32
@oti6858_write_bulk_callback.__UNIQUE_ID_ddebug253 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.39, ptr @.str.12, ptr @.str.40, i8 0, i8 -53, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s(): nonzero write bulk status received: %d\0A\00", [50 x i8] zeroinitializer }, align 32
@oti6858_write_bulk_callback.__UNIQUE_ID_ddebug254 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.39, ptr @.str.12, ptr @.str.41, i8 0, i8 -53, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s(): overflow in write\0A\00", [39 x i8] zeroinitializer }, align 32
@oti6858_write_bulk_callback.__print_once = internal global { i1, [31 x i8] } zeroinitializer, align 32
@oti6858_write_bulk_callback._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.39, ptr @.str.12, i32 821, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@oti6858_write_bulk_callback._entry_ptr = internal global ptr @oti6858_write_bulk_callback._entry, section ".printk_index", align 4
@oti6858_write_bulk_callback.__UNIQUE_ID_ddebug255 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.39, ptr @.str.12, ptr @.str.15, i8 0, i8 -49, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@oti6858_write_bulk_callback._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.39, ptr @.str.12, i32 834, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s(): failed submitting int urb, error %d\0A\00", [53 x i8] zeroinitializer }, align 32
@oti6858_write_bulk_callback._entry_ptr.44 = internal global ptr @oti6858_write_bulk_callback._entry.42, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 16, i64 32]
@__sancov_gen_cov_switch_values.45 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 4294967188, i64 4294967192, i64 4294967294]
@__sancov_gen_cov_switch_values.46 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.47 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 4294967188, i64 4294967192, i64 4294967294]
@___asan_gen_.48 = private unnamed_addr constant [15 x i8] c"serial_drivers\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 165, i32 41 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 838, i32 1 }
@___asan_gen_.54 = private unnamed_addr constant [9 x i8] c"id_table\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 57, i32 35 }
@___asan_gen_.57 = private unnamed_addr constant [15 x i8] c"oti6858_device\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 138, i32 33 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 335, i32 2 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 337, i32 2 }
@___asan_gen_.84 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 338, i32 2 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 218, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 252, i32 2 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 255, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 304, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 307, i32 4 }
@___asan_gen_.123 = private unnamed_addr constant [23 x i8] c"send_data.__print_once\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 319, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 539, i32 2 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 542, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 565, i32 2 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 572, i32 2 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 634, i32 2 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 586, i32 2 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 654, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 658, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 675, i32 6 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 729, i32 4 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 756, i32 4 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 777, i32 3 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 789, i32 3 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 809, i32 3 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 814, i32 3 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 815, i32 3 }
@___asan_gen_.193 = private unnamed_addr constant [41 x i8] c"oti6858_write_bulk_callback.__print_once\00", align 1
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 820, i32 4 }
@___asan_gen_.197 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.200 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.201 = private constant [32 x i8] c"../drivers/usb/serial/oti6858.c\00", align 1
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 833, i32 3 }
@llvm.compiler.used = appending global [70 x ptr] [ptr @__UNIQUE_ID_author258, ptr @__UNIQUE_ID_description257, ptr @__UNIQUE_ID_file259, ptr @__UNIQUE_ID_license260, ptr @__exitcall_usb_serial_module_exit, ptr @__initcall__kmod_oti6858__256_838_usb_serial_module_init6, ptr @oti6858_open._entry, ptr @oti6858_open._entry_ptr, ptr @oti6858_read_bulk_callback._entry, ptr @oti6858_read_bulk_callback._entry_ptr, ptr @oti6858_read_int_callback._entry, ptr @oti6858_read_int_callback._entry.35, ptr @oti6858_read_int_callback._entry_ptr, ptr @oti6858_read_int_callback._entry_ptr.36, ptr @oti6858_write_bulk_callback._entry, ptr @oti6858_write_bulk_callback._entry.42, ptr @oti6858_write_bulk_callback._entry_ptr, ptr @oti6858_write_bulk_callback._entry_ptr.44, ptr @send_data._entry, ptr @send_data._entry.20, ptr @send_data._entry_ptr, ptr @send_data._entry_ptr.21, ptr @setup_line._entry, ptr @setup_line._entry.16, ptr @setup_line._entry_ptr, ptr @setup_line._entry_ptr.18, ptr @usb_serial_module_exit, ptr @serial_drivers, ptr @.str, ptr @id_table, ptr @oti6858_device, ptr @oti6858_port_probe.__key, ptr @.str.1, ptr @oti6858_port_probe.__key.2, ptr @.str.3, ptr @oti6858_port_probe.__key.4, ptr @.str.5, ptr @oti6858_port_probe.__key.6, ptr @.str.7, ptr @oti6858_port_probe.__key.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr @send_data.__print_once, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @oti6858_write_bulk_callback.__print_once, ptr @.str.43], section "llvm.metadata"
@0 = internal global [53 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serial_drivers to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @id_table to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @oti6858_device to i32), i32 312, i32 384, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @oti6858_port_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @oti6858_port_probe.__key.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @oti6858_port_probe.__key.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @oti6858_port_probe.__key.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @oti6858_port_probe.__key.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @setup_line._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @setup_line._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @send_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @send_data.__print_once to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @send_data._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @oti6858_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @oti6858_read_int_callback._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @oti6858_read_int_callback._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @oti6858_read_bulk_callback._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @oti6858_write_bulk_callback.__print_once to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @oti6858_write_bulk_callback._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @oti6858_write_bulk_callback._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @usb_serial_module_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_serial_register_drivers(ptr noundef nonnull @serial_drivers, ptr noundef nonnull @.str, ptr noundef nonnull @id_table) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @usb_serial_module_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @usb_serial_deregister_drivers(ptr noundef nonnull @serial_drivers) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_serial_deregister_drivers(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_serial_register_drivers(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @oti6858_port_probe(ptr noundef %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 268) #9
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__raw_spin_lock_init(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.1, ptr noundef nonnull @oti6858_port_probe.__key, i16 noundef signext 3) #6
  %port2 = getelementptr inbounds %struct.oti6858_private, ptr %call7.i.i, i32 0, i32 8
  %1 = ptrtoint ptr %port2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %port, ptr %port2, align 8
  %delayed_setup_work = getelementptr inbounds %struct.oti6858_private, ptr %call7.i.i, i32 0, i32 7
  tail call void @__init_work(ptr noundef %delayed_setup_work, i32 noundef 0) #6
  %2 = ptrtoint ptr %delayed_setup_work to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -64, ptr %delayed_setup_work, align 4
  %lockdep_map = getelementptr inbounds %struct.oti6858_private, ptr %call7.i.i, i32 0, i32 7, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.3, ptr noundef nonnull @oti6858_port_probe.__key.2, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #6
  %entry11 = getelementptr inbounds %struct.oti6858_private, ptr %call7.i.i, i32 0, i32 7, i32 0, i32 1
  %3 = ptrtoint ptr %entry11 to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %entry11, ptr %entry11, align 8
  %prev.i = getelementptr inbounds %struct.oti6858_private, ptr %call7.i.i, i32 0, i32 7, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %entry11, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.oti6858_private, ptr %call7.i.i, i32 0, i32 7, i32 0, i32 2
  %5 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @setup_line, ptr %func, align 8
  %timer = getelementptr inbounds %struct.oti6858_private, ptr %call7.i.i, i32 0, i32 7, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.5, ptr noundef nonnull @oti6858_port_probe.__key.4) #6
  %delayed_write_work = getelementptr inbounds %struct.oti6858_private, ptr %call7.i.i, i32 0, i32 3
  tail call void @__init_work(ptr noundef %delayed_write_work, i32 noundef 0) #6
  %6 = ptrtoint ptr %delayed_write_work to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -64, ptr %delayed_write_work, align 8
  %lockdep_map32 = getelementptr inbounds %struct.oti6858_private, ptr %call7.i.i, i32 0, i32 3, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map32, ptr noundef nonnull @.str.7, ptr noundef nonnull @oti6858_port_probe.__key.6, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #6
  %entry35 = getelementptr inbounds %struct.oti6858_private, ptr %call7.i.i, i32 0, i32 3, i32 0, i32 1
  %7 = ptrtoint ptr %entry35 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %entry35, ptr %entry35, align 4
  %prev.i66 = getelementptr inbounds %struct.oti6858_private, ptr %call7.i.i, i32 0, i32 3, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %prev.i66 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %entry35, ptr %prev.i66, align 8
  %func38 = getelementptr inbounds %struct.oti6858_private, ptr %call7.i.i, i32 0, i32 3, i32 0, i32 2
  %9 = ptrtoint ptr %func38 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @send_data, ptr %func38, align 4
  %timer43 = getelementptr inbounds %struct.oti6858_private, ptr %call7.i.i, i32 0, i32 3, i32 1
  tail call void @init_timer_key(ptr noundef %timer43, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.9, ptr noundef nonnull @oti6858_port_probe.__key.8) #6
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32, i32 8
  %10 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %drain_delay = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 1, i32 18
  %11 = ptrtoint ptr %drain_delay to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 256, ptr %drain_delay, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @oti6858_port_remove(ptr nocapture noundef readonly %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @kfree(ptr noundef %1) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @oti6858_open(ptr noundef %tty, ptr noundef %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  %write_urb = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 21
  %6 = ptrtoint ptr %write_urb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %write_urb, align 8
  %pipe = getelementptr inbounds %struct.urb, ptr %7, i32 0, i32 10
  %8 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pipe, align 4
  %call2 = tail call i32 @usb_clear_halt(ptr noundef %5, i32 noundef %9) #6
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %3, align 4
  %read_urb = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 14
  %12 = ptrtoint ptr %read_urb to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %read_urb, align 4
  %pipe4 = getelementptr inbounds %struct.urb, ptr %13, i32 0, i32 10
  %14 = ptrtoint ptr %pipe4 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pipe4, align 4
  %call5 = tail call i32 @usb_clear_halt(ptr noundef %11, i32 noundef %15) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %16 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %16, i32 noundef 3264, i32 noundef 8) #9
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %17 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %3, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 8
  %shl.i = shl i32 %20, 8
  %or10 = or i32 %shl.i, -2147483520
  %call11 = tail call i32 @usb_control_msg(ptr noundef %18, i32 noundef %or10, i8 noundef zeroext 1, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %call7.i, i16 noundef zeroext 8, i32 noundef 100) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %call11)
  %cmp.not = icmp eq i32 %call11, 8
  br i1 %cmp.not, label %if.end.do.body14_crit_edge, label %if.then12

if.end.do.body14_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body14

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %call7.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 -25600, ptr %call7.i, align 8
  %frame_fmt = getelementptr inbounds %struct.oti6858_control_pkt, ptr %call7.i, i32 0, i32 1
  %22 = ptrtoint ptr %frame_fmt to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 3, ptr %frame_fmt, align 2
  %something = getelementptr inbounds %struct.oti6858_control_pkt, ptr %call7.i, i32 0, i32 2
  %23 = ptrtoint ptr %something to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 67, ptr %something, align 1
  %control = getelementptr inbounds %struct.oti6858_control_pkt, ptr %call7.i, i32 0, i32 3
  %24 = ptrtoint ptr %control to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 76, ptr %control, align 4
  %tx_status = getelementptr inbounds %struct.oti6858_control_pkt, ptr %call7.i, i32 0, i32 4
  %25 = ptrtoint ptr %tx_status to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %tx_status, align 1
  %pin_state = getelementptr inbounds %struct.oti6858_control_pkt, ptr %call7.i, i32 0, i32 5
  %26 = ptrtoint ptr %pin_state to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 91, ptr %pin_state, align 2
  %rx_bytes_avail = getelementptr inbounds %struct.oti6858_control_pkt, ptr %call7.i, i32 0, i32 6
  %27 = ptrtoint ptr %rx_bytes_avail to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %rx_bytes_avail, align 1
  br label %do.body14

do.body14:                                        ; preds = %if.then12, %if.end.do.body14_crit_edge
  %call17 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #6
  %status = getelementptr inbounds %struct.oti6858_private, ptr %1, i32 0, i32 1
  %28 = ptrtoint ptr %call7.i to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %call7.i, align 8
  %30 = ptrtoint ptr %status to i32
  call void @__asan_storeN_noabort(i32 %30, i32 8)
  store i64 %29, ptr %status, align 4
  %31 = load i16, ptr %call7.i, align 8
  %pending_setup = getelementptr inbounds %struct.oti6858_private, ptr %1, i32 0, i32 4
  %32 = ptrtoint ptr %pending_setup to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %31, ptr %pending_setup, align 4
  %frame_fmt22 = getelementptr inbounds %struct.oti6858_control_pkt, ptr %call7.i, i32 0, i32 1
  %33 = ptrtoint ptr %frame_fmt22 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %frame_fmt22, align 2
  %frame_fmt24 = getelementptr inbounds %struct.oti6858_private, ptr %1, i32 0, i32 4, i32 1
  %35 = ptrtoint ptr %frame_fmt24 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %34, ptr %frame_fmt24, align 2
  %control25 = getelementptr inbounds %struct.oti6858_control_pkt, ptr %call7.i, i32 0, i32 3
  %36 = ptrtoint ptr %control25 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %control25, align 4
  %control27 = getelementptr inbounds %struct.oti6858_private, ptr %1, i32 0, i32 4, i32 2
  %38 = ptrtoint ptr %control27 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %37, ptr %control27, align 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %call17) #6
  tail call void @kfree(ptr noundef nonnull %call7.i) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @oti6858_open.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@oti6858_open, %if.then35)) #6
          to label %do.end39 [label %if.then35], !srcloc !130

if.then35:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #8
  %dev36 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @oti6858_open.__UNIQUE_ID_ddebug242, ptr noundef %dev36, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.22) #6
  br label %do.end39

do.end39:                                         ; preds = %if.then35, %do.body14
  %interrupt_in_urb = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 6
  %39 = ptrtoint ptr %interrupt_in_urb to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %interrupt_in_urb, align 4
  %call40 = tail call i32 @usb_submit_urb(ptr noundef %40, i32 noundef 3264) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %cmp41.not = icmp eq i32 %call40, 0
  br i1 %cmp41.not, label %if.end48, label %do.end46

do.end46:                                         ; preds = %do.end39
  call void @__sanitizer_cov_trace_pc() #8
  %dev47 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev47, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.22, i32 noundef %call40) #10
  tail call void @oti6858_close(ptr noundef %port)
  br label %cleanup

if.end48:                                         ; preds = %do.end39
  %tobool49.not = icmp eq ptr %tty, null
  br i1 %tobool49.not, label %if.end48.cleanup_crit_edge, label %if.then50

if.end48.cleanup_crit_edge:                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then50:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @oti6858_set_termios(ptr noundef nonnull %tty, ptr noundef %port, ptr noundef null)
  br label %cleanup

cleanup:                                          ; preds = %if.then50, %if.end48.cleanup_crit_edge, %do.end46, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call40, %do.end46 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.then50 ], [ 0, %if.end48.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @oti6858_close(ptr noundef %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %lock = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 2
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %write_fifo = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 22
  %2 = ptrtoint ptr %write_fifo to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %write_fifo, align 4
  %out = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 22, i32 0, i32 0, i32 1
  %4 = ptrtoint ptr %out to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %out, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @oti6858_close.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@oti6858_close, %if.then)) #6
          to label %do.end14 [label %if.then], !srcloc !130

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @oti6858_close.__UNIQUE_ID_ddebug243, ptr noundef %dev, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.23) #6
  br label %do.end14

do.end14:                                         ; preds = %if.then, %entry
  %delayed_setup_work = getelementptr inbounds %struct.oti6858_private, ptr %1, i32 0, i32 7
  %call15 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %delayed_setup_work) #6
  %delayed_write_work = getelementptr inbounds %struct.oti6858_private, ptr %1, i32 0, i32 3
  %call16 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %delayed_write_work) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @oti6858_close.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@oti6858_close, %if.then29)) #6
          to label %do.end33 [label %if.then29], !srcloc !130

if.then29:                                        ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #8
  %dev30 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @oti6858_close.__UNIQUE_ID_ddebug244, ptr noundef %dev30, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.23) #6
  br label %do.end33

do.end33:                                         ; preds = %if.then29, %do.end14
  %write_urb = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 21
  %5 = ptrtoint ptr %write_urb to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %write_urb, align 8
  tail call void @usb_kill_urb(ptr noundef %6) #6
  %read_urb = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 14
  %7 = ptrtoint ptr %read_urb to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %read_urb, align 4
  tail call void @usb_kill_urb(ptr noundef %8) #6
  %interrupt_in_urb = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 6
  %9 = ptrtoint ptr %interrupt_in_urb to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %interrupt_in_urb, align 4
  tail call void @usb_kill_urb(ptr noundef %10) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @oti6858_write(ptr nocapture noundef readnone %tty, ptr noundef %port, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %tobool.not = icmp eq i32 %count, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %lock = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 2
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %write_fifo = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 22
  %call6 = tail call i32 @__kfifo_in(ptr noundef %write_fifo, ptr noundef %buf, i32 noundef %count) #6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #6
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call6, %if.end ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @oti6858_write_room(ptr nocapture noundef readonly %tty) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %lock = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 2
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %write_fifo = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 22
  %mask = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 22, i32 0, i32 0, i32 2
  %2 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mask, align 4
  %4 = ptrtoint ptr %write_fifo to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %write_fifo, align 4
  %out = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 22, i32 0, i32 0, i32 1
  %6 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %out, align 4
  %sub.neg = add i32 %3, 1
  %add = sub i32 %sub.neg, %5
  %sub6 = add i32 %add, %7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #6
  ret i32 %sub6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @oti6858_set_termios(ptr noundef %tty, ptr nocapture noundef readonly %port, ptr nocapture noundef readnone %old_termios) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %c_cflag = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 2
  %2 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %c_cflag, align 4
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #6
  %pending_setup = getelementptr inbounds %struct.oti6858_private, ptr %1, i32 0, i32 4
  %frame_fmt8 = getelementptr inbounds %struct.oti6858_private, ptr %1, i32 0, i32 4, i32 1
  %4 = ptrtoint ptr %frame_fmt8 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %frame_fmt8, align 2
  %control10 = getelementptr inbounds %struct.oti6858_private, ptr %1, i32 0, i32 4, i32 2
  %6 = ptrtoint ptr %control10 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %control10, align 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %call3) #6
  %8 = and i8 %5, -4
  %and14 = and i32 %3, 48
  %9 = zext i32 %and14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and14, label %sw.bb25 [
    i32 0, label %entry.sw.epilog_crit_edge
    i32 16, label %sw.bb17
    i32 32, label %sw.bb21
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb17:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %10 = or i8 %8, 1
  br label %sw.epilog

sw.bb21:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %11 = or i8 %8, 2
  br label %sw.epilog

sw.bb25:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %12 = or i8 %5, 3
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb25, %sw.bb21, %sw.bb17, %entry.sw.epilog_crit_edge
  %frame_fmt.0 = phi i8 [ %12, %sw.bb25 ], [ %11, %sw.bb21 ], [ %10, %sw.bb17 ], [ %8, %entry.sw.epilog_crit_edge ]
  %termios.i = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13
  %call.i = tail call i32 @tty_termios_baud_rate(ptr noundef %termios.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp30 = icmp eq i32 %call.i, 0
  br i1 %cmp30, label %sw.epilog.if.end_crit_edge, label %if.else

sw.epilog.if.end_crit_edge:                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.else:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  %13 = tail call i32 @llvm.smin.i32(i32 %call.i, i32 3000000)
  %mul = shl i32 %13, 3
  %add = add i32 %mul, 96000000
  %mul35 = shl i32 %13, 4
  %div = sdiv i32 %add, %mul35
  %mul36 = shl i32 %div, 4
  %div37 = sdiv i32 96000000, %mul36
  %conv38 = trunc i32 %div to i16
  %14 = tail call i16 @llvm.bswap.i16(i16 %conv38)
  tail call void @tty_encode_baud_rate(ptr noundef %tty, i32 noundef %div37, i32 noundef %div37) #6
  br label %if.end

if.end:                                           ; preds = %if.else, %sw.epilog.if.end_crit_edge
  %divisor.0 = phi i16 [ %14, %if.else ], [ 0, %sw.epilog.if.end_crit_edge ]
  %15 = and i8 %frame_fmt.0, 7
  %16 = trunc i32 %3 to i8
  %17 = and i8 %16, 64
  %18 = or i8 %15, %17
  %and57 = and i32 %3, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57)
  %cmp58.not = icmp eq i32 %and57, 0
  br i1 %cmp58.not, label %if.end.if.end77_crit_edge, label %if.then60

if.end.if.end77_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end77

if.then60:                                        ; preds = %if.end
  %and61 = and i32 %3, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61)
  %cmp62.not = icmp eq i32 %and61, 0
  br i1 %cmp62.not, label %if.else68, label %if.then64

if.then64:                                        ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #8
  %19 = or i8 %18, 8
  br label %if.end77

if.else68:                                        ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #8
  %20 = or i8 %18, 24
  br label %if.end77

if.end77:                                         ; preds = %if.else68, %if.then64, %if.end.if.end77_crit_edge
  %frame_fmt.2 = phi i8 [ %19, %if.then64 ], [ %20, %if.else68 ], [ %18, %if.end.if.end77_crit_edge ]
  %21 = and i8 %7, -13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp82.not174 = icmp slt i32 %3, 0
  %masksel = select i1 %cmp82.not174, i8 12, i8 0
  %spec.select = or i8 %21, %masksel
  %call98 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #6
  %22 = ptrtoint ptr %pending_setup to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %pending_setup, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %divisor.0, i16 %23)
  %cmp107.not = icmp eq i16 %divisor.0, %23
  br i1 %cmp107.not, label %lor.lhs.false, label %if.end77.if.then122_crit_edge

if.end77.if.then122_crit_edge:                    ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then122

lor.lhs.false:                                    ; preds = %if.end77
  %24 = ptrtoint ptr %control10 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %control10, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %spec.select, i8 %25)
  %cmp113.not = icmp eq i8 %spec.select, %25
  br i1 %cmp113.not, label %lor.lhs.false115, label %lor.lhs.false.if.then122_crit_edge

lor.lhs.false.if.then122_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then122

lor.lhs.false115:                                 ; preds = %lor.lhs.false
  %26 = ptrtoint ptr %frame_fmt8 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %frame_fmt8, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %frame_fmt.2, i8 %27)
  %cmp120.not = icmp eq i8 %frame_fmt.2, %27
  br i1 %cmp120.not, label %lor.lhs.false115.if.end129_crit_edge, label %lor.lhs.false115.if.then122_crit_edge

lor.lhs.false115.if.then122_crit_edge:            ; preds = %lor.lhs.false115
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then122

lor.lhs.false115.if.end129_crit_edge:             ; preds = %lor.lhs.false115
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end129

if.then122:                                       ; preds = %lor.lhs.false115.if.then122_crit_edge, %lor.lhs.false.if.then122_crit_edge, %if.end77.if.then122_crit_edge
  %28 = ptrtoint ptr %pending_setup to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %divisor.0, ptr %pending_setup, align 4
  %29 = ptrtoint ptr %control10 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %spec.select, ptr %control10, align 1
  %30 = ptrtoint ptr %frame_fmt8 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %frame_fmt.2, ptr %frame_fmt8, align 2
  br label %if.end129

if.end129:                                        ; preds = %if.then122, %lor.lhs.false115.if.end129_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %call98) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @oti6858_chars_in_buffer(ptr nocapture noundef readonly %tty) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %lock = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 2
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %write_fifo = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %write_fifo to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %write_fifo, align 4
  %out = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 22, i32 0, i32 0, i32 1
  %4 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %out, align 4
  %sub = sub i32 %3, %5
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #6
  ret i32 %sub
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @oti6858_tiocmget(ptr nocapture noundef readonly %tty) #2 align 64 {
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
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #6
  %pin_state6 = getelementptr inbounds %struct.oti6858_private, ptr %3, i32 0, i32 1, i32 5
  %4 = ptrtoint ptr %pin_state6 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %pin_state6, align 2
  %6 = and i8 %5, 63
  %and = zext i8 %6 to i32
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %call3) #6
  %and9 = lshr i32 %and, 3
  %7 = and i32 %and9, 4
  %and12 = shl nuw nsw i32 %and, 1
  %8 = and i32 %and12, 32
  %9 = or i32 %8, %7
  %and18 = shl nuw nsw i32 %and, 5
  %10 = and i32 %and18, 256
  %11 = or i32 %9, %10
  %and24 = lshr i32 %and, 1
  %12 = and i32 %and24, 2
  %13 = or i32 %11, %12
  %and30 = shl nuw nsw i32 %and, 6
  %14 = and i32 %and30, 128
  %15 = or i32 %13, %14
  %16 = and i32 %and30, 64
  %17 = or i32 %15, %16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @oti6858_tiocmget.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@oti6858_tiocmget, %if.then47)) #6
          to label %do.end50 [label %if.then47], !srcloc !130

if.then47:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @oti6858_tiocmget.__UNIQUE_ID_ddebug246, ptr noundef %dev, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.26, i32 noundef %17) #6
  br label %do.end50

do.end50:                                         ; preds = %if.then47, %entry
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @oti6858_tiocmset(ptr nocapture noundef readonly %tty, i32 noundef %set, i32 noundef %clear) #2 align 64 {
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
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @oti6858_tiocmset.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@oti6858_tiocmset, %if.then)) #6
          to label %do.body5 [label %if.then], !srcloc !130

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @oti6858_tiocmset.__UNIQUE_ID_ddebug245, ptr noundef %dev, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.28, i32 noundef %set, i32 noundef %clear) #6
  br label %do.body5

do.body5:                                         ; preds = %if.then, %entry
  %call8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #6
  %control13 = getelementptr inbounds %struct.oti6858_private, ptr %3, i32 0, i32 4, i32 2
  %4 = ptrtoint ptr %control13 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %control13, align 1
  %6 = trunc i32 %set to i8
  %7 = and i8 %6, 4
  %8 = shl i8 %6, 2
  %9 = and i8 %8, 8
  %10 = or i8 %9, %7
  %11 = or i8 %10, %5
  %and28 = and i32 %clear, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %cmp29.not = icmp eq i32 %and28, 0
  %12 = and i8 %11, -5
  %control.2 = select i1 %cmp29.not, i8 %11, i8 %12
  %and36 = and i32 %clear, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %cmp37.not = icmp eq i32 %and36, 0
  %13 = and i8 %control.2, -9
  %control.3 = select i1 %cmp37.not, i8 %control.2, i8 %13
  call void @__sanitizer_cov_trace_cmp1(i8 %control.3, i8 %5)
  %cmp48.not = icmp eq i8 %control.3, %5
  br i1 %cmp48.not, label %do.body5.if.end53_crit_edge, label %if.then50

do.body5.if.end53_crit_edge:                      ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end53

if.then50:                                        ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %control13 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %control.3, ptr %control13, align 1
  br label %if.end53

if.end53:                                         ; preds = %if.then50, %do.body5.if.end53_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %call8) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_serial_generic_tiocmiwait(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @oti6858_init_termios(ptr noundef %tty) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @tty_encode_baud_rate(ptr noundef %tty, i32 noundef 38400, i32 noundef 38400) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @oti6858_read_int_callback(ptr noundef %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %status1 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %4 = ptrtoint ptr %status1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %status1, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.45)
  switch i32 %5, label %do.body6 [
    i32 -108, label %entry.do.body_crit_edge
    i32 -104, label %entry.do.body_crit_edge410
    i32 -2, label %entry.do.body_crit_edge411
    i32 0, label %land.lhs.true
  ]

entry.do.body_crit_edge411:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

entry.do.body_crit_edge410:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

do.body:                                          ; preds = %entry.do.body_crit_edge, %entry.do.body_crit_edge410, %entry.do.body_crit_edge411
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @oti6858_read_int_callback.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@oti6858_read_int_callback, %if.then)) #6
          to label %cleanup [label %if.then], !srcloc !130

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  %dev5 = getelementptr inbounds %struct.usb_device, ptr %8, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @oti6858_read_int_callback.__UNIQUE_ID_ddebug247, ptr noundef %dev5, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.30, i32 noundef %5) #6
  br label %cleanup

do.body6:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @oti6858_read_int_callback.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@oti6858_read_int_callback, %if.then18)) #6
          to label %if.then223 [label %if.then18], !srcloc !130

if.then18:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #8
  %dev19 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %9 = ptrtoint ptr %dev19 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev19, align 4
  %dev20 = getelementptr inbounds %struct.usb_device, ptr %10, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @oti6858_read_int_callback.__UNIQUE_ID_ddebug248, ptr noundef %dev20, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.30, i32 noundef %5) #6
  br label %if.then223

land.lhs.true:                                    ; preds = %entry
  %actual_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %11 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %actual_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %12)
  %cmp24 = icmp eq i32 %12, 8
  br i1 %cmp24, label %if.then25, label %land.lhs.true.if.then223_crit_edge

land.lhs.true.if.then223_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then223

if.then25:                                        ; preds = %land.lhs.true
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %13 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %transfer_buffer, align 4
  %call31 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #6
  %transient36 = getelementptr inbounds %struct.oti6858_private, ptr %3, i32 0, i32 5
  %15 = ptrtoint ptr %transient36 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %transient36, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool37.not = icmp eq i8 %16, 0
  %17 = ptrtoint ptr %14 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %14, align 2
  %pending_setup = getelementptr inbounds %struct.oti6858_private, ptr %3, i32 0, i32 4
  %19 = ptrtoint ptr %pending_setup to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %pending_setup, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %18, i16 %20)
  %cmp42 = icmp eq i16 %18, %20
  br i1 %tobool37.not, label %if.then38, label %if.else

if.then38:                                        ; preds = %if.then25
  br i1 %cmp42, label %land.lhs.true44, label %if.then38.if.then58_crit_edge

if.then38.if.then58_crit_edge:                    ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then58

land.lhs.true44:                                  ; preds = %if.then38
  %control = getelementptr inbounds %struct.oti6858_control_pkt, ptr %14, i32 0, i32 3
  %21 = ptrtoint ptr %control to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %control, align 2
  %control47 = getelementptr inbounds %struct.oti6858_private, ptr %3, i32 0, i32 4, i32 2
  %23 = ptrtoint ptr %control47 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %control47, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %22, i8 %24)
  %cmp49 = icmp eq i8 %22, %24
  br i1 %cmp49, label %land.lhs.true51, label %land.lhs.true44.if.then58_crit_edge

land.lhs.true44.if.then58_crit_edge:              ; preds = %land.lhs.true44
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then58

land.lhs.true51:                                  ; preds = %land.lhs.true44
  %frame_fmt = getelementptr inbounds %struct.oti6858_control_pkt, ptr %14, i32 0, i32 1
  %25 = ptrtoint ptr %frame_fmt to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %frame_fmt, align 2
  %frame_fmt54 = getelementptr inbounds %struct.oti6858_private, ptr %3, i32 0, i32 4, i32 1
  %27 = ptrtoint ptr %frame_fmt54 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %frame_fmt54, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %26, i8 %28)
  %cmp56 = icmp eq i8 %26, %28
  br i1 %cmp56, label %land.lhs.true51.if.end149_crit_edge, label %land.lhs.true51.if.then58_crit_edge

land.lhs.true51.if.then58_crit_edge:              ; preds = %land.lhs.true51
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then58

land.lhs.true51.if.end149_crit_edge:              ; preds = %land.lhs.true51
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end149

if.then58:                                        ; preds = %land.lhs.true51.if.then58_crit_edge, %land.lhs.true44.if.then58_crit_edge, %if.then38.if.then58_crit_edge
  %rx_bytes_avail = getelementptr inbounds %struct.oti6858_control_pkt, ptr %14, i32 0, i32 6
  %29 = ptrtoint ptr %rx_bytes_avail to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %rx_bytes_avail, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %cmp60 = icmp eq i8 %30, 0
  br i1 %cmp60, label %if.then62, label %if.then58.if.end149_crit_edge

if.then58.if.end149_crit_edge:                    ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end149

if.then62:                                        ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #8
  %31 = ptrtoint ptr %transient36 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 4, ptr %transient36, align 4
  %setup_done = getelementptr inbounds %struct.oti6858_private, ptr %3, i32 0, i32 6
  %32 = ptrtoint ptr %setup_done to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %setup_done, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @oti6858_read_int_callback.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@oti6858_read_int_callback, %if.end149.sink.split.sink.split)) #6
          to label %if.end149.sink.split [label %if.end149.sink.split.sink.split], !srcloc !130

if.else:                                          ; preds = %if.then25
  br i1 %cmp42, label %land.lhs.true91, label %if.else.if.else109_crit_edge

if.else.if.else109_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else109

land.lhs.true91:                                  ; preds = %if.else
  %control92 = getelementptr inbounds %struct.oti6858_control_pkt, ptr %14, i32 0, i32 3
  %33 = ptrtoint ptr %control92 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %control92, align 2
  %control95 = getelementptr inbounds %struct.oti6858_private, ptr %3, i32 0, i32 4, i32 2
  %35 = ptrtoint ptr %control95 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %control95, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %34, i8 %36)
  %cmp97 = icmp eq i8 %34, %36
  br i1 %cmp97, label %land.lhs.true99, label %land.lhs.true91.if.else109_crit_edge

land.lhs.true91.if.else109_crit_edge:             ; preds = %land.lhs.true91
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else109

land.lhs.true99:                                  ; preds = %land.lhs.true91
  %frame_fmt100 = getelementptr inbounds %struct.oti6858_control_pkt, ptr %14, i32 0, i32 1
  %37 = ptrtoint ptr %frame_fmt100 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %frame_fmt100, align 2
  %frame_fmt103 = getelementptr inbounds %struct.oti6858_private, ptr %3, i32 0, i32 4, i32 1
  %39 = ptrtoint ptr %frame_fmt103 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %frame_fmt103, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %38, i8 %40)
  %cmp105 = icmp eq i8 %38, %40
  br i1 %cmp105, label %if.end149.thread, label %land.lhs.true99.if.else109_crit_edge

land.lhs.true99.if.else109_crit_edge:             ; preds = %land.lhs.true99
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else109

if.end149.thread:                                 ; preds = %land.lhs.true99
  call void @__sanitizer_cov_trace_pc() #8
  %41 = ptrtoint ptr %transient36 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 0, ptr %transient36, align 4
  br label %if.then152

if.else109:                                       ; preds = %land.lhs.true99.if.else109_crit_edge, %land.lhs.true91.if.else109_crit_edge, %if.else.if.else109_crit_edge
  %setup_done110 = getelementptr inbounds %struct.oti6858_private, ptr %3, i32 0, i32 6
  %42 = ptrtoint ptr %setup_done110 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %setup_done110, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool111.not = icmp eq i8 %43, 0
  br i1 %tobool111.not, label %if.else109.if.end149_crit_edge, label %if.else113

if.else109.if.end149_crit_edge:                   ; preds = %if.else109
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end149

if.else113:                                       ; preds = %if.else109
  %dec = add i8 %16, -1
  %44 = ptrtoint ptr %transient36 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %dec, ptr %transient36, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %dec)
  %cmp116 = icmp eq i8 %dec, 0
  br i1 %cmp116, label %if.then118, label %if.else113.if.end206.thread405_crit_edge

if.else113.if.end206.thread405_crit_edge:         ; preds = %if.else113
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end206.thread405

if.then118:                                       ; preds = %if.else113
  %rx_bytes_avail119 = getelementptr inbounds %struct.oti6858_control_pkt, ptr %14, i32 0, i32 6
  %45 = ptrtoint ptr %rx_bytes_avail119 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %rx_bytes_avail119, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %cmp121 = icmp eq i8 %46, 0
  br i1 %cmp121, label %if.then123, label %if.then118.if.end149_crit_edge

if.then118.if.end149_crit_edge:                   ; preds = %if.then118
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end149

if.then123:                                       ; preds = %if.then118
  call void @__sanitizer_cov_trace_pc() #8
  %47 = ptrtoint ptr %transient36 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 4, ptr %transient36, align 4
  %48 = ptrtoint ptr %setup_done110 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 0, ptr %setup_done110, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @oti6858_read_int_callback.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@oti6858_read_int_callback, %if.end149.sink.split.sink.split)) #6
          to label %if.end149.sink.split [label %if.end149.sink.split.sink.split], !srcloc !130

if.end149.sink.split.sink.split:                  ; preds = %if.then123, %if.then62
  %oti6858_read_int_callback.__UNIQUE_ID_ddebug250.sink = phi ptr [ @oti6858_read_int_callback.__UNIQUE_ID_ddebug249, %if.then62 ], [ @oti6858_read_int_callback.__UNIQUE_ID_ddebug250, %if.then123 ]
  call void @__sanitizer_cov_trace_pc() #8
  %dev139 = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull %oti6858_read_int_callback.__UNIQUE_ID_ddebug250.sink, ptr noundef %dev139, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.30) #6
  br label %if.end149.sink.split

if.end149.sink.split:                             ; preds = %if.end149.sink.split.sink.split, %if.then123, %if.then62
  %delayed_setup_work143 = getelementptr inbounds %struct.oti6858_private, ptr %3, i32 0, i32 7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %49 = load ptr, ptr @system_wq, align 4
  %call.i.i366 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %49, ptr noundef %delayed_setup_work143, i32 noundef 0) #6
  br label %if.end149

if.end149:                                        ; preds = %if.end149.sink.split, %if.then118.if.end149_crit_edge, %if.else109.if.end149_crit_edge, %if.then58.if.end149_crit_edge, %land.lhs.true51.if.end149_crit_edge
  %resubmit.0.ph = phi i32 [ 0, %if.else109.if.end149_crit_edge ], [ 1, %if.then58.if.end149_crit_edge ], [ 1, %land.lhs.true51.if.end149_crit_edge ], [ 1, %if.then118.if.end149_crit_edge ], [ 0, %if.end149.sink.split ]
  %50 = ptrtoint ptr %transient36 to i32
  call void @__asan_load1_noabort(i32 %50)
  %.pr = load i8, ptr %transient36, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %tobool151.not = icmp eq i8 %.pr, 0
  br i1 %tobool151.not, label %if.end149.if.then152_crit_edge, label %if.end149.if.end206.thread405_crit_edge

if.end149.if.end206.thread405_crit_edge:          ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end206.thread405

if.end149.if.then152_crit_edge:                   ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then152

if.then152:                                       ; preds = %if.end149.if.then152_crit_edge, %if.end149.thread
  %resubmit.0375 = phi i32 [ 1, %if.end149.thread ], [ %resubmit.0.ph, %if.end149.if.then152_crit_edge ]
  %pin_state = getelementptr inbounds %struct.oti6858_control_pkt, ptr %14, i32 0, i32 5
  %51 = ptrtoint ptr %pin_state to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %pin_state, align 2
  %status154 = getelementptr inbounds %struct.oti6858_private, ptr %3, i32 0, i32 1
  %pin_state155 = getelementptr inbounds %struct.oti6858_private, ptr %3, i32 0, i32 1, i32 5
  %53 = ptrtoint ptr %pin_state155 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %pin_state155, align 2
  %xor356 = xor i8 %54, %52
  %conv158 = zext i8 %xor356 to i32
  %and = and i32 %conv158, 27
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool159.not = icmp eq i32 %and, 0
  br i1 %tobool159.not, label %if.then152.if.end190_crit_edge, label %if.then160

if.then152.if.end190_crit_edge:                   ; preds = %if.then152
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end190

if.then160:                                       ; preds = %if.then152
  %and162 = and i32 %conv158, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and162)
  %tobool163.not = icmp eq i32 %and162, 0
  br i1 %tobool163.not, label %if.then160.if.end165_crit_edge, label %if.then164

if.then160.if.end165_crit_edge:                   ; preds = %if.then160
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end165

if.then164:                                       ; preds = %if.then160
  call void @__sanitizer_cov_trace_pc() #8
  %icount = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 27
  %55 = ptrtoint ptr %icount to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %icount, align 8
  %inc = add i32 %56, 1
  store i32 %inc, ptr %icount, align 8
  br label %if.end165

if.end165:                                        ; preds = %if.then164, %if.then160.if.end165_crit_edge
  %and167 = and i32 %conv158, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and167)
  %tobool168.not = icmp eq i32 %and167, 0
  br i1 %tobool168.not, label %if.end165.if.end172_crit_edge, label %if.then169

if.end165.if.end172_crit_edge:                    ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end172

if.then169:                                       ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #8
  %dsr = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 27, i32 1
  %57 = ptrtoint ptr %dsr to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %dsr, align 4
  %inc171 = add i32 %58, 1
  store i32 %inc171, ptr %dsr, align 4
  br label %if.end172

if.end172:                                        ; preds = %if.then169, %if.end165.if.end172_crit_edge
  %and174 = and i32 %conv158, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and174)
  %tobool175.not = icmp eq i32 %and174, 0
  br i1 %tobool175.not, label %if.end172.if.end179_crit_edge, label %if.then176

if.end172.if.end179_crit_edge:                    ; preds = %if.end172
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end179

if.then176:                                       ; preds = %if.end172
  call void @__sanitizer_cov_trace_pc() #8
  %rng = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 27, i32 2
  %59 = ptrtoint ptr %rng to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %rng, align 8
  %inc178 = add i32 %60, 1
  store i32 %inc178, ptr %rng, align 8
  br label %if.end179

if.end179:                                        ; preds = %if.then176, %if.end172.if.end179_crit_edge
  %and181 = and i32 %conv158, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and181)
  %tobool182.not = icmp eq i32 %and181, 0
  br i1 %tobool182.not, label %if.end179.if.end186_crit_edge, label %if.then183

if.end179.if.end186_crit_edge:                    ; preds = %if.end179
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end186

if.then183:                                       ; preds = %if.end179
  call void @__sanitizer_cov_trace_pc() #8
  %dcd = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 27, i32 3
  %61 = ptrtoint ptr %dcd to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %dcd, align 4
  %inc185 = add i32 %62, 1
  store i32 %inc185, ptr %dcd, align 4
  br label %if.end186

if.end186:                                        ; preds = %if.then183, %if.end179.if.end186_crit_edge
  %delta_msr_wait = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 1, i32 9
  tail call void @__wake_up(ptr noundef %delta_msr_wait, i32 noundef 1, i32 noundef 1, ptr noundef null) #6
  br label %if.end190

if.end190:                                        ; preds = %if.end186, %if.then152.if.end190_crit_edge
  %63 = ptrtoint ptr %14 to i32
  call void @__asan_loadN_noabort(i32 %63, i32 8)
  %64 = load i64, ptr %14, align 2
  %65 = ptrtoint ptr %status154 to i32
  call void @__asan_storeN_noabort(i32 %65, i32 8)
  store i64 %64, ptr %status154, align 4
  %66 = ptrtoint ptr %transient36 to i32
  call void @__asan_load1_noabort(i32 %66)
  %.pr379 = load i8, ptr %transient36, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr379)
  %tobool192.not = icmp eq i8 %.pr379, 0
  br i1 %tobool192.not, label %land.lhs.true193, label %if.end190.if.end206.thread405_crit_edge

if.end190.if.end206.thread405_crit_edge:          ; preds = %if.end190
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end206.thread405

land.lhs.true193:                                 ; preds = %if.end190
  %rx_bytes_avail194 = getelementptr inbounds %struct.oti6858_control_pkt, ptr %14, i32 0, i32 6
  %67 = ptrtoint ptr %rx_bytes_avail194 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %rx_bytes_avail194, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %68)
  %cmp196.not = icmp eq i8 %68, 0
  br i1 %cmp196.not, label %land.lhs.true193.if.end206.thread405_crit_edge, label %if.end206

land.lhs.true193.if.end206.thread405_crit_edge:   ; preds = %land.lhs.true193
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end206.thread405

if.end206.thread405:                              ; preds = %land.lhs.true193.if.end206.thread405_crit_edge, %if.end190.if.end206.thread405_crit_edge, %if.end149.if.end206.thread405_crit_edge, %if.else113.if.end206.thread405_crit_edge
  %resubmit.0374382.ph = phi i32 [ 1, %if.else113.if.end206.thread405_crit_edge ], [ %resubmit.0.ph, %if.end149.if.end206.thread405_crit_edge ], [ %resubmit.0375, %land.lhs.true193.if.end206.thread405_crit_edge ], [ %resubmit.0375, %if.end190.if.end206.thread405_crit_edge ]
  %69 = ptrtoint ptr %transient36 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %transient36, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %call31) #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %tobool222.not = icmp eq i8 %70, 0
  br i1 %tobool222.not, label %if.end206.thread405.if.then223_crit_edge, label %if.end206.thread405.if.end267_crit_edge

if.end206.thread405.if.end267_crit_edge:          ; preds = %if.end206.thread405
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end267

if.end206.thread405.if.then223_crit_edge:         ; preds = %if.end206.thread405
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then223

if.end206:                                        ; preds = %land.lhs.true193
  %flags201 = getelementptr inbounds %struct.oti6858_private, ptr %3, i32 0, i32 2
  %71 = ptrtoint ptr %flags201 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 1, ptr %flags201, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %call31) #6
  %read_urb = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 14
  %72 = ptrtoint ptr %read_urb to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %read_urb, align 4
  %call209 = tail call i32 @usb_submit_urb(ptr noundef %73, i32 noundef 2592) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call209)
  %cmp210.not = icmp eq i32 %call209, 0
  br i1 %cmp210.not, label %if.end206.cleanup_crit_edge, label %if.then212

if.end206.cleanup_crit_edge:                      ; preds = %if.end206
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then212:                                       ; preds = %if.end206
  call void @__sanitizer_cov_trace_pc() #8
  %flags213 = getelementptr inbounds %struct.oti6858_private, ptr %3, i32 0, i32 2
  %74 = ptrtoint ptr %flags213 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 0, ptr %flags213, align 4
  %dev218 = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev218, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.30, i32 noundef %call209) #10
  br label %if.end267

if.then223:                                       ; preds = %if.end206.thread405.if.then223_crit_edge, %land.lhs.true.if.then223_crit_edge, %if.then18, %do.body6
  %resubmit.1387392 = phi i32 [ %resubmit.0374382.ph, %if.end206.thread405.if.then223_crit_edge ], [ 1, %if.then18 ], [ 1, %land.lhs.true.if.then223_crit_edge ], [ 1, %do.body6 ]
  %lock232 = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 2
  %call234 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock232) #6
  %write_fifo = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 22
  %75 = ptrtoint ptr %write_fifo to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %write_fifo, align 4
  %out = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 22, i32 0, i32 0, i32 1
  %77 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %out, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock232, i32 noundef %call234) #6
  %call250 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #6
  %write_urb_in_use = getelementptr inbounds %struct.oti6858_private, ptr %3, i32 0, i32 2, i32 1
  %79 = ptrtoint ptr %write_urb_in_use to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %write_urb_in_use, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %80)
  %cmp257 = icmp ne i8 %80, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %76, i32 %78)
  %cmp260.not = icmp eq i32 %76, %78
  %or.cond = select i1 %cmp257, i1 true, i1 %cmp260.not
  br i1 %or.cond, label %if.then223.if.end264_crit_edge, label %if.then262

if.then223.if.end264_crit_edge:                   ; preds = %if.then223
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end264

if.then262:                                       ; preds = %if.then223
  call void @__sanitizer_cov_trace_pc() #8
  %delayed_write_work = getelementptr inbounds %struct.oti6858_private, ptr %3, i32 0, i32 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %81 = load ptr, ptr @system_wq, align 4
  %call.i.i367 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %81, ptr noundef %delayed_write_work, i32 noundef 0) #6
  br label %if.end264

if.end264:                                        ; preds = %if.then262, %if.then223.if.end264_crit_edge
  %resubmit.3 = phi i32 [ 0, %if.then262 ], [ %resubmit.1387392, %if.then223.if.end264_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %call250) #6
  br label %if.end267

if.end267:                                        ; preds = %if.end264, %if.then212, %if.end206.thread405.if.end267_crit_edge
  %resubmit.4 = phi i32 [ %resubmit.0374382.ph, %if.end206.thread405.if.end267_crit_edge ], [ %resubmit.3, %if.end264 ], [ %resubmit.0375, %if.then212 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %resubmit.4)
  %tobool268.not = icmp eq i32 %resubmit.4, 0
  br i1 %tobool268.not, label %if.end267.cleanup_crit_edge, label %if.then269

if.end267.cleanup_crit_edge:                      ; preds = %if.end267
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then269:                                       ; preds = %if.end267
  %call271 = tail call i32 @usb_submit_urb(ptr noundef %urb, i32 noundef 2592) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call271)
  %cmp272.not = icmp eq i32 %call271, 0
  br i1 %cmp272.not, label %if.then269.cleanup_crit_edge, label %do.end277

if.then269.cleanup_crit_edge:                     ; preds = %if.then269
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end277:                                        ; preds = %if.then269
  call void @__sanitizer_cov_trace_pc() #8
  %dev278 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %82 = ptrtoint ptr %dev278 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %dev278, align 4
  %dev279 = getelementptr inbounds %struct.usb_device, ptr %83, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev279, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.30, i32 noundef %call271) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end277, %if.then269.cleanup_crit_edge, %if.end267.cleanup_crit_edge, %if.end206.cleanup_crit_edge, %if.then, %do.body
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @oti6858_read_bulk_callback(ptr nocapture noundef readonly %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  %status1 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %6 = ptrtoint ptr %status1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %status1, align 4
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #6
  %flags7 = getelementptr inbounds %struct.oti6858_private, ptr %3, i32 0, i32 2
  %8 = ptrtoint ptr %flags7 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %flags7, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %call4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp9.not = icmp eq i32 %7, 0
  br i1 %cmp9.not, label %if.end20, label %do.body11

do.body11:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @oti6858_read_bulk_callback.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@oti6858_read_bulk_callback, %if.then16)) #6
          to label %cleanup [label %if.then16], !srcloc !130

if.then16:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  %dev17 = getelementptr inbounds %struct.usb_device, ptr %10, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @oti6858_read_bulk_callback.__UNIQUE_ID_ddebug251, ptr noundef %dev17, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.37) #6
  br label %cleanup

if.end20:                                         ; preds = %entry
  %actual_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %11 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %actual_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp21.not = icmp eq i32 %12, 0
  br i1 %cmp21.not, label %if.end20.if.end28_crit_edge, label %if.then23

if.end20.if.end28_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28

if.then23:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  %port24 = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 1
  %call.i = tail call i32 @tty_insert_flip_string_fixed_flag(ptr noundef %port24, ptr noundef %5, i8 noundef zeroext 0, i32 noundef %12) #6
  tail call void @tty_flip_buffer_push(ptr noundef %port24) #6
  br label %if.end28

if.end28:                                         ; preds = %if.then23, %if.end20.if.end28_crit_edge
  %interrupt_in_urb = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 6
  %13 = ptrtoint ptr %interrupt_in_urb to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %interrupt_in_urb, align 4
  %call29 = tail call i32 @usb_submit_urb(ptr noundef %14, i32 noundef 2592) #6
  %15 = zext i32 %call29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.46)
  switch i32 %call29, label %do.end37 [
    i32 0, label %if.end28.cleanup_crit_edge
    i32 -1, label %if.end28.cleanup_crit_edge59
  ]

if.end28.cleanup_crit_edge59:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end37:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  %dev38 = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev38, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.37, i32 noundef %call29) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end37, %if.end28.cleanup_crit_edge, %if.end28.cleanup_crit_edge59, %if.then16, %do.body11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @oti6858_write_bulk_callback(ptr nocapture noundef readonly %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %status1 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %4 = ptrtoint ptr %status1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %status1, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.47)
  switch i32 %5, label %do.body6 [
    i32 0, label %entry.sw.epilog_crit_edge
    i32 -104, label %entry.do.body_crit_edge
    i32 -2, label %entry.do.body_crit_edge119
    i32 -108, label %entry.do.body_crit_edge120
  ]

entry.do.body_crit_edge120:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

entry.do.body_crit_edge119:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

do.body:                                          ; preds = %entry.do.body_crit_edge, %entry.do.body_crit_edge119, %entry.do.body_crit_edge120
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @oti6858_write_bulk_callback.__UNIQUE_ID_ddebug252, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@oti6858_write_bulk_callback, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !130

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  %dev5 = getelementptr inbounds %struct.usb_device, ptr %8, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @oti6858_write_bulk_callback.__UNIQUE_ID_ddebug252, ptr noundef %dev5, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.39, i32 noundef %5) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %do.body
  %write_urb_in_use = getelementptr inbounds %struct.oti6858_private, ptr %3, i32 0, i32 2, i32 1
  %9 = ptrtoint ptr %write_urb_in_use to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %write_urb_in_use, align 1
  br label %cleanup

do.body6:                                         ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @oti6858_write_bulk_callback.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@oti6858_write_bulk_callback, %if.then18)) #6
          to label %do.body24 [label %if.then18], !srcloc !130

if.then18:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #8
  %dev19 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %10 = ptrtoint ptr %dev19 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev19, align 4
  %dev20 = getelementptr inbounds %struct.usb_device, ptr %11, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @oti6858_write_bulk_callback.__UNIQUE_ID_ddebug253, ptr noundef %dev20, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.39, i32 noundef %5) #6
  br label %do.body24

do.body24:                                        ; preds = %if.then18, %do.body6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @oti6858_write_bulk_callback.__UNIQUE_ID_ddebug254, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@oti6858_write_bulk_callback, %if.then36)) #6
          to label %do.end41 [label %if.then36], !srcloc !130

if.then36:                                        ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #8
  %dev37 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %12 = ptrtoint ptr %dev37 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev37, align 4
  %dev38 = getelementptr inbounds %struct.usb_device, ptr %13, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @oti6858_write_bulk_callback.__UNIQUE_ID_ddebug254, ptr noundef %dev38, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.39) #6
  br label %do.end41

do.end41:                                         ; preds = %if.then36, %do.body24
  %write_urb = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 21
  %14 = ptrtoint ptr %write_urb to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %write_urb, align 8
  %transfer_buffer_length = getelementptr inbounds %struct.urb, ptr %15, i32 0, i32 19
  %16 = ptrtoint ptr %transfer_buffer_length to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %transfer_buffer_length, align 4
  %17 = load ptr, ptr %write_urb, align 8
  %call43 = tail call i32 @usb_submit_urb(ptr noundef %17, i32 noundef 2592) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %do.end41.cleanup_crit_edge, label %do.body46

do.end41.cleanup_crit_edge:                       ; preds = %do.end41
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body46:                                        ; preds = %do.end41
  %console = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 1, i32 12
  %18 = ptrtoint ptr %console to i32
  call void @__asan_load1_noabort(i32 %18)
  %bf.load = load i8, ptr %console, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool48.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool48.not, label %do.body46.if.then50_crit_edge, label %lor.lhs.false

do.body46.if.then50_crit_edge:                    ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then50

lor.lhs.false:                                    ; preds = %do.body46
  %.b105 = load i1, ptr @oti6858_write_bulk_callback.__print_once, align 1
  br i1 %.b105, label %lor.lhs.false.sw.epilog_crit_edge, label %lor.lhs.false.if.then50_crit_edge

lor.lhs.false.if.then50_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then50

lor.lhs.false.sw.epilog_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.then50:                                        ; preds = %lor.lhs.false.if.then50_crit_edge, %do.body46.if.then50_crit_edge
  store i1 true, ptr @oti6858_write_bulk_callback.__print_once, align 1
  %dev54 = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev54, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.39, i32 noundef %call43) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then50, %lor.lhs.false.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %write_urb_in_use60 = getelementptr inbounds %struct.oti6858_private, ptr %3, i32 0, i32 2, i32 1
  %19 = ptrtoint ptr %write_urb_in_use60 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %write_urb_in_use60, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @oti6858_write_bulk_callback.__UNIQUE_ID_ddebug255, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@oti6858_write_bulk_callback, %if.then73)) #6
          to label %do.end77 [label %if.then73], !srcloc !130

if.then73:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  %dev74 = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @oti6858_write_bulk_callback.__UNIQUE_ID_ddebug255, ptr noundef %dev74, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.39) #6
  br label %do.end77

do.end77:                                         ; preds = %if.then73, %sw.epilog
  %interrupt_in_urb = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 6
  %20 = ptrtoint ptr %interrupt_in_urb to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %interrupt_in_urb, align 4
  %call78 = tail call i32 @usb_submit_urb(ptr noundef %21, i32 noundef 2592) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78)
  %cmp.not = icmp eq i32 %call78, 0
  br i1 %cmp.not, label %do.end77.cleanup_crit_edge, label %do.end82

do.end77.cleanup_crit_edge:                       ; preds = %do.end77
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end82:                                         ; preds = %do.end77
  call void @__sanitizer_cov_trace_pc() #8
  %dev83 = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev83, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.39, i32 noundef %call78) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end82, %do.end77.cleanup_crit_edge, %do.end41.cleanup_crit_edge, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @setup_line(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -164
  %port1 = getelementptr i8, ptr %work, i32 100
  %0 = ptrtoint ptr %port1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3264, i32 noundef 8) #9
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %3 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %3, ptr noundef %work, i32 noundef 1) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 8
  %shl.i = shl i32 %9, 8
  %or7 = or i32 %shl.i, -2147483520
  %call8 = tail call i32 @usb_control_msg(ptr noundef %7, i32 noundef %or7, i8 noundef zeroext 1, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %call7.i, i16 noundef zeroext 8, i32 noundef 100) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %call8)
  %cmp.not = icmp eq i32 %call8, 8
  br i1 %cmp.not, label %do.body16, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %dev10 = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev10, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11) #10
  tail call void @kfree(ptr noundef nonnull %call7.i) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %10 = load ptr, ptr @system_wq, align 4
  %call.i.i143 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %10, ptr noundef %work, i32 noundef 1) #6
  br label %cleanup

do.body16:                                        ; preds = %if.end
  %call20 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %add.ptr) #6
  %11 = ptrtoint ptr %call7.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %call7.i, align 8
  %pending_setup = getelementptr i8, ptr %work, i32 -8
  %13 = ptrtoint ptr %pending_setup to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %pending_setup, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %12, i16 %14)
  %cmp28 = icmp eq i16 %12, %14
  br i1 %cmp28, label %land.lhs.true, label %do.body16.if.then43_crit_edge

do.body16.if.then43_crit_edge:                    ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then43

land.lhs.true:                                    ; preds = %do.body16
  %control = getelementptr inbounds %struct.oti6858_control_pkt, ptr %call7.i, i32 0, i32 3
  %15 = ptrtoint ptr %control to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %control, align 4
  %control32 = getelementptr i8, ptr %work, i32 -5
  %17 = ptrtoint ptr %control32 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %control32, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %16, i8 %18)
  %cmp34 = icmp eq i8 %16, %18
  br i1 %cmp34, label %land.lhs.true36, label %land.lhs.true.if.then43_crit_edge

land.lhs.true.if.then43_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then43

land.lhs.true36:                                  ; preds = %land.lhs.true
  %frame_fmt = getelementptr inbounds %struct.oti6858_control_pkt, ptr %call7.i, i32 0, i32 1
  %19 = ptrtoint ptr %frame_fmt to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %frame_fmt, align 2
  %frame_fmt39 = getelementptr i8, ptr %work, i32 -6
  %21 = ptrtoint ptr %frame_fmt39 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %frame_fmt39, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %20, i8 %22)
  %cmp41 = icmp eq i8 %20, %22
  br i1 %cmp41, label %if.else, label %land.lhs.true36.if.then43_crit_edge

land.lhs.true36.if.then43_crit_edge:              ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then43

if.then43:                                        ; preds = %land.lhs.true36.if.then43_crit_edge, %land.lhs.true.if.then43_crit_edge, %do.body16.if.then43_crit_edge
  %23 = ptrtoint ptr %call7.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %14, ptr %call7.i, align 8
  %control48 = getelementptr i8, ptr %work, i32 -5
  %24 = ptrtoint ptr %control48 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %control48, align 1
  %control49 = getelementptr inbounds %struct.oti6858_control_pkt, ptr %call7.i, i32 0, i32 3
  %26 = ptrtoint ptr %control49 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %control49, align 4
  %frame_fmt51 = getelementptr i8, ptr %work, i32 -6
  %27 = ptrtoint ptr %frame_fmt51 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %frame_fmt51, align 2
  %frame_fmt52 = getelementptr inbounds %struct.oti6858_control_pkt, ptr %call7.i, i32 0, i32 1
  %29 = ptrtoint ptr %frame_fmt52 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %28, ptr %frame_fmt52, align 2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %add.ptr, i32 noundef %call20) #6
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %1, align 8
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %33, align 8
  %shl.i144 = shl i32 %35, 8
  %or59 = or i32 %shl.i144, -2147483648
  %call60 = tail call i32 @usb_control_msg(ptr noundef %33, i32 noundef %or59, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %call7.i, i16 noundef zeroext 8, i32 noundef 100) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %call60)
  %phi.cmp = icmp eq i32 %call60, 8
  br label %if.end62

if.else:                                          ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %add.ptr, i32 noundef %call20) #6
  br label %if.end62

if.end62:                                         ; preds = %if.else, %if.then43
  %result.0 = phi i1 [ false, %if.else ], [ %phi.cmp, %if.then43 ]
  tail call void @kfree(ptr noundef nonnull %call7.i) #6
  %call72 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %add.ptr) #6
  br i1 %result.0, label %if.end62.if.end80_crit_edge, label %if.then79

if.end62.if.end80_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end80

if.then79:                                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #8
  %transient = getelementptr i8, ptr %work, i32 -4
  %36 = ptrtoint ptr %transient to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 0, ptr %transient, align 4
  br label %if.end80

if.end80:                                         ; preds = %if.then79, %if.end62.if.end80_crit_edge
  %setup_done = getelementptr i8, ptr %work, i32 -3
  %37 = ptrtoint ptr %setup_done to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 1, ptr %setup_done, align 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %add.ptr, i32 noundef %call72) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @setup_line.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@setup_line, %if.then88)) #6
          to label %do.end92 [label %if.then88], !srcloc !130

if.then88:                                        ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #8
  %dev89 = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @setup_line.__UNIQUE_ID_ddebug238, ptr noundef %dev89, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.11) #6
  br label %do.end92

do.end92:                                         ; preds = %if.then88, %if.end80
  %interrupt_in_urb = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 6
  %38 = ptrtoint ptr %interrupt_in_urb to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %interrupt_in_urb, align 4
  %call93 = tail call i32 @usb_submit_urb(ptr noundef %39, i32 noundef 3264) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93)
  %cmp94.not = icmp eq i32 %call93, 0
  br i1 %cmp94.not, label %do.end92.cleanup_crit_edge, label %do.end99

do.end92.cleanup_crit_edge:                       ; preds = %do.end92
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end99:                                         ; preds = %do.end92
  call void @__sanitizer_cov_trace_pc() #8
  %dev100 = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev100, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.11, i32 noundef %call93) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end99, %do.end92.cleanup_crit_edge, %do.end, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @send_data(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -56
  %port1 = getelementptr i8, ptr %work, i32 208
  %0 = ptrtoint ptr %port1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port1, align 4
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %add.ptr) #6
  %write_urb_in_use = getelementptr i8, ptr %work, i32 -3
  %2 = ptrtoint ptr %write_urb_in_use to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %write_urb_in_use, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %add.ptr, i32 noundef %call4) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %4 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %4, ptr noundef %work, i32 noundef 1) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %write_urb_in_use to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %write_urb_in_use, align 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %add.ptr, i32 noundef %call4) #6
  %lock21 = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 2
  %call23 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock21) #6
  %write_fifo = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 22
  %6 = ptrtoint ptr %write_fifo to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %write_fifo, align 4
  %out = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 22, i32 0, i32 0, i32 1
  %8 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %out, align 4
  %sub = sub i32 %7, %9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock21, i32 noundef %call23) #6
  %bulk_out_size = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 20
  %10 = ptrtoint ptr %bulk_out_size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bulk_out_size, align 4
  %12 = tail call i32 @llvm.smin.i32(i32 %sub, i32 %11)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp35.not = icmp eq i32 %12, 0
  br i1 %cmp35.not, label %if.end.if.then58_crit_edge, label %if.then37

if.end.if.then58_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then58

if.then37:                                        ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %13 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef 3264, i32 noundef 1) #9
  %tobool39.not = icmp eq ptr %call7.i, null
  br i1 %tobool39.not, label %if.then37.cleanup_crit_edge, label %if.end41

if.then37.cleanup_crit_edge:                      ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end41:                                         ; preds = %if.then37
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 8
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 8
  %shl.i = shl i32 %19, 8
  %or45 = or i32 %shl.i, -2147483520
  %conv46 = trunc i32 %12 to i16
  %call47 = tail call i32 @usb_control_msg(ptr noundef %17, i32 noundef %or45, i8 noundef zeroext 0, i8 noundef zeroext -63, i16 noundef zeroext %conv46, i16 noundef zeroext 0, ptr noundef nonnull %call7.i, i16 noundef zeroext 1, i32 noundef 100) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call47)
  %cmp48.not = icmp eq i32 %call47, 1
  br i1 %cmp48.not, label %lor.lhs.false, label %if.end41.if.end55.thread174_crit_edge

if.end41.if.end55.thread174_crit_edge:            ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end55.thread174

lor.lhs.false:                                    ; preds = %if.end41
  %20 = ptrtoint ptr %call7.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %call7.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %cmp51.not = icmp eq i8 %21, 0
  br i1 %cmp51.not, label %if.end81, label %lor.lhs.false.if.end55.thread174_crit_edge

lor.lhs.false.if.end55.thread174_crit_edge:       ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end55.thread174

if.end55.thread174:                               ; preds = %lor.lhs.false.if.end55.thread174_crit_edge, %if.end41.if.end55.thread174_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i) #6
  br label %if.then58

if.then58:                                        ; preds = %if.end55.thread174, %if.end.if.then58_crit_edge
  %22 = ptrtoint ptr %write_urb_in_use to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %write_urb_in_use, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @send_data.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@send_data, %if.then67)) #6
          to label %do.end71 [label %if.then67], !srcloc !130

if.then67:                                        ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #8
  %dev68 = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @send_data.__UNIQUE_ID_ddebug239, ptr noundef %dev68, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.19) #6
  br label %do.end71

do.end71:                                         ; preds = %if.then67, %if.then58
  %interrupt_in_urb = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 6
  %23 = ptrtoint ptr %interrupt_in_urb to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %interrupt_in_urb, align 4
  %call72 = tail call i32 @usb_submit_urb(ptr noundef %24, i32 noundef 3072) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %cmp73.not = icmp eq i32 %call72, 0
  br i1 %cmp73.not, label %do.end71.cleanup_crit_edge, label %do.end78

do.end71.cleanup_crit_edge:                       ; preds = %do.end71
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end78:                                         ; preds = %do.end71
  call void @__sanitizer_cov_trace_pc() #8
  %dev79 = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev79, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.19, i32 noundef %call72) #10
  br label %cleanup

if.end81:                                         ; preds = %lor.lhs.false
  tail call void @kfree(ptr noundef nonnull %call7.i) #6
  %call91 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock21) #6
  %write_urb = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 21
  %25 = ptrtoint ptr %write_urb to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %write_urb, align 8
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %26, i32 0, i32 14
  %27 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %transfer_buffer, align 4
  %call98 = tail call i32 @__kfifo_out(ptr noundef %write_fifo, ptr noundef %28, i32 noundef %12) #6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock21, i32 noundef %call91) #6
  %29 = ptrtoint ptr %write_urb to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %write_urb, align 8
  %transfer_buffer_length = getelementptr inbounds %struct.urb, ptr %30, i32 0, i32 19
  %31 = ptrtoint ptr %transfer_buffer_length to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %call98, ptr %transfer_buffer_length, align 4
  %32 = load ptr, ptr %write_urb, align 8
  %call105 = tail call i32 @usb_submit_urb(ptr noundef %32, i32 noundef 3072) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call105)
  %cmp106.not = icmp eq i32 %call105, 0
  br i1 %cmp106.not, label %if.end81.if.end124_crit_edge, label %do.body109

if.end81.if.end124_crit_edge:                     ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end124

do.body109:                                       ; preds = %if.end81
  %console = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 1, i32 12
  %33 = ptrtoint ptr %console to i32
  call void @__asan_load1_noabort(i32 %33)
  %bf.load = load i8, ptr %console, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool111.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool111.not, label %do.body109.if.then114_crit_edge, label %lor.lhs.false112

do.body109.if.then114_crit_edge:                  ; preds = %do.body109
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then114

lor.lhs.false112:                                 ; preds = %do.body109
  %.b171 = load i1, ptr @send_data.__print_once, align 1
  br i1 %.b171, label %lor.lhs.false112.if.end119_crit_edge, label %lor.lhs.false112.if.then114_crit_edge

lor.lhs.false112.if.then114_crit_edge:            ; preds = %lor.lhs.false112
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then114

lor.lhs.false112.if.end119_crit_edge:             ; preds = %lor.lhs.false112
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end119

if.then114:                                       ; preds = %lor.lhs.false112.if.then114_crit_edge, %do.body109.if.then114_crit_edge
  store i1 true, ptr @send_data.__print_once, align 1
  %dev118 = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev118, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.19, i32 noundef %call105) #10
  br label %if.end119

if.end119:                                        ; preds = %if.then114, %lor.lhs.false112.if.end119_crit_edge
  %34 = ptrtoint ptr %write_urb_in_use to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %write_urb_in_use, align 1
  br label %if.end124

if.end124:                                        ; preds = %if.end119, %if.end81.if.end124_crit_edge
  tail call void @usb_serial_port_softint(ptr noundef %1) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end124, %do.end78, %do.end71.cleanup_crit_edge, %if.then37.cleanup_crit_edge, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__kfifo_out(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_serial_port_softint(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_clear_halt(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_kill_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__kfifo_in(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_encode_baud_rate(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_termios_baud_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_flip_buffer_push(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_insert_flip_string_fixed_flag(ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 53)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 53)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !11, !13, !15, !17, !19, !20, !22, !23, !24, !25, !27, !28, !29, !30, !32, !33, !34, !35, !36, !37, !38, !40, !41, !43, !44, !45, !47, !48, !50, !51, !53, !54, !55, !57, !58, !60, !61, !63, !64, !65, !67, !68, !70, !71, !72, !74, !75, !76, !78, !79, !80, !82, !83, !85, !86, !88, !90, !91, !92, !94, !95, !97, !98, !99, !101, !102, !104, !105, !107, !108, !110, !111, !113, !114, !115, !117, !119, !120}
!llvm.module.flags = !{!121, !122, !123, !124, !125, !126, !127, !128}
!llvm.ident = !{!129}

!0 = !{ptr @__initcall__kmod_oti6858__256_838_usb_serial_module_init6, !1, !"__initcall__kmod_oti6858__256_838_usb_serial_module_init6", i1 false, i1 false}
!1 = !{!"../drivers/usb/serial/oti6858.c", i32 838, i32 1}
!2 = !{ptr @__exitcall_usb_serial_module_exit, !1, !"__exitcall_usb_serial_module_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description257, !4, !"__UNIQUE_ID_description257", i1 false, i1 false}
!4 = !{!"../drivers/usb/serial/oti6858.c", i32 840, i32 1}
!5 = !{ptr @__UNIQUE_ID_author258, !6, !"__UNIQUE_ID_author258", i1 false, i1 false}
!6 = !{!"../drivers/usb/serial/oti6858.c", i32 841, i32 1}
!7 = !{ptr @__UNIQUE_ID_file259, !8, !"__UNIQUE_ID_file259", i1 false, i1 false}
!8 = !{!"../drivers/usb/serial/oti6858.c", i32 842, i32 1}
!9 = !{ptr @__UNIQUE_ID_license260, !8, !"__UNIQUE_ID_license260", i1 false, i1 false}
!10 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @id_table, !12, !"id_table", i1 false, i1 false}
!12 = !{!"../drivers/usb/serial/oti6858.c", i32 57, i32 35}
!13 = !{ptr @serial_drivers, !14, !"serial_drivers", i1 false, i1 false}
!14 = !{!"../drivers/usb/serial/oti6858.c", i32 165, i32 41}
!15 = !{ptr @oti6858_device, !16, !"oti6858_device", i1 false, i1 false}
!16 = !{!"../drivers/usb/serial/oti6858.c", i32 138, i32 33}
!17 = !{ptr @oti6858_port_probe.__key, !18, !"__key", i1 false, i1 false}
!18 = !{!"../drivers/usb/serial/oti6858.c", i32 335, i32 2}
!19 = !{ptr @.str.1, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @oti6858_port_probe.__key.2, !21, !"__key", i1 false, i1 false}
!21 = !{!"../drivers/usb/serial/oti6858.c", i32 337, i32 2}
!22 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @oti6858_port_probe.__key.4, !21, !"__key", i1 false, i1 false}
!24 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @oti6858_port_probe.__key.6, !26, !"__key", i1 false, i1 false}
!26 = !{!"../drivers/usb/serial/oti6858.c", i32 338, i32 2}
!27 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @oti6858_port_probe.__key.8, !26, !"__key", i1 false, i1 false}
!29 = !{ptr @.str.9, !26, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/usb/serial/oti6858.c", i32 218, i32 3}
!32 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @setup_line._entry, !31, !"_entry", i1 false, i1 false}
!37 = !{ptr @setup_line._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/usb/serial/oti6858.c", i32 252, i32 2}
!40 = !{ptr @setup_line.__UNIQUE_ID_ddebug238, !39, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!41 = !{ptr @.str.17, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/usb/serial/oti6858.c", i32 255, i32 3}
!43 = !{ptr @setup_line._entry.16, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @setup_line._entry_ptr.18, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.19, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/usb/serial/oti6858.c", i32 304, i32 3}
!47 = !{ptr @send_data.__UNIQUE_ID_ddebug239, !46, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!48 = !{ptr @send_data._entry, !49, !"_entry", i1 false, i1 false}
!49 = !{!"../drivers/usb/serial/oti6858.c", i32 307, i32 4}
!50 = !{ptr @send_data._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!51 = distinct !{null, !52, !"__print_once", i1 false, i1 false}
!52 = !{!"../drivers/usb/serial/oti6858.c", i32 319, i32 3}
!53 = !{ptr @send_data._entry.20, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @send_data._entry_ptr.21, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.22, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/usb/serial/oti6858.c", i32 539, i32 2}
!57 = !{ptr @oti6858_open.__UNIQUE_ID_ddebug242, !56, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!58 = !{ptr @oti6858_open._entry, !59, !"_entry", i1 false, i1 false}
!59 = !{!"../drivers/usb/serial/oti6858.c", i32 542, i32 3}
!60 = !{ptr @oti6858_open._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.23, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/usb/serial/oti6858.c", i32 565, i32 2}
!63 = !{ptr @.str.24, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @oti6858_close.__UNIQUE_ID_ddebug243, !62, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!65 = !{ptr @.str.25, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/usb/serial/oti6858.c", i32 572, i32 2}
!67 = !{ptr @oti6858_close.__UNIQUE_ID_ddebug244, !66, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!68 = !{ptr @.str.26, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/usb/serial/oti6858.c", i32 634, i32 2}
!70 = !{ptr @.str.27, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @oti6858_tiocmget.__UNIQUE_ID_ddebug246, !69, !"__UNIQUE_ID_ddebug246", i1 false, i1 false}
!72 = !{ptr @.str.28, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/usb/serial/oti6858.c", i32 586, i32 2}
!74 = !{ptr @.str.29, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @oti6858_tiocmset.__UNIQUE_ID_ddebug245, !73, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!76 = !{ptr @.str.30, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/usb/serial/oti6858.c", i32 654, i32 3}
!78 = !{ptr @.str.31, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @oti6858_read_int_callback.__UNIQUE_ID_ddebug247, !77, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!80 = !{ptr @.str.32, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/usb/serial/oti6858.c", i32 658, i32 3}
!82 = !{ptr @oti6858_read_int_callback.__UNIQUE_ID_ddebug248, !81, !"__UNIQUE_ID_ddebug248", i1 false, i1 false}
!83 = !{ptr @.str.33, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/usb/serial/oti6858.c", i32 675, i32 6}
!85 = !{ptr @oti6858_read_int_callback.__UNIQUE_ID_ddebug249, !84, !"__UNIQUE_ID_ddebug249", i1 false, i1 false}
!86 = !{ptr @oti6858_read_int_callback.__UNIQUE_ID_ddebug250, !87, !"__UNIQUE_ID_ddebug250", i1 false, i1 false}
!87 = !{!"../drivers/usb/serial/oti6858.c", i32 689, i32 6}
!88 = !{ptr @.str.34, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/usb/serial/oti6858.c", i32 729, i32 4}
!90 = !{ptr @oti6858_read_int_callback._entry, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @oti6858_read_int_callback._entry_ptr, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @oti6858_read_int_callback._entry.35, !93, !"_entry", i1 false, i1 false}
!93 = !{!"../drivers/usb/serial/oti6858.c", i32 756, i32 4}
!94 = !{ptr @oti6858_read_int_callback._entry_ptr.36, !93, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.37, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/usb/serial/oti6858.c", i32 777, i32 3}
!97 = !{ptr @.str.38, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @oti6858_read_bulk_callback.__UNIQUE_ID_ddebug251, !96, !"__UNIQUE_ID_ddebug251", i1 false, i1 false}
!99 = !{ptr @oti6858_read_bulk_callback._entry, !100, !"_entry", i1 false, i1 false}
!100 = !{!"../drivers/usb/serial/oti6858.c", i32 789, i32 3}
!101 = !{ptr @oti6858_read_bulk_callback._entry_ptr, !100, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.39, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/usb/serial/oti6858.c", i32 809, i32 3}
!104 = !{ptr @oti6858_write_bulk_callback.__UNIQUE_ID_ddebug252, !103, !"__UNIQUE_ID_ddebug252", i1 false, i1 false}
!105 = !{ptr @.str.40, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/usb/serial/oti6858.c", i32 814, i32 3}
!107 = !{ptr @oti6858_write_bulk_callback.__UNIQUE_ID_ddebug253, !106, !"__UNIQUE_ID_ddebug253", i1 false, i1 false}
!108 = !{ptr @.str.41, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/usb/serial/oti6858.c", i32 815, i32 3}
!110 = !{ptr @oti6858_write_bulk_callback.__UNIQUE_ID_ddebug254, !109, !"__UNIQUE_ID_ddebug254", i1 false, i1 false}
!111 = distinct !{null, !112, !"__print_once", i1 false, i1 false}
!112 = !{!"../drivers/usb/serial/oti6858.c", i32 820, i32 4}
!113 = !{ptr @oti6858_write_bulk_callback._entry, !112, !"_entry", i1 false, i1 false}
!114 = !{ptr @oti6858_write_bulk_callback._entry_ptr, !112, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @oti6858_write_bulk_callback.__UNIQUE_ID_ddebug255, !116, !"__UNIQUE_ID_ddebug255", i1 false, i1 false}
!116 = !{!"../drivers/usb/serial/oti6858.c", i32 830, i32 2}
!117 = !{ptr @.str.43, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/usb/serial/oti6858.c", i32 833, i32 3}
!119 = !{ptr @oti6858_write_bulk_callback._entry.42, !118, !"_entry", i1 false, i1 false}
!120 = !{ptr @oti6858_write_bulk_callback._entry_ptr.44, !118, !"_entry_ptr", i1 false, i1 false}
!121 = !{i32 1, !"wchar_size", i32 2}
!122 = !{i32 1, !"min_enum_size", i32 4}
!123 = !{i32 8, !"branch-target-enforcement", i32 0}
!124 = !{i32 8, !"sign-return-address", i32 0}
!125 = !{i32 8, !"sign-return-address-all", i32 0}
!126 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!127 = !{i32 7, !"uwtable", i32 1}
!128 = !{i32 7, !"frame-pointer", i32 2}
!129 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!130 = !{i64 2148713579, i64 2148713584, i64 2148713597, i64 2148713641, i64 2148713675, i64 2148713696}
