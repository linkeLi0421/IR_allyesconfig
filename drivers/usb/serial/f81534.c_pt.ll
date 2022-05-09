; ModuleID = '/llk/IR_all_yes/drivers/usb/serial/f81534.c_pt.bc'
source_filename = "../drivers/usb/serial/f81534.c"
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
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.f81534_port_out_pin = type { [3 x %struct.f81534_pin_data] }
%struct.f81534_pin_data = type { i16, i8 }
%struct.usb_serial = type { ptr, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, [16 x ptr], %struct.kref, %struct.mutex, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.usb_interface = type { ptr, ptr, i32, ptr, i32, i32, i8, %struct.device, ptr, %struct.work_struct }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.usb_serial_endpoints = type { i8, i8, i8, i8, [16 x ptr], [16 x ptr], [16 x ptr], [16 x ptr] }
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.f81534_serial_private = type { [12 x i8], [4 x i32], i8, i32, %struct.mutex }
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
%struct.f81534_port_private = type { %struct.mutex, %struct.mutex, %struct.work_struct, ptr, i32, %struct.spinlock, i32, i8, i8, i8, i8, i8 }
%struct.tty_struct = type { i32, %struct.kref, ptr, ptr, ptr, i32, %struct.ld_semaphore, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.rw_semaphore, %struct.mutex, %struct.ktermios, %struct.ktermios, [64 x i8], i32, i32, %struct.winsize, %struct.anon.38, %struct.anon.39, i32, i32, i32, ptr, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, ptr, ptr, %struct.spinlock, %struct.list_head, i32, ptr, i32, %struct.work_struct, ptr }
%struct.ld_semaphore = type { %struct.atomic_t, %struct.raw_spinlock, i32, %struct.list_head, %struct.list_head, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ktermios = type { i32, i32, i32, i32, i8, [19 x i8], i32, i32 }
%struct.winsize = type { i16, i16, i16, i16 }
%struct.anon.38 = type { %struct.spinlock, i8, i8, [0 x i32] }
%struct.anon.39 = type { %struct.spinlock, ptr, ptr, i8, i8, [0 x i32] }
%struct.serial_struct = type { i32, i32, i32, i32, i32, i32, i32, i32, i16, i8, [1 x i8], i32, i16, i16, ptr, i16, i32, i32 }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }

@__initcall__kmod_f81534__254_1580_usb_serial_module_init6 = internal global ptr @usb_serial_module_init, section ".initcall6.init", align 4
@serial_drivers = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @f81534_device, ptr null], [24 x i8] zeroinitializer }, align 32
@__exitcall_usb_serial_module_exit = internal global ptr @usb_serial_module_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description255 = internal constant [40 x i8] c"f81534.description=Fintek F81532/F81534\00", section ".modinfo", align 1
@__UNIQUE_ID_author256 = internal constant [52 x i8] c"f81534.author=Peter Hong <Peter_Hong@fintek.com.tw>\00", section ".modinfo", align 1
@__UNIQUE_ID_author257 = internal constant [48 x i8] c"f81534.author=Tom Tsai <Tom_Tsai@fintek.com.tw>\00", section ".modinfo", align 1
@__UNIQUE_ID_file258 = internal constant [38 x i8] c"f81534.file=drivers/usb/serial/f81534\00", section ".modinfo", align 1
@__UNIQUE_ID_license259 = internal constant [19 x i8] c"f81534.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"f81534\00", [25 x i8] zeroinitializer }, align 32
@f81534_id_table = internal constant { [3 x %struct.usb_device_id], [56 x i8] } { [3 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 6452, i16 4610, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 11330, i16 4610, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@f81534_device = internal global { %struct.usb_serial_driver, [72 x i8] } { %struct.usb_serial_driver { ptr @.str.1, ptr @f81534_id_table, %struct.list_head zeroinitializer, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, %struct.usb_dynids zeroinitializer, i8 0, i8 1, i8 1, i8 0, i8 0, i32 0, i32 0, ptr null, ptr null, ptr @f81534_calc_num_ports, ptr null, ptr null, ptr @f81534_port_probe, ptr @f81534_port_remove, ptr null, ptr @f81534_resume, ptr null, ptr @f81534_open, ptr @f81534_close, ptr @f81534_write, ptr null, ptr null, ptr @f81534_get_serial_info, ptr null, ptr @f81534_set_termios, ptr @f81534_break_ctl, ptr null, ptr null, ptr @f81534_tx_empty, ptr null, ptr null, ptr @f81534_tiocmget, ptr @f81534_tiocmset, ptr null, ptr null, ptr @f81534_dtr_rts, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @f81534_write_usb_callback, ptr @f81534_process_read_urb, ptr null }, [72 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Fintek F81532/F81534\00", [43 x i8] zeroinitializer }, align 32
@f81534_calc_num_ports._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 847, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"unsupported endpoint max packet size\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"f81534_calc_num_ports\00", [42 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/usb/serial/f81534.c\00", [36 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@f81534_calc_num_ports._entry_ptr = internal global ptr @f81534_calc_num_ports._entry, section ".printk_index", align 4
@f81534_calc_num_ports.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"&serial_priv->urb_mutex\00", [40 x i8] zeroinitializer }, align 32
@f81534_calc_num_ports._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 863, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: find idx failed: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@f81534_calc_num_ports._entry_ptr.10 = internal global ptr @f81534_calc_num_ports._entry.8, section ".printk_index", align 4
@f81534_calc_num_ports._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.3, ptr @.str.4, i32 880, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: get custom data failed: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@f81534_calc_num_ports._entry_ptr.13 = internal global ptr @f81534_calc_num_ports._entry.11, section ".printk_index", align 4
@f81534_calc_num_ports.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.3, ptr @.str.4, ptr @.str.14, i8 0, i8 -35, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: read config from block: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@f81534_calc_num_ports._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.3, ptr @.str.4, i32 896, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s: read failed: %d\0A\00", [43 x i8] zeroinitializer }, align 32
@f81534_calc_num_ports._entry_ptr.17 = internal global ptr @f81534_calc_num_ports._entry.15, section ".printk_index", align 4
@f81534_calc_num_ports.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.3, ptr @.str.4, ptr @.str.18, i8 0, i8 -31, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: read default config\0A\00", [39 x i8] zeroinitializer }, align 32
@f81534_calc_num_ports._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.3, ptr @.str.4, i32 917, ptr @.str.21, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"no config found, assuming 4 ports\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@f81534_calc_num_ports._entry_ptr.22 = internal global ptr @f81534_calc_num_ports._entry.19, section ".printk_index", align 4
@f81534_calc_num_ports.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.3, ptr @.str.4, ptr @.str.23, i8 0, i8 -24, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: phy_num: %d, tty_idx: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@f81534_find_config_idx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.24, ptr @.str.4, i32 738, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"f81534_find_config_idx\00", [41 x i8] zeroinitializer }, align 32
@f81534_find_config_idx._entry_ptr = internal global ptr @f81534_find_config_idx._entry, section ".printk_index", align 4
@f81534_set_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.4, i32 246, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: reg: %x data: %x failed: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"f81534_set_register\00", [44 x i8] zeroinitializer }, align 32
@f81534_set_register._entry_ptr = internal global ptr @f81534_set_register._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@f81534_wait_for_spi_idle._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.4, i32 371, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s: timed out waiting for idle SPI bus\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"f81534_wait_for_spi_idle\00", [39 x i8] zeroinitializer }, align 32
@f81534_wait_for_spi_idle._entry_ptr = internal global ptr @f81534_wait_for_spi_idle._entry, section ".printk_index", align 4
@f81534_get_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.4, i32 285, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: reg: %x failed: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"f81534_get_register\00", [44 x i8] zeroinitializer }, align 32
@f81534_get_register._entry_ptr = internal global ptr @f81534_get_register._entry, section ".printk_index", align 4
@f81534_port_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.31 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&port_priv->msr_lock\00", [43 x i8] zeroinitializer }, align 32
@f81534_port_probe.__key.32 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.33 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&port_priv->mcr_mutex\00", [42 x i8] zeroinitializer }, align 32
@f81534_port_probe.__key.34 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.35 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&port_priv->lcr_mutex\00", [42 x i8] zeroinitializer }, align 32
@f81534_port_probe.__key.36 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.37 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"(work_completion)(&port_priv->lsr_work)\00", [56 x i8] zeroinitializer }, align 32
@f81534_port_probe.__UNIQUE_ID_ddebug250 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.38, ptr @.str.4, ptr @.str.39, i8 1, i8 92, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"f81534_port_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: port_number: %d, phy_num: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@f81534_port_probe.__UNIQUE_ID_ddebug251 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.38, ptr @.str.4, ptr @.str.40, i8 1, i8 97, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"RS485 invert mode\0A\00", [45 x i8] zeroinitializer }, align 32
@f81534_port_probe.__UNIQUE_ID_ddebug252 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.38, ptr @.str.4, ptr @.str.41, i8 1, i8 98, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"RS485 mode\0A\00", [20 x i8] zeroinitializer }, align 32
@f81534_port_probe.__UNIQUE_ID_ddebug253 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.38, ptr @.str.4, ptr @.str.42, i8 1, i8 99, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"RS232 mode\0A\00", [20 x i8] zeroinitializer }, align 32
@f81534_lsr_worker._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.4, i32 1318, ptr @.str.21, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"read LSR failed: %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"f81534_lsr_worker\00", [46 x i8] zeroinitializer }, align 32
@f81534_lsr_worker._entry_ptr = internal global ptr @f81534_lsr_worker._entry, section ".printk_index", align 4
@f81534_port_out_pins = internal constant { [4 x %struct.f81534_port_out_pin], [48 x i8] } { [4 x %struct.f81534_port_out_pin] [%struct.f81534_port_out_pin { [3 x %struct.f81534_pin_data] [%struct.f81534_pin_data { i16 10984, i8 -128 }, %struct.f81534_pin_data { i16 10896, i8 32 }, %struct.f81534_pin_data { i16 10896, i8 16 }] }, %struct.f81534_port_out_pin { [3 x %struct.f81534_pin_data] [%struct.f81534_pin_data { i16 10984, i8 64 }, %struct.f81534_pin_data { i16 10984, i8 1 }, %struct.f81534_pin_data { i16 10984, i8 8 }] }, %struct.f81534_port_out_pin { [3 x %struct.f81534_pin_data] [%struct.f81534_pin_data { i16 10896, i8 1 }, %struct.f81534_pin_data { i16 10984, i8 4 }, %struct.f81534_pin_data { i16 10880, i8 64 }] }, %struct.f81534_port_out_pin { [3 x %struct.f81534_pin_data] [%struct.f81534_pin_data { i16 10896, i8 8 }, %struct.f81534_pin_data { i16 10896, i8 4 }, %struct.f81534_pin_data { i16 10896, i8 2 }] }], [48 x i8] zeroinitializer }, align 32
@f81534_set_port_output_pin.__UNIQUE_ID_ddebug249 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.45, ptr @.str.4, ptr @.str.46, i8 1, i8 83, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"f81534_set_port_output_pin\00", [37 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Output pin (M0/M1/M2): %d\0A\00", [37 x i8] zeroinitializer }, align 32
@f81534_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.4, i32 1538, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s: submit failed\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"f81534_resume\00", [18 x i8] zeroinitializer }, align 32
@f81534_resume._entry_ptr = internal global ptr @f81534_resume._entry, section ".printk_index", align 4
@f81534_submit_writer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str.4, i32 529, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: submit failed: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"f81534_submit_writer\00", [43 x i8] zeroinitializer }, align 32
@f81534_submit_writer._entry_ptr = internal global ptr @f81534_submit_writer._entry, section ".printk_index", align 4
@f81534_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.52, ptr @.str.4, i32 1088, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: Clear FIFO failed: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"f81534_open\00", [20 x i8] zeroinitializer }, align 32
@f81534_open._entry_ptr = internal global ptr @f81534_open._entry, section ".printk_index", align 4
@f81534_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.53, ptr @.str.4, i32 1492, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"f81534_write\00", [19 x i8] zeroinitializer }, align 32
@f81534_write._entry_ptr = internal global ptr @f81534_write._entry, section ".printk_index", align 4
@f81534_set_termios.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.54, ptr @.str.4, ptr @.str.55, i8 0, i8 -7, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.54 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"f81534_set_termios\00", [45 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s: baud: %d\0A\00", [18 x i8] zeroinitializer }, align 32
@f81534_set_termios._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.54, ptr @.str.4, i32 1003, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: set port config failed: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@f81534_set_termios._entry_ptr = internal global ptr @f81534_set_termios._entry, section ".printk_index", align 4
@f81534_update_mctrl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.58, ptr @.str.4, i32 710, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s: MCR write failed\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"f81534_update_mctrl\00", [44 x i8] zeroinitializer }, align 32
@f81534_update_mctrl._entry_ptr = internal global ptr @f81534_update_mctrl._entry, section ".printk_index", align 4
@baudrate_table = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 115200, i32 921600, i32 1152000, i32 1500000], [16 x i8] zeroinitializer }, align 32
@clock_table = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\00\06\02\04", [28 x i8] zeroinitializer }, align 32
@f81534_set_port_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.60, ptr @.str.4, i32 589, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"CLOCK_REG setting failed\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"f81534_set_port_config\00", [41 x i8] zeroinitializer }, align 32
@f81534_set_port_config._entry_ptr = internal global ptr @f81534_set_port_config._entry, section ".printk_index", align 4
@f81534_set_port_config._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.60, ptr @.str.4, i32 600, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: CONFIG1 setting failed\0A\00", [36 x i8] zeroinitializer }, align 32
@f81534_set_port_config._entry_ptr.63 = internal global ptr @f81534_set_port_config._entry.61, section ".printk_index", align 4
@f81534_set_port_config._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.60, ptr @.str.4, i32 612, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: FCR setting failed\0A\00", [40 x i8] zeroinitializer }, align 32
@f81534_set_port_config._entry_ptr.66 = internal global ptr @f81534_set_port_config._entry.64, section ".printk_index", align 4
@f81534_set_port_config._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.60, ptr @.str.4, i32 624, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s: set LCR failed\0A\00", [44 x i8] zeroinitializer }, align 32
@f81534_set_port_config._entry_ptr.69 = internal global ptr @f81534_set_port_config._entry.67, section ".printk_index", align 4
@f81534_set_port_config._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.60, ptr @.str.4, i32 631, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: set DLAB LSB failed\0A\00", [39 x i8] zeroinitializer }, align 32
@f81534_set_port_config._entry_ptr.72 = internal global ptr @f81534_set_port_config._entry.70, section ".printk_index", align 4
@f81534_set_port_config._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.60, ptr @.str.4, i32 638, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: set DLAB MSB failed\0A\00", [39 x i8] zeroinitializer }, align 32
@f81534_set_port_config._entry_ptr.75 = internal global ptr @f81534_set_port_config._entry.73, section ".printk_index", align 4
@f81534_set_port_config._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.60, ptr @.str.4, i32 646, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@f81534_set_port_config._entry_ptr.77 = internal global ptr @f81534_set_port_config._entry.76, section ".printk_index", align 4
@f81534_break_ctl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.79, ptr @.str.4, i32 673, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"set break failed: %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"f81534_break_ctl\00", [47 x i8] zeroinitializer }, align 32
@f81534_break_ctl._entry_ptr = internal global ptr @f81534_break_ctl._entry, section ".printk_index", align 4
@f81534_write_usb_callback.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.80, ptr @.str.4, ptr @.str.81, i8 1, i8 67, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.80 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"f81534_write_usb_callback\00", [38 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s - urb stopped: %d\0A\00", [42 x i8] zeroinitializer }, align 32
@f81534_write_usb_callback._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.80, ptr @.str.4, i32 1297, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@f81534_write_usb_callback._entry_ptr = internal global ptr @f81534_write_usb_callback._entry, section ".printk_index", align 4
@f81534_write_usb_callback.__UNIQUE_ID_ddebug248 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.80, ptr @.str.4, ptr @.str.82, i8 1, i8 69, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.82 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s - nonzero urb status: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@f81534_process_read_urb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.84, ptr @.str.4, i32 1270, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s: phy_port_num: %d larger than: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"f81534_process_read_urb\00", [40 x i8] zeroinitializer }, align 32
@f81534_process_read_urb._entry_ptr = internal global ptr @f81534_process_read_urb._entry, section ".printk_index", align 4
@f81534_process_per_serial_block._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.85, ptr @.str.4, i32 1183, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"f81534_process_per_serial_block\00", [32 x i8] zeroinitializer }, align 32
@f81534_process_per_serial_block._entry_ptr = internal global ptr @f81534_process_per_serial_block._entry, section ".printk_index", align 4
@f81534_process_per_serial_block._entry.86 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.85, ptr @.str.4, i32 1196, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s: phy: %d read_size: %zu larger than: %d\0A\00", [52 x i8] zeroinitializer }, align 32
@f81534_process_per_serial_block._entry_ptr.88 = internal global ptr @f81534_process_per_serial_block._entry.86, section ".printk_index", align 4
@f81534_process_per_serial_block._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.85, ptr @.str.4, i32 1204, ptr @.str.21, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: unknown token: %02x\0A\00", [39 x i8] zeroinitializer }, align 32
@f81534_process_per_serial_block._entry_ptr.91 = internal global ptr @f81534_process_per_serial_block._entry.89, section ".printk_index", align 4
@f81534_msr_changed.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.92, ptr @.str.4, ptr @.str.93, i8 1, i8 1, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.92 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"f81534_msr_changed\00", [45 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: MSR from %02x to %02x\0A\00", [37 x i8] zeroinitializer }, align 32
@f81534_msr_changed.__UNIQUE_ID_ddebug246 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.92, ptr @.str.4, ptr @.str.94, i8 1, i8 5, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.94 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s: DCD Changed: phy_num: %d from %x to %x\0A\00", [52 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.95 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.96 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 4294967188, i64 4294967192, i64 4294967264, i64 4294967294]
@__sancov_gen_cov_switch_values.97 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 3, i64 4]
@___asan_gen_.98 = private unnamed_addr constant [15 x i8] c"serial_drivers\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1576, i32 40 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1580, i32 1 }
@___asan_gen_.104 = private unnamed_addr constant [16 x i8] c"f81534_id_table\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 141, i32 35 }
@___asan_gen_.107 = private unnamed_addr constant [14 x i8] c"f81534_device\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1549, i32 33 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1554, i32 18 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 847, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 857, i32 2 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 862, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 878, i32 4 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 884, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 894, i32 4 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 900, i32 3 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 916, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 927, i32 3 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 737, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 245, i32 3 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 369, i32 3 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 284, i32 3 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1380, i32 2 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1381, i32 2 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1382, i32 2 }
@___asan_gen_.224 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1383, i32 2 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1393, i32 2 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1412, i32 3 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1416, i32 3 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1421, i32 3 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1318, i32 3 }
@___asan_gen_.254 = private unnamed_addr constant [21 x i8] c"f81534_port_out_pins\00", align 1
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 182, i32 41 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1359, i32 2 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1538, i32 4 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 528, i32 3 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1087, i32 3 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1492, i32 3 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 998, i32 2 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1002, i32 3 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 710, i32 3 }
@___asan_gen_.317 = private unnamed_addr constant [15 x i8] c"baudrate_table\00", align 1
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 189, i32 18 }
@___asan_gen_.320 = private unnamed_addr constant [12 x i8] c"clock_table\00", align 1
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 190, i32 17 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 589, i32 3 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 600, i32 3 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 612, i32 3 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 624, i32 3 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 631, i32 3 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 638, i32 3 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 646, i32 3 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 673, i32 3 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1292, i32 3 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1296, i32 3 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1300, i32 3 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1268, i32 4 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1183, i32 4 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1193, i32 4 }
@___asan_gen_.407 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1203, i32 3 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1027, i32 2 }
@___asan_gen_.419 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.420 = private constant [31 x i8] c"../drivers/usb/serial/f81534.c\00", align 1
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1045, i32 2 }
@llvm.compiler.used = appending global [145 x ptr] [ptr @__UNIQUE_ID_author256, ptr @__UNIQUE_ID_author257, ptr @__UNIQUE_ID_description255, ptr @__UNIQUE_ID_file258, ptr @__UNIQUE_ID_license259, ptr @__exitcall_usb_serial_module_exit, ptr @__initcall__kmod_f81534__254_1580_usb_serial_module_init6, ptr @f81534_break_ctl._entry, ptr @f81534_break_ctl._entry_ptr, ptr @f81534_calc_num_ports._entry, ptr @f81534_calc_num_ports._entry.11, ptr @f81534_calc_num_ports._entry.15, ptr @f81534_calc_num_ports._entry.19, ptr @f81534_calc_num_ports._entry.8, ptr @f81534_calc_num_ports._entry_ptr, ptr @f81534_calc_num_ports._entry_ptr.10, ptr @f81534_calc_num_ports._entry_ptr.13, ptr @f81534_calc_num_ports._entry_ptr.17, ptr @f81534_calc_num_ports._entry_ptr.22, ptr @f81534_find_config_idx._entry, ptr @f81534_find_config_idx._entry_ptr, ptr @f81534_get_register._entry, ptr @f81534_get_register._entry_ptr, ptr @f81534_lsr_worker._entry, ptr @f81534_lsr_worker._entry_ptr, ptr @f81534_open._entry, ptr @f81534_open._entry_ptr, ptr @f81534_process_per_serial_block._entry, ptr @f81534_process_per_serial_block._entry.86, ptr @f81534_process_per_serial_block._entry.89, ptr @f81534_process_per_serial_block._entry_ptr, ptr @f81534_process_per_serial_block._entry_ptr.88, ptr @f81534_process_per_serial_block._entry_ptr.91, ptr @f81534_process_read_urb._entry, ptr @f81534_process_read_urb._entry_ptr, ptr @f81534_resume._entry, ptr @f81534_resume._entry_ptr, ptr @f81534_set_port_config._entry, ptr @f81534_set_port_config._entry.61, ptr @f81534_set_port_config._entry.64, ptr @f81534_set_port_config._entry.67, ptr @f81534_set_port_config._entry.70, ptr @f81534_set_port_config._entry.73, ptr @f81534_set_port_config._entry.76, ptr @f81534_set_port_config._entry_ptr, ptr @f81534_set_port_config._entry_ptr.63, ptr @f81534_set_port_config._entry_ptr.66, ptr @f81534_set_port_config._entry_ptr.69, ptr @f81534_set_port_config._entry_ptr.72, ptr @f81534_set_port_config._entry_ptr.75, ptr @f81534_set_port_config._entry_ptr.77, ptr @f81534_set_register._entry, ptr @f81534_set_register._entry_ptr, ptr @f81534_set_termios._entry, ptr @f81534_set_termios._entry_ptr, ptr @f81534_submit_writer._entry, ptr @f81534_submit_writer._entry_ptr, ptr @f81534_update_mctrl._entry, ptr @f81534_update_mctrl._entry_ptr, ptr @f81534_wait_for_spi_idle._entry, ptr @f81534_wait_for_spi_idle._entry_ptr, ptr @f81534_write._entry, ptr @f81534_write._entry_ptr, ptr @f81534_write_usb_callback._entry, ptr @f81534_write_usb_callback._entry_ptr, ptr @usb_serial_module_exit, ptr @serial_drivers, ptr @.str, ptr @f81534_id_table, ptr @f81534_device, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @f81534_calc_num_ports.__key, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @.str.14, ptr @.str.16, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @f81534_port_probe.__key, ptr @.str.31, ptr @f81534_port_probe.__key.32, ptr @.str.33, ptr @f81534_port_probe.__key.34, ptr @.str.35, ptr @f81534_port_probe.__key.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @f81534_port_out_pins, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @baudrate_table, ptr @clock_table, ptr @.str.59, ptr @.str.60, ptr @.str.62, ptr @.str.65, ptr @.str.68, ptr @.str.71, ptr @.str.74, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.87, ptr @.str.90, ptr @.str.92, ptr @.str.93, ptr @.str.94], section "llvm.metadata"
@0 = internal global [108 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serial_drivers to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f81534_id_table to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f81534_device to i32), i32 312, i32 384, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f81534_calc_num_ports._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f81534_calc_num_ports.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f81534_calc_num_ports._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f81534_calc_num_ports._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f81534_calc_num_ports._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f81534_calc_num_ports._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f81534_find_config_idx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f81534_set_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f81534_wait_for_spi_idle._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f81534_get_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f81534_port_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f81534_port_probe.__key.32 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f81534_port_probe.__key.34 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f81534_port_probe.__key.36 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f81534_lsr_worker._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f81534_port_out_pins to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f81534_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f81534_submit_writer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f81534_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f81534_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f81534_set_termios._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f81534_update_mctrl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @baudrate_table to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clock_table to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f81534_set_port_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f81534_set_port_config._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f81534_set_port_config._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f81534_set_port_config._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f81534_set_port_config._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f81534_set_port_config._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f81534_set_port_config._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f81534_break_ctl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f81534_write_usb_callback._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f81534_process_read_urb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f81534_process_per_serial_block._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f81534_process_per_serial_block._entry.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f81534_process_per_serial_block._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @usb_serial_module_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_serial_register_drivers(ptr noundef nonnull @serial_drivers, ptr noundef nonnull @.str, ptr noundef nonnull @f81534_id_table) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @usb_serial_module_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @usb_serial_deregister_drivers(ptr noundef nonnull @serial_drivers) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_serial_deregister_drivers(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_serial_register_drivers(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @f81534_calc_num_ports(ptr noundef %serial, ptr nocapture noundef %epds) #2 align 64 {
entry:
  %old_mcr.i = alloca i8, align 1
  %msr.i = alloca i8, align 1
  %lsr.i = alloca i8, align 1
  %tmp.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %interface = getelementptr inbounds %struct.usb_serial, ptr %serial, i32 0, i32 2
  %0 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %interface, align 4
  %dev1 = getelementptr inbounds %struct.usb_interface, ptr %1, i32 0, i32 7
  %bulk_in = getelementptr inbounds %struct.usb_serial_endpoints, ptr %epds, i32 0, i32 4
  %2 = ptrtoint ptr %bulk_in to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bulk_in, align 4
  %wMaxPacketSize.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %wMaxPacketSize.i to i32
  call void @__asan_loadN_noabort(i32 %4, i32 2)
  %5 = load i16, ptr %wMaxPacketSize.i, align 1
  %6 = and i16 %5, -249
  %bulk_out = getelementptr inbounds %struct.usb_serial_endpoints, ptr %epds, i32 0, i32 5
  %7 = ptrtoint ptr %bulk_out to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bulk_out, align 4
  %wMaxPacketSize.i221 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %8, i32 0, i32 4
  %9 = ptrtoint ptr %wMaxPacketSize.i221 to i32
  call void @__asan_loadN_noabort(i32 %9, i32 2)
  %10 = load i16, ptr %wMaxPacketSize.i221, align 1
  %11 = and i16 %10, -249
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %11)
  %cmp.not = icmp eq i16 %11, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %6)
  %cmp4.not = icmp eq i16 %6, 2
  %or.cond = select i1 %cmp.not, i1 %cmp4.not, i1 false
  br i1 %or.cond, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 128, i32 noundef 3520) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %private.i = getelementptr inbounds %struct.usb_serial, ptr %serial, i32 0, i32 15
  %12 = ptrtoint ptr %private.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call.i, ptr %private.i, align 4
  %urb_mutex = getelementptr inbounds %struct.f81534_serial_private, ptr %call.i, i32 0, i32 4
  tail call void @__mutex_init(ptr noundef %urb_mutex, ptr noundef nonnull @.str.7, ptr noundef nonnull @f81534_calc_num_ports.__key) #9
  %setting_idx = getelementptr inbounds %struct.f81534_serial_private, ptr %call.i, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i) #9
  %13 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 -1, ptr %tmp.i, align 1, !annotation !225
  %call.i223 = call fastcc i32 @f81534_read_flash(ptr noundef %serial, i32 noundef 12032, i32 noundef 1, ptr noundef nonnull %tmp.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i223)
  %tobool.not.i = icmp eq i32 %call.i223, 0
  br i1 %tobool.not.i, label %if.end21, label %do.end18

