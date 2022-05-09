; ModuleID = '/llk/IR_all_yes/drivers/usb/serial/belkin_sa.c_pt.bc'
source_filename = "../drivers/usb/serial/belkin_sa.c"
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
%struct.belkin_sa_private = type { %struct.spinlock, i32, i8, i8, i32 }
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
%struct.tty_struct = type { i32, %struct.kref, ptr, ptr, ptr, i32, %struct.ld_semaphore, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.rw_semaphore, %struct.mutex, %struct.ktermios, %struct.ktermios, [64 x i8], i32, i32, %struct.winsize, %struct.anon.38, %struct.anon.39, i32, i32, i32, ptr, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, ptr, ptr, %struct.spinlock, %struct.list_head, i32, ptr, i32, %struct.work_struct, ptr }
%struct.ld_semaphore = type { %struct.atomic_t, %struct.raw_spinlock, i32, %struct.list_head, %struct.list_head, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ktermios = type { i32, i32, i32, i32, i8, [19 x i8], i32, i32 }
%struct.winsize = type { i16, i16, i16, i16 }
%struct.anon.38 = type { %struct.spinlock, i8, i8, [0 x i32] }
%struct.anon.39 = type { %struct.spinlock, ptr, ptr, i8, i8, [0 x i32] }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }

@__initcall__kmod_belkin_sa__241_473_usb_serial_module_init6 = internal global ptr @usb_serial_module_init, section ".initcall6.init", align 4
@serial_drivers = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @belkin_device, ptr null], [24 x i8] zeroinitializer }, align 32
@__exitcall_usb_serial_module_exit = internal global ptr @usb_serial_module_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author242 = internal constant [59 x i8] c"belkin_sa.author=William Greathouse <wgreathouse@smva.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description243 = internal constant [57 x i8] c"belkin_sa.description=USB Belkin Serial converter driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file244 = internal constant [44 x i8] c"belkin_sa.file=drivers/usb/serial/belkin_sa\00", section ".modinfo", align 1
@__UNIQUE_ID_license245 = internal constant [22 x i8] c"belkin_sa.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"belkin_sa\00", [22 x i8] zeroinitializer }, align 32
@id_table = internal constant { [7 x %struct.usb_device_id], [56 x i8] } { [7 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 1293, i16 259, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1388, i16 -32761, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1381, i16 1, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2337, i16 4096, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2337, i16 4608, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1293, i16 4611, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@belkin_device = internal global { %struct.usb_serial_driver, [72 x i8] } { %struct.usb_serial_driver { ptr @.str.1, ptr @id_table, %struct.list_head zeroinitializer, %struct.device_driver { ptr @.str.2, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, %struct.usb_dynids zeroinitializer, i8 1, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @belkin_sa_port_probe, ptr @belkin_sa_port_remove, ptr null, ptr null, ptr null, ptr @belkin_sa_open, ptr @belkin_sa_close, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @belkin_sa_set_termios, ptr @belkin_sa_break_ctl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @belkin_sa_tiocmget, ptr @belkin_sa_tiocmset, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @belkin_sa_read_int_callback, ptr null, ptr null, ptr null, ptr @belkin_sa_process_read_urb, ptr null }, [72 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Belkin / Peracom / GoHubs USB Serial Adapter\00", [51 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"belkin\00", [25 x i8] zeroinitializer }, align 32
@belkin_sa_port_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&priv->lock\00", [20 x i8] zeroinitializer }, align 32
@belkin_sa_port_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 130, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"bcdDevice: %04x, bfc: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"belkin_sa_port_probe\00", [43 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/usb/serial/belkin_sa.c\00", [33 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@belkin_sa_port_probe._entry_ptr = internal global ptr @belkin_sa_port_probe._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@belkin_sa_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.6, i32 152, ptr @.str.11, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"usb_submit_urb(read int) failed\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"belkin_sa_open\00", [17 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@belkin_sa_open._entry_ptr = internal global ptr @belkin_sa_open._entry, section ".printk_index", align 4
@belkin_sa_set_termios._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.6, i32 311, ptr @.str.11, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Set DTR error\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"belkin_sa_set_termios\00", [42 x i8] zeroinitializer }, align 32
@belkin_sa_set_termios._entry_ptr = internal global ptr @belkin_sa_set_termios._entry, section ".printk_index", align 4
@belkin_sa_set_termios._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.13, ptr @.str.6, i32 316, ptr @.str.11, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Set RTS error\0A\00", [17 x i8] zeroinitializer }, align 32
@belkin_sa_set_termios._entry_ptr.16 = internal global ptr @belkin_sa_set_termios._entry.14, section ".printk_index", align 4
@belkin_sa_set_termios._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.13, ptr @.str.6, i32 332, ptr @.str.11, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Set baudrate error\0A\00", [44 x i8] zeroinitializer }, align 32
@belkin_sa_set_termios._entry_ptr.19 = internal global ptr @belkin_sa_set_termios._entry.17, section ".printk_index", align 4
@belkin_sa_set_termios._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.13, ptr @.str.6, i32 337, ptr @.str.11, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Disable flowcontrol error\0A\00", [37 x i8] zeroinitializer }, align 32
@belkin_sa_set_termios._entry_ptr.22 = internal global ptr @belkin_sa_set_termios._entry.20, section ".printk_index", align 4
@belkin_sa_set_termios._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.13, ptr @.str.6, i32 341, ptr @.str.11, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"DTR LOW error\0A\00", [17 x i8] zeroinitializer }, align 32
@belkin_sa_set_termios._entry_ptr.25 = internal global ptr @belkin_sa_set_termios._entry.23, section ".printk_index", align 4
@belkin_sa_set_termios._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.13, ptr @.str.6, i32 343, ptr @.str.11, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"RTS LOW error\0A\00", [17 x i8] zeroinitializer }, align 32
@belkin_sa_set_termios._entry_ptr.28 = internal global ptr @belkin_sa_set_termios._entry.26, section ".printk_index", align 4
@belkin_sa_set_termios._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.13, ptr @.str.6, i32 354, ptr @.str.11, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Set parity error\0A\00", [46 x i8] zeroinitializer }, align 32
@belkin_sa_set_termios._entry_ptr.31 = internal global ptr @belkin_sa_set_termios._entry.29, section ".printk_index", align 4
@belkin_sa_set_termios._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.13, ptr @.str.6, i32 361, ptr @.str.11, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Set data bits error\0A\00", [43 x i8] zeroinitializer }, align 32
@belkin_sa_set_termios._entry_ptr.34 = internal global ptr @belkin_sa_set_termios._entry.32, section ".printk_index", align 4
@belkin_sa_set_termios._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.13, ptr @.str.6, i32 370, ptr @.str.11, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Set stop bits error\0A\00", [43 x i8] zeroinitializer }, align 32
@belkin_sa_set_termios._entry_ptr.37 = internal global ptr @belkin_sa_set_termios._entry.35, section ".printk_index", align 4
@belkin_sa_set_termios._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.13, ptr @.str.6, i32 391, ptr @.str.11, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Set flow control error\0A\00", [40 x i8] zeroinitializer }, align 32
@belkin_sa_set_termios._entry_ptr.40 = internal global ptr @belkin_sa_set_termios._entry.38, section ".printk_index", align 4
@belkin_sa_break_ctl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.6, i32 406, ptr @.str.11, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Set break_ctl %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"belkin_sa_break_ctl\00", [44 x i8] zeroinitializer }, align 32
@belkin_sa_break_ctl._entry_ptr = internal global ptr @belkin_sa_break_ctl._entry, section ".printk_index", align 4
@belkin_sa_tiocmset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.6, i32 460, ptr @.str.11, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Set RTS error %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"belkin_sa_tiocmset\00", [45 x i8] zeroinitializer }, align 32
@belkin_sa_tiocmset._entry_ptr = internal global ptr @belkin_sa_tiocmset._entry, section ".printk_index", align 4
@belkin_sa_tiocmset._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.44, ptr @.str.6, i32 466, ptr @.str.11, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Set DTR error %d\0A\00", [46 x i8] zeroinitializer }, align 32
@belkin_sa_tiocmset._entry_ptr.47 = internal global ptr @belkin_sa_tiocmset._entry.45, section ".printk_index", align 4
@belkin_sa_read_int_callback.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.48, ptr @.str.6, ptr @.str.49, i8 0, i8 46, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"belkin_sa_read_int_callback\00", [36 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s - urb shutting down with status: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@belkin_sa_read_int_callback.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.48, ptr @.str.6, ptr @.str.50, i8 0, i8 47, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s - nonzero urb status received: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@belkin_sa_read_int_callback._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.48, ptr @.str.6, i32 231, ptr @.str.11, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s - usb_submit_urb failed with result %d\0A\00", [53 x i8] zeroinitializer }, align 32
@belkin_sa_read_int_callback._entry_ptr = internal global ptr @belkin_sa_read_int_callback._entry, section ".printk_index", align 4
@usb_serial_debug_data.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.52, ptr @.str.53, ptr @.str.54, i8 0, i8 98, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"usb_serial_debug_data\00", [42 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"include/linux/usb/serial.h\00", [37 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s - length = %d, data = %*ph\0A\00", [33 x i8] zeroinitializer }, align 32
@belkin_sa_process_read_urb.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.55, ptr @.str.6, ptr @.str.56, i8 0, i8 65, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"belkin_sa_process_read_urb\00", [37 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"tty_flag = %d\0A\00", [17 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 4294967188, i64 4294967192, i64 4294967294]
@___asan_gen_.57 = private unnamed_addr constant [15 x i8] c"serial_drivers\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 86, i32 41 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 473, i32 1 }
@___asan_gen_.63 = private unnamed_addr constant [9 x i8] c"id_table\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 54, i32 35 }
@___asan_gen_.66 = private unnamed_addr constant [14 x i8] c"belkin_device\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 66, i32 33 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 71, i32 18 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 69, i32 12 }
@___asan_gen_.75 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 121, i32 2 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 128, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 152, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 311, i32 5 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 316, i32 6 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 332, i32 4 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 337, i32 4 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 341, i32 4 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 343, i32 4 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 354, i32 4 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 361, i32 4 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 370, i32 4 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 391, i32 4 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 406, i32 3 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 460, i32 3 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 466, i32 3 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 186, i32 3 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 190, i32 3 }
@___asan_gen_.207 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 230, i32 3 }
@___asan_gen_.220 = private unnamed_addr constant [30 x i8] c"../include/linux/usb/serial.h\00", align 1
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 393, i32 2 }
@___asan_gen_.225 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.226 = private constant [34 x i8] c"../drivers/usb/serial/belkin_sa.c\00", align 1
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 263, i32 3 }
@llvm.compiler.used = appending global [80 x ptr] [ptr @__UNIQUE_ID_author242, ptr @__UNIQUE_ID_description243, ptr @__UNIQUE_ID_file244, ptr @__UNIQUE_ID_license245, ptr @__exitcall_usb_serial_module_exit, ptr @__initcall__kmod_belkin_sa__241_473_usb_serial_module_init6, ptr @belkin_sa_break_ctl._entry, ptr @belkin_sa_break_ctl._entry_ptr, ptr @belkin_sa_open._entry, ptr @belkin_sa_open._entry_ptr, ptr @belkin_sa_port_probe._entry, ptr @belkin_sa_port_probe._entry_ptr, ptr @belkin_sa_read_int_callback._entry, ptr @belkin_sa_read_int_callback._entry_ptr, ptr @belkin_sa_set_termios._entry, ptr @belkin_sa_set_termios._entry.14, ptr @belkin_sa_set_termios._entry.17, ptr @belkin_sa_set_termios._entry.20, ptr @belkin_sa_set_termios._entry.23, ptr @belkin_sa_set_termios._entry.26, ptr @belkin_sa_set_termios._entry.29, ptr @belkin_sa_set_termios._entry.32, ptr @belkin_sa_set_termios._entry.35, ptr @belkin_sa_set_termios._entry.38, ptr @belkin_sa_set_termios._entry_ptr, ptr @belkin_sa_set_termios._entry_ptr.16, ptr @belkin_sa_set_termios._entry_ptr.19, ptr @belkin_sa_set_termios._entry_ptr.22, ptr @belkin_sa_set_termios._entry_ptr.25, ptr @belkin_sa_set_termios._entry_ptr.28, ptr @belkin_sa_set_termios._entry_ptr.31, ptr @belkin_sa_set_termios._entry_ptr.34, ptr @belkin_sa_set_termios._entry_ptr.37, ptr @belkin_sa_set_termios._entry_ptr.40, ptr @belkin_sa_tiocmset._entry, ptr @belkin_sa_tiocmset._entry.45, ptr @belkin_sa_tiocmset._entry_ptr, ptr @belkin_sa_tiocmset._entry_ptr.47, ptr @usb_serial_module_exit, ptr @serial_drivers, ptr @.str, ptr @id_table, ptr @belkin_device, ptr @.str.1, ptr @.str.2, ptr @belkin_sa_port_probe.__key, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.18, ptr @.str.21, ptr @.str.24, ptr @.str.27, ptr @.str.30, ptr @.str.33, ptr @.str.36, ptr @.str.39, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.46, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56], section "llvm.metadata"
@0 = internal global [57 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serial_drivers to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @id_table to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @belkin_device to i32), i32 312, i32 384, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @belkin_sa_port_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @belkin_sa_port_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @belkin_sa_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @belkin_sa_set_termios._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @belkin_sa_set_termios._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @belkin_sa_set_termios._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @belkin_sa_set_termios._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @belkin_sa_set_termios._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @belkin_sa_set_termios._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @belkin_sa_set_termios._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @belkin_sa_set_termios._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @belkin_sa_set_termios._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @belkin_sa_set_termios._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @belkin_sa_break_ctl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @belkin_sa_tiocmset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @belkin_sa_tiocmset._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @belkin_sa_read_int_callback._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }]
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
define internal i32 @belkin_sa_port_probe(ptr nocapture noundef %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3264, i32 noundef 56) #9
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__raw_spin_lock_init(ptr noundef nonnull %call7.i, ptr noundef nonnull @.str.3, ptr noundef nonnull @belkin_sa_port_probe.__key, i16 noundef signext 3) #6
  %control_state = getelementptr inbounds %struct.belkin_sa_private, ptr %call7.i, i32 0, i32 1
  %5 = ptrtoint ptr %control_state to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %control_state, align 4
  %last_lsr = getelementptr inbounds %struct.belkin_sa_private, ptr %call7.i, i32 0, i32 2
  %6 = ptrtoint ptr %last_lsr to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %last_lsr, align 8
  %last_msr = getelementptr inbounds %struct.belkin_sa_private, ptr %call7.i, i32 0, i32 3
  %7 = ptrtoint ptr %last_msr to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %last_msr, align 1
  %bcdDevice = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 16, i32 9
  %8 = ptrtoint ptr %bcdDevice to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %bcdDevice, align 4
  %10 = tail call i16 @llvm.bswap.i16(i16 %9)
  call void @__sanitizer_cov_trace_const_cmp2(i16 519, i16 %10)
  %cmp = icmp ult i16 %10, 519
  %cond = zext i1 %cmp to i32
  %bad_flow_control = getelementptr inbounds %struct.belkin_sa_private, ptr %call7.i, i32 0, i32 4
  %11 = ptrtoint ptr %bad_flow_control to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %cond, ptr %bad_flow_control, align 4
  %dev7 = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 15
  %12 = ptrtoint ptr %bcdDevice to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %bcdDevice, align 4
  %14 = tail call i16 @llvm.bswap.i16(i16 %13)
  %conv10 = zext i16 %14 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev7, ptr noundef nonnull @.str.4, i32 noundef %conv10, i32 noundef %cond) #10
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32, i32 8
  %15 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call7.i, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @belkin_sa_port_remove(ptr nocapture noundef readonly %port) #2 align 64 {
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
define internal i32 @belkin_sa_open(ptr noundef %tty, ptr noundef %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %interrupt_in_urb = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 6
  %0 = ptrtoint ptr %interrupt_in_urb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %interrupt_in_urb, align 4
  %call = tail call i32 @usb_submit_urb(ptr noundef %1, i32 noundef 3264) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @usb_serial_generic_open(ptr noundef %tty, ptr noundef %port) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.then4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %interrupt_in_urb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %interrupt_in_urb, align 4
  tail call void @usb_kill_urb(ptr noundef %3) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %call2, %if.then4 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @belkin_sa_close(ptr noundef %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @usb_serial_generic_close(ptr noundef %port) #6
  %interrupt_in_urb = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 6
  %0 = ptrtoint ptr %interrupt_in_urb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %interrupt_in_urb, align 4
  tail call void @usb_kill_urb(ptr noundef %1) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @belkin_sa_set_termios(ptr noundef %tty, ptr noundef %port, ptr nocapture noundef readonly %old_termios) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port, align 8
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %termios2 = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13
  %4 = ptrtoint ptr %termios2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %termios2, align 4
  %c_cflag = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 2
  %6 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %c_cflag, align 4
  %and = and i32 %7, -1073741825
  store i32 %and, ptr %c_cflag, align 4
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #6
  %control_state9 = getelementptr inbounds %struct.belkin_sa_private, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %control_state9 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %control_state9, align 4
  %bad_flow_control10 = getelementptr inbounds %struct.belkin_sa_private, ptr %3, i32 0, i32 4
  %10 = ptrtoint ptr %bad_flow_control10 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bad_flow_control10, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %call6) #6
  %12 = ptrtoint ptr %old_termios to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %old_termios, align 4
  %c_cflag13 = getelementptr inbounds %struct.ktermios, ptr %old_termios, i32 0, i32 2
  %14 = ptrtoint ptr %c_cflag13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %c_cflag13, align 4
  %and14 = and i32 %7, 4111
  %and15 = and i32 %15, 4111
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %cmp19 = icmp eq i32 %and15, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %16 = icmp ne i32 %and14, 0
  %17 = and i1 %16, %cmp19
  br i1 %17, label %if.then21, label %entry.if.end50_crit_edge

entry.if.end50_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end50

if.then21:                                        ; preds = %entry
  %or = or i32 %9, 6
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 8
  %shl.i = shl i32 %21, 8
  %or24 = or i32 %shl.i, -2147483648
  %call25 = tail call i32 @usb_control_msg(ptr noundef %19, i32 noundef %or24, i8 noundef zeroext 10, i8 noundef zeroext 64, i16 noundef zeroext 1, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %cmp26 = icmp slt i32 %call25, 0
  br i1 %cmp26, label %do.end31, label %if.then21.if.end_crit_edge

if.then21.if.end_crit_edge:                       ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end31:                                         ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #8
  %dev32 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev32, ptr noundef nonnull @.str.12) #10
  br label %if.end

if.end:                                           ; preds = %do.end31, %if.then21.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %15)
  %tobool.not = icmp sgt i32 %15, -1
  br i1 %tobool.not, label %if.then34, label %if.end.if.end50_crit_edge

if.end.if.end50_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end50

if.then34:                                        ; preds = %if.end
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %23, align 8
  %shl.i331 = shl i32 %25, 8
  %or38 = or i32 %shl.i331, -2147483648
  %call39 = tail call i32 @usb_control_msg(ptr noundef %23, i32 noundef %or38, i8 noundef zeroext 11, i8 noundef zeroext 64, i16 noundef zeroext 1, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %cmp40 = icmp slt i32 %call39, 0
  br i1 %cmp40, label %do.end45, label %if.then34.if.end50_crit_edge

if.then34.if.end50_crit_edge:                     ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end50

do.end45:                                         ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #8
  %dev46 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev46, ptr noundef nonnull @.str.15) #10
  br label %if.end50

if.end50:                                         ; preds = %do.end45, %if.then34.if.end50_crit_edge, %if.end.if.end50_crit_edge, %entry.if.end50_crit_edge
  %control_state.0 = phi i32 [ %or, %if.end.if.end50_crit_edge ], [ %or, %do.end45 ], [ %or, %if.then34.if.end50_crit_edge ], [ %9, %entry.if.end50_crit_edge ]
  %call.i = tail call i32 @tty_termios_baud_rate(ptr noundef %termios2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool52.not = icmp eq i32 %call.i, 0
  br i1 %tobool52.not, label %if.else, label %if.then53

if.then53:                                        ; preds = %if.end50
  %div = udiv i32 230400, %call.i
  %conv54 = trunc i32 %div to i16
  %conv55 = and i32 %div, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv55)
  %cmp56 = icmp eq i32 %conv55, 0
  %spec.store.select = select i1 %cmp56, i16 1, i16 %conv54
  %conv60 = zext i16 %spec.store.select to i32
  %div61 = udiv i32 230400, %conv60
  tail call void @tty_encode_baud_rate(ptr noundef %tty, i32 noundef %div61, i32 noundef %div61) #6
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %1, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %27, align 8
  %shl.i332 = shl i32 %29, 8
  %or65 = or i32 %shl.i332, -2147483648
  %call66 = tail call i32 @usb_control_msg(ptr noundef %27, i32 noundef %or65, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext %spec.store.select, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %cmp67 = icmp slt i32 %call66, 0
  br i1 %cmp67, label %if.then53.if.end115.sink.split_crit_edge, label %if.then53.if.end115_crit_edge

if.then53.if.end115_crit_edge:                    ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end115

if.then53.if.end115.sink.split_crit_edge:         ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end115.sink.split

if.else:                                          ; preds = %if.end50
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %1, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %31, align 8
  %shl.i333 = shl i32 %33, 8
  %or78 = or i32 %shl.i333, -2147483648
  %call79 = tail call i32 @usb_control_msg(ptr noundef %31, i32 noundef %or78, i8 noundef zeroext 16, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79)
  %cmp80 = icmp slt i32 %call79, 0
  br i1 %cmp80, label %do.end85, label %if.else.if.end87_crit_edge

if.else.if.end87_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end87

do.end85:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %dev86 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev86, ptr noundef nonnull @.str.21) #10
  br label %if.end87