do.end18:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %interface, align 4
  %dev.i = getelementptr inbounds %struct.usb_interface, ptr %15, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.24, i32 noundef %call.i223) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i) #9
  %16 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %interface, align 4
  %dev20 = getelementptr inbounds %struct.usb_interface, ptr %17, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev20, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.3, i32 noundef %call.i223) #12
  br label %cleanup

if.end21:                                         ; preds = %if.end9
  %18 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %tmp.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -16, i8 %19)
  %cmp.i = icmp ne i8 %19, -16
  %..i = sext i1 %cmp.i to i8
  %20 = ptrtoint ptr %setting_idx to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %..i, ptr %setting_idx, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i) #9
  br i1 %cmp.i, label %if.else, label %if.then25

if.then25:                                        ; preds = %if.end21
  %call26 = tail call fastcc i32 @f81534_read_flash(ptr noundef %serial, i32 noundef 12033, i32 noundef 12, ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %do.body35, label %do.end31

do.end31:                                         ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #11
  %21 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %interface, align 4
  %dev33 = getelementptr inbounds %struct.usb_interface, ptr %22, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev33, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.3, i32 noundef %call26) #12
  br label %cleanup

do.body35:                                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @f81534_calc_num_ports.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@f81534_calc_num_ports, %if.then40)) #9
          to label %for.body [label %if.then40], !srcloc !226

if.then40:                                        ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #11
  %23 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %interface, align 4
  %dev42 = getelementptr inbounds %struct.usb_interface, ptr %24, i32 0, i32 7
  %25 = ptrtoint ptr %setting_idx to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %setting_idx, align 4
  %conv44 = zext i8 %26 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @f81534_calc_num_ports.__UNIQUE_ID_ddebug240, ptr noundef %dev42, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.3, i32 noundef %conv44) #9
  br label %for.body

if.else:                                          ; preds = %if.end21
  %call50 = tail call fastcc i32 @f81534_read_flash(ptr noundef %serial, i32 noundef 12288, i32 noundef 12, ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %do.body59, label %do.end55

do.end55:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %27 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %interface, align 4
  %dev57 = getelementptr inbounds %struct.usb_interface, ptr %28, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev57, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.3, i32 noundef %call50) #12
  br label %cleanup

do.body59:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @f81534_calc_num_ports.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@f81534_calc_num_ports, %if.then71)) #9
          to label %for.body [label %if.then71], !srcloc !226

if.then71:                                        ; preds = %do.body59
  call void @__sanitizer_cov_trace_pc() #11
  %29 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %interface, align 4
  %dev73 = getelementptr inbounds %struct.usb_interface, ptr %30, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @f81534_calc_num_ports.__UNIQUE_ID_ddebug241, ptr noundef %dev73, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.3) #9
  br label %for.body

for.body:                                         ; preds = %if.end86.for.body_crit_edge, %if.then71, %do.body59, %if.then40, %do.body35
  %num_port.0234 = phi i8 [ %spec.select, %if.end86.for.body_crit_edge ], [ 0, %do.body59 ], [ 0, %do.body35 ], [ 0, %if.then71 ], [ 0, %if.then40 ]
  %i.0231 = phi i32 [ %inc93, %if.end86.for.body_crit_edge ], [ 0, %do.body59 ], [ 0, %do.body35 ], [ 0, %if.then71 ], [ 0, %if.then40 ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %old_mcr.i) #9
  %31 = ptrtoint ptr %old_mcr.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 -1, ptr %old_mcr.i, align 1, !annotation !225
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %msr.i) #9
  %32 = ptrtoint ptr %msr.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 -1, ptr %msr.i, align 1, !annotation !225
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %lsr.i) #9
  %33 = ptrtoint ptr %lsr.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 -1, ptr %lsr.i, align 1, !annotation !225
  %phy.tr.i.i = trunc i32 %i.0231 to i16
  %34 = shl i16 %phy.tr.i.i, 4
  %conv1.i.i = add i16 %34, 4614
  %call.i.i = call fastcc i32 @f81534_get_register(ptr noundef %serial, i16 noundef zeroext %conv1.i.i, ptr noundef nonnull %msr.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i224 = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i224, label %if.end.i225, label %for.body.f81534_check_port_hw_disabled.exit.thread_crit_edge

for.body.f81534_check_port_hw_disabled.exit.thread_crit_edge: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %f81534_check_port_hw_disabled.exit.thread

if.end.i225:                                      ; preds = %for.body
  %35 = ptrtoint ptr %msr.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %msr.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -17, i8 %36)
  %cmp.not.i = icmp ugt i8 %36, -17
  br i1 %cmp.not.i, label %if.end5.i, label %if.end.i225.f81534_check_port_hw_disabled.exit.thread_crit_edge

if.end.i225.f81534_check_port_hw_disabled.exit.thread_crit_edge: ; preds = %if.end.i225
  call void @__sanitizer_cov_trace_pc() #11
  br label %f81534_check_port_hw_disabled.exit.thread

if.end5.i:                                        ; preds = %if.end.i225
  %conv1.i60.i = add i16 %34, 4610
  %call.i61.i = tail call fastcc i32 @f81534_set_register(ptr noundef %serial, i16 noundef zeroext %conv1.i60.i, i8 noundef zeroext 7) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i61.i)
  %tobool7.not.i = icmp eq i32 %call.i61.i, 0
  br i1 %tobool7.not.i, label %if.end9.i, label %if.end5.i.f81534_check_port_hw_disabled.exit.thread_crit_edge

if.end5.i.f81534_check_port_hw_disabled.exit.thread_crit_edge: ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %f81534_check_port_hw_disabled.exit.thread

if.end9.i:                                        ; preds = %if.end5.i
  %conv1.i63.i = add i16 %34, 4612
  %call.i64.i = call fastcc i32 @f81534_get_register(ptr noundef %serial, i16 noundef zeroext %conv1.i63.i, ptr noundef nonnull %old_mcr.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i64.i)
  %tobool11.not.i = icmp eq i32 %call.i64.i, 0
  br i1 %tobool11.not.i, label %if.end13.i, label %if.end9.i.f81534_check_port_hw_disabled.exit.thread_crit_edge

if.end9.i.f81534_check_port_hw_disabled.exit.thread_crit_edge: ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %f81534_check_port_hw_disabled.exit.thread

if.end13.i:                                       ; preds = %if.end9.i
  %call.i67.i = tail call fastcc i32 @f81534_set_register(ptr noundef %serial, i16 noundef zeroext %conv1.i63.i, i8 noundef zeroext 16) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i67.i)
  %tobool15.not.i = icmp eq i32 %call.i67.i, 0
  br i1 %tobool15.not.i, label %if.end17.i, label %if.end13.i.f81534_check_port_hw_disabled.exit.thread_crit_edge

if.end13.i.f81534_check_port_hw_disabled.exit.thread_crit_edge: ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %f81534_check_port_hw_disabled.exit.thread

if.end17.i:                                       ; preds = %if.end13.i
  %call.i70.i = tail call fastcc i32 @f81534_set_register(ptr noundef %serial, i16 noundef zeroext %conv1.i63.i, i8 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i70.i)
  %tobool19.not.i = icmp eq i32 %call.i70.i, 0
  br i1 %tobool19.not.i, label %if.end21.i, label %if.end17.i.f81534_check_port_hw_disabled.exit.thread_crit_edge

if.end17.i.f81534_check_port_hw_disabled.exit.thread_crit_edge: ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %f81534_check_port_hw_disabled.exit.thread

if.end21.i:                                       ; preds = %if.end17.i
  tail call void @msleep(i32 noundef 60) #9
  %conv1.i72.i = add i16 %34, 4613
  %call.i73.i = call fastcc i32 @f81534_get_register(ptr noundef %serial, i16 noundef zeroext %conv1.i72.i, ptr noundef nonnull %lsr.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i73.i)
  %tobool23.not.i = icmp eq i32 %call.i73.i, 0
  br i1 %tobool23.not.i, label %if.end25.i, label %if.end21.i.f81534_check_port_hw_disabled.exit.thread_crit_edge

if.end21.i.f81534_check_port_hw_disabled.exit.thread_crit_edge: ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %f81534_check_port_hw_disabled.exit.thread

if.end25.i:                                       ; preds = %if.end21.i
  %37 = ptrtoint ptr %old_mcr.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %old_mcr.i, align 1
  %call.i76.i = tail call fastcc i32 @f81534_set_register(ptr noundef %serial, i16 noundef zeroext %conv1.i63.i, i8 noundef zeroext %38) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i76.i)
  %tobool27.not.i = icmp eq i32 %call.i76.i, 0
  br i1 %tobool27.not.i, label %f81534_check_port_hw_disabled.exit, label %if.end25.i.f81534_check_port_hw_disabled.exit.thread_crit_edge

if.end25.i.f81534_check_port_hw_disabled.exit.thread_crit_edge: ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %f81534_check_port_hw_disabled.exit.thread

f81534_check_port_hw_disabled.exit.thread:        ; preds = %if.end25.i.f81534_check_port_hw_disabled.exit.thread_crit_edge, %if.end21.i.f81534_check_port_hw_disabled.exit.thread_crit_edge, %if.end17.i.f81534_check_port_hw_disabled.exit.thread_crit_edge, %if.end13.i.f81534_check_port_hw_disabled.exit.thread_crit_edge, %if.end9.i.f81534_check_port_hw_disabled.exit.thread_crit_edge, %if.end5.i.f81534_check_port_hw_disabled.exit.thread_crit_edge, %if.end.i225.f81534_check_port_hw_disabled.exit.thread_crit_edge, %for.body.f81534_check_port_hw_disabled.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %lsr.i) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %msr.i) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %old_mcr.i) #9
  br label %if.end86

f81534_check_port_hw_disabled.exit:               ; preds = %if.end25.i
  %39 = ptrtoint ptr %lsr.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %lsr.i, align 1
  %41 = and i8 %40, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %cmp32.not.i.not = icmp eq i8 %41, 0
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %lsr.i) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %msr.i) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %old_mcr.i) #9
  br i1 %cmp32.not.i.not, label %f81534_check_port_hw_disabled.exit.if.end86_crit_edge, label %if.then81

f81534_check_port_hw_disabled.exit.if.end86_crit_edge: ; preds = %f81534_check_port_hw_disabled.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end86

if.then81:                                        ; preds = %f81534_check_port_hw_disabled.exit
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx83 = getelementptr [12 x i8], ptr %call.i, i32 0, i32 %i.0231
  %42 = ptrtoint ptr %arrayidx83 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx83, align 1
  %44 = or i8 %43, -120
  store i8 %44, ptr %arrayidx83, align 1
  br label %if.end86

if.end86:                                         ; preds = %if.then81, %f81534_check_port_hw_disabled.exit.if.end86_crit_edge, %f81534_check_port_hw_disabled.exit.thread
  %arrayidx88 = getelementptr [12 x i8], ptr %call.i, i32 0, i32 %i.0231
  %45 = ptrtoint ptr %arrayidx88 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx88, align 1
  %47 = and i8 %46, -120
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool90.not = icmp eq i8 %47, 0
  %inc = zext i1 %tobool90.not to i8
  %spec.select = add i8 %num_port.0234, %inc
  %inc93 = add nuw nsw i32 %i.0231, 1
  %exitcond.not = icmp eq i32 %inc93, 4
  br i1 %exitcond.not, label %for.end, label %if.end86.for.body_crit_edge

if.end86.for.body_crit_edge:                      ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %if.end86
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %spec.select)
  %tobool94.not = icmp eq i8 %spec.select, 0
  br i1 %tobool94.not, label %do.end98, label %for.end.if.end101_crit_edge

for.end.if.end101_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end101

do.end98:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %48 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %interface, align 4
  %dev100 = getelementptr inbounds %struct.usb_interface, ptr %49, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev100, ptr noundef nonnull @.str.20) #12
  br label %if.end101

if.end101:                                        ; preds = %do.end98, %for.end.if.end101_crit_edge
  %num_port.2 = phi i8 [ %spec.select, %for.end.if.end101_crit_edge ], [ 4, %do.end98 ]
  br label %for.body105

for.cond141.preheader:                            ; preds = %for.inc135
  %conv142 = zext i8 %num_port.2 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %num_port.2)
  %cmp143238 = icmp ugt i8 %num_port.2, 1
  br i1 %cmp143238, label %for.cond141.preheader.for.body145_crit_edge, label %for.cond141.preheader.for.end152_crit_edge

for.cond141.preheader.for.end152_crit_edge:       ; preds = %for.cond141.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end152

for.cond141.preheader.for.body145_crit_edge:      ; preds = %for.cond141.preheader
  br label %for.body145

for.body105:                                      ; preds = %for.inc135.for.body105_crit_edge, %if.end101
  %index.0237 = phi i32 [ 0, %if.end101 ], [ %index.1, %for.inc135.for.body105_crit_edge ]
  %i.1235 = phi i32 [ 0, %if.end101 ], [ %inc136, %for.inc135.for.body105_crit_edge ]
  %arrayidx107 = getelementptr [12 x i8], ptr %call.i, i32 0, i32 %i.1235
  %50 = ptrtoint ptr %arrayidx107 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx107, align 1
  %52 = and i8 %51, -120
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool110.not = icmp eq i8 %52, 0
  br i1 %tobool110.not, label %if.end112, label %for.body105.for.inc135_crit_edge

for.body105.for.inc135_crit_edge:                 ; preds = %for.body105
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc135

if.end112:                                        ; preds = %for.body105
  call void @__sanitizer_cov_trace_pc() #11
  %inc113 = add i32 %index.0237, 1
  %arrayidx114 = getelementptr %struct.f81534_serial_private, ptr %call.i, i32 0, i32 1, i32 %i.1235
  %53 = ptrtoint ptr %arrayidx114 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %index.0237, ptr %arrayidx114, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @f81534_calc_num_ports.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@f81534_calc_num_ports, %if.then127)) #9
          to label %for.inc135 [label %if.then127], !srcloc !226

if.then127:                                       ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #11
  %54 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %interface, align 4
  %dev129 = getelementptr inbounds %struct.usb_interface, ptr %55, i32 0, i32 7
  %56 = ptrtoint ptr %arrayidx114 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx114, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @f81534_calc_num_ports.__UNIQUE_ID_ddebug242, ptr noundef %dev129, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.3, i32 noundef %i.1235, i32 noundef %57) #9
  br label %for.inc135

for.inc135:                                       ; preds = %if.then127, %if.end112, %for.body105.for.inc135_crit_edge
  %index.1 = phi i32 [ %index.0237, %for.body105.for.inc135_crit_edge ], [ %inc113, %if.then127 ], [ %inc113, %if.end112 ]
  %inc136 = add nuw nsw i32 %i.1235, 1
  %exitcond240.not = icmp eq i32 %inc136, 4
  br i1 %exitcond240.not, label %for.cond141.preheader, label %for.inc135.for.body105_crit_edge

for.inc135.for.body105_crit_edge:                 ; preds = %for.inc135
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body105

for.body145:                                      ; preds = %for.body145.for.body145_crit_edge, %for.cond141.preheader.for.body145_crit_edge
  %i.2239 = phi i32 [ %inc151, %for.body145.for.body145_crit_edge ], [ 1, %for.cond141.preheader.for.body145_crit_edge ]
  %58 = ptrtoint ptr %bulk_out to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %bulk_out, align 4
  %arrayidx149 = getelementptr %struct.usb_serial_endpoints, ptr %epds, i32 0, i32 5, i32 %i.2239
  %60 = ptrtoint ptr %arrayidx149 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %59, ptr %arrayidx149, align 4
  %inc151 = add nuw nsw i32 %i.2239, 1
  %exitcond241.not = icmp eq i32 %inc151, %conv142
  br i1 %exitcond241.not, label %for.body145.for.end152_crit_edge, label %for.body145.for.body145_crit_edge

for.body145.for.body145_crit_edge:                ; preds = %for.body145
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body145

for.body145.for.end152_crit_edge:                 ; preds = %for.body145
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end152

for.end152:                                       ; preds = %for.body145.for.end152_crit_edge, %for.cond141.preheader.for.end152_crit_edge
  %num_bulk_out = getelementptr inbounds %struct.usb_serial_endpoints, ptr %epds, i32 0, i32 1
  %61 = ptrtoint ptr %num_bulk_out to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %num_port.2, ptr %num_bulk_out, align 1
  br label %cleanup

cleanup:                                          ; preds = %for.end152, %do.end55, %do.end31, %do.end18, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -19, %do.end ], [ %call.i223, %do.end18 ], [ %call26, %do.end31 ], [ %conv142, %for.end152 ], [ %call50, %do.end55 ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @f81534_port_probe(ptr noundef %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port, align 8
  %private.i = getelementptr inbounds %struct.usb_serial, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private.i, align 4
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 292, i32 noundef 3520) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %shadow_clk = getelementptr inbounds %struct.f81534_port_private, ptr %call.i, i32 0, i32 10
  %4 = ptrtoint ptr %shadow_clk to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 9, ptr %shadow_clk, align 1
  %msr_lock = getelementptr inbounds %struct.f81534_port_private, ptr %call.i, i32 0, i32 5
  tail call void @__raw_spin_lock_init(ptr noundef %msr_lock, ptr noundef nonnull @.str.31, ptr noundef nonnull @f81534_port_probe.__key, i16 noundef signext 3) #9
  tail call void @__mutex_init(ptr noundef nonnull %call.i, ptr noundef nonnull @.str.33, ptr noundef nonnull @f81534_port_probe.__key.32) #9
  %lcr_mutex = getelementptr inbounds %struct.f81534_port_private, ptr %call.i, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %lcr_mutex, ptr noundef nonnull @.str.35, ptr noundef nonnull @f81534_port_probe.__key.34) #9
  %lsr_work = getelementptr inbounds %struct.f81534_port_private, ptr %call.i, i32 0, i32 2
  tail call void @__init_work(ptr noundef %lsr_work, i32 noundef 0) #9
  %5 = ptrtoint ptr %lsr_work to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -64, ptr %lsr_work, align 4
  %lockdep_map = getelementptr inbounds %struct.f81534_port_private, ptr %call.i, i32 0, i32 2, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.37, ptr noundef nonnull @f81534_port_probe.__key.36, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %entry13 = getelementptr inbounds %struct.f81534_port_private, ptr %call.i, i32 0, i32 2, i32 1
  %6 = ptrtoint ptr %entry13 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %entry13, ptr %entry13, align 4
  %prev.i = getelementptr inbounds %struct.f81534_port_private, ptr %call.i, i32 0, i32 2, i32 1, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %entry13, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.f81534_port_private, ptr %call.i, i32 0, i32 2, i32 2
  %8 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @f81534_lsr_worker, ptr %func, align 4
  %9 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %port, align 8
  %private.i.i = getelementptr inbounds %struct.usb_serial, ptr %10, i32 0, i32 15
  %11 = ptrtoint ptr %private.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %private.i.i, align 4
  %port_number.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %12, align 1
  %15 = and i8 %14, -120
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not.i = icmp eq i8 %15, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.for.inc.i_crit_edge

if.end.for.inc.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.end.i:                                         ; preds = %if.end
  %16 = ptrtoint ptr %port_number.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %port_number.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %cmp3.i = icmp eq i8 %17, 0
  br i1 %cmp3.i, label %if.end.i.if.end20_crit_edge, label %if.end.i.for.inc.i_crit_edge

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.end.i.if.end20_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

for.inc.i:                                        ; preds = %if.end.i.for.inc.i_crit_edge, %if.end.for.inc.i_crit_edge
  %count.1.i = phi i32 [ 0, %if.end.for.inc.i_crit_edge ], [ 1, %if.end.i.for.inc.i_crit_edge ]
  %arrayidx.1.i = getelementptr [12 x i8], ptr %12, i32 0, i32 1
  %18 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx.1.i, align 1
  %20 = and i8 %19, -120
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.not.1.i = icmp eq i8 %20, 0
  br i1 %tobool.not.1.i, label %if.end.1.i, label %for.inc.i.for.inc.1.i_crit_edge

for.inc.i.for.inc.1.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.1.i

if.end.1.i:                                       ; preds = %for.inc.i
  %21 = ptrtoint ptr %port_number.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %port_number.i, align 4
  %conv2.1.i = zext i8 %22 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %count.1.i, i32 %conv2.1.i)
  %cmp3.1.i = icmp eq i32 %count.1.i, %conv2.1.i
  br i1 %cmp3.1.i, label %if.end.1.i.if.end20_crit_edge, label %if.end6.1.i

if.end.1.i.if.end20_crit_edge:                    ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

if.end6.1.i:                                      ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #11
  %inc.1.i = add nuw nsw i32 %count.1.i, 1
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %if.end6.1.i, %for.inc.i.for.inc.1.i_crit_edge
  %count.1.1.i = phi i32 [ %count.1.i, %for.inc.i.for.inc.1.i_crit_edge ], [ %inc.1.i, %if.end6.1.i ]
  %arrayidx.2.i = getelementptr [12 x i8], ptr %12, i32 0, i32 2
  %23 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx.2.i, align 1
  %25 = and i8 %24, -120
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool.not.2.i = icmp eq i8 %25, 0
  br i1 %tobool.not.2.i, label %if.end.2.i, label %for.inc.1.i.for.inc.2.i_crit_edge