if.end87:                                         ; preds = %do.end85, %if.else.if.end87_crit_edge
  %and88 = and i32 %control_state.0, -7
  %34 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %1, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %35, align 8
  %shl.i334 = shl i32 %37, 8
  %or92 = or i32 %shl.i334, -2147483648
  %call93 = tail call i32 @usb_control_msg(ptr noundef %35, i32 noundef %or92, i8 noundef zeroext 10, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93)
  %cmp94 = icmp slt i32 %call93, 0
  br i1 %cmp94, label %do.end99, label %if.end87.if.end101_crit_edge

if.end87.if.end101_crit_edge:                     ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end101

do.end99:                                         ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #8
  %dev100 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev100, ptr noundef nonnull @.str.24) #10
  br label %if.end101

if.end101:                                        ; preds = %do.end99, %if.end87.if.end101_crit_edge
  %38 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %1, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %39, align 8
  %shl.i335 = shl i32 %41, 8
  %or105 = or i32 %shl.i335, -2147483648
  %call106 = tail call i32 @usb_control_msg(ptr noundef %39, i32 noundef %or105, i8 noundef zeroext 11, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call106)
  %cmp107 = icmp slt i32 %call106, 0
  br i1 %cmp107, label %if.end101.if.end115.sink.split_crit_edge, label %if.end101.if.end115_crit_edge

if.end101.if.end115_crit_edge:                    ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end115

if.end101.if.end115.sink.split_crit_edge:         ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end115.sink.split

if.end115.sink.split:                             ; preds = %if.end101.if.end115.sink.split_crit_edge, %if.then53.if.end115.sink.split_crit_edge
  %.str.27.sink = phi ptr [ @.str.18, %if.then53.if.end115.sink.split_crit_edge ], [ @.str.27, %if.end101.if.end115.sink.split_crit_edge ]
  %control_state.1.ph = phi i32 [ %control_state.0, %if.then53.if.end115.sink.split_crit_edge ], [ %and88, %if.end101.if.end115.sink.split_crit_edge ]
  %dev113 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev113, ptr noundef nonnull %.str.27.sink) #10
  br label %if.end115

if.end115:                                        ; preds = %if.end115.sink.split, %if.end101.if.end115_crit_edge, %if.then53.if.end115_crit_edge
  %control_state.1 = phi i32 [ %control_state.0, %if.then53.if.end115_crit_edge ], [ %and88, %if.end101.if.end115_crit_edge ], [ %control_state.1.ph, %if.end115.sink.split ]
  %xor = xor i32 %15, %7
  %and116 = and i32 %xor, 768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and116)
  %tobool117.not = icmp eq i32 %and116, 0
  br i1 %tobool117.not, label %if.end115.if.end140_crit_edge, label %if.then118

if.end115.if.end140_crit_edge:                    ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end140

if.then118:                                       ; preds = %if.end115
  %and119 = and i32 %7, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and119)
  %tobool120.not = icmp eq i32 %and119, 0
  %and122 = and i32 %7, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and122)
  %tobool123.not = icmp eq i32 %and122, 0
  %conv124 = select i1 %tobool123.not, i16 1, i16 2
  %urb_value.0 = select i1 %tobool120.not, i16 0, i16 %conv124
  %42 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %1, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %43, align 8
  %shl.i336 = shl i32 %45, 8
  %or130 = or i32 %shl.i336, -2147483648
  %call131 = tail call i32 @usb_control_msg(ptr noundef %43, i32 noundef %or130, i8 noundef zeroext 3, i8 noundef zeroext 64, i16 noundef zeroext %urb_value.0, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call131)
  %cmp132 = icmp slt i32 %call131, 0
  br i1 %cmp132, label %do.end137, label %if.then118.if.end140_crit_edge

if.then118.if.end140_crit_edge:                   ; preds = %if.then118
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end140

do.end137:                                        ; preds = %if.then118
  call void @__sanitizer_cov_trace_pc() #8
  %dev138 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev138, ptr noundef nonnull @.str.30) #10
  br label %if.end140

if.end140:                                        ; preds = %do.end137, %if.then118.if.end140_crit_edge, %if.end115.if.end140_crit_edge
  %46 = and i32 %xor, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %cmp143.not = icmp eq i32 %46, 0
  br i1 %cmp143.not, label %if.end140.if.end162_crit_edge, label %if.then145

if.end140.if.end162_crit_edge:                    ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end162

if.then145:                                       ; preds = %if.end140
  %call146 = tail call zeroext i8 @tty_get_char_size(i32 noundef %7) #6
  %conv147 = zext i8 %call146 to i16
  %sub = add nsw i16 %conv147, -5
  %47 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %1, align 4
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %48, align 8
  %shl.i337 = shl i32 %50, 8
  %or152 = or i32 %shl.i337, -2147483648
  %call153 = tail call i32 @usb_control_msg(ptr noundef %48, i32 noundef %or152, i8 noundef zeroext 2, i8 noundef zeroext 64, i16 noundef zeroext %sub, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call153)
  %cmp154 = icmp slt i32 %call153, 0
  br i1 %cmp154, label %do.end159, label %if.then145.if.end162_crit_edge

if.then145.if.end162_crit_edge:                   ; preds = %if.then145
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end162

do.end159:                                        ; preds = %if.then145
  call void @__sanitizer_cov_trace_pc() #8
  %dev160 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev160, ptr noundef nonnull @.str.33) #10
  br label %if.end162

if.end162:                                        ; preds = %do.end159, %if.then145.if.end162_crit_edge, %if.end140.if.end162_crit_edge
  %and163 = and i32 %7, 64
  %and164 = and i32 %15, 64
  call void @__sanitizer_cov_trace_cmp4(i32 %and163, i32 %and164)
  %cmp165.not = icmp eq i32 %and163, %and164
  br i1 %cmp165.not, label %if.end162.if.end185_crit_edge, label %if.then167

if.end162.if.end185_crit_edge:                    ; preds = %if.end162
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end185

if.then167:                                       ; preds = %if.end162
  %and163.lobit = lshr exact i32 %and163, 6
  %51 = trunc i32 %and163.lobit to i16
  %52 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %1, align 4
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %53, align 8
  %shl.i338 = shl i32 %55, 8
  %or175 = or i32 %shl.i338, -2147483648
  %call176 = tail call i32 @usb_control_msg(ptr noundef %53, i32 noundef %or175, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext %51, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call176)
  %cmp177 = icmp slt i32 %call176, 0
  br i1 %cmp177, label %do.end182, label %if.then167.if.end185_crit_edge

if.then167.if.end185_crit_edge:                   ; preds = %if.then167
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end185

do.end182:                                        ; preds = %if.then167
  call void @__sanitizer_cov_trace_pc() #8
  %dev183 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev183, ptr noundef nonnull @.str.36) #10
  br label %if.end185

if.end185:                                        ; preds = %do.end182, %if.then167.if.end185_crit_edge, %if.end162.if.end185_crit_edge
  %xor186 = xor i32 %13, %5
  %and187 = and i32 %xor186, 5120
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and187)
  %tobool188.not = icmp eq i32 %and187, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %xor)
  %tobool191.not = icmp sgt i32 %xor, -1
  %or.cond329 = select i1 %tobool188.not, i1 %tobool191.not, i1 false
  br i1 %or.cond329, label %if.end185.do.body239_crit_edge, label %if.then192

if.end185.do.body239_crit_edge:                   ; preds = %if.end185
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body239

if.then192:                                       ; preds = %if.end185
  %56 = and i32 %5, 5120
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %57 = icmp eq i32 %56, 0
  %urb_value.1 = select i1 %57, i32 0, i32 384
  %or211 = or i32 %urb_value.1, 17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool208.not340 = icmp slt i32 %7, 0
  %urb_value.2.in = select i1 %tobool208.not340, i32 %or211, i32 %urb_value.1
  %urb_value.2 = trunc i32 %urb_value.2.in to i16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool218.not = icmp eq i32 %11, 0
  %conv222 = and i16 %urb_value.2, 385
  %urb_value.3 = select i1 %tobool218.not, i16 %urb_value.2, i16 %conv222
  %58 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %1, align 4
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %59, align 8
  %shl.i339 = shl i32 %61, 8
  %or227 = or i32 %shl.i339, -2147483648
  %call228 = tail call i32 @usb_control_msg(ptr noundef %59, i32 noundef %or227, i8 noundef zeroext 16, i8 noundef zeroext 64, i16 noundef zeroext %urb_value.3, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call228)
  %cmp229 = icmp slt i32 %call228, 0
  br i1 %cmp229, label %do.end234, label %if.then192.do.body239_crit_edge

if.then192.do.body239_crit_edge:                  ; preds = %if.then192
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body239

do.end234:                                        ; preds = %if.then192
  call void @__sanitizer_cov_trace_pc() #8
  %dev235 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev235, ptr noundef nonnull @.str.39) #10
  br label %do.body239

do.body239:                                       ; preds = %do.end234, %if.then192.do.body239_crit_edge, %if.end185.do.body239_crit_edge
  %call247 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #6
  %62 = ptrtoint ptr %control_state9 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %control_state.1, ptr %control_state9, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %call247) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @belkin_sa_break_ctl(ptr nocapture noundef readonly %tty, i32 noundef %break_state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 8
  %shl.i = shl i32 %7, 8
  %or = or i32 %shl.i, -2147483648
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %break_state)
  %tobool.not = icmp ne i32 %break_state, 0
  %conv = zext i1 %tobool.not to i16
  %call3 = tail call i32 @usb_control_msg(ptr noundef %5, i32 noundef %or, i8 noundef zeroext 12, i8 noundef zeroext 64, i16 noundef zeroext %conv, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev5 = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev5, ptr noundef nonnull @.str.41, i32 noundef %break_state) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @belkin_sa_tiocmget(ptr nocapture noundef readonly %tty) #2 align 64 {
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
  %control_state6 = getelementptr inbounds %struct.belkin_sa_private, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %control_state6 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %control_state6, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %call3) #6
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @belkin_sa_tiocmset(ptr nocapture noundef readonly %tty, i32 noundef %set, i32 noundef %clear) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #6
  %control_state8 = getelementptr inbounds %struct.belkin_sa_private, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %control_state8 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %control_state8, align 4
  %8 = trunc i32 %set to i16
  %9 = lshr i16 %8, 2
  %10 = and i16 %9, 1
  %11 = and i32 %set, 6
  %12 = or i32 %11, %7
  %and14 = and i32 %clear, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  %and17 = and i32 %12, -5
  %control_state.2 = select i1 %tobool15.not, i32 %12, i32 %and17
  %rts.1 = select i1 %tobool15.not, i16 %10, i16 0
  %and19 = and i32 %clear, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  %and22 = and i32 %control_state.2, -3
  %control_state.3 = select i1 %tobool20.not, i32 %control_state.2, i32 %and22
  %13 = ptrtoint ptr %control_state8 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %control_state.3, ptr %control_state8, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %call5) #6
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %3, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 8
  %shl.i = shl i32 %17, 8
  %or28 = or i32 %shl.i, -2147483648
  %call30 = tail call i32 @usb_control_msg(ptr noundef %15, i32 noundef %or28, i8 noundef zeroext 11, i8 noundef zeroext 64, i16 noundef zeroext %rts.1, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %cmp31 = icmp slt i32 %call30, 0
  br i1 %cmp31, label %do.end36, label %if.end38

do.end36:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev37 = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev37, ptr noundef nonnull @.str.43, i32 noundef %call30) #10
  br label %exit