for.inc.1.i.for.inc.2.i_crit_edge:                ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.2.i

if.end.2.i:                                       ; preds = %for.inc.1.i
  %26 = ptrtoint ptr %port_number.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %port_number.i, align 4
  %conv2.2.i = zext i8 %27 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %count.1.1.i, i32 %conv2.2.i)
  %cmp3.2.i = icmp eq i32 %count.1.1.i, %conv2.2.i
  br i1 %cmp3.2.i, label %if.end.2.i.if.end20_crit_edge, label %if.end6.2.i

if.end.2.i.if.end20_crit_edge:                    ; preds = %if.end.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

if.end6.2.i:                                      ; preds = %if.end.2.i
  call void @__sanitizer_cov_trace_pc() #11
  %inc.2.i = add nuw nsw i32 %count.1.1.i, 1
  br label %for.inc.2.i

for.inc.2.i:                                      ; preds = %if.end6.2.i, %for.inc.1.i.for.inc.2.i_crit_edge
  %count.1.2.i = phi i32 [ %count.1.1.i, %for.inc.1.i.for.inc.2.i_crit_edge ], [ %inc.2.i, %if.end6.2.i ]
  %arrayidx.3.i = getelementptr [12 x i8], ptr %12, i32 0, i32 3
  %28 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx.3.i, align 1
  %30 = and i8 %29, -120
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool.not.3.i = icmp eq i8 %30, 0
  br i1 %tobool.not.3.i, label %if.end.3.i, label %for.inc.2.i.cleanup_crit_edge

for.inc.2.i.cleanup_crit_edge:                    ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.3.i:                                       ; preds = %for.inc.2.i
  %31 = ptrtoint ptr %port_number.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %port_number.i, align 4
  %conv2.3.i = zext i8 %32 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %count.1.2.i, i32 %conv2.3.i)
  %cmp3.3.i = icmp eq i32 %count.1.2.i, %conv2.3.i
  br i1 %cmp3.3.i, label %if.end.3.i.if.end20_crit_edge, label %if.end.3.i.cleanup_crit_edge

if.end.3.i.cleanup_crit_edge:                     ; preds = %if.end.3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.3.i.if.end20_crit_edge:                    ; preds = %if.end.3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

if.end20:                                         ; preds = %if.end.3.i.if.end20_crit_edge, %if.end.2.i.if.end20_crit_edge, %if.end.1.i.if.end20_crit_edge, %if.end.i.if.end20_crit_edge
  %retval.0.i146.ph = phi i8 [ 3, %if.end.3.i.if.end20_crit_edge ], [ 2, %if.end.2.i.if.end20_crit_edge ], [ 1, %if.end.1.i.if.end20_crit_edge ], [ 0, %if.end.i.if.end20_crit_edge ]
  %phy_num = getelementptr inbounds %struct.f81534_port_private, ptr %call.i, i32 0, i32 11
  %33 = ptrtoint ptr %phy_num to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %retval.0.i146.ph, ptr %phy_num, align 4
  %port21 = getelementptr inbounds %struct.f81534_port_private, ptr %call.i, i32 0, i32 3
  %34 = ptrtoint ptr %port21 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %port, ptr %port21, align 4
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32, i32 8
  %35 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @f81534_port_probe.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@f81534_port_probe, %if.then27)) #9
          to label %do.end34 [label %if.then27], !srcloc !226

if.then27:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  %36 = ptrtoint ptr %port_number.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %port_number.i, align 4
  %conv29 = zext i8 %37 to i32
  %38 = ptrtoint ptr %phy_num to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %phy_num, align 4
  %conv31 = zext i8 %39 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @f81534_port_probe.__UNIQUE_ID_ddebug250, ptr noundef %dev, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.38, i32 noundef %conv29, i32 noundef %conv31) #9
  br label %do.end34

do.end34:                                         ; preds = %if.then27, %if.end20
  %40 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %driver_data.i.i, align 4
  %42 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %port, align 8
  %phy_num.i = getelementptr inbounds %struct.f81534_port_private, ptr %41, i32 0, i32 11
  %44 = ptrtoint ptr %phy_num.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %phy_num.i, align 4
  %conv1.i = zext i8 %45 to i16
  %mul.i = shl nuw nsw i16 %conv1.i, 4
  %add.i = add nuw nsw i16 %mul.i, 4609
  %call3.i = tail call fastcc i32 @f81534_set_register(ptr noundef %43, i16 noundef zeroext %add.i, i8 noundef zeroext 11) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool36.not = icmp eq i32 %call3.i, 0
  br i1 %tobool36.not, label %if.end38, label %do.end34.cleanup_crit_edge

do.end34.cleanup_crit_edge:                       ; preds = %do.end34
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end38:                                         ; preds = %do.end34
  %46 = ptrtoint ptr %phy_num to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %phy_num, align 4
  %idxprom = zext i8 %47 to i32
  %arrayidx = getelementptr [12 x i8], ptr %3, i32 0, i32 %idxprom
  %48 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx, align 1
  %50 = and i8 %49, 3
  %and = zext i8 %50 to i32
  %51 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %51, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and, label %do.body84 [
    i32 3, label %sw.bb
    i32 1, label %sw.bb61
  ]

sw.bb:                                            ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #11
  %52 = ptrtoint ptr %shadow_clk to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %shadow_clk, align 1
  %54 = or i8 %53, 48
  store i8 %54, ptr %shadow_clk, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @f81534_port_probe.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@f81534_port_probe, %if.then56)) #9
          to label %sw.epilog [label %if.then56], !srcloc !226

if.then56:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @f81534_port_probe.__UNIQUE_ID_ddebug251, ptr noundef %dev, ptr noundef nonnull @.str.40) #9
  br label %sw.epilog

sw.bb61:                                          ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #11
  %55 = ptrtoint ptr %shadow_clk to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %shadow_clk, align 1
  %57 = or i8 %56, 16
  store i8 %57, ptr %shadow_clk, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @f81534_port_probe.__UNIQUE_ID_ddebug252, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@f81534_port_probe, %if.then78)) #9
          to label %sw.epilog [label %if.then78], !srcloc !226

if.then78:                                        ; preds = %sw.bb61
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @f81534_port_probe.__UNIQUE_ID_ddebug252, ptr noundef %dev, ptr noundef nonnull @.str.41) #9
  br label %sw.epilog

do.body84:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @f81534_port_probe.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@f81534_port_probe, %if.then96)) #9
          to label %sw.epilog [label %if.then96], !srcloc !226

if.then96:                                        ; preds = %do.body84
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @f81534_port_probe.__UNIQUE_ID_ddebug253, ptr noundef %dev, ptr noundef nonnull @.str.42) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then96, %do.body84, %if.then78, %sw.bb61, %if.then56, %sw.bb
  %call101 = tail call fastcc i32 @f81534_set_port_output_pin(ptr noundef %port)
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %do.end34.cleanup_crit_edge, %if.end.3.i.cleanup_crit_edge, %for.inc.2.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call101, %sw.epilog ], [ -12, %entry.cleanup_crit_edge ], [ %call3.i, %do.end34.cleanup_crit_edge ], [ -19, %for.inc.2.i.cleanup_crit_edge ], [ -19, %if.end.3.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @f81534_port_remove(ptr nocapture noundef readonly %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %lsr_work = getelementptr inbounds %struct.f81534_port_private, ptr %1, i32 0, i32 2
  %call1 = tail call zeroext i1 @flush_work(ptr noundef %lsr_work) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @f81534_resume(ptr nocapture noundef readonly %serial) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.usb_serial, ptr %serial, i32 0, i32 15
  %0 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private.i, align 4
  %urb_mutex = getelementptr inbounds %struct.f81534_serial_private, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %urb_mutex, i32 noundef 0) #9
  %opened_port = getelementptr inbounds %struct.f81534_serial_private, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %opened_port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %opened_port, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end5_crit_edge, label %if.then

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.then:                                          ; preds = %entry
  %port.i = getelementptr inbounds %struct.usb_serial, ptr %serial, i32 0, i32 12
  %4 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %port.i, align 4
  %call.i = tail call i32 @usb_serial_generic_submit_read_urbs(ptr noundef %5, i32 noundef 3072) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not = icmp eq i32 %call.i, 0
  br i1 %tobool2.not, label %if.then.if.end5_crit_edge, label %if.then3

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @mutex_unlock(ptr noundef %urb_mutex) #9
  br label %cleanup

if.end5:                                          ; preds = %if.then.if.end5_crit_edge, %entry.if.end5_crit_edge
  tail call void @mutex_unlock(ptr noundef %urb_mutex) #9
  %num_ports = getelementptr inbounds %struct.usb_serial, ptr %serial, i32 0, i32 6
  %6 = ptrtoint ptr %num_ports to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %num_ports, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp39.not = icmp eq i8 %7, 0
  br i1 %cmp39.not, label %if.end5.for.end.thread_crit_edge, label %if.end5.for.body_crit_edge

if.end5.for.body_crit_edge:                       ; preds = %if.end5
  br label %for.body

if.end5.for.end.thread_crit_edge:                 ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.thread

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end5.for.body_crit_edge
  %i.041 = phi i32 [ %inc17, %for.inc.for.body_crit_edge ], [ 0, %if.end5.for.body_crit_edge ]
  %error.040 = phi i32 [ %error.1, %for.inc.for.body_crit_edge ], [ 0, %if.end5.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.usb_serial, ptr %serial, i32 0, i32 12, i32 %i.041
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %iflags.i = getelementptr inbounds %struct.usb_serial_port, ptr %9, i32 0, i32 1, i32 11
  %10 = ptrtoint ptr %iflags.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %iflags.i, align 4
  %and1.i.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %for.body.for.inc_crit_edge, label %if.end12

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end12:                                         ; preds = %for.body
  %call13 = tail call fastcc i32 @f81534_submit_writer(ptr noundef %9, i32 noundef 3072)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end12.for.inc_crit_edge, label %do.end

if.end12.for.inc_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

do.end:                                           ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %9, i32 0, i32 32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.48) #12
  %inc = add i32 %error.040, 1
  br label %for.inc

for.inc:                                          ; preds = %do.end, %if.end12.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %error.1 = phi i32 [ %inc, %do.end ], [ %error.040, %if.end12.for.inc_crit_edge ], [ %error.040, %for.body.for.inc_crit_edge ]
  %inc17 = add nuw nsw i32 %i.041, 1
  %12 = ptrtoint ptr %num_ports to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %num_ports, align 1
  %conv = zext i8 %13 to i32
  %cmp = icmp ult i32 %inc17, %conv
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %error.1)
  %tobool18.not = icmp eq i32 %error.1, 0
  br i1 %tobool18.not, label %for.end.for.end.thread_crit_edge, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end.for.end.thread_crit_edge:                 ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.thread

for.end.thread:                                   ; preds = %for.end.for.end.thread_crit_edge, %if.end5.for.end.thread_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %for.end.thread, %for.end.cleanup_crit_edge, %if.then3
  %retval.0 = phi i32 [ %call.i, %if.then3 ], [ 0, %for.end.thread ], [ -5, %for.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @f81534_open(ptr noundef %tty, ptr noundef %port) #2 align 64 {
entry:
  %msr.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port, align 8
  %private.i = getelementptr inbounds %struct.usb_serial, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %phy_num.i = getelementptr inbounds %struct.f81534_port_private, ptr %5, i32 0, i32 11
  %6 = ptrtoint ptr %phy_num.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %phy_num.i, align 4
  %conv1.i = zext i8 %7 to i16
  %mul.i = shl nuw nsw i16 %conv1.i, 4
  %add.i = add nuw nsw i16 %mul.i, 4610
  %call3.i = tail call fastcc i32 @f81534_set_register(ptr noundef %1, i16 noundef zeroext %add.i, i8 noundef zeroext 7) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not = icmp eq i32 %call3.i, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.52, i32 noundef %call3.i) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool3.not = icmp eq ptr %tty, null
  br i1 %tobool3.not, label %if.end.if.end5_crit_edge, label %if.then4

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @f81534_set_termios(ptr noundef nonnull %tty, ptr noundef %port, ptr noundef null)
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end.if.end5_crit_edge
  %8 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %msr.i) #9
  %10 = ptrtoint ptr %msr.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -1, ptr %msr.i, align 1, !annotation !225
  %11 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %port, align 8
  %phy_num.i.i = getelementptr inbounds %struct.f81534_port_private, ptr %9, i32 0, i32 11
  %13 = ptrtoint ptr %phy_num.i.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %phy_num.i.i, align 4
  %conv1.i.i = zext i8 %14 to i16
  %mul.i.i = shl nuw nsw i16 %conv1.i.i, 4
  %add.i.i = add nuw nsw i16 %mul.i.i, 4614
  %call3.i.i = call fastcc i32 @f81534_get_register(ptr noundef %12, i16 noundef zeroext %add.i.i, ptr noundef nonnull %msr.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool.not.i = icmp eq i32 %call3.i.i, 0
  br i1 %tobool.not.i, label %if.end9, label %f81534_read_msr.exit

f81534_read_msr.exit:                             ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %msr.i) #9
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  %msr_lock.i = getelementptr inbounds %struct.f81534_port_private, ptr %9, i32 0, i32 5
  %call4.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %msr_lock.i) #9
  %15 = ptrtoint ptr %msr.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %msr.i, align 1
  %shadow_msr.i = getelementptr inbounds %struct.f81534_port_private, ptr %9, i32 0, i32 9
  %17 = ptrtoint ptr %shadow_msr.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %shadow_msr.i, align 2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %msr_lock.i, i32 noundef %call4.i) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %msr.i) #9
  %urb_mutex = getelementptr inbounds %struct.f81534_serial_private, ptr %3, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %urb_mutex, i32 noundef 0) #9
  %opened_port = getelementptr inbounds %struct.f81534_serial_private, ptr %3, i32 0, i32 3
  %18 = ptrtoint ptr %opened_port to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %opened_port, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool10.not = icmp eq i32 %19, 0
  br i1 %tobool10.not, label %if.then11, label %if.end9.if.end17_crit_edge

if.end9.if.end17_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

if.then11:                                        ; preds = %if.end9
  %20 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %port, align 8
  %port.i = getelementptr inbounds %struct.usb_serial, ptr %21, i32 0, i32 12
  %22 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %port.i, align 4
  %call.i = tail call i32 @usb_serial_generic_submit_read_urbs(ptr noundef %23, i32 noundef 3264) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool14.not = icmp eq i32 %call.i, 0
  br i1 %tobool14.not, label %if.then11.if.end17_crit_edge, label %if.then11.exit_crit_edge

if.then11.exit_crit_edge:                         ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit

if.then11.if.end17_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

if.end17:                                         ; preds = %if.then11.if.end17_crit_edge, %if.end9.if.end17_crit_edge
  %24 = ptrtoint ptr %opened_port to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %opened_port, align 4
  %inc = add i32 %25, 1
  store i32 %inc, ptr %opened_port, align 4
  br label %exit

exit:                                             ; preds = %if.end17, %if.then11.exit_crit_edge
  %status.1 = phi i32 [ 0, %if.end17 ], [ %call.i, %if.then11.exit_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %urb_mutex) #9
  %tx_empty = getelementptr inbounds %struct.f81534_port_private, ptr %5, i32 0, i32 4
  tail call void @_set_bit(i32 noundef 0, ptr noundef %tx_empty) #9
  br label %cleanup

cleanup:                                          ; preds = %exit, %f81534_read_msr.exit, %do.end
  %retval.0 = phi i32 [ %call3.i, %do.end ], [ %status.1, %exit ], [ %call3.i.i, %f81534_read_msr.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @f81534_close(ptr noundef %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port, align 8
  %private.i = getelementptr inbounds %struct.usb_serial, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private.i, align 4
  %port2 = getelementptr inbounds %struct.usb_serial, ptr %1, i32 0, i32 12
  %4 = ptrtoint ptr %port2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %port2, align 4
  %write_urbs = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 24
  %6 = ptrtoint ptr %write_urbs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %write_urbs, align 8
  tail call void @usb_kill_urb(ptr noundef %7) #9
  %lock = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 2
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %write_fifo = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 22
  %8 = ptrtoint ptr %write_fifo to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %write_fifo, align 4
  %out = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 22, i32 0, i32 0, i32 1
  %10 = ptrtoint ptr %out to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %out, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call6) #9
  %urb_mutex = getelementptr inbounds %struct.f81534_serial_private, ptr %3, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %urb_mutex, i32 noundef 0) #9
  %opened_port = getelementptr inbounds %struct.f81534_serial_private, ptr %3, i32 0, i32 3
  %11 = ptrtoint ptr %opened_port to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %opened_port, align 4
  %dec = add i32 %12, -1
  store i32 %dec, ptr %opened_port, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %for.body.preheader, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

for.body.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx14 = getelementptr %struct.usb_serial_port, ptr %5, i32 0, i32 17, i32 0
  %13 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx14, align 4
  tail call void @usb_kill_urb(ptr noundef %14) #9
  %arrayidx14.1 = getelementptr %struct.usb_serial_port, ptr %5, i32 0, i32 17, i32 1
  %15 = ptrtoint ptr %arrayidx14.1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx14.1, align 4
  tail call void @usb_kill_urb(ptr noundef %16) #9
  br label %if.end

if.end:                                           ; preds = %for.body.preheader, %entry.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %urb_mutex) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @f81534_write(ptr nocapture noundef readnone %tty, ptr noundef %port, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %tobool.not = icmp eq i32 %count, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 2
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %write_fifo = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 22
  %call6 = tail call i32 @__kfifo_in(ptr noundef %write_fifo, ptr noundef %buf, i32 noundef %count) #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #9
  %call9 = tail call fastcc i32 @f81534_submit_writer(ptr noundef %port, i32 noundef 2592)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end.cleanup_crit_edge, label %do.end14

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end14:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.53) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end14, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call9, %do.end14 ], [ 0, %entry.cleanup_crit_edge ], [ %call6, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @f81534_get_serial_info(ptr nocapture noundef readonly %tty, ptr nocapture noundef writeonly %ss) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %baud_base = getelementptr inbounds %struct.f81534_port_private, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %baud_base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %baud_base, align 4
  %baud_base1 = getelementptr inbounds %struct.serial_struct, ptr %ss, i32 0, i32 7
  %6 = ptrtoint ptr %baud_base1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %baud_base1, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @f81534_set_termios(ptr noundef %tty, ptr noundef %port, ptr noundef %old_termios) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %c_cflag = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 2
  %0 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %c_cflag, align 4
  %and = and i32 %1, 4111
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %driver_data.i.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32, i32 8
  %2 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i.i, align 4
  tail call void @mutex_lock_nested(ptr noundef %3, i32 noundef 0) #9
  %shadow_mcr.i = getelementptr inbounds %struct.f81534_port_private, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %shadow_mcr.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %shadow_mcr.i, align 4
  %6 = and i8 %5, -12
  %7 = or i8 %6, 8
  %8 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver_data.i.i.i, align 4
  %10 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %port, align 8
  %phy_num.i.i = getelementptr inbounds %struct.f81534_port_private, ptr %9, i32 0, i32 11
  %12 = ptrtoint ptr %phy_num.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %phy_num.i.i, align 4
  %conv1.i.i = zext i8 %13 to i16
  %mul.i.i = shl nuw nsw i16 %conv1.i.i, 4
  %add.i.i = add nuw nsw i16 %mul.i.i, 4612
  %call3.i.i = tail call fastcc i32 @f81534_set_register(ptr noundef %11, i16 noundef zeroext %add.i.i, i8 noundef zeroext %7) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %cmp32.i = icmp slt i32 %call3.i.i, 0
  br i1 %cmp32.i, label %do.end.i, label %if.end36.i

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.58) #12
  br label %if.end6.sink.split

if.end36.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %shadow_mcr.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %7, ptr %shadow_mcr.i, align 4
  br label %if.end6.sink.split

if.else:                                          ; preds = %entry
  %tobool.not = icmp eq ptr %old_termios, null
  br i1 %tobool.not, label %if.else.if.end6_crit_edge, label %land.lhs.true

if.else.if.end6_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

land.lhs.true:                                    ; preds = %if.else
  %c_cflag1 = getelementptr inbounds %struct.ktermios, ptr %old_termios, i32 0, i32 2
  %15 = ptrtoint ptr %c_cflag1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %c_cflag1, align 4
  %and2 = and i32 %16, 4111
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %cmp3 = icmp eq i32 %and2, 0
  br i1 %cmp3, label %if.then4, label %land.lhs.true.if.end6_crit_edge

land.lhs.true.if.end6_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

if.then4:                                         ; preds = %land.lhs.true
  %driver_data.i.i.i114 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32, i32 8
  %17 = ptrtoint ptr %driver_data.i.i.i114 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %driver_data.i.i.i114, align 4
  tail call void @mutex_lock_nested(ptr noundef %18, i32 noundef 0) #9
  %shadow_mcr.i115 = getelementptr inbounds %struct.f81534_port_private, ptr %18, i32 0, i32 7
  %19 = ptrtoint ptr %shadow_mcr.i115 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %shadow_mcr.i115, align 4
  %21 = or i8 %20, 11
  %22 = ptrtoint ptr %driver_data.i.i.i114 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %driver_data.i.i.i114, align 4
  %24 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %port, align 8
  %phy_num.i.i116 = getelementptr inbounds %struct.f81534_port_private, ptr %23, i32 0, i32 11
  %26 = ptrtoint ptr %phy_num.i.i116 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %phy_num.i.i116, align 4
  %conv1.i.i117 = zext i8 %27 to i16
  %mul.i.i118 = shl nuw nsw i16 %conv1.i.i117, 4
  %add.i.i119 = add nuw nsw i16 %mul.i.i118, 4612
  %call3.i.i120 = tail call fastcc i32 @f81534_set_register(ptr noundef %25, i16 noundef zeroext %add.i.i119, i8 noundef zeroext %21) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i120)
  %cmp32.i121 = icmp slt i32 %call3.i.i120, 0
  br i1 %cmp32.i121, label %do.end.i123, label %if.end36.i124

do.end.i123:                                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i122 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i122, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.58) #12
  br label %if.end6.sink.split

if.end36.i124:                                    ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  %28 = ptrtoint ptr %shadow_mcr.i115 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %21, ptr %shadow_mcr.i115, align 4
  br label %if.end6.sink.split

if.end6.sink.split:                               ; preds = %if.end36.i124, %do.end.i123, %if.end36.i, %do.end.i
  %.sink = phi ptr [ %3, %do.end.i ], [ %3, %if.end36.i ], [ %18, %do.end.i123 ], [ %18, %if.end36.i124 ]
  tail call void @mutex_unlock(ptr noundef %.sink) #9
  br label %if.end6

if.end6:                                          ; preds = %if.end6.sink.split, %land.lhs.true.if.end6_crit_edge, %if.else.if.end6_crit_edge
  %29 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %c_cflag, align 4
  %and9 = and i32 %30, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.end6.if.end31_crit_edge, label %if.then11

if.end6.if.end31_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

if.then11:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  %and15 = and i32 %30, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  %spec.select = select i1 %tobool16.not, i8 24, i8 8
  %and24 = lshr i32 %30, 25
  %31 = trunc i32 %and24 to i8
  %32 = and i8 %31, 32
  %33 = or i8 %32, %spec.select
  br label %if.end31

if.end31:                                         ; preds = %if.then11, %if.end6.if.end31_crit_edge
  %new_lcr.1 = phi i8 [ 0, %if.end6.if.end31_crit_edge ], [ %33, %if.then11 ]
  %34 = trunc i32 %30 to i8
  %35 = lshr i8 %34, 4
  %36 = and i8 %35, 4
  %37 = or i8 %new_lcr.1, %36
  %and43 = lshr i32 %30, 4
  %38 = and i32 %and43, 3
  %39 = zext i32 %38 to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.95)
  switch i32 %38, label %if.end40.unreachabledefault [
    i32 0, label %if.end31.sw.epilog_crit_edge
    i32 1, label %sw.bb47
    i32 2, label %sw.bb51
    i32 3, label %sw.bb55
  ]

if.end31.sw.epilog_crit_edge:                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb47:                                          ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  %40 = or i8 %37, 1
  br label %sw.epilog

sw.bb51:                                          ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  %41 = or i8 %37, 2
  br label %sw.epilog

if.end40.unreachabledefault:                      ; preds = %if.end31
  unreachable