if.end38:                                         ; preds = %entry
  %18 = lshr i16 %8, 1
  %19 = and i16 %18, 1
  %dtr.1 = select i1 %tobool20.not, i16 %19, i16 0
  %20 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %3, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 8
  %shl.i73 = shl i32 %23, 8
  %or42 = or i32 %shl.i73, -2147483648
  %call44 = tail call i32 @usb_control_msg(ptr noundef %21, i32 noundef %or42, i8 noundef zeroext 10, i8 noundef zeroext 64, i16 noundef zeroext %dtr.1, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %cmp45 = icmp slt i32 %call44, 0
  br i1 %cmp45, label %do.end50, label %if.end38.exit_crit_edge

if.end38.exit_crit_edge:                          ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  br label %exit

do.end50:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  %dev51 = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev51, ptr noundef nonnull @.str.46, i32 noundef %call44) #10
  br label %exit

exit:                                             ; preds = %do.end50, %if.end38.exit_crit_edge, %do.end36
  %retval2.0 = phi i32 [ %call30, %do.end36 ], [ %call44, %do.end50 ], [ %call44, %if.end38.exit_crit_edge ]
  ret i32 %retval2.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @belkin_sa_read_int_callback(ptr noundef %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %5, label %do.body4 [
    i32 0, label %sw.epilog
    i32 -104, label %entry.do.body_crit_edge
    i32 -2, label %entry.do.body_crit_edge121
    i32 -108, label %entry.do.body_crit_edge122
  ]

entry.do.body_crit_edge122:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

entry.do.body_crit_edge121:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

do.body:                                          ; preds = %entry.do.body_crit_edge, %entry.do.body_crit_edge121, %entry.do.body_crit_edge122
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @belkin_sa_read_int_callback.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@belkin_sa_read_int_callback, %if.then)) #6
          to label %cleanup [label %if.then], !srcloc !122

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @belkin_sa_read_int_callback.__UNIQUE_ID_ddebug238, ptr noundef %dev, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.48, i32 noundef %5) #6
  br label %cleanup

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @belkin_sa_read_int_callback.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@belkin_sa_read_int_callback, %if.then16)) #6
          to label %exit [label %if.then16], !srcloc !122

if.then16:                                        ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #8
  %dev17 = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @belkin_sa_read_int_callback.__UNIQUE_ID_ddebug239, ptr noundef %dev17, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.48, i32 noundef %5) #6
  br label %exit

sw.epilog:                                        ; preds = %entry
  %actual_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %7 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %actual_length, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usb_serial_debug_data.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@belkin_sa_read_int_callback, %if.then.i)) #6
          to label %usb_serial_debug_data.exit [label %if.then.i], !srcloc !122

if.then.i:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  %dev21 = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usb_serial_debug_data.__UNIQUE_ID_ddebug237, ptr noundef %dev21, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.48, i32 noundef %8, i32 noundef %8, ptr noundef %3) #6
  br label %usb_serial_debug_data.exit

usb_serial_debug_data.exit:                       ; preds = %if.then.i, %sw.epilog
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32, i32 8
  %9 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %driver_data.i.i, align 4
  %call27 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %10) #6
  %arrayidx = getelementptr i8, ptr %3, i32 3
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx, align 1
  %last_msr = getelementptr inbounds %struct.belkin_sa_private, ptr %10, i32 0, i32 3
  %13 = ptrtoint ptr %last_msr to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %last_msr, align 1
  %14 = and i8 %12, 32
  %control_state36 = getelementptr inbounds %struct.belkin_sa_private, ptr %10, i32 0, i32 1
  %15 = ptrtoint ptr %control_state36 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %control_state36, align 4
  %and37 = and i32 %16, -257
  %17 = zext i8 %14 to i32
  %18 = shl nuw nsw i32 %17, 3
  %and37.sink = or i32 %and37, %18
  store i32 %and37.sink, ptr %control_state36, align 4
  %19 = load i8, ptr %last_msr, align 1
  %control_state47 = getelementptr inbounds %struct.belkin_sa_private, ptr %10, i32 0, i32 1
  %and48 = and i32 %and37.sink, -33
  %20 = shl i8 %19, 1
  %21 = and i8 %20, 32
  %22 = zext i8 %21 to i32
  %and48.sink = or i32 %and48, %22
  %23 = ptrtoint ptr %control_state47 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %and48.sink, ptr %control_state47, align 4
  %24 = load i8, ptr %last_msr, align 1
  %control_state58 = getelementptr inbounds %struct.belkin_sa_private, ptr %10, i32 0, i32 1
  %and59 = and i32 %and48.sink, -129
  %25 = shl i8 %24, 1
  %26 = and i8 %25, -128
  %27 = zext i8 %26 to i32
  %and59.sink = or i32 %and59, %27
  %28 = ptrtoint ptr %control_state58 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %and59.sink, ptr %control_state58, align 4
  %29 = load i8, ptr %last_msr, align 1
  %control_state69 = getelementptr inbounds %struct.belkin_sa_private, ptr %10, i32 0, i32 1
  %and70 = and i32 %and59.sink, -65
  %30 = lshr i8 %29, 1
  %31 = and i8 %30, 64
  %32 = zext i8 %31 to i32
  %and70.sink = or i32 %and70, %32
  %33 = ptrtoint ptr %control_state69 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %and70.sink, ptr %control_state69, align 4
  %arrayidx72 = getelementptr i8, ptr %3, i32 2
  %34 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx72, align 1
  %last_lsr = getelementptr inbounds %struct.belkin_sa_private, ptr %10, i32 0, i32 2
  %36 = ptrtoint ptr %last_lsr to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %35, ptr %last_lsr, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %10, i32 noundef %call27) #6
  br label %exit

exit:                                             ; preds = %usb_serial_debug_data.exit, %if.then16, %do.body4
  %call74 = tail call i32 @usb_submit_urb(ptr noundef %urb, i32 noundef 2592) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %exit.cleanup_crit_edge, label %do.end79