sw.bb55:                                          ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  %42 = or i8 %37, 3
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb55, %sw.bb51, %sw.bb47, %if.end31.sw.epilog_crit_edge
  %new_lcr.3 = phi i8 [ %42, %sw.bb55 ], [ %41, %sw.bb51 ], [ %40, %sw.bb47 ], [ %37, %if.end31.sw.epilog_crit_edge ]
  %termios.i = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13
  %call.i = tail call i32 @tty_termios_baud_rate(ptr noundef %termios.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool60.not = icmp eq i32 %call.i, 0
  br i1 %tobool60.not, label %sw.epilog.cleanup_crit_edge, label %if.end62

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end62:                                         ; preds = %sw.epilog
  %tobool63.not = icmp eq ptr %old_termios, null
  br i1 %tobool63.not, label %if.end62.do.body_crit_edge, label %if.then64

if.end62.do.body_crit_edge:                       ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.then64:                                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #11
  %call65 = tail call i32 @tty_termios_baud_rate(ptr noundef nonnull %old_termios) #9
  br label %do.body

do.body:                                          ; preds = %if.then64, %if.end62.do.body_crit_edge
  %old_baud.0 = phi i32 [ %call65, %if.then64 ], [ 9600, %if.end62.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @f81534_set_termios.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@f81534_set_termios, %if.then72)) #9
          to label %do.end [label %if.then72], !srcloc !226

if.then72:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @f81534_set_termios.__UNIQUE_ID_ddebug244, ptr noundef %dev, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.54, i32 noundef %call.i) #9
  br label %do.end

do.end:                                           ; preds = %if.then72, %do.body
  %driver_data.i.i.i128 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32, i32 8
  %43 = ptrtoint ptr %driver_data.i.i.i128 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %driver_data.i.i.i128, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 115200, i32 %call.i)
  %cmp1.not.i.i = icmp ugt i32 %call.i, 115200
  br i1 %cmp1.not.i.i, label %for.inc.i.i, label %land.lhs.true.i.i

land.lhs.true.i.i:                                ; preds = %do.end
  %rem.i.i = urem i32 115200, %call.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i.i)
  %cmp3.i.i = icmp eq i32 %rem.i.i, 0
  br i1 %cmp3.i.i, label %land.lhs.true.i.i.if.end7.i_crit_edge, label %land.lhs.true.i.i.land.lhs.true.1.i.i_crit_edge

land.lhs.true.i.i.land.lhs.true.1.i.i_crit_edge:  ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true.1.i.i

land.lhs.true.i.i.if.end7.i_crit_edge:            ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7.i

for.inc.i.i:                                      ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 921600, i32 %call.i)
  %cmp1.not.1.i.i = icmp ugt i32 %call.i, 921600
  br i1 %cmp1.not.1.i.i, label %for.inc.1.i.i, label %for.inc.i.i.land.lhs.true.1.i.i_crit_edge

for.inc.i.i.land.lhs.true.1.i.i_crit_edge:        ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true.1.i.i

land.lhs.true.1.i.i:                              ; preds = %for.inc.i.i.land.lhs.true.1.i.i_crit_edge, %land.lhs.true.i.i.land.lhs.true.1.i.i_crit_edge
  %rem.1.i.i = urem i32 921600, %call.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.1.i.i)
  %cmp3.1.i.i = icmp eq i32 %rem.1.i.i, 0
  br i1 %cmp3.1.i.i, label %land.lhs.true.1.i.i.if.end7.i_crit_edge, label %land.lhs.true.1.i.i.land.lhs.true.2.i.i_crit_edge

land.lhs.true.1.i.i.land.lhs.true.2.i.i_crit_edge: ; preds = %land.lhs.true.1.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true.2.i.i

land.lhs.true.1.i.i.if.end7.i_crit_edge:          ; preds = %land.lhs.true.1.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7.i

for.inc.1.i.i:                                    ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1152000, i32 %call.i)
  %cmp1.not.2.i.i = icmp ugt i32 %call.i, 1152000
  br i1 %cmp1.not.2.i.i, label %for.inc.2.i.i, label %for.inc.1.i.i.land.lhs.true.2.i.i_crit_edge

for.inc.1.i.i.land.lhs.true.2.i.i_crit_edge:      ; preds = %for.inc.1.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true.2.i.i

land.lhs.true.2.i.i:                              ; preds = %for.inc.1.i.i.land.lhs.true.2.i.i_crit_edge, %land.lhs.true.1.i.i.land.lhs.true.2.i.i_crit_edge
  %rem.2.i.i = urem i32 1152000, %call.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.2.i.i)
  %cmp3.2.i.i = icmp eq i32 %rem.2.i.i, 0
  br i1 %cmp3.2.i.i, label %land.lhs.true.2.i.i.if.end7.i_crit_edge, label %land.lhs.true.2.i.i.land.lhs.true.3.i.i_crit_edge

land.lhs.true.2.i.i.land.lhs.true.3.i.i_crit_edge: ; preds = %land.lhs.true.2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true.3.i.i

land.lhs.true.2.i.i.if.end7.i_crit_edge:          ; preds = %land.lhs.true.2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7.i

for.inc.2.i.i:                                    ; preds = %for.inc.1.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1500000, i32 %call.i)
  %cmp1.not.3.i.i = icmp ugt i32 %call.i, 1500000
  br i1 %cmp1.not.3.i.i, label %for.inc.2.i.i.for.inc.i_crit_edge, label %for.inc.2.i.i.land.lhs.true.3.i.i_crit_edge

for.inc.2.i.i.land.lhs.true.3.i.i_crit_edge:      ; preds = %for.inc.2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true.3.i.i

for.inc.2.i.i.for.inc.i_crit_edge:                ; preds = %for.inc.2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

land.lhs.true.3.i.i:                              ; preds = %for.inc.2.i.i.land.lhs.true.3.i.i_crit_edge, %land.lhs.true.2.i.i.land.lhs.true.3.i.i_crit_edge
  %rem.3.i.i = urem i32 1500000, %call.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.3.i.i)
  %cmp3.3.i.i = icmp eq i32 %rem.3.i.i, 0
  br i1 %cmp3.3.i.i, label %land.lhs.true.3.i.i.if.end7.i_crit_edge, label %land.lhs.true.3.i.i.for.inc.i_crit_edge

land.lhs.true.3.i.i.for.inc.i_crit_edge:          ; preds = %land.lhs.true.3.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

land.lhs.true.3.i.i.if.end7.i_crit_edge:          ; preds = %land.lhs.true.3.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7.i

for.inc.i:                                        ; preds = %land.lhs.true.3.i.i.for.inc.i_crit_edge, %for.inc.2.i.i.for.inc.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 115200, i32 %old_baud.0)
  %cmp1.not.i.1.i = icmp ugt i32 %old_baud.0, 115200
  br i1 %cmp1.not.i.1.i, label %for.inc.i.1.i, label %land.lhs.true.i.1.i

land.lhs.true.i.1.i:                              ; preds = %for.inc.i
  %rem.i.1.i = urem i32 115200, %old_baud.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i.1.i)
  %cmp3.i.1.i = icmp eq i32 %rem.i.1.i, 0
  br i1 %cmp3.i.1.i, label %land.lhs.true.i.1.i.if.end7.i_crit_edge, label %land.lhs.true.i.1.i.land.lhs.true.1.i.1.i_crit_edge

land.lhs.true.i.1.i.land.lhs.true.1.i.1.i_crit_edge: ; preds = %land.lhs.true.i.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true.1.i.1.i

land.lhs.true.i.1.i.if.end7.i_crit_edge:          ; preds = %land.lhs.true.i.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7.i

for.inc.i.1.i:                                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 921600, i32 %old_baud.0)
  %cmp1.not.1.i.1.i = icmp ugt i32 %old_baud.0, 921600
  br i1 %cmp1.not.1.i.1.i, label %for.inc.1.i.1.i, label %for.inc.i.1.i.land.lhs.true.1.i.1.i_crit_edge

for.inc.i.1.i.land.lhs.true.1.i.1.i_crit_edge:    ; preds = %for.inc.i.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true.1.i.1.i

land.lhs.true.1.i.1.i:                            ; preds = %for.inc.i.1.i.land.lhs.true.1.i.1.i_crit_edge, %land.lhs.true.i.1.i.land.lhs.true.1.i.1.i_crit_edge
  %rem.1.i.1.i = urem i32 921600, %old_baud.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.1.i.1.i)
  %cmp3.1.i.1.i = icmp eq i32 %rem.1.i.1.i, 0
  br i1 %cmp3.1.i.1.i, label %land.lhs.true.1.i.1.i.if.end7.i_crit_edge, label %land.lhs.true.1.i.1.i.land.lhs.true.2.i.1.i_crit_edge

land.lhs.true.1.i.1.i.land.lhs.true.2.i.1.i_crit_edge: ; preds = %land.lhs.true.1.i.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true.2.i.1.i

land.lhs.true.1.i.1.i.if.end7.i_crit_edge:        ; preds = %land.lhs.true.1.i.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7.i

for.inc.1.i.1.i:                                  ; preds = %for.inc.i.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1152000, i32 %old_baud.0)
  %cmp1.not.2.i.1.i = icmp ugt i32 %old_baud.0, 1152000
  br i1 %cmp1.not.2.i.1.i, label %for.inc.2.i.1.i, label %for.inc.1.i.1.i.land.lhs.true.2.i.1.i_crit_edge

for.inc.1.i.1.i.land.lhs.true.2.i.1.i_crit_edge:  ; preds = %for.inc.1.i.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true.2.i.1.i

land.lhs.true.2.i.1.i:                            ; preds = %for.inc.1.i.1.i.land.lhs.true.2.i.1.i_crit_edge, %land.lhs.true.1.i.1.i.land.lhs.true.2.i.1.i_crit_edge
  %rem.2.i.1.i = urem i32 1152000, %old_baud.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.2.i.1.i)
  %cmp3.2.i.1.i = icmp eq i32 %rem.2.i.1.i, 0
  br i1 %cmp3.2.i.1.i, label %land.lhs.true.2.i.1.i.if.end7.i_crit_edge, label %land.lhs.true.2.i.1.i.land.lhs.true.3.i.1.i_crit_edge

land.lhs.true.2.i.1.i.land.lhs.true.3.i.1.i_crit_edge: ; preds = %land.lhs.true.2.i.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true.3.i.1.i

land.lhs.true.2.i.1.i.if.end7.i_crit_edge:        ; preds = %land.lhs.true.2.i.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7.i

for.inc.2.i.1.i:                                  ; preds = %for.inc.1.i.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1500000, i32 %old_baud.0)
  %cmp1.not.3.i.1.i = icmp ugt i32 %old_baud.0, 1500000
  br i1 %cmp1.not.3.i.1.i, label %for.inc.2.i.1.i.land.lhs.true.i.2.i_crit_edge, label %for.inc.2.i.1.i.land.lhs.true.3.i.1.i_crit_edge

for.inc.2.i.1.i.land.lhs.true.3.i.1.i_crit_edge:  ; preds = %for.inc.2.i.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true.3.i.1.i

for.inc.2.i.1.i.land.lhs.true.i.2.i_crit_edge:    ; preds = %for.inc.2.i.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true.i.2.i

land.lhs.true.3.i.1.i:                            ; preds = %for.inc.2.i.1.i.land.lhs.true.3.i.1.i_crit_edge, %land.lhs.true.2.i.1.i.land.lhs.true.3.i.1.i_crit_edge
  %rem.3.i.1.i = urem i32 1500000, %old_baud.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.3.i.1.i)
  %cmp3.3.i.1.i = icmp eq i32 %rem.3.i.1.i, 0
  br i1 %cmp3.3.i.1.i, label %land.lhs.true.3.i.1.i.if.end7.i_crit_edge, label %land.lhs.true.3.i.1.i.land.lhs.true.i.2.i_crit_edge

land.lhs.true.3.i.1.i.land.lhs.true.i.2.i_crit_edge: ; preds = %land.lhs.true.3.i.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true.i.2.i

land.lhs.true.3.i.1.i.if.end7.i_crit_edge:        ; preds = %land.lhs.true.3.i.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7.i

land.lhs.true.i.2.i:                              ; preds = %land.lhs.true.3.i.1.i.land.lhs.true.i.2.i_crit_edge, %for.inc.2.i.1.i.land.lhs.true.i.2.i_crit_edge
  br label %if.end7.i

if.end7.i:                                        ; preds = %land.lhs.true.i.2.i, %land.lhs.true.3.i.1.i.if.end7.i_crit_edge, %land.lhs.true.2.i.1.i.if.end7.i_crit_edge, %land.lhs.true.1.i.1.i.if.end7.i_crit_edge, %land.lhs.true.i.1.i.if.end7.i_crit_edge, %land.lhs.true.3.i.i.if.end7.i_crit_edge, %land.lhs.true.2.i.i.if.end7.i_crit_edge, %land.lhs.true.1.i.i.if.end7.i_crit_edge, %land.lhs.true.i.i.if.end7.i_crit_edge
  %.lcssa.i = phi i32 [ %call.i, %land.lhs.true.i.i.if.end7.i_crit_edge ], [ %call.i, %land.lhs.true.1.i.i.if.end7.i_crit_edge ], [ %call.i, %land.lhs.true.2.i.i.if.end7.i_crit_edge ], [ %call.i, %land.lhs.true.3.i.i.if.end7.i_crit_edge ], [ %old_baud.0, %land.lhs.true.i.1.i.if.end7.i_crit_edge ], [ %old_baud.0, %land.lhs.true.1.i.1.i.if.end7.i_crit_edge ], [ %old_baud.0, %land.lhs.true.2.i.1.i.if.end7.i_crit_edge ], [ %old_baud.0, %land.lhs.true.3.i.1.i.if.end7.i_crit_edge ], [ 9600, %land.lhs.true.i.2.i ]
  %retval.0.i.ph.i = phi i32 [ 0, %land.lhs.true.i.i.if.end7.i_crit_edge ], [ 1, %land.lhs.true.1.i.i.if.end7.i_crit_edge ], [ 2, %land.lhs.true.2.i.i.if.end7.i_crit_edge ], [ 3, %land.lhs.true.3.i.i.if.end7.i_crit_edge ], [ 0, %land.lhs.true.i.1.i.if.end7.i_crit_edge ], [ 1, %land.lhs.true.1.i.1.i.if.end7.i_crit_edge ], [ 2, %land.lhs.true.2.i.1.i.if.end7.i_crit_edge ], [ 3, %land.lhs.true.3.i.1.i.if.end7.i_crit_edge ], [ 0, %land.lhs.true.i.2.i ]
  tail call void @tty_encode_baud_rate(ptr noundef %tty, i32 noundef %.lcssa.i, i32 noundef %.lcssa.i) #9
  %arrayidx8.i = getelementptr [4 x i32], ptr @baudrate_table, i32 0, i32 %retval.0.i.ph.i
  %45 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx8.i, align 4
  %baud_base.i = getelementptr inbounds %struct.f81534_port_private, ptr %44, i32 0, i32 6
  %47 = ptrtoint ptr %baud_base.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %baud_base.i, align 4
  %shadow_clk.i = getelementptr inbounds %struct.f81534_port_private, ptr %44, i32 0, i32 10
  %48 = ptrtoint ptr %shadow_clk.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %shadow_clk.i, align 1
  %50 = and i8 %49, -7
  %arrayidx10.i = getelementptr [4 x i8], ptr @clock_table, i32 0, i32 %retval.0.i.ph.i
  %51 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx10.i, align 1
  %or145.i = or i8 %52, %50
  store i8 %or145.i, ptr %shadow_clk.i, align 1
  %53 = ptrtoint ptr %driver_data.i.i.i128 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %driver_data.i.i.i128, align 4
  %55 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %port, align 8
  %phy_num.i.i129 = getelementptr inbounds %struct.f81534_port_private, ptr %54, i32 0, i32 11
  %57 = ptrtoint ptr %phy_num.i.i129 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %phy_num.i.i129, align 4
  %conv1.i.i130 = zext i8 %58 to i16
  %mul.i.i131 = shl nuw nsw i16 %conv1.i.i130, 4
  %add.i.i132 = add nuw nsw i16 %mul.i.i131, 4616
  %call3.i.i133 = tail call fastcc i32 @f81534_set_register(ptr noundef %56, i16 noundef zeroext %add.i.i132, i8 noundef zeroext %or145.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i133)
  %tobool.not.i = icmp eq i32 %call3.i.i133, 0
  br i1 %tobool.not.i, label %if.end18.i, label %do.end.i135

do.end.i135:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i134 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i134, ptr noundef nonnull @.str.59) #12
  br label %f81534_set_port_config.exit

if.end18.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1201, i32 %.lcssa.i)
  %cmp19.i = icmp ult i32 %.lcssa.i, 1201
  %..i = select i1 %cmp19.i, i8 -61, i8 -49
  %59 = ptrtoint ptr %driver_data.i.i.i128 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %driver_data.i.i.i128, align 4
  %61 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %port, align 8
  %phy_num.i149.i = getelementptr inbounds %struct.f81534_port_private, ptr %60, i32 0, i32 11
  %63 = ptrtoint ptr %phy_num.i149.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %phy_num.i149.i, align 4
  %conv1.i150.i = zext i8 %64 to i16
  %mul.i151.i = shl nuw nsw i16 %conv1.i150.i, 4
  %add.i152.i = add nuw nsw i16 %mul.i151.i, 4617
  %call3.i153.i = tail call fastcc i32 @f81534_set_register(ptr noundef %62, i16 noundef zeroext %add.i152.i, i8 noundef zeroext %..i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i153.i)
  %tobool24.not.i = icmp eq i32 %call3.i153.i, 0
  br i1 %tobool24.not.i, label %if.end30.i, label %do.end28.i

do.end28.i:                                       ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev29.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev29.i, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.60) #12
  br label %f81534_set_port_config.exit

if.end30.i:                                       ; preds = %if.end18.i
  %.147.i = select i1 %cmp19.i, i8 1, i8 -127
  %65 = ptrtoint ptr %driver_data.i.i.i128 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %driver_data.i.i.i128, align 4
  %67 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %port, align 8
  %phy_num.i155.i = getelementptr inbounds %struct.f81534_port_private, ptr %66, i32 0, i32 11
  %69 = ptrtoint ptr %phy_num.i155.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %phy_num.i155.i, align 4
  %conv1.i156.i = zext i8 %70 to i16
  %mul.i157.i = shl nuw nsw i16 %conv1.i156.i, 4
  %add.i158.i = add nuw nsw i16 %mul.i157.i, 4610
  %call3.i159.i = tail call fastcc i32 @f81534_set_register(ptr noundef %68, i16 noundef zeroext %add.i158.i, i8 noundef zeroext %.147.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i159.i)
  %tobool37.not.i = icmp eq i32 %call3.i159.i, 0
  br i1 %tobool37.not.i, label %if.end43.i, label %do.end41.i

do.end41.i:                                       ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev42.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev42.i, ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.60) #12
  br label %f81534_set_port_config.exit

if.end43.i:                                       ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.lcssa.i)
  %tobool.not.i.i = icmp eq i32 %.lcssa.i, 0
  br i1 %tobool.not.i.i, label %if.end43.i.f81534_calc_baud_divisor.exit.i_crit_edge, label %if.end.i.i

if.end43.i.f81534_calc_baud_divisor.exit.i_crit_edge: ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %f81534_calc_baud_divisor.exit.i

if.end.i.i:                                       ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #11
  %71 = ptrtoint ptr %baud_base.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %baud_base.i, align 4
  %div4.i.i = lshr i32 %.lcssa.i, 1
  %add.i160.i = add i32 %72, %div4.i.i
  %div1.i.i = udiv i32 %add.i160.i, %.lcssa.i
  br label %f81534_calc_baud_divisor.exit.i

f81534_calc_baud_divisor.exit.i:                  ; preds = %if.end.i.i, %if.end43.i.f81534_calc_baud_divisor.exit.i_crit_edge
  %retval.0.i161.i = phi i32 [ %div1.i.i, %if.end.i.i ], [ 0, %if.end43.i.f81534_calc_baud_divisor.exit.i_crit_edge ]
  %lcr_mutex.i = getelementptr inbounds %struct.f81534_port_private, ptr %44, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lcr_mutex.i, i32 noundef 0) #9
  %73 = ptrtoint ptr %driver_data.i.i.i128 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %driver_data.i.i.i128, align 4
  %75 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %port, align 8
  %phy_num.i163.i = getelementptr inbounds %struct.f81534_port_private, ptr %74, i32 0, i32 11
  %77 = ptrtoint ptr %phy_num.i163.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %phy_num.i163.i, align 4
  %conv1.i164.i = zext i8 %78 to i16
  %mul.i165.i = shl nuw nsw i16 %conv1.i164.i, 4
  %add.i166.i = add nuw nsw i16 %mul.i165.i, 4611
  %call3.i167.i = tail call fastcc i32 @f81534_set_register(ptr noundef %76, i16 noundef zeroext %add.i166.i, i8 noundef zeroext -128) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i167.i)
  %tobool47.not.i = icmp eq i32 %call3.i167.i, 0
  br i1 %tobool47.not.i, label %if.end53.i, label %do.end51.i

do.end51.i:                                       ; preds = %f81534_calc_baud_divisor.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev52.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev52.i, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.60) #12
  br label %out_unlock.i

if.end53.i:                                       ; preds = %f81534_calc_baud_divisor.exit.i
  %conv55.i = trunc i32 %retval.0.i161.i to i8
  %79 = ptrtoint ptr %driver_data.i.i.i128 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %driver_data.i.i.i128, align 4
  %81 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %port, align 8
  %phy_num.i169.i = getelementptr inbounds %struct.f81534_port_private, ptr %80, i32 0, i32 11
  %83 = ptrtoint ptr %phy_num.i169.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %phy_num.i169.i, align 4
  %conv1.i170.i = zext i8 %84 to i16
  %mul.i171.i = shl nuw nsw i16 %conv1.i170.i, 4
  %add.i172.i = add nuw nsw i16 %mul.i171.i, 4608
  %call3.i173.i = tail call fastcc i32 @f81534_set_register(ptr noundef %82, i16 noundef zeroext %add.i172.i, i8 noundef zeroext %conv55.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i173.i)
  %tobool57.not.i = icmp eq i32 %call3.i173.i, 0
  br i1 %tobool57.not.i, label %if.end63.i, label %do.end61.i

do.end61.i:                                       ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev62.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev62.i, ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.60) #12
  br label %out_unlock.i

if.end63.i:                                       ; preds = %if.end53.i
  %shr.i = lshr i32 %retval.0.i161.i, 8
  %conv65.i = trunc i32 %shr.i to i8
  %85 = ptrtoint ptr %driver_data.i.i.i128 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %driver_data.i.i.i128, align 4
  %87 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %port, align 8
  %phy_num.i175.i = getelementptr inbounds %struct.f81534_port_private, ptr %86, i32 0, i32 11
  %89 = ptrtoint ptr %phy_num.i175.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %phy_num.i175.i, align 4
  %conv1.i176.i = zext i8 %90 to i16
  %mul.i177.i = shl nuw nsw i16 %conv1.i176.i, 4
  %add.i178.i = add nuw nsw i16 %mul.i177.i, 4609
  %call3.i179.i = tail call fastcc i32 @f81534_set_register(ptr noundef %88, i16 noundef zeroext %add.i178.i, i8 noundef zeroext %conv65.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i179.i)
  %tobool67.not.i = icmp eq i32 %call3.i179.i, 0
  br i1 %tobool67.not.i, label %if.end73.i, label %do.end71.i

do.end71.i:                                       ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev72.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev72.i, ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.60) #12
  br label %out_unlock.i

if.end73.i:                                       ; preds = %if.end63.i
  %shadow_lcr.i = getelementptr inbounds %struct.f81534_port_private, ptr %44, i32 0, i32 8
  %91 = ptrtoint ptr %shadow_lcr.i to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %shadow_lcr.i, align 1
  %93 = and i8 %92, 64
  %or77146.i = or i8 %93, %new_lcr.3
  %94 = ptrtoint ptr %driver_data.i.i.i128 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %driver_data.i.i.i128, align 4
  %96 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %port, align 8
  %phy_num.i181.i = getelementptr inbounds %struct.f81534_port_private, ptr %95, i32 0, i32 11
  %98 = ptrtoint ptr %phy_num.i181.i to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %phy_num.i181.i, align 4
  %conv1.i182.i = zext i8 %99 to i16
  %mul.i183.i = shl nuw nsw i16 %conv1.i182.i, 4
  %add.i184.i = add nuw nsw i16 %mul.i183.i, 4611
  %call3.i185.i = tail call fastcc i32 @f81534_set_register(ptr noundef %97, i16 noundef zeroext %add.i184.i, i8 noundef zeroext %or77146.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i185.i)
  %tobool80.not.i = icmp eq i32 %call3.i185.i, 0
  br i1 %tobool80.not.i, label %if.end86.i, label %do.end84.i

do.end84.i:                                       ; preds = %if.end73.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev85.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev85.i, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.60) #12
  br label %out_unlock.i

if.end86.i:                                       ; preds = %if.end73.i
  call void @__sanitizer_cov_trace_pc() #11
  %100 = ptrtoint ptr %shadow_lcr.i to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 %or77146.i, ptr %shadow_lcr.i, align 1
  br label %out_unlock.i

out_unlock.i:                                     ; preds = %if.end86.i, %do.end84.i, %do.end71.i, %do.end61.i, %do.end51.i
  %status.0.i = phi i32 [ %call3.i167.i, %do.end51.i ], [ %call3.i173.i, %do.end61.i ], [ %call3.i179.i, %do.end71.i ], [ %call3.i185.i, %do.end84.i ], [ 0, %if.end86.i ]
  tail call void @mutex_unlock(ptr noundef %lcr_mutex.i) #9
  br label %f81534_set_port_config.exit

f81534_set_port_config.exit:                      ; preds = %out_unlock.i, %do.end41.i, %do.end28.i, %do.end.i135
  %retval.0.i136 = phi i32 [ %call3.i.i133, %do.end.i135 ], [ %call3.i153.i, %do.end28.i ], [ %call3.i159.i, %do.end41.i ], [ %status.0.i, %out_unlock.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i136)
  %cmp75 = icmp slt i32 %retval.0.i136, 0
  br i1 %cmp75, label %do.end80, label %f81534_set_port_config.exit.cleanup_crit_edge

f81534_set_port_config.exit.cleanup_crit_edge:    ; preds = %f81534_set_port_config.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end80:                                         ; preds = %f81534_set_port_config.exit
  call void @__sanitizer_cov_trace_pc() #11
  %dev81 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev81, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.54, i32 noundef %retval.0.i136) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end80, %f81534_set_port_config.exit.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @f81534_break_ctl(ptr nocapture noundef readonly %tty, i32 noundef %break_state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %lcr_mutex = getelementptr inbounds %struct.f81534_port_private, ptr %3, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lcr_mutex, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %break_state)
  %tobool.not = icmp eq i32 %break_state, 0
  %shadow_lcr2 = getelementptr inbounds %struct.f81534_port_private, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %shadow_lcr2 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %shadow_lcr2, align 1
  %6 = and i8 %5, -65
  %masksel = select i1 %tobool.not, i8 0, i8 64
  %.sink = or i8 %6, %masksel
  store i8 %.sink, ptr %shadow_lcr2, align 1
  %7 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %driver_data.i.i, align 4
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 8
  %phy_num.i = getelementptr inbounds %struct.f81534_port_private, ptr %8, i32 0, i32 11
  %11 = ptrtoint ptr %phy_num.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %phy_num.i, align 4
  %conv1.i = zext i8 %12 to i16
  %mul.i = shl nuw nsw i16 %conv1.i, 4
  %add.i = add nuw nsw i16 %mul.i, 4611
  %call3.i = tail call fastcc i32 @f81534_set_register(ptr noundef %10, i16 noundef zeroext %add.i, i8 noundef zeroext %.sink) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool7.not = icmp eq i32 %call3.i, 0
  br i1 %tobool7.not, label %entry.if.end9_crit_edge, label %do.end

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.78, i32 noundef %call3.i) #12
  br label %if.end9

if.end9:                                          ; preds = %do.end, %entry.if.end9_crit_edge
  tail call void @mutex_unlock(ptr noundef %lcr_mutex) #9
  ret void
}

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @f81534_tx_empty(ptr nocapture noundef readonly %port) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tx_empty = getelementptr inbounds %struct.f81534_port_private, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %tx_empty to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %tx_empty, align 4
  %and1.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool = icmp ne i32 %and1.i, 0
  ret i1 %tobool
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @f81534_tiocmget(ptr nocapture noundef readonly %tty) #2 align 64 {
entry:
  %msr = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %msr) #9
  %4 = ptrtoint ptr %msr to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %msr, align 1, !annotation !225
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 8
  %phy_num.i = getelementptr inbounds %struct.f81534_port_private, ptr %3, i32 0, i32 11
  %7 = ptrtoint ptr %phy_num.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %phy_num.i, align 4
  %conv1.i = zext i8 %8 to i16
  %mul.i = shl nuw nsw i16 %conv1.i, 4
  %add.i = add nuw nsw i16 %mul.i, 4614
  %call3.i = call fastcc i32 @f81534_get_register(ptr noundef %6, i16 noundef zeroext %add.i, ptr noundef nonnull %msr) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not = icmp eq i32 %call3.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @mutex_lock_nested(ptr noundef %3, i32 noundef 0) #9
  %shadow_mcr = getelementptr inbounds %struct.f81534_port_private, ptr %3, i32 0, i32 7
  %9 = ptrtoint ptr %shadow_mcr to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %shadow_mcr, align 4
  tail call void @mutex_unlock(ptr noundef %3) #9
  %conv = zext i8 %10 to i32
  %and = shl nuw nsw i32 %conv, 1
  %or = and i32 %and, 6
  %11 = ptrtoint ptr %msr to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %msr, align 1
  %conv8 = zext i8 %12 to i32
  %and9 = shl nuw nsw i32 %conv8, 1
  %13 = and i32 %and9, 32
  %or12 = or i32 %13, %or
  %and14 = lshr i32 %conv8, 1
  %14 = and i32 %and14, 64
  %or17 = or i32 %or12, %14
  %15 = and i32 %and9, 128
  %or22 = or i32 %or17, %15
  %and24 = shl nuw nsw i32 %conv8, 3
  %16 = and i32 %and24, 256
  %or27 = or i32 %or22, %16
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %or27, %if.end ], [ %call3.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %msr) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @f81534_tiocmset(ptr nocapture noundef readonly %tty, i32 noundef %set, i32 noundef %clear) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %call = tail call fastcc i32 @f81534_update_mctrl(ptr noundef %1, i32 noundef %set, i32 noundef %clear)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @f81534_dtr_rts(ptr noundef %port, i32 noundef %on) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on)
  %tobool.not = icmp eq i32 %on, 0
  %driver_data.i.i.i3 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i3, align 4
  tail call void @mutex_lock_nested(ptr noundef %1, i32 noundef 0) #9
  %shadow_mcr.i4 = getelementptr inbounds %struct.f81534_port_private, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %shadow_mcr.i4 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %shadow_mcr.i4, align 4
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %4 = or i8 %3, 11
  %5 = ptrtoint ptr %driver_data.i.i.i3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %driver_data.i.i.i3, align 4
  %7 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %port, align 8
  %phy_num.i.i = getelementptr inbounds %struct.f81534_port_private, ptr %6, i32 0, i32 11
  %9 = ptrtoint ptr %phy_num.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %phy_num.i.i, align 4
  %conv1.i.i = zext i8 %10 to i16
  %mul.i.i = shl nuw nsw i16 %conv1.i.i, 4
  %add.i.i = add nuw nsw i16 %mul.i.i, 4612
  %call3.i.i = tail call fastcc i32 @f81534_set_register(ptr noundef %8, i16 noundef zeroext %add.i.i, i8 noundef zeroext %4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %cmp32.i = icmp slt i32 %call3.i.i, 0
  br i1 %cmp32.i, label %do.end.i, label %if.end36.i

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.58) #12
  br label %if.end

if.end36.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %shadow_mcr.i4 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %4, ptr %shadow_mcr.i4, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %12 = and i8 %3, -12
  %13 = or i8 %12, 8
  %14 = ptrtoint ptr %driver_data.i.i.i3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %driver_data.i.i.i3, align 4
  %16 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %port, align 8
  %phy_num.i.i5 = getelementptr inbounds %struct.f81534_port_private, ptr %15, i32 0, i32 11
  %18 = ptrtoint ptr %phy_num.i.i5 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %phy_num.i.i5, align 4
  %conv1.i.i6 = zext i8 %19 to i16
  %mul.i.i7 = shl nuw nsw i16 %conv1.i.i6, 4
  %add.i.i8 = add nuw nsw i16 %mul.i.i7, 4612
  %call3.i.i9 = tail call fastcc i32 @f81534_set_register(ptr noundef %17, i16 noundef zeroext %add.i.i8, i8 noundef zeroext %13) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i9)
  %cmp32.i10 = icmp slt i32 %call3.i.i9, 0
  br i1 %cmp32.i10, label %do.end.i12, label %if.end36.i13

do.end.i12:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i11 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i11, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.58) #12
  br label %if.end

if.end36.i13:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %20 = ptrtoint ptr %shadow_mcr.i4 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %13, ptr %shadow_mcr.i4, align 4
  br label %if.end

if.end:                                           ; preds = %if.end36.i13, %do.end.i12, %if.end36.i, %do.end.i
  tail call void @mutex_unlock(ptr noundef %1) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @f81534_write_usb_callback(ptr nocapture noundef readonly %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %status = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %2 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %status, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.96)
  switch i32 %3, label %do.body10 [
    i32 0, label %entry.cleanup_crit_edge
    i32 -2, label %entry.do.body_crit_edge
    i32 -104, label %entry.do.body_crit_edge39
    i32 -108, label %entry.do.body_crit_edge40
    i32 -32, label %do.end7
  ]

entry.do.body_crit_edge40:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

entry.do.body_crit_edge39:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %entry.do.body_crit_edge, %entry.do.body_crit_edge39, %entry.do.body_crit_edge40
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @f81534_write_usb_callback.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@f81534_write_usb_callback, %if.then)) #9
          to label %cleanup [label %if.then], !srcloc !226

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  %5 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %status, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @f81534_write_usb_callback.__UNIQUE_ID_ddebug247, ptr noundef %dev, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.80, i32 noundef %6) #9
  br label %cleanup

do.end7:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev8 = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev8, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.80, i32 noundef -32) #12
  br label %cleanup

do.body10:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @f81534_write_usb_callback.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@f81534_write_usb_callback, %if.then22)) #9
          to label %cleanup [label %if.then22], !srcloc !226

if.then22:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #11
  %dev23 = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  %7 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %status, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @f81534_write_usb_callback.__UNIQUE_ID_ddebug248, ptr noundef %dev23, ptr noundef nonnull @.str.82, ptr noundef nonnull @.str.80, i32 noundef %8) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then22, %do.body10, %do.end7, %if.then, %do.body, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @f81534_process_read_urb(ptr nocapture noundef readonly %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %actual_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %0 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %actual_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp ne i32 %1, 0
  %rem = and i32 %1, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool2.not = icmp eq i32 %rem, 0
  %or.cond = and i1 %tobool.not, %tobool2.not
  br i1 %or.cond, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %2 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %context, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %6 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %transfer_buffer, align 4
  %private.i = getelementptr inbounds %struct.usb_serial, ptr %5, i32 0, i32 15
  %8 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %private.i, align 4
  %10 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %actual_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp37.not = icmp eq i32 %11, 0
  br i1 %cmp37.not, label %if.end.cleanup_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.039 = phi i32 [ %add, %for.inc.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %port.038 = phi ptr [ %port.1, %for.inc.for.body_crit_edge ], [ %3, %if.end.for.body_crit_edge ]
  %arrayidx = getelementptr i8, ptr %7, i32 %i.039
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %13 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %13)
  %cmp5 = icmp ugt i8 %13, 3
  br i1 %cmp5, label %do.end, label %if.end8

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %port.038, i32 0, i32 32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.84, i32 noundef %conv, i32 noundef 4) #12
  br label %for.inc

if.end8:                                          ; preds = %for.body
  %arrayidx9 = getelementptr %struct.f81534_serial_private, ptr %9, i32 0, i32 1, i32 %conv
  %14 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx9, align 4
  %arrayidx11 = getelementptr %struct.usb_serial, ptr %5, i32 0, i32 12, i32 %15
  %16 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx11, align 4
  %port12 = getelementptr inbounds %struct.usb_serial_port, ptr %17, i32 0, i32 1
  %iflags.i = getelementptr inbounds %struct.usb_serial_port, ptr %17, i32 0, i32 1, i32 11
  %18 = ptrtoint ptr %iflags.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %iflags.i, align 4
  %and1.i.i = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.end8.for.inc_crit_edge, label %if.then14

if.end8.for.inc_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then14:                                        ; preds = %if.end8
  %driver_data.i.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %17, i32 0, i32 32, i32 8
  %20 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %driver_data.i.i.i, align 4
  %arrayidx1.i = getelementptr i8, ptr %arrayidx, i32 1
  %22 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx1.i, align 1
  %24 = zext i8 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.97)
  switch i8 %23, label %do.end18.i [
    i8 3, label %sw.bb.i
    i8 4, label %sw.bb4.i
    i8 1, label %sw.bb6.i
  ]

sw.bb.i:                                          ; preds = %if.then14
  %tx_empty.i = getelementptr inbounds %struct.f81534_port_private, ptr %21, i32 0, i32 4
  tail call void @_set_bit(i32 noundef 0, ptr noundef %tx_empty.i) #9
  %call3.i = tail call fastcc i32 @f81534_submit_writer(ptr noundef %17, i32 noundef 2592) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool.not.i, label %sw.bb.i.for.inc_crit_edge, label %do.end.i

sw.bb.i.for.inc_crit_edge:                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

do.end.i:                                         ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.usb_serial_port, ptr %17, i32 0, i32 32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.85) #12
  br label %for.inc

sw.bb4.i:                                         ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx5.i = getelementptr i8, ptr %arrayidx, i32 3
  %25 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx5.i, align 1
  tail call fastcc void @f81534_msr_changed(ptr noundef %17, i8 noundef zeroext %26) #9
  br label %for.inc

sw.bb6.i:                                         ; preds = %if.then14
  %arrayidx7.i = getelementptr i8, ptr %arrayidx, i32 2
  %27 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx7.i, align 1
  %conv8.i = zext i8 %28 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 124, i8 %28)
  %cmp.i = icmp ugt i8 %28, 124
  br i1 %cmp.i, label %do.end13.i, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %sw.bb6.i
  %add.i = add nuw nsw i32 %conv8.i, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %cmp22134.not.i = icmp eq i8 %28, 0
  br i1 %cmp22134.not.i, label %for.cond.preheader.i.for.end.i_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %brk.i = getelementptr inbounds %struct.usb_serial_port, ptr %17, i32 0, i32 27, i32 9
  %parity.i = getelementptr inbounds %struct.usb_serial_port, ptr %17, i32 0, i32 27, i32 7
  %frame.i = getelementptr inbounds %struct.usb_serial_port, ptr %17, i32 0, i32 27, i32 6
  %overrun.i = getelementptr inbounds %struct.usb_serial_port, ptr %17, i32 0, i32 27, i32 8
  %tail.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %17, i32 0, i32 1, i32 0, i32 8
  %lsr_work.i = getelementptr inbounds %struct.f81534_port_private, ptr %21, i32 0, i32 2
  %sysrq.i = getelementptr inbounds %struct.usb_serial_port, ptr %17, i32 0, i32 31
  br label %for.body.i

do.end13.i:                                       ; preds = %sw.bb6.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev14.i = getelementptr inbounds %struct.usb_serial_port, ptr %17, i32 0, i32 32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev14.i, ptr noundef nonnull @.str.87, ptr noundef nonnull @.str.85, i32 noundef %conv, i32 noundef %conv8.i, i32 noundef 124) #12
  br label %for.inc

do.end18.i:                                       ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #11
  %conv2.i = zext i8 %23 to i32
  %dev19.i = getelementptr inbounds %struct.usb_serial_port, ptr %17, i32 0, i32 32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev19.i, ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.85, i32 noundef %conv2.i) #12
  br label %for.inc

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.0135.i = phi i32 [ 4, %for.body.lr.ph.i ], [ %add73.i, %for.inc.i.for.body.i_crit_edge ]
  %add24.i = or i32 %i.0135.i, 1
  %arrayidx25.i = getelementptr i8, ptr %arrayidx, i32 %add24.i
  %29 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx25.i, align 1
  %conv26.i = zext i8 %30 to i32
  %and.i = and i32 %conv26.i, 30
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool27.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool27.not.i, label %for.body.i.if.end60.i_crit_edge, label %if.then28.i

for.body.i.if.end60.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end60.i

if.then28.i:                                      ; preds = %for.body.i
  %and30.i = and i32 %conv26.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30.i)
  %tobool31.not.i = icmp eq i32 %and30.i, 0
  br i1 %tobool31.not.i, label %if.else.i, label %if.then32.i

if.then32.i:                                      ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #11
  %31 = ptrtoint ptr %brk.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %brk.i, align 4
  %inc.i = add i32 %32, 1
  store i32 %inc.i, ptr %brk.i, align 4
  %call33.i = tail call i32 @usb_serial_handle_break(ptr noundef %17) #9
  br label %if.end49.i

if.else.i:                                        ; preds = %if.then28.i
  %and35.i = and i32 %conv26.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35.i)
  %tobool36.not.i = icmp eq i32 %and35.i, 0
  br i1 %tobool36.not.i, label %if.else40.i, label %if.then37.i

if.then37.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %33 = ptrtoint ptr %parity.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %parity.i, align 4
  %inc39.i = add i32 %34, 1
  store i32 %inc39.i, ptr %parity.i, align 4
  br label %if.end49.i

if.else40.i:                                      ; preds = %if.else.i
  %and42.i = and i32 %conv26.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42.i)
  %tobool43.not.i = icmp eq i32 %and42.i, 0
  br i1 %tobool43.not.i, label %if.else40.i.if.end49.i_crit_edge, label %if.then44.i

if.else40.i.if.end49.i_crit_edge:                 ; preds = %if.else40.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end49.i

if.then44.i:                                      ; preds = %if.else40.i
  call void @__sanitizer_cov_trace_pc() #11
  %35 = ptrtoint ptr %frame.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %frame.i, align 8
  %inc46.i = add i32 %36, 1
  store i32 %inc46.i, ptr %frame.i, align 8
  br label %if.end49.i

if.end49.i:                                       ; preds = %if.then44.i, %if.else40.i.if.end49.i_crit_edge, %if.then37.i, %if.then32.i
  %tty_flag.0.i = phi i8 [ 1, %if.then32.i ], [ 3, %if.then37.i ], [ 2, %if.then44.i ], [ 0, %if.else40.i.if.end49.i_crit_edge ]
  %and51.i = and i32 %conv26.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51.i)
  %tobool52.not.i = icmp eq i32 %and51.i, 0
  br i1 %tobool52.not.i, label %if.end49.i.if.end58.i_crit_edge, label %if.then53.i

if.end49.i.if.end58.i_crit_edge:                  ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end58.i

if.then53.i:                                      ; preds = %if.end49.i
  %37 = ptrtoint ptr %overrun.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %overrun.i, align 8
  %inc55.i = add i32 %38, 1
  store i32 %inc55.i, ptr %overrun.i, align 8
  %39 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %tail.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.tty_buffer, ptr %40, i32 0, i32 5
  %41 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %42, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i, label %if.then53.i.if.end12.i.i_crit_edge

if.then53.i.if.end12.i.i_crit_edge:               ; preds = %if.then53.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12.i.i

land.lhs.true.i.i:                                ; preds = %if.then53.i
  %used.i.i = getelementptr inbounds %struct.tty_buffer, ptr %40, i32 0, i32 1
  %43 = ptrtoint ptr %used.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %used.i.i, align 4
  %size.i.i = getelementptr inbounds %struct.tty_buffer, ptr %40, i32 0, i32 2
  %45 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %size.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %46)
  %cmp3.i.i = icmp slt i32 %44, %46
  br i1 %cmp3.i.i, label %if.end.i.i, label %land.lhs.true.i.i.if.end12.i.i_crit_edge

land.lhs.true.i.i.if.end12.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %data.i.i.i.i = getelementptr inbounds %struct.tty_buffer, ptr %40, i32 0, i32 6
  %add.ptr.i.i.i.i = getelementptr i8, ptr %data.i.i.i.i, i32 %44
  %add.ptr.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i.i, i32 %46
  %47 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 4, ptr %add.ptr.i.i.i, align 1
  %48 = ptrtoint ptr %used.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %used.i.i, align 4
  %inc.i.i = add i32 %49, 1
  store i32 %inc.i.i, ptr %used.i.i, align 4
  %add.ptr.i1.i.i = getelementptr i8, ptr %data.i.i.i.i, i32 %49
  %50 = ptrtoint ptr %add.ptr.i1.i.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 0, ptr %add.ptr.i1.i.i, align 1
  br label %if.end58.i

if.end12.i.i:                                     ; preds = %land.lhs.true.i.i.if.end12.i.i_crit_edge, %if.then53.i.if.end12.i.i_crit_edge
  %call13.i.i = tail call i32 @__tty_insert_flip_char(ptr noundef %port12, i8 noundef zeroext 0, i8 noundef zeroext 4) #9
  br label %if.end58.i

if.end58.i:                                       ; preds = %if.end12.i.i, %if.end.i.i, %if.end49.i.if.end58.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %51 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %51, ptr noundef %lsr_work.i) #9
  br label %if.end60.i

if.end60.i:                                       ; preds = %if.end58.i, %for.body.i.if.end60.i_crit_edge
  %tty_flag.1.i = phi i8 [ %tty_flag.0.i, %if.end58.i ], [ 0, %for.body.i.if.end60.i_crit_edge ]
  %52 = ptrtoint ptr %sysrq.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %sysrq.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool61.not.i = icmp eq i32 %53, 0
  br i1 %tobool61.not.i, label %if.end60.i.if.end69.i_crit_edge, label %if.then62.i

if.end60.i.if.end69.i_crit_edge:                  ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69.i

if.then62.i:                                      ; preds = %if.end60.i
  %arrayidx63.i = getelementptr i8, ptr %arrayidx, i32 %i.0135.i
  %54 = ptrtoint ptr %arrayidx63.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx63.i, align 1
  %conv64.i = zext i8 %55 to i32
  %call65.i = tail call i32 @usb_serial_handle_sysrq_char(ptr noundef %17, i32 noundef %conv64.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65.i)
  %tobool66.not.i = icmp eq i32 %call65.i, 0
  br i1 %tobool66.not.i, label %if.then62.i.if.end69.i_crit_edge, label %if.then62.i.for.inc.i_crit_edge

if.then62.i.for.inc.i_crit_edge:                  ; preds = %if.then62.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.then62.i.if.end69.i_crit_edge:                 ; preds = %if.then62.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69.i

if.end69.i:                                       ; preds = %if.then62.i.if.end69.i_crit_edge, %if.end60.i.if.end69.i_crit_edge
  %arrayidx71.i = getelementptr i8, ptr %arrayidx, i32 %i.0135.i
  %56 = ptrtoint ptr %arrayidx71.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx71.i, align 1
  %58 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %tail.i.i, align 4
  %flags.i115.i = getelementptr inbounds %struct.tty_buffer, ptr %59, i32 0, i32 5
  %60 = ptrtoint ptr %flags.i115.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %flags.i115.i, align 4
  %and.i116.i = and i32 %61, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i116.i)
  %tobool.not.i117.i = icmp eq i32 %and.i116.i, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %tty_flag.1.i)
  %cmp.i.i = icmp eq i8 %tty_flag.1.i, 0
  %62 = or i1 %cmp.i.i, %tobool.not.i117.i
  br i1 %62, label %land.lhs.true.i121.i, label %if.end69.i.if.end12.i132.i_crit_edge

if.end69.i.if.end12.i132.i_crit_edge:             ; preds = %if.end69.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12.i132.i

land.lhs.true.i121.i:                             ; preds = %if.end69.i
  %used.i118.i = getelementptr inbounds %struct.tty_buffer, ptr %59, i32 0, i32 1
  %63 = ptrtoint ptr %used.i118.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %used.i118.i, align 4
  %size.i119.i = getelementptr inbounds %struct.tty_buffer, ptr %59, i32 0, i32 2
  %65 = ptrtoint ptr %size.i119.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %size.i119.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %64, i32 %66)
  %cmp3.i120.i = icmp slt i32 %64, %66
  br i1 %cmp3.i120.i, label %if.then.i122.i, label %land.lhs.true.i121.i.if.end12.i132.i_crit_edge

land.lhs.true.i121.i.if.end12.i132.i_crit_edge:   ; preds = %land.lhs.true.i121.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12.i132.i

if.then.i122.i:                                   ; preds = %land.lhs.true.i121.i
  br i1 %tobool.not.i117.i, label %if.then8.i126.i, label %if.then.i122.i.if.end.i130.i_crit_edge

if.then.i122.i.if.end.i130.i_crit_edge:           ; preds = %if.then.i122.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i130.i