exit.cleanup_crit_edge:                           ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end79:                                         ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #8
  %dev80 = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev80, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.48, i32 noundef %call74) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end79, %exit.cleanup_crit_edge, %if.then, %do.body
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @belkin_sa_process_read_urb(ptr nocapture noundef readonly %urb) #2 align 64 {
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
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #6
  %last_lsr = getelementptr inbounds %struct.belkin_sa_private, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %last_lsr to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %last_lsr, align 4
  %conv7 = zext i8 %7 to i32
  %and = and i8 %7, 127
  store i8 %and, ptr %last_lsr, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %call3) #6
  %actual_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %8 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %actual_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %and11 = and i32 %conv7, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.end.if.end48_crit_edge, label %if.then13

if.end.if.end48_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end48

if.then13:                                        ; preds = %if.end
  %and15 = and i32 %conv7, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.else, label %if.then13.do.body30_crit_edge

if.then13.do.body30_crit_edge:                    ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body30

if.else:                                          ; preds = %if.then13
  %and19 = and i32 %conv7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %if.else22, label %if.else.do.body30_crit_edge

if.else.do.body30_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body30

if.else22:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %and24 = lshr i8 %7, 2
  %10 = and i8 %and24, 2
  br label %do.body30

do.body30:                                        ; preds = %if.else22, %if.else.do.body30_crit_edge, %if.then13.do.body30_crit_edge
  %tty_flag.0 = phi i8 [ 1, %if.then13.do.body30_crit_edge ], [ 3, %if.else.do.body30_crit_edge ], [ %10, %if.else22 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @belkin_sa_process_read_urb.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@belkin_sa_process_read_urb, %if.then36)) #6
          to label %do.end40 [label %if.then36], !srcloc !122

if.then36:                                        ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  %conv37 = zext i8 %tty_flag.0 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @belkin_sa_process_read_urb.__UNIQUE_ID_ddebug240, ptr noundef %dev, ptr noundef nonnull @.str.56, i32 noundef %conv37) #6
  br label %do.end40

do.end40:                                         ; preds = %if.then36, %do.body30
  %and42 = and i32 %conv7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42)
  %tobool43.not = icmp eq i32 %and42, 0
  br i1 %tobool43.not, label %do.end40.if.end48_crit_edge, label %if.then44

do.end40.if.end48_crit_edge:                      ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end48

if.then44:                                        ; preds = %do.end40
  %port45 = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 1
  %tail.i = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 1, i32 0, i32 8
  %11 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %tail.i, align 4
  %flags.i = getelementptr inbounds %struct.tty_buffer, ptr %12, i32 0, i32 5
  %13 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %if.then44.if.end12.i_crit_edge

if.then44.if.end12.i_crit_edge:                   ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12.i

land.lhs.true.i:                                  ; preds = %if.then44
  %used.i = getelementptr inbounds %struct.tty_buffer, ptr %12, i32 0, i32 1
  %15 = ptrtoint ptr %used.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %used.i, align 4
  %size.i = getelementptr inbounds %struct.tty_buffer, ptr %12, i32 0, i32 2
  %17 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %18)
  %cmp3.i = icmp slt i32 %16, %18
  br i1 %cmp3.i, label %if.end.i, label %land.lhs.true.i.if.end12.i_crit_edge

land.lhs.true.i.if.end12.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12.i

if.end.i:                                         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  %data.i.i.i = getelementptr inbounds %struct.tty_buffer, ptr %12, i32 0, i32 6
  %add.ptr.i.i.i = getelementptr i8, ptr %data.i.i.i, i32 %16
  %add.ptr.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 %18
  %19 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 4, ptr %add.ptr.i.i, align 1
  %20 = ptrtoint ptr %used.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %used.i, align 4
  %inc.i = add i32 %21, 1
  store i32 %inc.i, ptr %used.i, align 4
  %add.ptr.i1.i = getelementptr i8, ptr %data.i.i.i, i32 %21
  %22 = ptrtoint ptr %add.ptr.i1.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %add.ptr.i1.i, align 1
  br label %if.end48

if.end12.i:                                       ; preds = %land.lhs.true.i.if.end12.i_crit_edge, %if.then44.if.end12.i_crit_edge
  %call13.i = tail call i32 @__tty_insert_flip_char(ptr noundef %port45, i8 noundef zeroext 0, i8 noundef zeroext 4) #6
  br label %if.end48