if.then8.i126.i:                                  ; preds = %if.then.i122.i
  call void @__sanitizer_cov_trace_pc() #11
  %data.i.i.i123.i = getelementptr inbounds %struct.tty_buffer, ptr %59, i32 0, i32 6
  %add.ptr.i.i.i124.i = getelementptr i8, ptr %data.i.i.i123.i, i32 %64
  %add.ptr.i.i125.i = getelementptr i8, ptr %add.ptr.i.i.i124.i, i32 %66
  %67 = ptrtoint ptr %add.ptr.i.i125.i to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %tty_flag.1.i, ptr %add.ptr.i.i125.i, align 1
  br label %if.end.i130.i

if.end.i130.i:                                    ; preds = %if.then8.i126.i, %if.then.i122.i.if.end.i130.i_crit_edge
  %68 = ptrtoint ptr %used.i118.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %used.i118.i, align 4
  %inc.i127.i = add i32 %69, 1
  store i32 %inc.i127.i, ptr %used.i118.i, align 4
  %data.i.i128.i = getelementptr inbounds %struct.tty_buffer, ptr %59, i32 0, i32 6
  %add.ptr.i1.i129.i = getelementptr i8, ptr %data.i.i128.i, i32 %69
  %70 = ptrtoint ptr %add.ptr.i1.i129.i to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %57, ptr %add.ptr.i1.i129.i, align 1
  br label %for.inc.i

if.end12.i132.i:                                  ; preds = %land.lhs.true.i121.i.if.end12.i132.i_crit_edge, %if.end69.i.if.end12.i132.i_crit_edge
  %call13.i131.i = tail call i32 @__tty_insert_flip_char(ptr noundef %port12, i8 noundef zeroext %57, i8 noundef zeroext %tty_flag.1.i) #9
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end12.i132.i, %if.end.i130.i, %if.then62.i.for.inc.i_crit_edge
  %add73.i = add nuw nsw i32 %i.0135.i, 2
  %cmp22.i = icmp ult i32 %add73.i, %add.i
  br i1 %cmp22.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.for.end.i_crit_edge

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  tail call void @tty_flip_buffer_push(ptr noundef %port12) #9
  br label %for.inc

for.inc:                                          ; preds = %for.end.i, %do.end18.i, %do.end13.i, %sw.bb4.i, %do.end.i, %sw.bb.i.for.inc_crit_edge, %if.end8.for.inc_crit_edge, %do.end
  %port.1 = phi ptr [ %port.038, %do.end ], [ %17, %if.end8.for.inc_crit_edge ], [ %17, %sw.bb.i.for.inc_crit_edge ], [ %17, %do.end.i ], [ %17, %sw.bb4.i ], [ %17, %do.end13.i ], [ %17, %do.end18.i ], [ %17, %for.end.i ]
  %add = add i32 %i.039, 128
  %71 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %actual_length, align 4
  %cmp = icmp ult i32 %add, %72
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @f81534_read_flash(ptr noundef readonly %serial, i32 noundef %address, i32 noundef %size, ptr nocapture noundef writeonly %buf) unnamed_addr #2 align 64 {
entry:
  %tmp.i.i166 = alloca i8, align 1
  %tmp.i.i144 = alloca i8, align 1
  %tmp.i.i122 = alloca i8, align 1
  %tmp.i.i100 = alloca i8, align 1
  %tmp.i.i78 = alloca i8, align 1
  %tmp.i.i = alloca i8, align 1
  %tmp_buf = alloca [64 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %tmp_buf) #9
  %0 = call ptr @memset(ptr %tmp_buf, i32 255, i32 64)
  %call.i = tail call fastcc i32 @f81534_set_register(ptr noundef %serial, i16 noundef zeroext 4098, i8 noundef zeroext 3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i.i) #9
  %1 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %tmp.i.i, align 1, !annotation !225
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.cond.i.i.do.body.i.i_crit_edge, %if.end.i
  %count.0.i.i = phi i32 [ 20, %if.end.i ], [ %dec.i.i, %do.cond.i.i.do.body.i.i_crit_edge ]
  %call.i.i = call fastcc i32 @f81534_get_register(ptr noundef %serial, i16 noundef zeroext 4099, ptr noundef nonnull %tmp.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.body.i.i.f81534_set_spi_register.exit.thread189_crit_edge

do.body.i.i.f81534_set_spi_register.exit.thread189_crit_edge: ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %f81534_set_spi_register.exit.thread189

if.end.i.i:                                       ; preds = %do.body.i.i
  %2 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %tmp.i.i, align 1
  %4 = and i8 %3, 7
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %4)
  %.not.i.i = icmp eq i8 %4, 4
  br i1 %.not.i.i, label %f81534_set_spi_register.exit, label %do.cond.i.i

do.cond.i.i:                                      ; preds = %if.end.i.i
  %dec.i.i = add nsw i32 %count.0.i.i, -1
  %tobool9.not.i.i = icmp eq i32 %dec.i.i, 0
  br i1 %tobool9.not.i.i, label %do.end14.i.i, label %do.cond.i.i.do.body.i.i_crit_edge

do.cond.i.i.do.body.i.i_crit_edge:                ; preds = %do.cond.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i.i

do.end14.i.i:                                     ; preds = %do.cond.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %interface.i.i = getelementptr inbounds %struct.usb_serial, ptr %serial, i32 0, i32 2
  %5 = ptrtoint ptr %interface.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %interface.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.usb_interface, ptr %6, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.28) #12
  br label %f81534_set_spi_register.exit.thread189

f81534_set_spi_register.exit.thread189:           ; preds = %do.end14.i.i, %do.body.i.i.f81534_set_spi_register.exit.thread189_crit_edge
  %retval.0.i.i.ph = phi i32 [ -5, %do.end14.i.i ], [ %call.i.i, %do.body.i.i.f81534_set_spi_register.exit.thread189_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i.i) #9
  br label %cleanup

f81534_set_spi_register.exit:                     ; preds = %if.end.i.i
  %7 = and i8 %3, -5
  %call19.i.i = tail call fastcc i32 @f81534_set_register(ptr noundef %serial, i16 noundef zeroext 4099, i8 noundef zeroext %7) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i.i)
  %tobool.not = icmp eq i32 %call19.i.i, 0
  br i1 %tobool.not, label %if.end, label %f81534_set_spi_register.exit.cleanup_crit_edge

f81534_set_spi_register.exit.cleanup_crit_edge:   ; preds = %f81534_set_spi_register.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %f81534_set_spi_register.exit
  %call.i79 = tail call fastcc i32 @f81534_set_register(ptr noundef %serial, i16 noundef zeroext 4098, i8 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i79)
  %tobool.not.i80 = icmp eq i32 %call.i79, 0
  br i1 %tobool.not.i80, label %if.end.i81, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i81:                                       ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i.i78) #9
  %8 = ptrtoint ptr %tmp.i.i78 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -1, ptr %tmp.i.i78, align 1, !annotation !225
  br label %do.body.i.i85

do.body.i.i85:                                    ; preds = %do.cond.i.i90.do.body.i.i85_crit_edge, %if.end.i81
  %count.0.i.i82 = phi i32 [ 20, %if.end.i81 ], [ %dec.i.i88, %do.cond.i.i90.do.body.i.i85_crit_edge ]
  %call.i.i83 = call fastcc i32 @f81534_get_register(ptr noundef %serial, i16 noundef zeroext 4099, ptr noundef nonnull %tmp.i.i78) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i83)
  %tobool.not.i.i84 = icmp eq i32 %call.i.i83, 0
  br i1 %tobool.not.i.i84, label %if.end.i.i87, label %do.body.i.i85.f81534_set_spi_register.exit99.thread194_crit_edge

do.body.i.i85.f81534_set_spi_register.exit99.thread194_crit_edge: ; preds = %do.body.i.i85
  call void @__sanitizer_cov_trace_pc() #11
  br label %f81534_set_spi_register.exit99.thread194

if.end.i.i87:                                     ; preds = %do.body.i.i85
  %9 = ptrtoint ptr %tmp.i.i78 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %tmp.i.i78, align 1
  %11 = and i8 %10, 7
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %11)
  %.not.i.i86 = icmp eq i8 %11, 4
  br i1 %.not.i.i86, label %f81534_set_spi_register.exit99, label %do.cond.i.i90

do.cond.i.i90:                                    ; preds = %if.end.i.i87
  %dec.i.i88 = add nsw i32 %count.0.i.i82, -1
  %tobool9.not.i.i89 = icmp eq i32 %dec.i.i88, 0
  br i1 %tobool9.not.i.i89, label %do.end14.i.i93, label %do.cond.i.i90.do.body.i.i85_crit_edge

do.cond.i.i90.do.body.i.i85_crit_edge:            ; preds = %do.cond.i.i90
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i.i85

do.end14.i.i93:                                   ; preds = %do.cond.i.i90
  call void @__sanitizer_cov_trace_pc() #11
  %interface.i.i91 = getelementptr inbounds %struct.usb_serial, ptr %serial, i32 0, i32 2
  %12 = ptrtoint ptr %interface.i.i91 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %interface.i.i91, align 4
  %dev.i.i92 = getelementptr inbounds %struct.usb_interface, ptr %13, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i92, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.28) #12
  br label %f81534_set_spi_register.exit99.thread194

f81534_set_spi_register.exit99.thread194:         ; preds = %do.end14.i.i93, %do.body.i.i85.f81534_set_spi_register.exit99.thread194_crit_edge
  %retval.0.i.i96.ph = phi i32 [ -5, %do.end14.i.i93 ], [ %call.i.i83, %do.body.i.i85.f81534_set_spi_register.exit99.thread194_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i.i78) #9
  br label %cleanup

f81534_set_spi_register.exit99:                   ; preds = %if.end.i.i87
  %14 = and i8 %10, -5
  %call19.i.i94 = tail call fastcc i32 @f81534_set_register(ptr noundef %serial, i16 noundef zeroext 4099, i8 noundef zeroext %14) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i.i78) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i.i94)
  %tobool2.not = icmp eq i32 %call19.i.i94, 0
  br i1 %tobool2.not, label %if.end4, label %f81534_set_spi_register.exit99.cleanup_crit_edge

f81534_set_spi_register.exit99.cleanup_crit_edge: ; preds = %f81534_set_spi_register.exit99
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %f81534_set_spi_register.exit99
  %shr5 = lshr i32 %address, 8
  %conv7 = trunc i32 %shr5 to i8
  %call.i101 = tail call fastcc i32 @f81534_set_register(ptr noundef %serial, i16 noundef zeroext 4098, i8 noundef zeroext %conv7) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i101)
  %tobool.not.i102 = icmp eq i32 %call.i101, 0
  br i1 %tobool.not.i102, label %if.end.i103, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i103:                                      ; preds = %if.end4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i.i100) #9
  %15 = ptrtoint ptr %tmp.i.i100 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 -1, ptr %tmp.i.i100, align 1, !annotation !225
  br label %do.body.i.i107

do.body.i.i107:                                   ; preds = %do.cond.i.i112.do.body.i.i107_crit_edge, %if.end.i103
  %count.0.i.i104 = phi i32 [ 20, %if.end.i103 ], [ %dec.i.i110, %do.cond.i.i112.do.body.i.i107_crit_edge ]
  %call.i.i105 = call fastcc i32 @f81534_get_register(ptr noundef %serial, i16 noundef zeroext 4099, ptr noundef nonnull %tmp.i.i100) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i105)
  %tobool.not.i.i106 = icmp eq i32 %call.i.i105, 0
  br i1 %tobool.not.i.i106, label %if.end.i.i109, label %do.body.i.i107.f81534_set_spi_register.exit121.thread199_crit_edge

do.body.i.i107.f81534_set_spi_register.exit121.thread199_crit_edge: ; preds = %do.body.i.i107
  call void @__sanitizer_cov_trace_pc() #11
  br label %f81534_set_spi_register.exit121.thread199

if.end.i.i109:                                    ; preds = %do.body.i.i107
  %16 = ptrtoint ptr %tmp.i.i100 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %tmp.i.i100, align 1
  %18 = and i8 %17, 7
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %18)
  %.not.i.i108 = icmp eq i8 %18, 4
  br i1 %.not.i.i108, label %f81534_set_spi_register.exit121, label %do.cond.i.i112

do.cond.i.i112:                                   ; preds = %if.end.i.i109
  %dec.i.i110 = add nsw i32 %count.0.i.i104, -1
  %tobool9.not.i.i111 = icmp eq i32 %dec.i.i110, 0
  br i1 %tobool9.not.i.i111, label %do.end14.i.i115, label %do.cond.i.i112.do.body.i.i107_crit_edge

do.cond.i.i112.do.body.i.i107_crit_edge:          ; preds = %do.cond.i.i112
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i.i107

do.end14.i.i115:                                  ; preds = %do.cond.i.i112
  call void @__sanitizer_cov_trace_pc() #11
  %interface.i.i113 = getelementptr inbounds %struct.usb_serial, ptr %serial, i32 0, i32 2
  %19 = ptrtoint ptr %interface.i.i113 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %interface.i.i113, align 4
  %dev.i.i114 = getelementptr inbounds %struct.usb_interface, ptr %20, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i114, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.28) #12
  br label %f81534_set_spi_register.exit121.thread199

f81534_set_spi_register.exit121.thread199:        ; preds = %do.end14.i.i115, %do.body.i.i107.f81534_set_spi_register.exit121.thread199_crit_edge
  %retval.0.i.i118.ph = phi i32 [ -5, %do.end14.i.i115 ], [ %call.i.i105, %do.body.i.i107.f81534_set_spi_register.exit121.thread199_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i.i100) #9
  br label %cleanup

f81534_set_spi_register.exit121:                  ; preds = %if.end.i.i109
  %21 = and i8 %17, -5
  %call19.i.i116 = tail call fastcc i32 @f81534_set_register(ptr noundef %serial, i16 noundef zeroext 4099, i8 noundef zeroext %21) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i.i100) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i.i116)
  %tobool9.not = icmp eq i32 %call19.i.i116, 0
  br i1 %tobool9.not, label %if.end11, label %f81534_set_spi_register.exit121.cleanup_crit_edge

f81534_set_spi_register.exit121.cleanup_crit_edge: ; preds = %f81534_set_spi_register.exit121
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end11:                                         ; preds = %f81534_set_spi_register.exit121
  %conv14 = trunc i32 %address to i8
  %call.i123 = tail call fastcc i32 @f81534_set_register(ptr noundef %serial, i16 noundef zeroext 4098, i8 noundef zeroext %conv14) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i123)
  %tobool.not.i124 = icmp eq i32 %call.i123, 0
  br i1 %tobool.not.i124, label %if.end.i125, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i125:                                      ; preds = %if.end11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i.i122) #9
  %22 = ptrtoint ptr %tmp.i.i122 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 -1, ptr %tmp.i.i122, align 1, !annotation !225
  br label %do.body.i.i129

do.body.i.i129:                                   ; preds = %do.cond.i.i134.do.body.i.i129_crit_edge, %if.end.i125
  %count.0.i.i126 = phi i32 [ 20, %if.end.i125 ], [ %dec.i.i132, %do.cond.i.i134.do.body.i.i129_crit_edge ]
  %call.i.i127 = call fastcc i32 @f81534_get_register(ptr noundef %serial, i16 noundef zeroext 4099, ptr noundef nonnull %tmp.i.i122) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i127)
  %tobool.not.i.i128 = icmp eq i32 %call.i.i127, 0
  br i1 %tobool.not.i.i128, label %if.end.i.i131, label %do.body.i.i129.f81534_set_spi_register.exit143.thread204_crit_edge

do.body.i.i129.f81534_set_spi_register.exit143.thread204_crit_edge: ; preds = %do.body.i.i129
  call void @__sanitizer_cov_trace_pc() #11
  br label %f81534_set_spi_register.exit143.thread204

if.end.i.i131:                                    ; preds = %do.body.i.i129
  %23 = ptrtoint ptr %tmp.i.i122 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %tmp.i.i122, align 1
  %25 = and i8 %24, 7
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %25)
  %.not.i.i130 = icmp eq i8 %25, 4
  br i1 %.not.i.i130, label %f81534_set_spi_register.exit143, label %do.cond.i.i134

do.cond.i.i134:                                   ; preds = %if.end.i.i131
  %dec.i.i132 = add nsw i32 %count.0.i.i126, -1
  %tobool9.not.i.i133 = icmp eq i32 %dec.i.i132, 0
  br i1 %tobool9.not.i.i133, label %do.end14.i.i137, label %do.cond.i.i134.do.body.i.i129_crit_edge

do.cond.i.i134.do.body.i.i129_crit_edge:          ; preds = %do.cond.i.i134
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i.i129

do.end14.i.i137:                                  ; preds = %do.cond.i.i134
  call void @__sanitizer_cov_trace_pc() #11
  %interface.i.i135 = getelementptr inbounds %struct.usb_serial, ptr %serial, i32 0, i32 2
  %26 = ptrtoint ptr %interface.i.i135 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %interface.i.i135, align 4
  %dev.i.i136 = getelementptr inbounds %struct.usb_interface, ptr %27, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i136, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.28) #12
  br label %f81534_set_spi_register.exit143.thread204

f81534_set_spi_register.exit143.thread204:        ; preds = %do.end14.i.i137, %do.body.i.i129.f81534_set_spi_register.exit143.thread204_crit_edge
  %retval.0.i.i140.ph = phi i32 [ -5, %do.end14.i.i137 ], [ %call.i.i127, %do.body.i.i129.f81534_set_spi_register.exit143.thread204_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i.i122) #9
  br label %cleanup

f81534_set_spi_register.exit143:                  ; preds = %if.end.i.i131
  %28 = and i8 %24, -5
  %call19.i.i138 = tail call fastcc i32 @f81534_set_register(ptr noundef %serial, i16 noundef zeroext 4099, i8 noundef zeroext %28) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i.i122) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i.i138)
  %tobool16.not = icmp eq i32 %call19.i.i138, 0
  br i1 %tobool16.not, label %f81534_set_spi_register.exit143.do.body_crit_edge, label %f81534_set_spi_register.exit143.cleanup_crit_edge

f81534_set_spi_register.exit143.cleanup_crit_edge: ; preds = %f81534_set_spi_register.exit143
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

f81534_set_spi_register.exit143.do.body_crit_edge: ; preds = %f81534_set_spi_register.exit143
  br label %do.body

do.body:                                          ; preds = %for.end.do.body_crit_edge, %f81534_set_spi_register.exit143.do.body_crit_edge
  %size.addr.0 = phi i32 [ %sub, %for.end.do.body_crit_edge ], [ %size, %f81534_set_spi_register.exit143.do.body_crit_edge ]
  %block.0 = phi i32 [ %inc39, %for.end.do.body_crit_edge ], [ 0, %f81534_set_spi_register.exit143.do.body_crit_edge ]
  %29 = tail call i32 @llvm.umin.i32(i32 %size.addr.0, i32 64)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp20241.not = icmp eq i32 %29, 0
  br i1 %cmp20241.not, label %do.body.for.end_crit_edge, label %for.body.lr.ph

do.body.for.end_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 65, i32 %size.addr.0)
  %cmp22 = icmp ult i32 %size.addr.0, 65
  %mul = shl i32 %block.0, 6
  br label %for.body

for.body:                                         ; preds = %if.end35.for.body_crit_edge, %for.body.lr.ph
  %count.0242 = phi i32 [ 0, %for.body.lr.ph ], [ %add, %if.end35.for.body_crit_edge ]
  %add = add nuw nsw i32 %count.0242, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %add)
  %cmp24 = icmp eq i32 %29, %add
  %or.cond = select i1 %cmp22, i1 %cmp24, i1 false
  %reg_tmp.0 = select i1 %or.cond, i16 4097, i16 4098
  %call.i145 = tail call fastcc i32 @f81534_set_register(ptr noundef %serial, i16 noundef zeroext %reg_tmp.0, i8 noundef zeroext -15) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i145)
  %tobool.not.i146 = icmp eq i32 %call.i145, 0
  br i1 %tobool.not.i146, label %if.end.i147, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i147:                                      ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i.i144) #9
  %30 = ptrtoint ptr %tmp.i.i144 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 -1, ptr %tmp.i.i144, align 1, !annotation !225
  br label %do.body.i.i151

do.body.i.i151:                                   ; preds = %do.cond.i.i156.do.body.i.i151_crit_edge, %if.end.i147
  %count.0.i.i148 = phi i32 [ 20, %if.end.i147 ], [ %dec.i.i154, %do.cond.i.i156.do.body.i.i151_crit_edge ]
  %call.i.i149 = call fastcc i32 @f81534_get_register(ptr noundef %serial, i16 noundef zeroext 4099, ptr noundef nonnull %tmp.i.i144) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i149)
  %tobool.not.i.i150 = icmp eq i32 %call.i.i149, 0
  br i1 %tobool.not.i.i150, label %if.end.i.i153, label %do.body.i.i151.f81534_set_spi_register.exit165.thread209_crit_edge

do.body.i.i151.f81534_set_spi_register.exit165.thread209_crit_edge: ; preds = %do.body.i.i151
  call void @__sanitizer_cov_trace_pc() #11
  br label %f81534_set_spi_register.exit165.thread209

if.end.i.i153:                                    ; preds = %do.body.i.i151
  %31 = ptrtoint ptr %tmp.i.i144 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %tmp.i.i144, align 1
  %33 = and i8 %32, 7
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %33)
  %.not.i.i152 = icmp eq i8 %33, 4
  br i1 %.not.i.i152, label %f81534_set_spi_register.exit165, label %do.cond.i.i156

do.cond.i.i156:                                   ; preds = %if.end.i.i153
  %dec.i.i154 = add nsw i32 %count.0.i.i148, -1
  %tobool9.not.i.i155 = icmp eq i32 %dec.i.i154, 0
  br i1 %tobool9.not.i.i155, label %do.end14.i.i159, label %do.cond.i.i156.do.body.i.i151_crit_edge

do.cond.i.i156.do.body.i.i151_crit_edge:          ; preds = %do.cond.i.i156
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i.i151

do.end14.i.i159:                                  ; preds = %do.cond.i.i156
  call void @__sanitizer_cov_trace_pc() #11
  %interface.i.i157 = getelementptr inbounds %struct.usb_serial, ptr %serial, i32 0, i32 2
  %34 = ptrtoint ptr %interface.i.i157 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %interface.i.i157, align 4
  %dev.i.i158 = getelementptr inbounds %struct.usb_interface, ptr %35, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i158, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.28) #12
  br label %f81534_set_spi_register.exit165.thread209

f81534_set_spi_register.exit165.thread209:        ; preds = %do.end14.i.i159, %do.body.i.i151.f81534_set_spi_register.exit165.thread209_crit_edge
  %retval.0.i.i162.ph = phi i32 [ -5, %do.end14.i.i159 ], [ %call.i.i149, %do.body.i.i151.f81534_set_spi_register.exit165.thread209_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i.i144) #9
  br label %cleanup

f81534_set_spi_register.exit165:                  ; preds = %if.end.i.i153
  %36 = and i8 %32, -5
  %call19.i.i160 = tail call fastcc i32 @f81534_set_register(ptr noundef %serial, i16 noundef zeroext 4099, i8 noundef zeroext %36) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i.i144) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i.i160)
  %tobool29.not = icmp eq i32 %call19.i.i160, 0
  br i1 %tobool29.not, label %if.end31, label %f81534_set_spi_register.exit165.cleanup_crit_edge

f81534_set_spi_register.exit165.cleanup_crit_edge: ; preds = %f81534_set_spi_register.exit165
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end31:                                         ; preds = %f81534_set_spi_register.exit165
  %arrayidx = getelementptr [64 x i8], ptr %tmp_buf, i32 0, i32 %count.0242
  %call.i167 = call fastcc i32 @f81534_get_register(ptr noundef %serial, i16 noundef zeroext 4100, ptr noundef %arrayidx) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i167)
  %tobool.not.i168 = icmp eq i32 %call.i167, 0
  br i1 %tobool.not.i168, label %if.end.i169, label %if.end31.cleanup_crit_edge

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i169:                                      ; preds = %if.end31
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i.i166) #9
  %37 = ptrtoint ptr %tmp.i.i166 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 -1, ptr %tmp.i.i166, align 1, !annotation !225
  br label %do.body.i.i173

do.body.i.i173:                                   ; preds = %do.cond.i.i178.do.body.i.i173_crit_edge, %if.end.i169
  %count.0.i.i170 = phi i32 [ 20, %if.end.i169 ], [ %dec.i.i176, %do.cond.i.i178.do.body.i.i173_crit_edge ]
  %call.i.i171 = call fastcc i32 @f81534_get_register(ptr noundef %serial, i16 noundef zeroext 4099, ptr noundef nonnull %tmp.i.i166) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i171)
  %tobool.not.i.i172 = icmp eq i32 %call.i.i171, 0
  br i1 %tobool.not.i.i172, label %if.end.i.i175, label %do.body.i.i173.f81534_get_spi_register.exit.thread214_crit_edge

do.body.i.i173.f81534_get_spi_register.exit.thread214_crit_edge: ; preds = %do.body.i.i173
  call void @__sanitizer_cov_trace_pc() #11
  br label %f81534_get_spi_register.exit.thread214

if.end.i.i175:                                    ; preds = %do.body.i.i173
  %38 = ptrtoint ptr %tmp.i.i166 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %tmp.i.i166, align 1
  %40 = and i8 %39, 7
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %40)
  %.not.i.i174 = icmp eq i8 %40, 4
  br i1 %.not.i.i174, label %f81534_get_spi_register.exit, label %do.cond.i.i178

do.cond.i.i178:                                   ; preds = %if.end.i.i175
  %dec.i.i176 = add nsw i32 %count.0.i.i170, -1
  %tobool9.not.i.i177 = icmp eq i32 %dec.i.i176, 0
  br i1 %tobool9.not.i.i177, label %do.end14.i.i181, label %do.cond.i.i178.do.body.i.i173_crit_edge

do.cond.i.i178.do.body.i.i173_crit_edge:          ; preds = %do.cond.i.i178
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i.i173

do.end14.i.i181:                                  ; preds = %do.cond.i.i178
  call void @__sanitizer_cov_trace_pc() #11
  %interface.i.i179 = getelementptr inbounds %struct.usb_serial, ptr %serial, i32 0, i32 2
  %41 = ptrtoint ptr %interface.i.i179 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %interface.i.i179, align 4
  %dev.i.i180 = getelementptr inbounds %struct.usb_interface, ptr %42, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i180, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.28) #12
  br label %f81534_get_spi_register.exit.thread214

f81534_get_spi_register.exit.thread214:           ; preds = %do.end14.i.i181, %do.body.i.i173.f81534_get_spi_register.exit.thread214_crit_edge
  %retval.0.i.i184.ph = phi i32 [ -5, %do.end14.i.i181 ], [ %call.i.i171, %do.body.i.i173.f81534_get_spi_register.exit.thread214_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i.i166) #9
  br label %cleanup

f81534_get_spi_register.exit:                     ; preds = %if.end.i.i175
  %43 = and i8 %39, -5
  %call19.i.i182 = tail call fastcc i32 @f81534_set_register(ptr noundef %serial, i16 noundef zeroext 4099, i8 noundef zeroext %43) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i.i166) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i.i182)
  %tobool33.not = icmp eq i32 %call19.i.i182, 0
  br i1 %tobool33.not, label %if.end35, label %f81534_get_spi_register.exit.cleanup_crit_edge

f81534_get_spi_register.exit.cleanup_crit_edge:   ; preds = %f81534_get_spi_register.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end35:                                         ; preds = %f81534_get_spi_register.exit
  %add36 = add nuw nsw i32 %count.0242, %mul
  %44 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx, align 1
  %arrayidx38 = getelementptr i8, ptr %buf, i32 %add36
  %46 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %45, ptr %arrayidx38, align 1
  %exitcond.not = icmp eq i32 %add, %29
  br i1 %exitcond.not, label %if.end35.for.end_crit_edge, label %if.end35.for.body_crit_edge

if.end35.for.body_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

if.end35.for.end_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %if.end35.for.end_crit_edge, %do.body.for.end_crit_edge
  %sub = sub i32 %size.addr.0, %29
  %inc39 = add i32 %block.0, 1
  %tobool40.not = icmp eq i32 %sub, 0
  br i1 %tobool40.not, label %for.end.cleanup_crit_edge, label %for.end.do.body_crit_edge

for.end.do.body_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %for.end.cleanup_crit_edge, %f81534_get_spi_register.exit.cleanup_crit_edge, %f81534_get_spi_register.exit.thread214, %if.end31.cleanup_crit_edge, %f81534_set_spi_register.exit165.cleanup_crit_edge, %f81534_set_spi_register.exit165.thread209, %for.body.cleanup_crit_edge, %f81534_set_spi_register.exit143.cleanup_crit_edge, %f81534_set_spi_register.exit143.thread204, %if.end11.cleanup_crit_edge, %f81534_set_spi_register.exit121.cleanup_crit_edge, %f81534_set_spi_register.exit121.thread199, %if.end4.cleanup_crit_edge, %f81534_set_spi_register.exit99.cleanup_crit_edge, %f81534_set_spi_register.exit99.thread194, %if.end.cleanup_crit_edge, %f81534_set_spi_register.exit.cleanup_crit_edge, %f81534_set_spi_register.exit.thread189, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call19.i.i, %f81534_set_spi_register.exit.cleanup_crit_edge ], [ %call19.i.i94, %f81534_set_spi_register.exit99.cleanup_crit_edge ], [ %call19.i.i116, %f81534_set_spi_register.exit121.cleanup_crit_edge ], [ %call19.i.i138, %f81534_set_spi_register.exit143.cleanup_crit_edge ], [ %retval.0.i.i.ph, %f81534_set_spi_register.exit.thread189 ], [ %retval.0.i.i96.ph, %f81534_set_spi_register.exit99.thread194 ], [ %retval.0.i.i118.ph, %f81534_set_spi_register.exit121.thread199 ], [ %retval.0.i.i140.ph, %f81534_set_spi_register.exit143.thread204 ], [ %retval.0.i.i162.ph, %f81534_set_spi_register.exit165.thread209 ], [ %retval.0.i.i184.ph, %f81534_get_spi_register.exit.thread214 ], [ %call.i, %entry.cleanup_crit_edge ], [ %call.i79, %if.end.cleanup_crit_edge ], [ %call.i101, %if.end4.cleanup_crit_edge ], [ %call.i123, %if.end11.cleanup_crit_edge ], [ %call.i167, %if.end31.cleanup_crit_edge ], [ %call.i145, %for.body.cleanup_crit_edge ], [ %call19.i.i182, %f81534_get_spi_register.exit.cleanup_crit_edge ], [ %call19.i.i160, %f81534_set_spi_register.exit165.cleanup_crit_edge ], [ 0, %for.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %tmp_buf) #9
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @f81534_set_register(ptr nocapture noundef readonly %serial, i16 noundef zeroext %reg, i8 noundef zeroext %data) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %interface1 = getelementptr inbounds %struct.usb_serial, ptr %serial, i32 0, i32 2
  %0 = ptrtoint ptr %interface1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %interface1, align 4
  %2 = ptrtoint ptr %serial to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %serial, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3264, i32 noundef 1) #13
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %call7.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %data, ptr %call7.i, align 8
  br label %while.body

while.cond:                                       ; preds = %while.body
  %dec = add nsw i32 %count.031, -1
  %tobool3.not = icmp eq i32 %dec, 0
  br i1 %tobool3.not, label %while.end, label %while.cond.while.body_crit_edge

while.cond.while.body_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.body:                                       ; preds = %while.cond.while.body_crit_edge, %if.end
  %count.031 = phi i32 [ 10, %if.end ], [ %dec, %while.cond.while.body_crit_edge ]
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %3, align 8
  %shl.i = shl i32 %7, 8
  %or = or i32 %shl.i, -2147483648
  %call5 = tail call i32 @usb_control_msg(ptr noundef %3, i32 noundef %or, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext %reg, i16 noundef zeroext 0, ptr noundef nonnull %call7.i, i16 noundef zeroext 1, i32 noundef 2000) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call5)
  %cmp = icmp eq i32 %call5, 1
  br i1 %cmp, label %while.body.if.end12_crit_edge, label %while.cond

while.body.if.end12_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

while.end:                                        ; preds = %while.cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp8 = icmp slt i32 %call5, 0
  br i1 %cmp8, label %do.end, label %while.end.if.end12_crit_edge

while.end.if.end12_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

do.end:                                           ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  %dev10 = getelementptr inbounds %struct.usb_interface, ptr %1, i32 0, i32 7
  %conv = zext i16 %reg to i32
  %conv11 = zext i8 %data to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev10, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.26, i32 noundef %conv, i32 noundef %conv11, i32 noundef %call5) #12
  br label %if.end12

if.end12:                                         ; preds = %do.end, %while.end.if.end12_crit_edge, %while.body.if.end12_crit_edge
  %status.129 = phi i32 [ %call5, %do.end ], [ %call5, %while.end.if.end12_crit_edge ], [ 0, %while.body.if.end12_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %status.129, %if.end12 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @f81534_get_register(ptr nocapture noundef readonly %serial, i16 noundef zeroext %reg, ptr nocapture noundef writeonly %data) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %interface1 = getelementptr inbounds %struct.usb_serial, ptr %serial, i32 0, i32 2
  %0 = ptrtoint ptr %interface1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %interface1, align 4
  %2 = ptrtoint ptr %serial to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %serial, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3264, i32 noundef 1) #13
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

while.body:                                       ; preds = %if.else.while.body_crit_edge, %entry.while.body_crit_edge
  %dec35 = phi i32 [ %dec, %if.else.while.body_crit_edge ], [ 9, %entry.while.body_crit_edge ]
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %3, align 8
  %shl.i = shl i32 %6, 8
  %or5 = or i32 %shl.i, -2147483520
  %call6 = tail call i32 @usb_control_msg(ptr noundef %3, i32 noundef %or5, i8 noundef zeroext -96, i8 noundef zeroext -64, i16 noundef zeroext %reg, i16 noundef zeroext 0, ptr noundef nonnull %call7.i, i16 noundef zeroext 1, i32 noundef 2000) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp = icmp sgt i32 %call6, 0
  br i1 %cmp, label %if.end15, label %if.else

if.else:                                          ; preds = %while.body
  %dec = add nsw i32 %dec35, -1
  %tobool3.not = icmp eq i32 %dec35, 0
  br i1 %tobool3.not, label %do.end, label %if.else.while.body_crit_edge

if.else.while.body_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

do.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp8.le = icmp eq i32 %call6, 0
  %spec.store.select.le = select i1 %cmp8.le, i32 -5, i32 %call6
  %dev14 = getelementptr inbounds %struct.usb_interface, ptr %1, i32 0, i32 7
  %conv = zext i16 %reg to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev14, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.30, i32 noundef %conv, i32 noundef %spec.store.select.le) #12
  br label %end

if.end15:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %call7.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %call7.i, align 8
  %9 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %data, align 1
  br label %end

end:                                              ; preds = %if.end15, %do.end
  %status.132 = phi i32 [ 0, %if.end15 ], [ %spec.store.select.le, %do.end ]
  tail call void @kfree(ptr noundef nonnull %call7.i) #9
  br label %cleanup

cleanup:                                          ; preds = %end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %status.132, %end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @f81534_lsr_worker(ptr nocapture noundef readonly %work) #2 align 64 {
entry:
  %tmp = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp) #9
  %port2 = getelementptr i8, ptr %work, i32 44
  %0 = ptrtoint ptr %port2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port2, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32, i32 8
  %2 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i.i, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 8
  %phy_num.i = getelementptr inbounds %struct.f81534_port_private, ptr %3, i32 0, i32 11
  %6 = ptrtoint ptr %phy_num.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %phy_num.i, align 4
  %conv1.i = zext i8 %7 to i16
  %mul.i = shl nuw nsw i16 %conv1.i, 4
  %add.i = add nuw nsw i16 %mul.i, 4613
  %call3.i = call fastcc i32 @f81534_get_register(ptr noundef %5, i16 noundef zeroext %add.i, ptr noundef nonnull %tmp) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not = icmp eq i32 %call3.i, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.43, i32 noundef %call3.i) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @f81534_set_port_output_pin(ptr noundef %port) unnamed_addr #2 align 64 {
entry:
  %tmp.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port, align 8
  %private.i = getelementptr inbounds %struct.usb_serial, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %phy_num = getelementptr inbounds %struct.f81534_port_private, ptr %5, i32 0, i32 11
  %6 = ptrtoint ptr %phy_num to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %phy_num, align 4
  %add = add i8 %7, 4
  %idxprom = zext i8 %add to i32
  %arrayidx = getelementptr [12 x i8], ptr %3, i32 0, i32 %idxprom
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %9)
  %cmp = icmp ugt i8 %9, 6
  br i1 %cmp, label %if.then, label %entry.if.end17_crit_edge

entry.if.end17_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %add8 = add i8 %7, 8
  %idxprom11 = zext i8 %add8 to i32
  %arrayidx12 = getelementptr [12 x i8], ptr %3, i32 0, i32 %idxprom11
  %10 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx12, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %11)
  %cmp14 = icmp ugt i8 %11, 6
  %spec.store.select = select i1 %cmp14, i8 1, i8 %11
  br label %if.end17

if.end17:                                         ; preds = %if.then, %entry.if.end17_crit_edge
  %value.0 = phi i8 [ %spec.store.select, %if.then ], [ %9, %entry.if.end17_crit_edge ]
  %idxprom19 = zext i8 %7 to i32
  %arrayidx20 = getelementptr [4 x %struct.f81534_port_out_pin], ptr @f81534_port_out_pins, i32 0, i32 %idxprom19
  %conv26 = zext i8 %value.0 to i32
  %12 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %arrayidx20, align 2
  %reg_mask = getelementptr [3 x %struct.f81534_pin_data], ptr %arrayidx20, i32 0, i32 0, i32 1
  %14 = ptrtoint ptr %reg_mask to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %reg_mask, align 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i) #9
  %16 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 -1, ptr %tmp.i, align 1, !annotation !225
  %call.i = call fastcc i32 @f81534_get_register(ptr noundef %1, i16 noundef zeroext %13, ptr noundef nonnull %tmp.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %f81534_set_mask_register.exit, label %if.end17.f81534_set_mask_register.exit.thread_crit_edge

if.end17.f81534_set_mask_register.exit.thread_crit_edge: ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %f81534_set_mask_register.exit.thread

for.cond:                                         ; preds = %f81534_set_mask_register.exit
  %arrayidx23.1 = getelementptr [3 x %struct.f81534_pin_data], ptr %arrayidx20, i32 0, i32 1
  %17 = ptrtoint ptr %arrayidx23.1 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %arrayidx23.1, align 2
  %reg_mask.1 = getelementptr [3 x %struct.f81534_pin_data], ptr %arrayidx20, i32 0, i32 1, i32 1
  %19 = ptrtoint ptr %reg_mask.1 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %reg_mask.1, align 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i) #9
  %21 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 -1, ptr %tmp.i, align 1, !annotation !225
  %call.i.1 = call fastcc i32 @f81534_get_register(ptr noundef %1, i16 noundef zeroext %18, ptr noundef nonnull %tmp.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.1)
  %tobool.not.i.1 = icmp eq i32 %call.i.1, 0
  br i1 %tobool.not.i.1, label %f81534_set_mask_register.exit.1, label %for.cond.f81534_set_mask_register.exit.thread_crit_edge

for.cond.f81534_set_mask_register.exit.thread_crit_edge: ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %f81534_set_mask_register.exit.thread

f81534_set_mask_register.exit.1:                  ; preds = %for.cond
  %and.1 = and i32 %conv26, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1)
  %tobool.not.1 = icmp eq i32 %and.1, 0
  %spec.select.1 = select i1 %tobool.not.1, i8 0, i8 %20
  %neg.i.1 = xor i8 %20, -1
  %22 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %tmp.i, align 1
  %and.i.1 = and i8 %23, %neg.i.1
  %or15.i.1 = or i8 %and.i.1, %spec.select.1
  %call8.i.1 = tail call fastcc i32 @f81534_set_register(ptr noundef %1, i16 noundef zeroext %18, i8 noundef zeroext %or15.i.1) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i.1)
  %tobool33.not.1 = icmp eq i32 %call8.i.1, 0
  br i1 %tobool33.not.1, label %for.cond.1, label %f81534_set_mask_register.exit.1.cleanup_crit_edge

f81534_set_mask_register.exit.1.cleanup_crit_edge: ; preds = %f81534_set_mask_register.exit.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.1:                                       ; preds = %f81534_set_mask_register.exit.1
  %arrayidx23.2 = getelementptr [3 x %struct.f81534_pin_data], ptr %arrayidx20, i32 0, i32 2
  %24 = ptrtoint ptr %arrayidx23.2 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %arrayidx23.2, align 2
  %reg_mask.2 = getelementptr [3 x %struct.f81534_pin_data], ptr %arrayidx20, i32 0, i32 2, i32 1
  %26 = ptrtoint ptr %reg_mask.2 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %reg_mask.2, align 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i) #9
  %28 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 -1, ptr %tmp.i, align 1, !annotation !225
  %call.i.2 = call fastcc i32 @f81534_get_register(ptr noundef %1, i16 noundef zeroext %25, ptr noundef nonnull %tmp.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.2)
  %tobool.not.i.2 = icmp eq i32 %call.i.2, 0
  br i1 %tobool.not.i.2, label %f81534_set_mask_register.exit.2, label %for.cond.1.f81534_set_mask_register.exit.thread_crit_edge

for.cond.1.f81534_set_mask_register.exit.thread_crit_edge: ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %f81534_set_mask_register.exit.thread

f81534_set_mask_register.exit.2:                  ; preds = %for.cond.1
  %and.2 = and i32 %conv26, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2)
  %tobool.not.2 = icmp eq i32 %and.2, 0
  %spec.select.2 = select i1 %tobool.not.2, i8 0, i8 %27
  %neg.i.2 = xor i8 %27, -1
  %29 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %tmp.i, align 1
  %and.i.2 = and i8 %30, %neg.i.2
  %or15.i.2 = or i8 %and.i.2, %spec.select.2
  %call8.i.2 = tail call fastcc i32 @f81534_set_register(ptr noundef %1, i16 noundef zeroext %25, i8 noundef zeroext %or15.i.2) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i.2)
  %tobool33.not.2 = icmp eq i32 %call8.i.2, 0
  br i1 %tobool33.not.2, label %for.cond.2, label %f81534_set_mask_register.exit.2.cleanup_crit_edge

f81534_set_mask_register.exit.2.cleanup_crit_edge: ; preds = %f81534_set_mask_register.exit.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.2:                                       ; preds = %f81534_set_mask_register.exit.2
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @f81534_set_port_output_pin.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@f81534_set_port_output_pin, %if.then40)) #9
          to label %cleanup [label %if.then40], !srcloc !226

f81534_set_mask_register.exit.thread:             ; preds = %for.cond.1.f81534_set_mask_register.exit.thread_crit_edge, %for.cond.f81534_set_mask_register.exit.thread_crit_edge, %if.end17.f81534_set_mask_register.exit.thread_crit_edge
  %call.i.lcssa = phi i32 [ %call.i, %if.end17.f81534_set_mask_register.exit.thread_crit_edge ], [ %call.i.1, %for.cond.f81534_set_mask_register.exit.thread_crit_edge ], [ %call.i.2, %for.cond.1.f81534_set_mask_register.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i) #9
  br label %cleanup

f81534_set_mask_register.exit:                    ; preds = %if.end17
  %and = and i32 %conv26, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %spec.select = select i1 %tobool.not, i8 0, i8 %15
  %neg.i = xor i8 %15, -1
  %31 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %tmp.i, align 1
  %and.i = and i8 %32, %neg.i
  %or15.i = or i8 %and.i, %spec.select
  %call8.i = tail call fastcc i32 @f81534_set_register(ptr noundef %1, i16 noundef zeroext %13, i8 noundef zeroext %or15.i) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool33.not = icmp eq i32 %call8.i, 0
  br i1 %tobool33.not, label %for.cond, label %f81534_set_mask_register.exit.cleanup_crit_edge

f81534_set_mask_register.exit.cleanup_crit_edge:  ; preds = %f81534_set_mask_register.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then40:                                        ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @f81534_set_port_output_pin.__UNIQUE_ID_ddebug249, ptr noundef %dev, ptr noundef nonnull @.str.46, i32 noundef %conv26) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then40, %f81534_set_mask_register.exit.cleanup_crit_edge, %f81534_set_mask_register.exit.thread, %for.cond.2, %f81534_set_mask_register.exit.2.cleanup_crit_edge, %f81534_set_mask_register.exit.1.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then40 ], [ %call.i.lcssa, %f81534_set_mask_register.exit.thread ], [ 0, %for.cond.2 ], [ %call8.i, %f81534_set_mask_register.exit.cleanup_crit_edge ], [ %call8.i.1, %f81534_set_mask_register.exit.1.cleanup_crit_edge ], [ %call8.i.2, %f81534_set_mask_register.exit.2.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_work(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @f81534_submit_writer(ptr noundef %port, i32 noundef %mem_flags) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %lock = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 2
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %write_fifo = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 22
  %2 = ptrtoint ptr %write_fifo to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %write_fifo, align 4
  %out = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 22, i32 0, i32 0, i32 1
  %4 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %out, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp7 = icmp eq i32 %3, %5
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #9
  br i1 %cmp7, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %tx_empty = getelementptr inbounds %struct.f81534_port_private, ptr %1, i32 0, i32 4
  %call11 = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %tx_empty) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end.cleanup_crit_edge, label %if.end14

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end14:                                         ; preds = %if.end
  %write_urbs = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 24
  %6 = ptrtoint ptr %write_urbs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %write_urbs, align 8
  %bulk_out_buffers = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 23
  %8 = ptrtoint ptr %bulk_out_buffers to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bulk_out_buffers, align 8
  %10 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %driver_data.i.i, align 4
  %phy_num1.i = getelementptr inbounds %struct.f81534_port_private, ptr %11, i32 0, i32 11
  %12 = ptrtoint ptr %phy_num1.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %phy_num1.i, align 4
  %14 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %9, align 1
  %arrayidx5.i = getelementptr i8, ptr %9, i32 1
  %15 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 2, ptr %arrayidx5.i, align 1
  %arrayidx8.i = getelementptr i8, ptr %9, i32 2
  %16 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %arrayidx8.i, align 1
  %arrayidx11.i = getelementptr i8, ptr %9, i32 3
  %17 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %arrayidx11.i, align 1
  %arrayidx.1.i = getelementptr i8, ptr %9, i32 128
  %18 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %arrayidx.1.i, align 1
  %arrayidx5.1.i = getelementptr i8, ptr %9, i32 129
  %19 = ptrtoint ptr %arrayidx5.1.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 2, ptr %arrayidx5.1.i, align 1
  %arrayidx8.1.i = getelementptr i8, ptr %9, i32 130
  %20 = ptrtoint ptr %arrayidx8.1.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %arrayidx8.1.i, align 1
  %arrayidx11.1.i = getelementptr i8, ptr %9, i32 131
  %21 = ptrtoint ptr %arrayidx11.1.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %arrayidx11.1.i, align 1
  %arrayidx.2.i = getelementptr i8, ptr %9, i32 256
  %22 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 2, ptr %arrayidx.2.i, align 1
  %arrayidx5.2.i = getelementptr i8, ptr %9, i32 257
  %23 = ptrtoint ptr %arrayidx5.2.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 2, ptr %arrayidx5.2.i, align 1
  %arrayidx8.2.i = getelementptr i8, ptr %9, i32 258
  %24 = ptrtoint ptr %arrayidx8.2.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %arrayidx8.2.i, align 1
  %arrayidx11.2.i = getelementptr i8, ptr %9, i32 259
  %25 = ptrtoint ptr %arrayidx11.2.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %arrayidx11.2.i, align 1
  %arrayidx.3.i = getelementptr i8, ptr %9, i32 384
  %26 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 3, ptr %arrayidx.3.i, align 1
  %arrayidx5.3.i = getelementptr i8, ptr %9, i32 385
  %27 = ptrtoint ptr %arrayidx5.3.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 2, ptr %arrayidx5.3.i, align 1
  %arrayidx8.3.i = getelementptr i8, ptr %9, i32 386
  %28 = ptrtoint ptr %arrayidx8.3.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %arrayidx8.3.i, align 1
  %arrayidx11.3.i = getelementptr i8, ptr %9, i32 387
  %29 = ptrtoint ptr %arrayidx11.3.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %arrayidx11.3.i, align 1
  %conv.i = zext i8 %13 to i32
  %call16.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %mul19.i = shl nuw nsw i32 %conv.i, 7
  %add20.i = or i32 %mul19.i, 4
  %arrayidx21.i = getelementptr i8, ptr %9, i32 %add20.i
  %call23.i = tail call i32 @__kfifo_out(ptr noundef %write_fifo, ptr noundef %arrayidx21.i, i32 noundef 124) #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call16.i) #9
  %conv28.i = trunc i32 %call23.i to i8
  %add30.i = or i32 %mul19.i, 2
  %arrayidx31.i = getelementptr i8, ptr %9, i32 %add30.i
  %30 = ptrtoint ptr %arrayidx31.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv28.i, ptr %arrayidx31.i, align 1
  %transfer_buffer_length = getelementptr inbounds %struct.urb, ptr %7, i32 0, i32 19
  %31 = ptrtoint ptr %transfer_buffer_length to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 512, ptr %transfer_buffer_length, align 4
  %call16 = tail call i32 @usb_submit_urb(ptr noundef %7, i32 noundef %mem_flags) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end23, label %if.then18

if.then18:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_set_bit(i32 noundef 0, ptr noundef %tx_empty) #9
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.50, i32 noundef %call16) #12
  br label %cleanup