if.end48:                                         ; preds = %if.end12.i, %if.end.i, %do.end40.if.end48_crit_edge, %if.end.if.end48_crit_edge
  %tty_flag.1 = phi i8 [ %tty_flag.0, %do.end40.if.end48_crit_edge ], [ 0, %if.end.if.end48_crit_edge ], [ %tty_flag.0, %if.end.i ], [ %tty_flag.0, %if.end12.i ]
  %port49 = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 1
  %23 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %actual_length, align 4
  %call51 = tail call i32 @tty_insert_flip_string_fixed_flag(ptr noundef %port49, ptr noundef %5, i8 noundef zeroext %tty_flag.1, i32 noundef %24) #6
  tail call void @tty_flip_buffer_push(ptr noundef %port49) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end48, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_serial_generic_open(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_kill_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_serial_generic_close(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_encode_baud_rate(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @tty_get_char_size(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_termios_baud_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_insert_flip_string_fixed_flag(ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_flip_buffer_push(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__tty_insert_flip_char(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 57)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 57)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !11, !13, !15, !17, !19, !21, !23, !24, !26, !27, !28, !29, !30, !31, !32, !34, !35, !36, !37, !38, !40, !41, !42, !43, !45, !46, !47, !49, !50, !51, !53, !54, !55, !57, !58, !59, !61, !62, !63, !65, !66, !67, !69, !70, !71, !73, !74, !75, !77, !78, !79, !81, !82, !83, !84, !86, !87, !88, !89, !91, !92, !93, !95, !96, !97, !99, !100, !102, !103, !104, !106, !107, !108, !109, !111, !112}
!llvm.module.flags = !{!113, !114, !115, !116, !117, !118, !119, !120}
!llvm.ident = !{!121}

!0 = !{ptr @__initcall__kmod_belkin_sa__241_473_usb_serial_module_init6, !1, !"__initcall__kmod_belkin_sa__241_473_usb_serial_module_init6", i1 false, i1 false}
!1 = !{!"../drivers/usb/serial/belkin_sa.c", i32 473, i32 1}
!2 = !{ptr @__exitcall_usb_serial_module_exit, !1, !"__exitcall_usb_serial_module_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author242, !4, !"__UNIQUE_ID_author242", i1 false, i1 false}
!4 = !{!"../drivers/usb/serial/belkin_sa.c", i32 475, i32 1}
!5 = !{ptr @__UNIQUE_ID_description243, !6, !"__UNIQUE_ID_description243", i1 false, i1 false}
!6 = !{!"../drivers/usb/serial/belkin_sa.c", i32 476, i32 1}
!7 = !{ptr @__UNIQUE_ID_file244, !8, !"__UNIQUE_ID_file244", i1 false, i1 false}
!8 = !{!"../drivers/usb/serial/belkin_sa.c", i32 477, i32 1}
!9 = !{ptr @__UNIQUE_ID_license245, !8, !"__UNIQUE_ID_license245", i1 false, i1 false}
!10 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @id_table, !12, !"id_table", i1 false, i1 false}
!12 = !{!"../drivers/usb/serial/belkin_sa.c", i32 54, i32 35}
!13 = !{ptr @serial_drivers, !14, !"serial_drivers", i1 false, i1 false}
!14 = !{!"../drivers/usb/serial/belkin_sa.c", i32 86, i32 41}
!15 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/usb/serial/belkin_sa.c", i32 71, i32 18}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/usb/serial/belkin_sa.c", i32 69, i32 12}
!19 = !{ptr @belkin_device, !20, !"belkin_device", i1 false, i1 false}
!20 = !{!"../drivers/usb/serial/belkin_sa.c", i32 66, i32 33}
!21 = !{ptr @belkin_sa_port_probe.__key, !22, !"__key", i1 false, i1 false}
!22 = !{!"../drivers/usb/serial/belkin_sa.c", i32 121, i32 2}
!23 = !{ptr @.str.3, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.4, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/usb/serial/belkin_sa.c", i32 128, i32 2}
!26 = !{ptr @.str.5, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @belkin_sa_port_probe._entry, !25, !"_entry", i1 false, i1 false}
!31 = !{ptr @belkin_sa_port_probe._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.9, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/usb/serial/belkin_sa.c", i32 152, i32 3}
!34 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @belkin_sa_open._entry, !33, !"_entry", i1 false, i1 false}
!37 = !{ptr @belkin_sa_open._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.12, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/usb/serial/belkin_sa.c", i32 311, i32 5}
!40 = !{ptr @.str.13, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @belkin_sa_set_termios._entry, !39, !"_entry", i1 false, i1 false}
!42 = !{ptr @belkin_sa_set_termios._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.15, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/usb/serial/belkin_sa.c", i32 316, i32 6}
!45 = !{ptr @belkin_sa_set_termios._entry.14, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @belkin_sa_set_termios._entry_ptr.16, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.18, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/usb/serial/belkin_sa.c", i32 332, i32 4}
!49 = !{ptr @belkin_sa_set_termios._entry.17, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @belkin_sa_set_termios._entry_ptr.19, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.21, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/usb/serial/belkin_sa.c", i32 337, i32 4}
!53 = !{ptr @belkin_sa_set_termios._entry.20, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @belkin_sa_set_termios._entry_ptr.22, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.24, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/usb/serial/belkin_sa.c", i32 341, i32 4}
!57 = !{ptr @belkin_sa_set_termios._entry.23, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @belkin_sa_set_termios._entry_ptr.25, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.27, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/usb/serial/belkin_sa.c", i32 343, i32 4}
!61 = !{ptr @belkin_sa_set_termios._entry.26, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @belkin_sa_set_termios._entry_ptr.28, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.30, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/usb/serial/belkin_sa.c", i32 354, i32 4}
!65 = !{ptr @belkin_sa_set_termios._entry.29, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @belkin_sa_set_termios._entry_ptr.31, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.33, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/usb/serial/belkin_sa.c", i32 361, i32 4}
!69 = !{ptr @belkin_sa_set_termios._entry.32, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @belkin_sa_set_termios._entry_ptr.34, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.36, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/usb/serial/belkin_sa.c", i32 370, i32 4}
!73 = !{ptr @belkin_sa_set_termios._entry.35, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @belkin_sa_set_termios._entry_ptr.37, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.39, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/usb/serial/belkin_sa.c", i32 391, i32 4}
!77 = !{ptr @belkin_sa_set_termios._entry.38, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @belkin_sa_set_termios._entry_ptr.40, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.41, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/usb/serial/belkin_sa.c", i32 406, i32 3}
!81 = !{ptr @.str.42, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @belkin_sa_break_ctl._entry, !80, !"_entry", i1 false, i1 false}
!83 = !{ptr @belkin_sa_break_ctl._entry_ptr, !80, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.43, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/usb/serial/belkin_sa.c", i32 460, i32 3}
!86 = !{ptr @.str.44, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @belkin_sa_tiocmset._entry, !85, !"_entry", i1 false, i1 false}
!88 = !{ptr @belkin_sa_tiocmset._entry_ptr, !85, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.46, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/usb/serial/belkin_sa.c", i32 466, i32 3}
!91 = !{ptr @belkin_sa_tiocmset._entry.45, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @belkin_sa_tiocmset._entry_ptr.47, !90, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.48, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/usb/serial/belkin_sa.c", i32 186, i32 3}
!95 = !{ptr @.str.49, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @belkin_sa_read_int_callback.__UNIQUE_ID_ddebug238, !94, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!97 = !{ptr @.str.50, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/usb/serial/belkin_sa.c", i32 190, i32 3}
!99 = !{ptr @belkin_sa_read_int_callback.__UNIQUE_ID_ddebug239, !98, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!100 = !{ptr @.str.51, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/usb/serial/belkin_sa.c", i32 230, i32 3}
!102 = !{ptr @belkin_sa_read_int_callback._entry, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @belkin_sa_read_int_callback._entry_ptr, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.52, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../include/linux/usb/serial.h", i32 393, i32 2}
!106 = !{ptr @.str.53, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @.str.54, !105, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @usb_serial_debug_data.__UNIQUE_ID_ddebug237, !105, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!109 = !{ptr @.str.55, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/usb/serial/belkin_sa.c", i32 263, i32 3}
!111 = !{ptr @.str.56, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @belkin_sa_process_read_urb.__UNIQUE_ID_ddebug240, !110, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!113 = !{i32 1, !"wchar_size", i32 2}
!114 = !{i32 1, !"min_enum_size", i32 4}
!115 = !{i32 8, !"branch-target-enforcement", i32 0}
!116 = !{i32 8, !"sign-return-address", i32 0}
!117 = !{i32 8, !"sign-return-address-all", i32 0}
!118 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!119 = !{i32 7, !"uwtable", i32 1}
!120 = !{i32 7, !"frame-pointer", i32 2}
!121 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!122 = !{i64 2148703429, i64 2148703434, i64 2148703447, i64 2148703491, i64 2148703525, i64 2148703546}