if.end23:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @usb_serial_port_softint(ptr noundef %port) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %if.then18, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call16, %if.then18 ], [ 0, %if.end23 ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_serial_generic_submit_read_urbs(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_serial_port_softint(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__kfifo_out(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_kill_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__kfifo_in(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @f81534_update_mctrl(ptr noundef %port, i32 noundef %set, i32 noundef %clear) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %or = or i32 %clear, %set
  %and = and i32 %or, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @mutex_lock_nested(ptr noundef %1, i32 noundef 0) #9
  %neg = xor i32 %set, -1
  %and1 = and i32 %neg, %clear
  %shadow_mcr = getelementptr inbounds %struct.f81534_port_private, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %shadow_mcr to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %shadow_mcr, align 4
  %4 = or i8 %3, 8
  %and4 = and i32 %and1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool.not = icmp eq i32 %and4, 0
  %5 = and i8 %4, -2
  %spec.select = select i1 %tobool.not, i8 %4, i8 %5
  %and10 = and i32 %and1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  %6 = and i8 %spec.select, -3
  %tmp.1 = select i1 %tobool11.not, i8 %spec.select, i8 %6
  %7 = trunc i32 %set to i8
  %8 = lshr i8 %7, 1
  %9 = and i8 %8, 3
  %10 = or i8 %9, %tmp.1
  %11 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %driver_data.i.i, align 4
  %13 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %port, align 8
  %phy_num.i = getelementptr inbounds %struct.f81534_port_private, ptr %12, i32 0, i32 11
  %15 = ptrtoint ptr %phy_num.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %phy_num.i, align 4
  %conv1.i = zext i8 %16 to i16
  %mul.i = shl nuw nsw i16 %conv1.i, 4
  %add.i = add nuw nsw i16 %mul.i, 4612
  %call3.i = tail call fastcc i32 @f81534_set_register(ptr noundef %14, i16 noundef zeroext %add.i, i8 noundef zeroext %10) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp32 = icmp slt i32 %call3.i, 0
  br i1 %cmp32, label %do.end, label %if.end36

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.58) #12
  br label %cleanup.sink.split

if.end36:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %17 = ptrtoint ptr %shadow_mcr to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %10, ptr %shadow_mcr, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end36, %do.end
  %retval.0.ph = phi i32 [ 0, %if.end36 ], [ %call3.i, %do.end ]
  tail call void @mutex_unlock(ptr noundef %1) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_termios_baud_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_encode_baud_rate(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @f81534_msr_changed(ptr noundef %port, i8 noundef zeroext %msr) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %conv = zext i8 %msr to i32
  %and = and i32 %conv, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body1

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body1:                                         ; preds = %entry
  %msr_lock = getelementptr inbounds %struct.f81534_port_private, ptr %1, i32 0, i32 5
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %msr_lock) #9
  %shadow_msr = getelementptr inbounds %struct.f81534_port_private, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %shadow_msr to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %shadow_msr, align 2
  store i8 %msr, ptr %shadow_msr, align 2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %msr_lock, i32 noundef %call4) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @f81534_msr_changed.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@f81534_msr_changed, %if.then15)) #9
          to label %do.end20 [label %if.then15], !srcloc !226

if.then15:                                        ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  %conv16 = zext i8 %3 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @f81534_msr_changed.__UNIQUE_ID_ddebug245, ptr noundef %dev, ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.92, i32 noundef %conv16, i32 noundef %conv) #9
  br label %do.end20

do.end20:                                         ; preds = %if.then15, %do.body1
  %and22 = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %do.end20.if.end25_crit_edge, label %if.then24

do.end20.if.end25_crit_edge:                      ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

if.then24:                                        ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #11
  %icount = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 27
  %4 = ptrtoint ptr %icount to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %icount, align 8
  %inc = add i32 %5, 1
  store i32 %inc, ptr %icount, align 8
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %do.end20.if.end25_crit_edge
  %and27 = and i32 %conv, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %if.end25.if.end32_crit_edge, label %if.then29

if.end25.if.end32_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32

if.then29:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  %dsr = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 27, i32 1
  %6 = ptrtoint ptr %dsr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dsr, align 4
  %inc31 = add i32 %7, 1
  store i32 %inc31, ptr %dsr, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.then29, %if.end25.if.end32_crit_edge
  %and34 = and i32 %conv, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  br i1 %tobool35.not, label %if.end32.if.end39_crit_edge, label %if.then36

if.end32.if.end39_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end39

if.then36:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  %dcd = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 27, i32 3
  %8 = ptrtoint ptr %dcd to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dcd, align 4
  %inc38 = add i32 %9, 1
  store i32 %inc38, ptr %dcd, align 4
  br label %if.end39

if.end39:                                         ; preds = %if.then36, %if.end32.if.end39_crit_edge
  %and41 = and i32 %conv, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool42.not = icmp eq i32 %and41, 0
  br i1 %tobool42.not, label %if.end39.if.end46_crit_edge, label %if.then43

if.end39.if.end46_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end46

if.then43:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  %rng = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 27, i32 2
  %10 = ptrtoint ptr %rng to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rng, align 8
  %inc45 = add i32 %11, 1
  store i32 %inc45, ptr %rng, align 8
  br label %if.end46

if.end46:                                         ; preds = %if.then43, %if.end39.if.end46_crit_edge
  %port47 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 1
  %delta_msr_wait = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 1, i32 9
  tail call void @__wake_up(ptr noundef %delta_msr_wait, i32 noundef 1, i32 noundef 1, ptr noundef null) #9
  br i1 %tobool35.not, label %if.end46.cleanup_crit_edge, label %do.body53

if.end46.cleanup_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body53:                                        ; preds = %if.end46
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @f81534_msr_changed.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@f81534_msr_changed, %if.then65)) #9
          to label %do.end72 [label %if.then65], !srcloc !226

if.then65:                                        ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #11
  %dev66 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  %phy_num = getelementptr inbounds %struct.f81534_port_private, ptr %1, i32 0, i32 11
  %12 = ptrtoint ptr %phy_num to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %phy_num, align 4
  %conv67 = zext i8 %13 to i32
  %conv68 = zext i8 %3 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @f81534_msr_changed.__UNIQUE_ID_ddebug246, ptr noundef %dev66, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.92, i32 noundef %conv67, i32 noundef %conv68, i32 noundef %conv) #9
  br label %do.end72

do.end72:                                         ; preds = %if.then65, %do.body53
  %call74 = tail call ptr @tty_port_tty_get(ptr noundef %port47) #9
  %tobool75.not = icmp eq ptr %call74, null
  br i1 %tobool75.not, label %do.end72.cleanup_crit_edge, label %if.end77

do.end72.cleanup_crit_edge:                       ; preds = %do.end72
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end77:                                         ; preds = %do.end72
  call void @__sanitizer_cov_trace_pc() #11
  %and79 = and i32 %conv, 128
  tail call void @usb_serial_handle_dcd_change(ptr noundef %port, ptr noundef nonnull %call74, i32 noundef %and79) #9
  tail call void @tty_kref_put(ptr noundef nonnull %call74) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end77, %do.end72.cleanup_crit_edge, %if.end46.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_serial_handle_break(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_serial_handle_sysrq_char(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_flip_buffer_push(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tty_port_tty_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_serial_handle_dcd_change(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_kref_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__tty_insert_flip_char(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 108)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 108)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !13, !15, !17, !19, !21, !23, !24, !25, !26, !27, !28, !29, !31, !32, !34, !35, !36, !38, !39, !40, !42, !43, !45, !46, !47, !49, !50, !52, !53, !54, !55, !57, !58, !60, !61, !62, !64, !65, !66, !67, !69, !70, !71, !72, !74, !75, !76, !77, !79, !80, !82, !83, !85, !86, !88, !89, !91, !92, !93, !95, !96, !98, !99, !101, !102, !104, !105, !106, !107, !109, !110, !111, !113, !115, !116, !117, !118, !120, !121, !122, !123, !125, !126, !127, !128, !130, !131, !132, !134, !135, !136, !138, !139, !140, !142, !143, !144, !145, !147, !148, !149, !150, !152, !153, !154, !156, !157, !158, !160, !161, !162, !164, !165, !166, !168, !169, !170, !172, !173, !175, !177, !179, !180, !181, !182, !184, !185, !186, !188, !189, !191, !192, !194, !195, !196, !197, !199, !200, !201, !203, !204, !205, !207, !208, !209, !211, !212, !213, !215}
!llvm.module.flags = !{!216, !217, !218, !219, !220, !221, !222, !223}
!llvm.ident = !{!224}

!0 = !{ptr @__initcall__kmod_f81534__254_1580_usb_serial_module_init6, !1, !"__initcall__kmod_f81534__254_1580_usb_serial_module_init6", i1 false, i1 false}
!1 = !{!"../drivers/usb/serial/f81534.c", i32 1580, i32 1}
!2 = !{ptr @__exitcall_usb_serial_module_exit, !1, !"__exitcall_usb_serial_module_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description255, !4, !"__UNIQUE_ID_description255", i1 false, i1 false}
!4 = !{!"../drivers/usb/serial/f81534.c", i32 1583, i32 1}
!5 = !{ptr @__UNIQUE_ID_author256, !6, !"__UNIQUE_ID_author256", i1 false, i1 false}
!6 = !{!"../drivers/usb/serial/f81534.c", i32 1584, i32 1}
!7 = !{ptr @__UNIQUE_ID_author257, !8, !"__UNIQUE_ID_author257", i1 false, i1 false}
!8 = !{!"../drivers/usb/serial/f81534.c", i32 1585, i32 1}
!9 = !{ptr @__UNIQUE_ID_file258, !10, !"__UNIQUE_ID_file258", i1 false, i1 false}
!10 = !{!"../drivers/usb/serial/f81534.c", i32 1586, i32 1}
!11 = !{ptr @__UNIQUE_ID_license259, !10, !"__UNIQUE_ID_license259", i1 false, i1 false}
!12 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @f81534_id_table, !14, !"f81534_id_table", i1 false, i1 false}
!14 = !{!"../drivers/usb/serial/f81534.c", i32 141, i32 35}
!15 = !{ptr @serial_drivers, !16, !"serial_drivers", i1 false, i1 false}
!16 = !{!"../drivers/usb/serial/f81534.c", i32 1576, i32 40}
!17 = !{ptr @.str.1, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/usb/serial/f81534.c", i32 1554, i32 18}
!19 = !{ptr @f81534_device, !20, !"f81534_device", i1 false, i1 false}
!20 = !{!"../drivers/usb/serial/f81534.c", i32 1549, i32 33}
!21 = !{ptr @.str.2, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/usb/serial/f81534.c", i32 847, i32 3}
!23 = !{ptr @.str.3, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @f81534_calc_num_ports._entry, !22, !"_entry", i1 false, i1 false}
!28 = !{ptr @f81534_calc_num_ports._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @f81534_calc_num_ports.__key, !30, !"__key", i1 false, i1 false}
!30 = !{!"../drivers/usb/serial/f81534.c", i32 857, i32 2}
!31 = !{ptr @.str.7, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.9, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/usb/serial/f81534.c", i32 862, i32 3}
!34 = !{ptr @f81534_calc_num_ports._entry.8, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @f81534_calc_num_ports._entry_ptr.10, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.12, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/usb/serial/f81534.c", i32 878, i32 4}
!38 = !{ptr @f81534_calc_num_ports._entry.11, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @f81534_calc_num_ports._entry_ptr.13, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.14, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/usb/serial/f81534.c", i32 884, i32 3}
!42 = !{ptr @f81534_calc_num_ports.__UNIQUE_ID_ddebug240, !41, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!43 = !{ptr @.str.16, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/usb/serial/f81534.c", i32 894, i32 4}
!45 = !{ptr @f81534_calc_num_ports._entry.15, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @f81534_calc_num_ports._entry_ptr.17, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.18, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/usb/serial/f81534.c", i32 900, i32 3}
!49 = !{ptr @f81534_calc_num_ports.__UNIQUE_ID_ddebug241, !48, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!50 = !{ptr @.str.20, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/usb/serial/f81534.c", i32 916, i32 3}
!52 = !{ptr @.str.21, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @f81534_calc_num_ports._entry.19, !51, !"_entry", i1 false, i1 false}
!54 = !{ptr @f81534_calc_num_ports._entry_ptr.22, !51, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.23, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/usb/serial/f81534.c", i32 927, i32 3}
!57 = !{ptr @f81534_calc_num_ports.__UNIQUE_ID_ddebug242, !56, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!58 = !{ptr @.str.24, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/usb/serial/f81534.c", i32 737, i32 3}
!60 = !{ptr @f81534_find_config_idx._entry, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @f81534_find_config_idx._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.25, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/usb/serial/f81534.c", i32 245, i32 3}
!64 = !{ptr @.str.26, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @f81534_set_register._entry, !63, !"_entry", i1 false, i1 false}
!66 = !{ptr @f81534_set_register._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.27, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/usb/serial/f81534.c", i32 369, i32 3}
!69 = !{ptr @.str.28, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @f81534_wait_for_spi_idle._entry, !68, !"_entry", i1 false, i1 false}
!71 = !{ptr @f81534_wait_for_spi_idle._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.29, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/usb/serial/f81534.c", i32 284, i32 3}
!74 = !{ptr @.str.30, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @f81534_get_register._entry, !73, !"_entry", i1 false, i1 false}
!76 = !{ptr @f81534_get_register._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @f81534_port_probe.__key, !78, !"__key", i1 false, i1 false}
!78 = !{!"../drivers/usb/serial/f81534.c", i32 1380, i32 2}
!79 = !{ptr @.str.31, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @f81534_port_probe.__key.32, !81, !"__key", i1 false, i1 false}
!81 = !{!"../drivers/usb/serial/f81534.c", i32 1381, i32 2}
!82 = !{ptr @.str.33, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @f81534_port_probe.__key.34, !84, !"__key", i1 false, i1 false}
!84 = !{!"../drivers/usb/serial/f81534.c", i32 1382, i32 2}
!85 = !{ptr @.str.35, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @f81534_port_probe.__key.36, !87, !"__key", i1 false, i1 false}
!87 = !{!"../drivers/usb/serial/f81534.c", i32 1383, i32 2}
!88 = !{ptr @.str.37, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @.str.38, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/usb/serial/f81534.c", i32 1393, i32 2}
!91 = !{ptr @.str.39, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @f81534_port_probe.__UNIQUE_ID_ddebug250, !90, !"__UNIQUE_ID_ddebug250", i1 false, i1 false}
!93 = !{ptr @.str.40, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/usb/serial/f81534.c", i32 1412, i32 3}
!95 = !{ptr @f81534_port_probe.__UNIQUE_ID_ddebug251, !94, !"__UNIQUE_ID_ddebug251", i1 false, i1 false}
!96 = !{ptr @.str.41, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/usb/serial/f81534.c", i32 1416, i32 3}
!98 = !{ptr @f81534_port_probe.__UNIQUE_ID_ddebug252, !97, !"__UNIQUE_ID_ddebug252", i1 false, i1 false}
!99 = !{ptr @.str.42, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/usb/serial/f81534.c", i32 1421, i32 3}
!101 = !{ptr @f81534_port_probe.__UNIQUE_ID_ddebug253, !100, !"__UNIQUE_ID_ddebug253", i1 false, i1 false}
!102 = !{ptr @.str.43, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/usb/serial/f81534.c", i32 1318, i32 3}
!104 = !{ptr @.str.44, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @f81534_lsr_worker._entry, !103, !"_entry", i1 false, i1 false}
!106 = !{ptr @f81534_lsr_worker._entry_ptr, !103, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.45, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/usb/serial/f81534.c", i32 1359, i32 2}
!109 = !{ptr @.str.46, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @f81534_set_port_output_pin.__UNIQUE_ID_ddebug249, !108, !"__UNIQUE_ID_ddebug249", i1 false, i1 false}
!111 = !{ptr @f81534_port_out_pins, !112, !"f81534_port_out_pins", i1 false, i1 false}
!112 = !{!"../drivers/usb/serial/f81534.c", i32 182, i32 41}
!113 = !{ptr @.str.47, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/usb/serial/f81534.c", i32 1538, i32 4}
!115 = !{ptr @.str.48, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @f81534_resume._entry, !114, !"_entry", i1 false, i1 false}
!117 = !{ptr @f81534_resume._entry_ptr, !114, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.49, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/usb/serial/f81534.c", i32 528, i32 3}
!120 = !{ptr @.str.50, !119, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @f81534_submit_writer._entry, !119, !"_entry", i1 false, i1 false}
!122 = !{ptr @f81534_submit_writer._entry_ptr, !119, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.51, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/usb/serial/f81534.c", i32 1087, i32 3}
!125 = !{ptr @.str.52, !124, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @f81534_open._entry, !124, !"_entry", i1 false, i1 false}
!127 = !{ptr @f81534_open._entry_ptr, !124, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.53, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/usb/serial/f81534.c", i32 1492, i32 3}
!130 = !{ptr @f81534_write._entry, !129, !"_entry", i1 false, i1 false}
!131 = !{ptr @f81534_write._entry_ptr, !129, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.54, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/usb/serial/f81534.c", i32 998, i32 2}
!134 = !{ptr @.str.55, !133, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @f81534_set_termios.__UNIQUE_ID_ddebug244, !133, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!136 = !{ptr @.str.56, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/usb/serial/f81534.c", i32 1002, i32 3}
!138 = !{ptr @f81534_set_termios._entry, !137, !"_entry", i1 false, i1 false}
!139 = !{ptr @f81534_set_termios._entry_ptr, !137, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.57, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/usb/serial/f81534.c", i32 710, i32 3}
!142 = !{ptr @.str.58, !141, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @f81534_update_mctrl._entry, !141, !"_entry", i1 false, i1 false}
!144 = !{ptr @f81534_update_mctrl._entry_ptr, !141, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @.str.59, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/usb/serial/f81534.c", i32 589, i32 3}
!147 = !{ptr @.str.60, !146, !"<string literal>", i1 false, i1 false}
!148 = !{ptr @f81534_set_port_config._entry, !146, !"_entry", i1 false, i1 false}
!149 = !{ptr @f81534_set_port_config._entry_ptr, !146, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @.str.62, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/usb/serial/f81534.c", i32 600, i32 3}
!152 = !{ptr @f81534_set_port_config._entry.61, !151, !"_entry", i1 false, i1 false}
!153 = !{ptr @f81534_set_port_config._entry_ptr.63, !151, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @.str.65, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/usb/serial/f81534.c", i32 612, i32 3}
!156 = !{ptr @f81534_set_port_config._entry.64, !155, !"_entry", i1 false, i1 false}
!157 = !{ptr @f81534_set_port_config._entry_ptr.66, !155, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @.str.68, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/usb/serial/f81534.c", i32 624, i32 3}
!160 = !{ptr @f81534_set_port_config._entry.67, !159, !"_entry", i1 false, i1 false}
!161 = !{ptr @f81534_set_port_config._entry_ptr.69, !159, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @.str.71, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/usb/serial/f81534.c", i32 631, i32 3}
!164 = !{ptr @f81534_set_port_config._entry.70, !163, !"_entry", i1 false, i1 false}
!165 = !{ptr @f81534_set_port_config._entry_ptr.72, !163, !"_entry_ptr", i1 false, i1 false}
!166 = !{ptr @.str.74, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/usb/serial/f81534.c", i32 638, i32 3}
!168 = !{ptr @f81534_set_port_config._entry.73, !167, !"_entry", i1 false, i1 false}
!169 = !{ptr @f81534_set_port_config._entry_ptr.75, !167, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @f81534_set_port_config._entry.76, !171, !"_entry", i1 false, i1 false}
!171 = !{!"../drivers/usb/serial/f81534.c", i32 646, i32 3}
!172 = !{ptr @f81534_set_port_config._entry_ptr.77, !171, !"_entry_ptr", i1 false, i1 false}
!173 = !{ptr @baudrate_table, !174, !"baudrate_table", i1 false, i1 false}
!174 = !{!"../drivers/usb/serial/f81534.c", i32 189, i32 18}
!175 = !{ptr @clock_table, !176, !"clock_table", i1 false, i1 false}
!176 = !{!"../drivers/usb/serial/f81534.c", i32 190, i32 17}
!177 = !{ptr @.str.78, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/usb/serial/f81534.c", i32 673, i32 3}
!179 = !{ptr @.str.79, !178, !"<string literal>", i1 false, i1 false}
!180 = !{ptr @f81534_break_ctl._entry, !178, !"_entry", i1 false, i1 false}
!181 = !{ptr @f81534_break_ctl._entry_ptr, !178, !"_entry_ptr", i1 false, i1 false}
!182 = !{ptr @.str.80, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/usb/serial/f81534.c", i32 1292, i32 3}
!184 = !{ptr @.str.81, !183, !"<string literal>", i1 false, i1 false}
!185 = !{ptr @f81534_write_usb_callback.__UNIQUE_ID_ddebug247, !183, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!186 = !{ptr @f81534_write_usb_callback._entry, !187, !"_entry", i1 false, i1 false}
!187 = !{!"../drivers/usb/serial/f81534.c", i32 1296, i32 3}
!188 = !{ptr @f81534_write_usb_callback._entry_ptr, !187, !"_entry_ptr", i1 false, i1 false}
!189 = !{ptr @.str.82, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/usb/serial/f81534.c", i32 1300, i32 3}
!191 = !{ptr @f81534_write_usb_callback.__UNIQUE_ID_ddebug248, !190, !"__UNIQUE_ID_ddebug248", i1 false, i1 false}
!192 = !{ptr @.str.83, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/usb/serial/f81534.c", i32 1268, i32 4}
!194 = !{ptr @.str.84, !193, !"<string literal>", i1 false, i1 false}
!195 = !{ptr @f81534_process_read_urb._entry, !193, !"_entry", i1 false, i1 false}
!196 = !{ptr @f81534_process_read_urb._entry_ptr, !193, !"_entry_ptr", i1 false, i1 false}
!197 = !{ptr @.str.85, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/usb/serial/f81534.c", i32 1183, i32 4}
!199 = !{ptr @f81534_process_per_serial_block._entry, !198, !"_entry", i1 false, i1 false}
!200 = !{ptr @f81534_process_per_serial_block._entry_ptr, !198, !"_entry_ptr", i1 false, i1 false}
!201 = !{ptr @.str.87, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/usb/serial/f81534.c", i32 1193, i32 4}
!203 = !{ptr @f81534_process_per_serial_block._entry.86, !202, !"_entry", i1 false, i1 false}
!204 = !{ptr @f81534_process_per_serial_block._entry_ptr.88, !202, !"_entry_ptr", i1 false, i1 false}
!205 = !{ptr @.str.90, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/usb/serial/f81534.c", i32 1203, i32 3}
!207 = !{ptr @f81534_process_per_serial_block._entry.89, !206, !"_entry", i1 false, i1 false}
!208 = !{ptr @f81534_process_per_serial_block._entry_ptr.91, !206, !"_entry_ptr", i1 false, i1 false}
!209 = !{ptr @.str.92, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/usb/serial/f81534.c", i32 1027, i32 2}
!211 = !{ptr @.str.93, !210, !"<string literal>", i1 false, i1 false}
!212 = !{ptr @f81534_msr_changed.__UNIQUE_ID_ddebug245, !210, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!213 = !{ptr @.str.94, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/usb/serial/f81534.c", i32 1045, i32 2}
!215 = !{ptr @f81534_msr_changed.__UNIQUE_ID_ddebug246, !214, !"__UNIQUE_ID_ddebug246", i1 false, i1 false}
!216 = !{i32 1, !"wchar_size", i32 2}
!217 = !{i32 1, !"min_enum_size", i32 4}
!218 = !{i32 8, !"branch-target-enforcement", i32 0}
!219 = !{i32 8, !"sign-return-address", i32 0}
!220 = !{i32 8, !"sign-return-address-all", i32 0}
!221 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!222 = !{i32 7, !"uwtable", i32 1}
!223 = !{i32 7, !"frame-pointer", i32 2}
!224 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!225 = !{!"auto-init"}
!226 = !{i64 2148239859, i64 2148239864, i64 2148239877, i64 2148239921, i64 2148239955, i64 2148239976}
