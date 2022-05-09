; ModuleID = '/llk/IR_all_yes/drivers/usb/serial/whiteheat.c_pt.bc'
source_filename = "../drivers/usb/serial/whiteheat.c"
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
%struct.usb_serial = type { ptr, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, [16 x ptr], %struct.kref, %struct.mutex, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.whiteheat_command_private = type { %struct.mutex, i8, i8, %struct.wait_queue_head, [64 x i8] }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.whiteheat_simple = type { i8 }
%struct.whiteheat_purge = type { i8, i8 }
%struct.serial_struct = type { i32, i32, i32, i32, i32, i32, i32, i32, i16, i8, [1 x i8], i32, i16, i16, ptr, i16, i32, i32 }
%struct.whiteheat_set_rdb = type { i8, i8 }
%struct.tty_struct = type { i32, %struct.kref, ptr, ptr, ptr, i32, %struct.ld_semaphore, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.rw_semaphore, %struct.mutex, %struct.ktermios, %struct.ktermios, [64 x i8], i32, i32, %struct.winsize, %struct.anon.38, %struct.anon.39, i32, i32, i32, ptr, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, ptr, ptr, %struct.spinlock, %struct.list_head, i32, ptr, i32, %struct.work_struct, ptr }
%struct.ld_semaphore = type { %struct.atomic_t, %struct.raw_spinlock, i32, %struct.list_head, %struct.list_head, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ktermios = type { i32, i32, i32, i32, i8, [19 x i8], i32, i32 }
%struct.winsize = type { i16, i16, i16, i16 }
%struct.anon.38 = type { %struct.spinlock, i8, i8, [0 x i32] }
%struct.anon.39 = type { %struct.spinlock, ptr, ptr, i8, i8, [0 x i32] }
%struct.whiteheat_port_settings = type <{ i8, i32, i8, i8, i8, i8, i8, i8, i8, i8 }>
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }

@__initcall__kmod_whiteheat__257_804_usb_serial_module_init6 = internal global ptr @usb_serial_module_init, section ".initcall6.init", align 4
@serial_drivers = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @whiteheat_fake_device, ptr @whiteheat_device, ptr null], [20 x i8] zeroinitializer }, align 32
@__exitcall_usb_serial_module_exit = internal global ptr @usb_serial_module_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author258 = internal constant [97 x i8] c"whiteheat.author=Greg Kroah-Hartman <greg@kroah.com>, Stuart MacDonald <stuartm@connecttech.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description259 = internal constant [55 x i8] c"whiteheat.description=USB ConnectTech WhiteHEAT driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file260 = internal constant [44 x i8] c"whiteheat.file=drivers/usb/serial/whiteheat\00", section ".modinfo", align 1
@__UNIQUE_ID_license261 = internal constant [22 x i8] c"whiteheat.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware262 = internal constant [32 x i8] c"whiteheat.firmware=whiteheat.fw\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware263 = internal constant [39 x i8] c"whiteheat.firmware=whiteheat_loader.fw\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"whiteheat\00", [22 x i8] zeroinitializer }, align 32
@id_table_combined = internal constant { [3 x %struct.usb_device_id], [56 x i8] } { [3 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 1808, i16 -32767, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1808, i16 1, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@whiteheat_fake_device = internal global { %struct.usb_serial_driver, [72 x i8] } { %struct.usb_serial_driver { ptr @.str.1, ptr @id_table_prerenumeration, %struct.list_head zeroinitializer, %struct.device_driver { ptr @.str.2, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, %struct.usb_dynids zeroinitializer, i8 1, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr @whiteheat_firmware_download, ptr @whiteheat_firmware_attach, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [72 x i8] zeroinitializer }, align 32
@whiteheat_device = internal global { %struct.usb_serial_driver, [72 x i8] } { %struct.usb_serial_driver { ptr @.str.5, ptr @id_table_std, %struct.list_head zeroinitializer, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, %struct.usb_dynids zeroinitializer, i8 4, i8 5, i8 5, i8 0, i8 0, i32 0, i32 0, ptr null, ptr @whiteheat_attach, ptr null, ptr null, ptr @whiteheat_release, ptr @whiteheat_port_probe, ptr @whiteheat_port_remove, ptr null, ptr null, ptr null, ptr @whiteheat_open, ptr @whiteheat_close, ptr null, ptr null, ptr null, ptr @whiteheat_get_serial, ptr null, ptr @whiteheat_set_termios, ptr @whiteheat_break_ctl, ptr null, ptr null, ptr null, ptr @usb_serial_generic_throttle, ptr @usb_serial_generic_unthrottle, ptr @whiteheat_tiocmget, ptr @whiteheat_tiocmset, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [72 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Connect Tech - WhiteHEAT - (prerenumeration)\00", [51 x i8] zeroinitializer }, align 32
@id_table_prerenumeration = internal constant { [2 x %struct.usb_device_id], [48 x i8] } { [2 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 1808, i16 1, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"whiteheatnofirm\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"whiteheat_loader.fw\00", [44 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"whiteheat.fw\00", [19 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Connect Tech - WhiteHEAT\00", [39 x i8] zeroinitializer }, align 32
@id_table_std = internal constant { [2 x %struct.usb_device_id], [48 x i8] } { [2 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 1808, i16 -32767, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@whiteheat_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.8, i32 252, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: Couldn't send command [%d]\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"whiteheat_attach\00", [47 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/usb/serial/whiteheat.c\00", [33 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@whiteheat_attach._entry_ptr = internal global ptr @whiteheat_attach._entry, section ".printk_index", align 4
@whiteheat_attach._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.7, ptr @.str.8, i32 256, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: Send command incomplete [%d]\0A\00", [62 x i8] zeroinitializer }, align 32
@whiteheat_attach._entry_ptr.13 = internal global ptr @whiteheat_attach._entry.11, section ".printk_index", align 4
@whiteheat_attach._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.7, ptr @.str.8, i32 268, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: Couldn't get results [%d]\0A\00", [33 x i8] zeroinitializer }, align 32
@whiteheat_attach._entry_ptr.16 = internal global ptr @whiteheat_attach._entry.14, section ".printk_index", align 4
@whiteheat_attach._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.7, ptr @.str.8, i32 272, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: Get results incomplete [%d]\0A\00", [63 x i8] zeroinitializer }, align 32
@whiteheat_attach._entry_ptr.19 = internal global ptr @whiteheat_attach._entry.17, section ".printk_index", align 4
@whiteheat_attach._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.7, ptr @.str.8, i32 276, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: Command failed [%d]\0A\00", [39 x i8] zeroinitializer }, align 32
@whiteheat_attach._entry_ptr.22 = internal global ptr @whiteheat_attach._entry.20, section ".printk_index", align 4
@whiteheat_attach._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.7, ptr @.str.8, i32 284, ptr @.str.25, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: Firmware v%d.%02d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@whiteheat_attach._entry_ptr.26 = internal global ptr @whiteheat_attach._entry.23, section ".printk_index", align 4
@whiteheat_attach.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.27 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&command_info->mutex\00", [43 x i8] zeroinitializer }, align 32
@whiteheat_attach.__key.28 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.29 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"&command_info->wait_command\00", [36 x i8] zeroinitializer }, align 32
@whiteheat_attach._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.7, ptr @.str.8, i32 306, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"%s: Unable to retrieve firmware version, try replugging\0A\00", [39 x i8] zeroinitializer }, align 32
@whiteheat_attach._entry_ptr.32 = internal global ptr @whiteheat_attach._entry.30, section ".printk_index", align 4
@whiteheat_attach._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.7, ptr @.str.8, i32 309, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"%s: If the firmware is not running (status led not blinking)\0A\00", [34 x i8] zeroinitializer }, align 32
@whiteheat_attach._entry_ptr.35 = internal global ptr @whiteheat_attach._entry.33, section ".printk_index", align 4
@whiteheat_attach._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.7, ptr @.str.8, i32 312, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s: please contact support@connecttech.com\0A\00", [52 x i8] zeroinitializer }, align 32
@whiteheat_attach._entry_ptr.38 = internal global ptr @whiteheat_attach._entry.36, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@command_port_write_callback.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.39, ptr @.str.8, ptr @.str.40, i8 0, i8 117, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"command_port_write_callback\00", [36 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"nonzero urb status: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@command_port_read_callback.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.41, ptr @.str.8, ptr @.str.42, i8 0, i8 121, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"command_port_read_callback\00", [37 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s - command_info is NULL, exiting.\0A\00", [59 x i8] zeroinitializer }, align 32
@command_port_read_callback.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.41, ptr @.str.8, ptr @.str.43, i8 0, i8 122, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s - empty response, exiting.\0A\00", [33 x i8] zeroinitializer }, align 32
@command_port_read_callback.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.41, ptr @.str.8, ptr @.str.44, i8 0, i8 123, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s - nonzero urb status: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@command_port_read_callback.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.41, ptr @.str.8, ptr @.str.45, i8 0, i8 127, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s - event received\0A\00", [43 x i8] zeroinitializer }, align 32
@command_port_read_callback.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.41, ptr @.str.8, ptr @.str.46, i8 0, i8 -127, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s - bad reply from firmware\0A\00", [34 x i8] zeroinitializer }, align 32
@command_port_read_callback.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.41, ptr @.str.8, ptr @.str.47, i8 0, i8 -125, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s - failed resubmitting read urb, error %d\0A\00", [51 x i8] zeroinitializer }, align 32
@usb_serial_debug_data.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.48, ptr @.str.49, ptr @.str.50, i8 0, i8 98, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"usb_serial_debug_data\00", [42 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"include/linux/usb/serial.h\00", [37 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s - length = %d, data = %*ph\0A\00", [33 x i8] zeroinitializer }, align 32
@start_command_port._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.52, ptr @.str.8, i32 778, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s - failed submitting read urb, error %d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"start_command_port\00", [45 x i8] zeroinitializer }, align 32
@start_command_port._entry_ptr = internal global ptr @start_command_port._entry, section ".printk_index", align 4
@firm_send_command.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.53, ptr @.str.8, ptr @.str.54, i8 0, i8 -121, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"firm_send_command\00", [46 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s - command %d\0A\00", [47 x i8] zeroinitializer }, align 32
@firm_send_command.__UNIQUE_ID_ddebug246 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.53, ptr @.str.8, ptr @.str.55, i8 0, i8 -116, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s - submit urb failed\0A\00", [40 x i8] zeroinitializer }, align 32
@firm_send_command.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.53, ptr @.str.8, ptr @.str.56, i8 0, i8 -114, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s - command timed out.\0A\00", [39 x i8] zeroinitializer }, align 32
@firm_send_command.__UNIQUE_ID_ddebug248 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.53, ptr @.str.8, ptr @.str.57, i8 0, i8 -112, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s - command failed.\0A\00", [42 x i8] zeroinitializer }, align 32
@firm_send_command.__UNIQUE_ID_ddebug249 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.53, ptr @.str.8, ptr @.str.58, i8 0, i8 -111, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.58 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s - command completed.\0A\00", [39 x i8] zeroinitializer }, align 32
@firm_setup_port.__UNIQUE_ID_ddebug250 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.59, ptr @.str.8, ptr @.str.60, i8 0, i8 -99, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.59 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"firm_setup_port\00", [16 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s - data bits = %d\0A\00", [43 x i8] zeroinitializer }, align 32
@firm_setup_port.__UNIQUE_ID_ddebug251 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.59, ptr @.str.8, ptr @.str.61, i8 0, i8 -95, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.61 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s - parity = %c\0A\00", [46 x i8] zeroinitializer }, align 32
@firm_setup_port.__UNIQUE_ID_ddebug252 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.59, ptr @.str.8, ptr @.str.62, i8 0, i8 -93, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.62 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s - stop bits = %d\0A\00", [43 x i8] zeroinitializer }, align 32
@firm_setup_port.__UNIQUE_ID_ddebug253 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.59, ptr @.str.8, ptr @.str.63, i8 0, i8 -90, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.63 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s - hardware flow control = %s %s %s %s\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"CTS\00", [28 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.66 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"RTS\00", [28 x i8] zeroinitializer }, align 32
@firm_setup_port.__UNIQUE_ID_ddebug254 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.59, ptr @.str.8, ptr @.str.69, i8 0, i8 -89, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.69 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s - software flow control = %c\0A\00", [63 x i8] zeroinitializer }, align 32
@firm_setup_port.__UNIQUE_ID_ddebug255 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.59, ptr @.str.8, ptr @.str.70, i8 0, i8 -88, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.70 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s - XON = %2x, XOFF = %2x\0A\00", [36 x i8] zeroinitializer }, align 32
@firm_setup_port.__UNIQUE_ID_ddebug256 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.59, ptr @.str.8, ptr @.str.71, i8 0, i8 -86, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.71 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s - baud rate = %u\0A\00", [43 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 8, i64 10, i64 13, i64 16, i64 17]
@__sancov_gen_cov_switch_values.72 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 16, i64 17]
@___asan_gen_.73 = private unnamed_addr constant [15 x i8] c"serial_drivers\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 132, i32 41 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 804, i32 1 }
@___asan_gen_.79 = private unnamed_addr constant [18 x i8] c"id_table_combined\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 64, i32 35 }
@___asan_gen_.82 = private unnamed_addr constant [22 x i8] c"whiteheat_fake_device\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 95, i32 33 }
@___asan_gen_.85 = private unnamed_addr constant [17 x i8] c"whiteheat_device\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 107, i32 33 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 100, i32 18 }
@___asan_gen_.91 = private unnamed_addr constant [25 x i8] c"id_table_prerenumeration\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 59, i32 35 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 98, i32 12 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 197, i32 59 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 199, i32 60 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 112, i32 18 }
@___asan_gen_.106 = private unnamed_addr constant [13 x i8] c"id_table_std\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 54, i32 35 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 251, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 255, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 267, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 271, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 275, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 282, i32 2 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 291, i32 2 }
@___asan_gen_.166 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 293, i32 2 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 304, i32 2 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 307, i32 2 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 310, i32 2 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 469, i32 3 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 485, i32 3 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 489, i32 3 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 493, i32 3 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 511, i32 3 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 519, i32 3 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 524, i32 3 }
@___asan_gen_.224 = private unnamed_addr constant [30 x i8] c"../include/linux/usb/serial.h\00", align 1
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 393, i32 2 }
@___asan_gen_.226 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 776, i32 4 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 543, i32 2 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 560, i32 3 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 571, i32 3 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 577, i32 3 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 583, i32 3 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 629, i32 2 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 645, i32 2 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 652, i32 2 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 660, i32 2 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 671, i32 2 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 675, i32 2 }
@___asan_gen_.283 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.284 = private constant [34 x i8] c"../drivers/usb/serial/whiteheat.c\00", align 1
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 680, i32 2 }
@llvm.compiler.used = appending global [90 x ptr] [ptr @__UNIQUE_ID_author258, ptr @__UNIQUE_ID_description259, ptr @__UNIQUE_ID_file260, ptr @__UNIQUE_ID_firmware262, ptr @__UNIQUE_ID_firmware263, ptr @__UNIQUE_ID_license261, ptr @__exitcall_usb_serial_module_exit, ptr @__initcall__kmod_whiteheat__257_804_usb_serial_module_init6, ptr @start_command_port._entry, ptr @start_command_port._entry_ptr, ptr @usb_serial_module_exit, ptr @whiteheat_attach._entry, ptr @whiteheat_attach._entry.11, ptr @whiteheat_attach._entry.14, ptr @whiteheat_attach._entry.17, ptr @whiteheat_attach._entry.20, ptr @whiteheat_attach._entry.23, ptr @whiteheat_attach._entry.30, ptr @whiteheat_attach._entry.33, ptr @whiteheat_attach._entry.36, ptr @whiteheat_attach._entry_ptr, ptr @whiteheat_attach._entry_ptr.13, ptr @whiteheat_attach._entry_ptr.16, ptr @whiteheat_attach._entry_ptr.19, ptr @whiteheat_attach._entry_ptr.22, ptr @whiteheat_attach._entry_ptr.26, ptr @whiteheat_attach._entry_ptr.32, ptr @whiteheat_attach._entry_ptr.35, ptr @whiteheat_attach._entry_ptr.38, ptr @serial_drivers, ptr @.str, ptr @id_table_combined, ptr @whiteheat_fake_device, ptr @whiteheat_device, ptr @.str.1, ptr @id_table_prerenumeration, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @id_table_std, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.15, ptr @.str.18, ptr @.str.21, ptr @.str.24, ptr @.str.25, ptr @whiteheat_attach.__key, ptr @.str.27, ptr @whiteheat_attach.__key.28, ptr @.str.29, ptr @.str.31, ptr @.str.34, ptr @.str.37, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.69, ptr @.str.70, ptr @.str.71], section "llvm.metadata"
@0 = internal global [71 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serial_drivers to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @id_table_combined to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @whiteheat_fake_device to i32), i32 312, i32 384, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @whiteheat_device to i32), i32 312, i32 384, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @id_table_prerenumeration to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @id_table_std to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @whiteheat_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @whiteheat_attach._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @whiteheat_attach._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @whiteheat_attach._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @whiteheat_attach._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @whiteheat_attach._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @whiteheat_attach.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @whiteheat_attach.__key.28 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @whiteheat_attach._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @whiteheat_attach._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @whiteheat_attach._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @start_command_port._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @usb_serial_module_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_serial_register_drivers(ptr noundef nonnull @serial_drivers, ptr noundef nonnull @.str, ptr noundef nonnull @id_table_combined) #9
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
define internal i32 @whiteheat_firmware_download(ptr nocapture noundef readonly %serial, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %serial to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %serial, align 4
  %call = tail call i32 @ezusb_fx1_ihex_firmware_download(ptr noundef %1, ptr noundef nonnull @.str.3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call)
  %cmp = icmp sgt i32 %call, -1
  br i1 %cmp, label %if.then, label %entry.if.end5_crit_edge

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %serial to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %serial, align 4
  %call2 = tail call i32 @ezusb_fx1_ihex_firmware_download(ptr noundef %3, ptr noundef nonnull @.str.4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call2)
  %cmp3 = icmp sgt i32 %call2, -1
  br i1 %cmp3, label %if.then.cleanup_crit_edge, label %if.then.if.end5_crit_edge

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %if.then.if.end5_crit_edge, %entry.if.end5_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -2, %if.end5 ], [ 0, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @whiteheat_firmware_attach(ptr nocapture noundef readnone %serial) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ezusb_fx1_ihex_firmware_download(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @whiteheat_attach(ptr noundef readonly %serial) #2 align 64 {
entry:
  %alen = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %alen) #9
  %0 = ptrtoint ptr %alen to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %alen, align 4, !annotation !169
  %arrayidx = getelementptr %struct.usb_serial, ptr %serial, i32 0, i32 12, i32 4
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx, align 4
  %3 = ptrtoint ptr %serial to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %serial, align 4
  %bulk_out_endpointAddress = getelementptr inbounds %struct.usb_serial_port, ptr %2, i32 0, i32 26
  %5 = ptrtoint ptr %bulk_out_endpointAddress to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %bulk_out_endpointAddress, align 4
  %conv = zext i8 %6 to i32
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %4, align 8
  %shl.i = shl i32 %8, 8
  %shl1.i = shl nuw nsw i32 %conv, 15
  %or.i = or i32 %shl1.i, %shl.i
  %or = or i32 %or.i, -1073741824
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %9 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3264, i32 noundef 2) #12
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %10 = ptrtoint ptr %call7.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 11, ptr %call7.i, align 8
  %arrayidx3 = getelementptr i8, ptr %call7.i, i32 1
  %11 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %arrayidx3, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %12 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i179 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 3264, i32 noundef 20) #12
  %tobool5.not = icmp eq ptr %call7.i179, null
  br i1 %tobool5.not, label %if.end.cleanup.sink.split_crit_edge, label %if.end7

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.end7:                                          ; preds = %if.end
  %13 = ptrtoint ptr %serial to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %serial, align 4
  %call9 = tail call i32 @usb_clear_halt(ptr noundef %14, i32 noundef %or) #9
  %15 = ptrtoint ptr %serial to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %serial, align 4
  %call11 = call i32 @usb_bulk_msg(ptr noundef %16, i32 noundef %or, ptr noundef nonnull %call7.i, i32 noundef 2, ptr noundef nonnull %alen, i32 noundef 2000) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.else, label %do.end

do.end:                                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  %17 = ptrtoint ptr %serial to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %serial, align 4
  %dev15 = getelementptr inbounds %struct.usb_device, ptr %18, i32 0, i32 15
  %type = getelementptr inbounds %struct.usb_serial, ptr %serial, i32 0, i32 1
  %19 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %type, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev15, ptr noundef nonnull @.str.6, ptr noundef %22, i32 noundef %call11) #13
  br label %do.end99

if.else:                                          ; preds = %if.end7
  %23 = ptrtoint ptr %alen to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %alen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %24)
  %cmp.not = icmp eq i32 %24, 2
  %25 = ptrtoint ptr %serial to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %serial, align 4
  br i1 %cmp.not, label %if.end26, label %do.end20

do.end20:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %dev22 = getelementptr inbounds %struct.usb_device, ptr %26, i32 0, i32 15
  %type23 = getelementptr inbounds %struct.usb_serial, ptr %serial, i32 0, i32 1
  %27 = ptrtoint ptr %type23 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %type23, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %28, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev22, ptr noundef nonnull @.str.12, ptr noundef %30, i32 noundef %24) #13
  br label %do.end99

if.end26:                                         ; preds = %if.else
  %bulk_in_endpointAddress = getelementptr inbounds %struct.usb_serial_port, ptr %2, i32 0, i32 15
  %31 = ptrtoint ptr %bulk_in_endpointAddress to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %bulk_in_endpointAddress, align 8
  %conv28 = zext i8 %32 to i32
  %33 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %26, align 8
  %shl.i181 = shl i32 %34, 8
  %shl1.i182 = shl nuw nsw i32 %conv28, 15
  %or.i183 = or i32 %shl1.i182, %shl.i181
  %or31 = or i32 %or.i183, -1073741696
  %call33 = call i32 @usb_clear_halt(ptr noundef %26, i32 noundef %or31) #9
  %35 = ptrtoint ptr %serial to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %serial, align 4
  %call35 = call i32 @usb_bulk_msg(ptr noundef %36, i32 noundef %or31, ptr noundef nonnull %call7.i179, i32 noundef 20, ptr noundef nonnull %alen, i32 noundef 2000) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.else45, label %do.end40

do.end40:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  %37 = ptrtoint ptr %serial to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %serial, align 4
  %dev42 = getelementptr inbounds %struct.usb_device, ptr %38, i32 0, i32 15
  %type43 = getelementptr inbounds %struct.usb_serial, ptr %serial, i32 0, i32 1
  %39 = ptrtoint ptr %type43 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %type43, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %40, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev42, ptr noundef nonnull @.str.15, ptr noundef %42, i32 noundef %call35) #13
  br label %do.end99

if.else45:                                        ; preds = %if.end26
  %43 = ptrtoint ptr %alen to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %alen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %44)
  %cmp46.not = icmp eq i32 %44, 20
  br i1 %cmp46.not, label %if.else56, label %do.end51

do.end51:                                         ; preds = %if.else45
  call void @__sanitizer_cov_trace_pc() #11
  %45 = ptrtoint ptr %serial to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %serial, align 4
  %dev53 = getelementptr inbounds %struct.usb_device, ptr %46, i32 0, i32 15
  %type54 = getelementptr inbounds %struct.usb_serial, ptr %serial, i32 0, i32 1
  %47 = ptrtoint ptr %type54 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %type54, align 4
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %48, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev53, ptr noundef nonnull @.str.18, ptr noundef %50, i32 noundef %44) #13
  br label %do.end99

if.else56:                                        ; preds = %if.else45
  %51 = ptrtoint ptr %call7.i179 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %call7.i179, align 8
  %53 = ptrtoint ptr %call7.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %call7.i, align 8
  call void @__sanitizer_cov_trace_cmp1(i8 %52, i8 %54)
  %cmp61.not = icmp eq i8 %52, %54
  br i1 %cmp61.not, label %if.end75, label %do.end66

do.end66:                                         ; preds = %if.else56
  call void @__sanitizer_cov_trace_pc() #11
  %conv58 = zext i8 %52 to i32
  %55 = ptrtoint ptr %serial to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %serial, align 4
  %dev68 = getelementptr inbounds %struct.usb_device, ptr %56, i32 0, i32 15
  %type69 = getelementptr inbounds %struct.usb_serial, ptr %serial, i32 0, i32 1
  %57 = ptrtoint ptr %type69 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %type69, align 4
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %58, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev68, ptr noundef nonnull @.str.21, ptr noundef %60, i32 noundef %conv58) #13
  br label %do.end99

if.end75:                                         ; preds = %if.else56
  %61 = ptrtoint ptr %serial to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %serial, align 4
  %dev81 = getelementptr inbounds %struct.usb_device, ptr %62, i32 0, i32 15
  %type82 = getelementptr inbounds %struct.usb_serial, ptr %serial, i32 0, i32 1
  %63 = ptrtoint ptr %type82 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %type82, align 4
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %64, align 4
  %sw_major_rev = getelementptr i8, ptr %call7.i179, i32 2
  %67 = ptrtoint ptr %sw_major_rev to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %sw_major_rev, align 2
  %conv84 = zext i8 %68 to i32
  %sw_minor_rev = getelementptr i8, ptr %call7.i179, i32 3
  %69 = ptrtoint ptr %sw_minor_rev to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %sw_minor_rev, align 1
  %conv85 = zext i8 %70 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev81, ptr noundef nonnull @.str.24, ptr noundef %66, i32 noundef %conv84, i32 noundef %conv85) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %71 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i180 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %71, i32 noundef 3264, i32 noundef 212) #12
  %tobool87.not = icmp eq ptr %call7.i180, null
  br i1 %tobool87.not, label %if.end75.cleanup.sink.split.sink.split_crit_edge, label %do.body90

if.end75.cleanup.sink.split.sink.split_crit_edge: ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split.sink.split

do.body90:                                        ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #11
  call void @__mutex_init(ptr noundef nonnull %call7.i180, ptr noundef nonnull @.str.27, ptr noundef nonnull @whiteheat_attach.__key) #9
  %port_running = getelementptr inbounds %struct.whiteheat_command_private, ptr %call7.i180, i32 0, i32 1
  %72 = ptrtoint ptr %port_running to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 0, ptr %port_running, align 4
  %wait_command = getelementptr inbounds %struct.whiteheat_command_private, ptr %call7.i180, i32 0, i32 3
  call void @__init_waitqueue_head(ptr noundef %wait_command, ptr noundef nonnull @.str.29, ptr noundef nonnull @whiteheat_attach.__key.28) #9
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %2, i32 0, i32 32, i32 8
  %73 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %call7.i180, ptr %driver_data.i.i, align 4
  %write_urb = getelementptr inbounds %struct.usb_serial_port, ptr %2, i32 0, i32 21
  %74 = ptrtoint ptr %write_urb to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %write_urb, align 8
  %complete = getelementptr inbounds %struct.urb, ptr %75, i32 0, i32 28
  %76 = ptrtoint ptr %complete to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr @command_port_write_callback, ptr %complete, align 4
  %read_urb = getelementptr inbounds %struct.usb_serial_port, ptr %2, i32 0, i32 14
  %77 = ptrtoint ptr %read_urb to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %read_urb, align 4
  %complete96 = getelementptr inbounds %struct.urb, ptr %78, i32 0, i32 28
  %79 = ptrtoint ptr %complete96 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr @command_port_read_callback, ptr %complete96, align 4
  br label %cleanup.sink.split.sink.split

do.end99:                                         ; preds = %do.end66, %do.end51, %do.end40, %do.end20, %do.end
  %80 = ptrtoint ptr %serial to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %serial, align 4
  %dev101 = getelementptr inbounds %struct.usb_device, ptr %81, i32 0, i32 15
  %type102 = getelementptr inbounds %struct.usb_serial, ptr %serial, i32 0, i32 1
  %82 = ptrtoint ptr %type102 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %type102, align 4
  %84 = ptrtoint ptr %83 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %83, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev101, ptr noundef nonnull @.str.31, ptr noundef %85) #13
  %86 = ptrtoint ptr %serial to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %serial, align 4
  %dev108 = getelementptr inbounds %struct.usb_device, ptr %87, i32 0, i32 15
  %88 = ptrtoint ptr %type102 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %type102, align 4
  %90 = ptrtoint ptr %89 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %89, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev108, ptr noundef nonnull @.str.34, ptr noundef %91) #13
  %92 = ptrtoint ptr %serial to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %serial, align 4
  %dev115 = getelementptr inbounds %struct.usb_device, ptr %93, i32 0, i32 15
  %94 = ptrtoint ptr %type102 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %type102, align 4
  %96 = ptrtoint ptr %95 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %95, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev115, ptr noundef nonnull @.str.37, ptr noundef %97) #13
  br label %cleanup.sink.split.sink.split

cleanup.sink.split.sink.split:                    ; preds = %do.end99, %do.body90, %if.end75.cleanup.sink.split.sink.split_crit_edge
  %retval.0.ph.ph = phi i32 [ -19, %do.end99 ], [ 0, %do.body90 ], [ -12, %if.end75.cleanup.sink.split.sink.split_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i179) #9
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %cleanup.sink.split.sink.split, %if.end.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ -12, %if.end.cleanup.sink.split_crit_edge ], [ %retval.0.ph.ph, %cleanup.sink.split.sink.split ]
  call void @kfree(ptr noundef nonnull %call7.i) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %alen) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @whiteheat_release(ptr nocapture noundef readonly %serial) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.usb_serial, ptr %serial, i32 0, i32 12, i32 4
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @kfree(ptr noundef %3) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @whiteheat_port_probe(ptr nocapture noundef writeonly %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 1) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @whiteheat_port_remove(ptr nocapture noundef readonly %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @kfree(ptr noundef %1) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @whiteheat_open(ptr noundef %tty, ptr noundef %port) #2 align 64 {
entry:
  %close_command.i66 = alloca %struct.whiteheat_simple, align 1
  %close_command.i = alloca %struct.whiteheat_simple, align 1
  %purge_command.i = alloca %struct.whiteheat_purge, align 1
  %open_command.i = alloca %struct.whiteheat_simple, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port, align 8
  %arrayidx.i = getelementptr %struct.usb_serial, ptr %1, i32 0, i32 12, i32 4
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %3, i32 0, i32 32, i32 8
  %4 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i.i, align 4
  tail call void @mutex_lock_nested(ptr noundef %5, i32 noundef 0) #9
  %port_running.i = getelementptr inbounds %struct.whiteheat_command_private, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %port_running.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %port_running.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i, label %if.then.i, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then.i:                                        ; preds = %entry
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %read_urb.i = getelementptr inbounds %struct.usb_serial_port, ptr %3, i32 0, i32 14
  %10 = ptrtoint ptr %read_urb.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %read_urb.i, align 4
  %pipe.i = getelementptr inbounds %struct.urb, ptr %11, i32 0, i32 10
  %12 = ptrtoint ptr %pipe.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pipe.i, align 4
  %call2.i = tail call i32 @usb_clear_halt(ptr noundef %9, i32 noundef %13) #9
  %14 = ptrtoint ptr %read_urb.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %read_urb.i, align 4
  %call4.i = tail call i32 @usb_submit_urb(ptr noundef %15, i32 noundef 3264) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.then.i.if.end_crit_edge, label %start_command_port.exit

if.then.i.if.end_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

start_command_port.exit:                          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  %dev8.i = getelementptr inbounds %struct.usb_device, ptr %17, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev8.i, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.52, i32 noundef %call4.i) #13
  br label %exit.sink.split

if.end:                                           ; preds = %if.then.i.if.end_crit_edge, %entry.if.end_crit_edge
  %18 = ptrtoint ptr %port_running.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %port_running.i, align 4
  %inc.i = add i8 %19, 1
  store i8 %inc.i, ptr %port_running.i, align 4
  tail call void @mutex_unlock(ptr noundef %5) #9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %open_command.i) #9
  %port_number.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 4
  %20 = ptrtoint ptr %port_number.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %port_number.i, align 4
  %add.i = add i8 %21, 1
  %22 = ptrtoint ptr %open_command.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %add.i, ptr %open_command.i, align 1
  %call.i = call fastcc i32 @firm_send_command(ptr noundef %port, i8 noundef zeroext 1, ptr noundef nonnull %open_command.i, i8 noundef zeroext 1) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %open_command.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not = icmp eq i32 %call.i, 0
  br i1 %tobool3.not, label %if.end6, label %if.then4

if.then4:                                         ; preds = %if.end
  %23 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %port, align 8
  %arrayidx.i46 = getelementptr %struct.usb_serial, ptr %24, i32 0, i32 12, i32 4
  %25 = ptrtoint ptr %arrayidx.i46 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx.i46, align 4
  %driver_data.i.i.i47 = getelementptr inbounds %struct.usb_serial_port, ptr %26, i32 0, i32 32, i32 8
  %27 = ptrtoint ptr %driver_data.i.i.i47 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %driver_data.i.i.i47, align 4
  tail call void @mutex_lock_nested(ptr noundef %28, i32 noundef 0) #9
  %port_running.i48 = getelementptr inbounds %struct.whiteheat_command_private, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %port_running.i48 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %port_running.i48, align 4
  %dec.i = add i8 %30, -1
  store i8 %dec.i, ptr %port_running.i48, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %dec.i)
  %tobool.not.i49 = icmp eq i8 %dec.i, 0
  br i1 %tobool.not.i49, label %if.then.i51, label %if.then4.exit.sink.split_crit_edge

if.then4.exit.sink.split_crit_edge:               ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit.sink.split

if.then.i51:                                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  %read_urb.i50 = getelementptr inbounds %struct.usb_serial_port, ptr %26, i32 0, i32 14
  %31 = ptrtoint ptr %read_urb.i50 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %read_urb.i50, align 4
  tail call void @usb_kill_urb(ptr noundef %32) #9
  br label %exit.sink.split

if.end6:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %purge_command.i) #9
  %33 = getelementptr inbounds %struct.whiteheat_purge, ptr %purge_command.i, i32 0, i32 1
  %34 = ptrtoint ptr %port_number.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %port_number.i, align 4
  %add.i53 = add i8 %35, 1
  %36 = ptrtoint ptr %purge_command.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %add.i53, ptr %purge_command.i, align 1
  %37 = ptrtoint ptr %33 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 3, ptr %33, align 1
  %call.i54 = call fastcc i32 @firm_send_command(ptr noundef %port, i8 noundef zeroext 9, ptr noundef nonnull %purge_command.i, i8 noundef zeroext 2) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %purge_command.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i54)
  %tobool8.not = icmp eq i32 %call.i54, 0
  br i1 %tobool8.not, label %if.end12, label %if.then9

if.then9:                                         ; preds = %if.end6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %close_command.i) #9
  %38 = ptrtoint ptr %port_number.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %port_number.i, align 4
  %add.i56 = add i8 %39, 1
  %40 = ptrtoint ptr %close_command.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %add.i56, ptr %close_command.i, align 1
  %call.i57 = call fastcc i32 @firm_send_command(ptr noundef %port, i8 noundef zeroext 2, ptr noundef nonnull %close_command.i, i8 noundef zeroext 1) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %close_command.i) #9
  %41 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %port, align 8
  %arrayidx.i58 = getelementptr %struct.usb_serial, ptr %42, i32 0, i32 12, i32 4
  %43 = ptrtoint ptr %arrayidx.i58 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx.i58, align 4
  %driver_data.i.i.i59 = getelementptr inbounds %struct.usb_serial_port, ptr %44, i32 0, i32 32, i32 8
  %45 = ptrtoint ptr %driver_data.i.i.i59 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %driver_data.i.i.i59, align 4
  tail call void @mutex_lock_nested(ptr noundef %46, i32 noundef 0) #9
  %port_running.i60 = getelementptr inbounds %struct.whiteheat_command_private, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %port_running.i60 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %port_running.i60, align 4
  %dec.i61 = add i8 %48, -1
  store i8 %dec.i61, ptr %port_running.i60, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %dec.i61)
  %tobool.not.i62 = icmp eq i8 %dec.i61, 0
  br i1 %tobool.not.i62, label %if.then.i64, label %if.then9.exit.sink.split_crit_edge

if.then9.exit.sink.split_crit_edge:               ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit.sink.split

if.then.i64:                                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  %read_urb.i63 = getelementptr inbounds %struct.usb_serial_port, ptr %44, i32 0, i32 14
  %49 = ptrtoint ptr %read_urb.i63 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %read_urb.i63, align 4
  tail call void @usb_kill_urb(ptr noundef %50) #9
  br label %exit.sink.split

if.end12:                                         ; preds = %if.end6
  %tobool13.not = icmp eq ptr %tty, null
  br i1 %tobool13.not, label %if.end12.if.end15_crit_edge, label %if.then14

if.end12.if.end15_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

if.then14:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @firm_setup_port(ptr noundef nonnull %tty)
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %if.end12.if.end15_crit_edge
  %51 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %port, align 8
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %52, align 4
  %read_urb = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 14
  %55 = ptrtoint ptr %read_urb to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %read_urb, align 4
  %pipe = getelementptr inbounds %struct.urb, ptr %56, i32 0, i32 10
  %57 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %pipe, align 4
  %call17 = tail call i32 @usb_clear_halt(ptr noundef %54, i32 noundef %58) #9
  %59 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %port, align 8
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %60, align 4
  %write_urb = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 21
  %63 = ptrtoint ptr %write_urb to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %write_urb, align 8
  %pipe20 = getelementptr inbounds %struct.urb, ptr %64, i32 0, i32 10
  %65 = ptrtoint ptr %pipe20 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %pipe20, align 4
  %call21 = tail call i32 @usb_clear_halt(ptr noundef %62, i32 noundef %66) #9
  %call22 = tail call i32 @usb_serial_generic_open(ptr noundef %tty, ptr noundef %port) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end15.exit_crit_edge, label %if.then24

if.end15.exit_crit_edge:                          ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit

if.then24:                                        ; preds = %if.end15
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %close_command.i66) #9
  %67 = ptrtoint ptr %port_number.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %port_number.i, align 4
  %add.i68 = add i8 %68, 1
  %69 = ptrtoint ptr %close_command.i66 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %add.i68, ptr %close_command.i66, align 1
  %call.i69 = call fastcc i32 @firm_send_command(ptr noundef %port, i8 noundef zeroext 2, ptr noundef nonnull %close_command.i66, i8 noundef zeroext 1) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %close_command.i66) #9
  %70 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %port, align 8
  %arrayidx.i70 = getelementptr %struct.usb_serial, ptr %71, i32 0, i32 12, i32 4
  %72 = ptrtoint ptr %arrayidx.i70 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %arrayidx.i70, align 4
  %driver_data.i.i.i71 = getelementptr inbounds %struct.usb_serial_port, ptr %73, i32 0, i32 32, i32 8
  %74 = ptrtoint ptr %driver_data.i.i.i71 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %driver_data.i.i.i71, align 4
  tail call void @mutex_lock_nested(ptr noundef %75, i32 noundef 0) #9
  %port_running.i72 = getelementptr inbounds %struct.whiteheat_command_private, ptr %75, i32 0, i32 1
  %76 = ptrtoint ptr %port_running.i72 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %port_running.i72, align 4
  %dec.i73 = add i8 %77, -1
  store i8 %dec.i73, ptr %port_running.i72, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %dec.i73)
  %tobool.not.i74 = icmp eq i8 %dec.i73, 0
  br i1 %tobool.not.i74, label %if.then.i76, label %if.then24.exit.sink.split_crit_edge

if.then24.exit.sink.split_crit_edge:              ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit.sink.split

if.then.i76:                                      ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #11
  %read_urb.i75 = getelementptr inbounds %struct.usb_serial_port, ptr %73, i32 0, i32 14
  %78 = ptrtoint ptr %read_urb.i75 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %read_urb.i75, align 4
  tail call void @usb_kill_urb(ptr noundef %79) #9
  br label %exit.sink.split

exit.sink.split:                                  ; preds = %if.then.i76, %if.then24.exit.sink.split_crit_edge, %if.then.i64, %if.then9.exit.sink.split_crit_edge, %if.then.i51, %if.then4.exit.sink.split_crit_edge, %start_command_port.exit
  %.sink = phi ptr [ %5, %start_command_port.exit ], [ %28, %if.then4.exit.sink.split_crit_edge ], [ %28, %if.then.i51 ], [ %46, %if.then9.exit.sink.split_crit_edge ], [ %46, %if.then.i64 ], [ %75, %if.then24.exit.sink.split_crit_edge ], [ %75, %if.then.i76 ]
  %retval1.0.ph = phi i32 [ %call4.i, %start_command_port.exit ], [ %call.i, %if.then4.exit.sink.split_crit_edge ], [ %call.i, %if.then.i51 ], [ %call.i54, %if.then9.exit.sink.split_crit_edge ], [ %call.i54, %if.then.i64 ], [ %call22, %if.then24.exit.sink.split_crit_edge ], [ %call22, %if.then.i76 ]
  tail call void @mutex_unlock(ptr noundef %.sink) #9
  br label %exit

exit:                                             ; preds = %exit.sink.split, %if.end15.exit_crit_edge
  %retval1.0 = phi i32 [ 0, %if.end15.exit_crit_edge ], [ %retval1.0.ph, %exit.sink.split ]
  ret i32 %retval1.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @whiteheat_close(ptr noundef %port) #2 align 64 {
entry:
  %close_command.i5 = alloca %struct.whiteheat_simple, align 1
  %close_command.i = alloca %struct.whiteheat_simple, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %close_command.i) #9
  %port_number.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 4
  %0 = ptrtoint ptr %port_number.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %port_number.i, align 4
  %add.i = add i8 %1, 1
  %2 = ptrtoint ptr %close_command.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %add.i, ptr %close_command.i, align 1
  %call.i = call fastcc i32 @firm_send_command(ptr noundef %port, i8 noundef zeroext 12, ptr noundef nonnull %close_command.i, i8 noundef zeroext 1) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %close_command.i) #9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %close_command.i5) #9
  %3 = ptrtoint ptr %port_number.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %port_number.i, align 4
  %add.i7 = add i8 %4, 1
  %5 = ptrtoint ptr %close_command.i5 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %add.i7, ptr %close_command.i5, align 1
  %call.i8 = call fastcc i32 @firm_send_command(ptr noundef %port, i8 noundef zeroext 2, ptr noundef nonnull %close_command.i5, i8 noundef zeroext 1) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %close_command.i5) #9
  tail call void @usb_serial_generic_close(ptr noundef %port) #9
  %6 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %port, align 8
  %arrayidx.i = getelementptr %struct.usb_serial, ptr %7, i32 0, i32 12, i32 4
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %9, i32 0, i32 32, i32 8
  %10 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %driver_data.i.i.i, align 4
  tail call void @mutex_lock_nested(ptr noundef %11, i32 noundef 0) #9
  %port_running.i = getelementptr inbounds %struct.whiteheat_command_private, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %port_running.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %port_running.i, align 4
  %dec.i = add i8 %13, -1
  store i8 %dec.i, ptr %port_running.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %dec.i)
  %tobool.not.i = icmp eq i8 %dec.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %entry.stop_command_port.exit_crit_edge

entry.stop_command_port.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %stop_command_port.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %read_urb.i = getelementptr inbounds %struct.usb_serial_port, ptr %9, i32 0, i32 14
  %14 = ptrtoint ptr %read_urb.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %read_urb.i, align 4
  tail call void @usb_kill_urb(ptr noundef %15) #9
  br label %stop_command_port.exit

stop_command_port.exit:                           ; preds = %if.then.i, %entry.stop_command_port.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %11) #9
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @whiteheat_get_serial(ptr nocapture noundef readnone %tty, ptr nocapture noundef writeonly %ss) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %baud_base = getelementptr inbounds %struct.serial_struct, ptr %ss, i32 0, i32 7
  %0 = ptrtoint ptr %baud_base to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 460800, ptr %baud_base, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @whiteheat_set_termios(ptr noundef %tty, ptr nocapture noundef readnone %port, ptr nocapture noundef readnone %old_termios) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @firm_setup_port(ptr noundef %tty)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @whiteheat_break_ctl(ptr nocapture noundef readonly %tty, i32 noundef %break_state) #2 align 64 {
entry:
  %break_command.i = alloca %struct.whiteheat_set_rdb, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %conv = trunc i32 %break_state to i8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %break_command.i) #9
  %2 = getelementptr inbounds %struct.whiteheat_set_rdb, ptr %break_command.i, i32 0, i32 1
  %port_number.i = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 4
  %3 = ptrtoint ptr %port_number.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %port_number.i, align 4
  %add.i = add i8 %4, 1
  %5 = ptrtoint ptr %break_command.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %add.i, ptr %break_command.i, align 1
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv, ptr %2, align 1
  %call.i = call fastcc i32 @firm_send_command(ptr noundef %1, i8 noundef zeroext 6, ptr noundef nonnull %break_command.i, i8 noundef zeroext 2) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %break_command.i) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_serial_generic_throttle(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_serial_generic_unthrottle(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @whiteheat_tiocmget(ptr nocapture noundef readonly %tty) #2 align 64 {
entry:
  %get_dr_command.i = alloca %struct.whiteheat_simple, align 1
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
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %get_dr_command.i) #9
  %port_number.i = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %port_number.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %port_number.i, align 4
  %add.i = add i8 %5, 1
  %6 = ptrtoint ptr %get_dr_command.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %add.i, ptr %get_dr_command.i, align 1
  %call.i = call fastcc i32 @firm_send_command(ptr noundef %1, i8 noundef zeroext 10, ptr noundef nonnull %get_dr_command.i, i8 noundef zeroext 1) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %get_dr_command.i) #9
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %3, align 1
  %9 = shl i8 %8, 1
  %10 = and i8 %9, 6
  %11 = zext i8 %10 to i32
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @whiteheat_tiocmset(ptr nocapture noundef readonly %tty, i32 noundef %set, i32 noundef %clear) #2 align 64 {
entry:
  %rts_command.i = alloca %struct.whiteheat_set_rdb, align 1
  %dtr_command.i = alloca %struct.whiteheat_set_rdb, align 1
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
  %and = and i32 %set, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %3, align 1
  %6 = or i8 %5, 2
  store i8 %6, ptr %3, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %and2 = and i32 %set, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.end.if.end9_crit_edge, label %if.then4

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %3, align 1
  %9 = or i8 %8, 1
  store i8 %9, ptr %3, align 1
  br label %if.end9

if.end9:                                          ; preds = %if.then4, %if.end.if.end9_crit_edge
  %and10 = and i32 %clear, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.end9.if.end17_crit_edge, label %if.then12

if.end9.if.end17_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

if.then12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %3, align 1
  %12 = and i8 %11, -3
  store i8 %12, ptr %3, align 1
  br label %if.end17

if.end17:                                         ; preds = %if.then12, %if.end9.if.end17_crit_edge
  %and18 = and i32 %clear, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %if.end17.if.end25_crit_edge, label %if.then20

if.end17.if.end25_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

if.then20:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %3, align 1
  %15 = and i8 %14, -2
  store i8 %15, ptr %3, align 1
  br label %if.end25

if.end25:                                         ; preds = %if.then20, %if.end17.if.end25_crit_edge
  %16 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %3, align 1
  %18 = and i8 %17, 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %dtr_command.i) #9
  %19 = getelementptr inbounds %struct.whiteheat_set_rdb, ptr %dtr_command.i, i32 0, i32 1
  %port_number.i = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 4
  %20 = ptrtoint ptr %port_number.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %port_number.i, align 4
  %add.i = add i8 %21, 1
  %22 = ptrtoint ptr %dtr_command.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %add.i, ptr %dtr_command.i, align 1
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %18, ptr %19, align 1
  %call.i = call fastcc i32 @firm_send_command(ptr noundef %1, i8 noundef zeroext 5, ptr noundef nonnull %dtr_command.i, i8 noundef zeroext 2) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %dtr_command.i) #9
  %24 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %3, align 1
  %26 = and i8 %25, 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %rts_command.i) #9
  %27 = getelementptr inbounds %struct.whiteheat_set_rdb, ptr %rts_command.i, i32 0, i32 1
  %28 = ptrtoint ptr %port_number.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %port_number.i, align 4
  %add.i46 = add i8 %29, 1
  %30 = ptrtoint ptr %rts_command.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %add.i46, ptr %rts_command.i, align 1
  %31 = ptrtoint ptr %27 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %26, ptr %27, align 1
  %call.i47 = call fastcc i32 @firm_send_command(ptr noundef %1, i8 noundef zeroext 4, ptr noundef nonnull %rts_command.i, i8 noundef zeroext 2) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %rts_command.i) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_clear_halt(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_bulk_msg(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @command_port_write_callback(ptr nocapture noundef readonly %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %status1 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %0 = ptrtoint ptr %status1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %status1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @command_port_write_callback.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@command_port_write_callback, %if.then5)) #9
          to label %cleanup [label %if.then5], !srcloc !170

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %dev6 = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @command_port_write_callback.__UNIQUE_ID_ddebug238, ptr noundef %dev6, ptr noundef nonnull @.str.40, i32 noundef %1) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %do.body, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @command_port_read_callback(ptr nocapture noundef readonly %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32, i32 8
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %do.body, label %if.end8

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @command_port_read_callback.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@command_port_read_callback, %if.then6)) #9
          to label %cleanup [label %if.then6], !srcloc !170

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %dev7 = getelementptr inbounds %struct.usb_device, ptr %9, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @command_port_read_callback.__UNIQUE_ID_ddebug239, ptr noundef %dev7, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.41) #9
  br label %cleanup

if.end8:                                          ; preds = %entry
  %actual_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %10 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %actual_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool9.not = icmp eq i32 %11, 0
  br i1 %tobool9.not, label %do.body11, label %if.end29

do.body11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @command_port_read_callback.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@command_port_read_callback, %if.then23)) #9
          to label %cleanup [label %if.then23], !srcloc !170

if.then23:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #11
  %dev24 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %12 = ptrtoint ptr %dev24 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev24, align 4
  %dev25 = getelementptr inbounds %struct.usb_device, ptr %13, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @command_port_read_callback.__UNIQUE_ID_ddebug240, ptr noundef %dev25, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.41) #9
  br label %cleanup

if.end29:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool30.not = icmp eq i32 %3, 0
  br i1 %tobool30.not, label %if.end52, label %do.body32

do.body32:                                        ; preds = %if.end29
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @command_port_read_callback.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@command_port_read_callback, %if.then44)) #9
          to label %do.end49 [label %if.then44], !srcloc !170

if.then44:                                        ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #11
  %dev45 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %14 = ptrtoint ptr %dev45 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev45, align 4
  %dev46 = getelementptr inbounds %struct.usb_device, ptr %15, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @command_port_read_callback.__UNIQUE_ID_ddebug241, ptr noundef %dev46, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.41, i32 noundef %3) #9
  br label %do.end49

do.end49:                                         ; preds = %if.then44, %do.body32
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %3)
  %cmp.not = icmp eq i32 %3, -2
  br i1 %cmp.not, label %do.end49.if.end51_crit_edge, label %if.then50

do.end49.if.end51_crit_edge:                      ; preds = %do.end49
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end51

if.then50:                                        ; preds = %do.end49
  call void @__sanitizer_cov_trace_pc() #11
  %command_finished = getelementptr inbounds %struct.whiteheat_command_private, ptr %7, i32 0, i32 2
  %16 = ptrtoint ptr %command_finished to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 17, ptr %command_finished, align 1
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %do.end49.if.end51_crit_edge
  %wait_command = getelementptr inbounds %struct.whiteheat_command_private, ptr %7, i32 0, i32 3
  tail call void @__wake_up(ptr noundef %wait_command, i32 noundef 3, i32 noundef 1, ptr noundef null) #9
  br label %cleanup

if.end52:                                         ; preds = %if.end29
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usb_serial_debug_data.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@command_port_read_callback, %if.then.i)) #9
          to label %usb_serial_debug_data.exit [label %if.then.i], !srcloc !170

if.then.i:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #11
  %dev53 = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usb_serial_debug_data.__UNIQUE_ID_ddebug237, ptr noundef %dev53, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.41, i32 noundef %11, i32 noundef %11, ptr noundef %5) #9
  br label %usb_serial_debug_data.exit

usb_serial_debug_data.exit:                       ; preds = %if.then.i, %if.end52
  %17 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %5, align 1
  %19 = zext i8 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values)
  switch i8 %18, label %usb_serial_debug_data.exit.do.body106_crit_edge [
    i8 16, label %if.then57
    i8 17, label %if.then64
    i8 13, label %do.body73
    i8 10, label %land.lhs.true
  ]

usb_serial_debug_data.exit.do.body106_crit_edge:  ; preds = %usb_serial_debug_data.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body106

if.then57:                                        ; preds = %usb_serial_debug_data.exit
  call void @__sanitizer_cov_trace_pc() #11
  %command_finished58 = getelementptr inbounds %struct.whiteheat_command_private, ptr %7, i32 0, i32 2
  %20 = ptrtoint ptr %command_finished58 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 16, ptr %command_finished58, align 1
  %wait_command59 = getelementptr inbounds %struct.whiteheat_command_private, ptr %7, i32 0, i32 3
  tail call void @__wake_up(ptr noundef %wait_command59, i32 noundef 3, i32 noundef 1, ptr noundef null) #9
  br label %if.end127

if.then64:                                        ; preds = %usb_serial_debug_data.exit
  call void @__sanitizer_cov_trace_pc() #11
  %command_finished65 = getelementptr inbounds %struct.whiteheat_command_private, ptr %7, i32 0, i32 2
  %21 = ptrtoint ptr %command_finished65 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 17, ptr %command_finished65, align 1
  %wait_command66 = getelementptr inbounds %struct.whiteheat_command_private, ptr %7, i32 0, i32 3
  tail call void @__wake_up(ptr noundef %wait_command66, i32 noundef 3, i32 noundef 1, ptr noundef null) #9
  br label %if.end127

do.body73:                                        ; preds = %usb_serial_debug_data.exit
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @command_port_read_callback.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@command_port_read_callback, %if.then85)) #9
          to label %if.end127 [label %if.then85], !srcloc !170

if.then85:                                        ; preds = %do.body73
  call void @__sanitizer_cov_trace_pc() #11
  %dev86 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %22 = ptrtoint ptr %dev86 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev86, align 4
  %dev87 = getelementptr inbounds %struct.usb_device, ptr %23, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @command_port_read_callback.__UNIQUE_ID_ddebug242, ptr noundef %dev87, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.41) #9
  br label %if.end127

land.lhs.true:                                    ; preds = %usb_serial_debug_data.exit
  %24 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %actual_length, align 4
  %sub = add i32 %25, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 65, i32 %sub)
  %cmp97 = icmp ult i32 %sub, 65
  br i1 %cmp97, label %if.then99, label %land.lhs.true.do.body106_crit_edge

land.lhs.true.do.body106_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body106

if.then99:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %result_buffer = getelementptr inbounds %struct.whiteheat_command_private, ptr %7, i32 0, i32 4
  %arrayidx100 = getelementptr i8, ptr %5, i32 1
  %26 = call ptr @memcpy(ptr %result_buffer, ptr %arrayidx100, i32 %sub)
  %command_finished103 = getelementptr inbounds %struct.whiteheat_command_private, ptr %7, i32 0, i32 2
  %27 = ptrtoint ptr %command_finished103 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 16, ptr %command_finished103, align 1
  %wait_command104 = getelementptr inbounds %struct.whiteheat_command_private, ptr %7, i32 0, i32 3
  tail call void @__wake_up(ptr noundef %wait_command104, i32 noundef 3, i32 noundef 1, ptr noundef null) #9
  br label %if.end127

do.body106:                                       ; preds = %land.lhs.true.do.body106_crit_edge, %usb_serial_debug_data.exit.do.body106_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @command_port_read_callback.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@command_port_read_callback, %if.then118)) #9
          to label %if.end127 [label %if.then118], !srcloc !170

if.then118:                                       ; preds = %do.body106
  call void @__sanitizer_cov_trace_pc() #11
  %dev119 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %28 = ptrtoint ptr %dev119 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev119, align 4
  %dev120 = getelementptr inbounds %struct.usb_device, ptr %29, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @command_port_read_callback.__UNIQUE_ID_ddebug243, ptr noundef %dev120, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.41) #9
  br label %if.end127

if.end127:                                        ; preds = %if.then118, %do.body106, %if.then99, %if.then85, %do.body73, %if.then64, %if.then57
  %read_urb = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 14
  %30 = ptrtoint ptr %read_urb to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %read_urb, align 4
  %call128 = tail call i32 @usb_submit_urb(ptr noundef %31, i32 noundef 2592) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call128)
  %tobool129.not = icmp eq i32 %call128, 0
  br i1 %tobool129.not, label %if.end127.cleanup_crit_edge, label %do.body131

if.end127.cleanup_crit_edge:                      ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body131:                                       ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @command_port_read_callback.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@command_port_read_callback, %if.then143)) #9
          to label %cleanup [label %if.then143], !srcloc !170

if.then143:                                       ; preds = %do.body131
  call void @__sanitizer_cov_trace_pc() #11
  %dev144 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %32 = ptrtoint ptr %dev144 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev144, align 4
  %dev145 = getelementptr inbounds %struct.usb_device, ptr %33, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @command_port_read_callback.__UNIQUE_ID_ddebug244, ptr noundef %dev145, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.41, i32 noundef %call128) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then143, %do.body131, %if.end127.cleanup_crit_edge, %if.end51, %if.then23, %do.body11, %if.then6, %do.body
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @firm_setup_port(ptr noundef %tty) unnamed_addr #2 align 64 {
entry:
  %port_settings = alloca %struct.whiteheat_port_settings, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %dev1 = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  call void @llvm.lifetime.start.p0(i64 13, ptr nonnull %port_settings) #9
  %2 = getelementptr inbounds %struct.whiteheat_port_settings, ptr %port_settings, i32 0, i32 1
  %3 = getelementptr inbounds %struct.whiteheat_port_settings, ptr %port_settings, i32 0, i32 2
  %4 = getelementptr inbounds %struct.whiteheat_port_settings, ptr %port_settings, i32 0, i32 3
  %5 = getelementptr inbounds %struct.whiteheat_port_settings, ptr %port_settings, i32 0, i32 4
  %6 = getelementptr inbounds %struct.whiteheat_port_settings, ptr %port_settings, i32 0, i32 5
  %7 = getelementptr inbounds %struct.whiteheat_port_settings, ptr %port_settings, i32 0, i32 6
  %8 = getelementptr inbounds %struct.whiteheat_port_settings, ptr %port_settings, i32 0, i32 7
  %9 = getelementptr inbounds %struct.whiteheat_port_settings, ptr %port_settings, i32 0, i32 8
  %termios = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13
  %c_cflag = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 2
  %10 = getelementptr inbounds i8, ptr %port_settings, i32 1
  %11 = call ptr @memset(ptr %10, i32 255, i32 12)
  %12 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %c_cflag, align 4
  %port_number = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 4
  %14 = ptrtoint ptr %port_number to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %port_number, align 4
  %add = add i8 %15, 1
  %16 = ptrtoint ptr %port_settings to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %add, ptr %port_settings, align 1
  %call = tail call zeroext i8 @tty_get_char_size(i32 noundef %13) #9
  %17 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %call, ptr %3, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @firm_setup_port.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@firm_setup_port, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !170

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %conv8 = zext i8 %call to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @firm_setup_port.__UNIQUE_ID_ddebug250, ptr noundef %dev1, ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.59, i32 noundef %conv8) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %and = and i32 %13, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool9.not = icmp eq i32 %and, 0
  br i1 %tobool9.not, label %do.end.do.body31_crit_edge, label %if.then10

do.end.do.body31_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body31

if.then10:                                        ; preds = %do.end
  %and11 = and i32 %13, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  %and20 = and i32 %13, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool12.not, label %if.else19, label %if.then13

if.then13:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  %.234 = select i1 %tobool21.not, i8 48, i8 49
  br label %do.body31

if.else19:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  %.235 = select i1 %tobool21.not, i8 101, i8 111
  br label %do.body31

do.body31:                                        ; preds = %if.else19, %if.then13, %do.end.do.body31_crit_edge
  %.sink = phi i8 [ %.234, %if.then13 ], [ %.235, %if.else19 ], [ 110, %do.end.do.body31_crit_edge ]
  %18 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %.sink, ptr %5, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @firm_setup_port.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@firm_setup_port, %if.then43)) #9
          to label %do.end48 [label %if.then43], !srcloc !170

if.then43:                                        ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #11
  %19 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %5, align 1
  %conv45 = zext i8 %20 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @firm_setup_port.__UNIQUE_ID_ddebug251, ptr noundef %dev1, ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.59, i32 noundef %conv45) #9
  br label %do.end48

do.end48:                                         ; preds = %if.then43, %do.body31
  %and49 = and i32 %13, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %tobool50.not = icmp eq i32 %and49, 0
  %. = select i1 %tobool50.not, i8 1, i8 2
  %21 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %., ptr %4, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @firm_setup_port.__UNIQUE_ID_ddebug252, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@firm_setup_port, %if.then67)) #9
          to label %do.end72 [label %if.then67], !srcloc !170

if.then67:                                        ; preds = %do.end48
  call void @__sanitizer_cov_trace_pc() #11
  %conv69 = zext i8 %. to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @firm_setup_port.__UNIQUE_ID_ddebug252, ptr noundef %dev1, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.59, i32 noundef %conv69) #9
  br label %do.end72

do.end72:                                         ; preds = %if.then67, %do.end48
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %13)
  %tobool74.not = icmp sgt i32 %13, -1
  %.207 = select i1 %tobool74.not, i8 0, i8 -120
  %22 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %.207, ptr %9, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @firm_setup_port.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@firm_setup_port, %if.then91)) #9
          to label %do.end113 [label %if.then91], !srcloc !170

if.then91:                                        ; preds = %do.end72
  call void @__sanitizer_cov_trace_pc() #11
  %conv93 = zext i8 %.207 to i32
  %and94 = and i32 %conv93, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and94)
  %tobool95.not = icmp eq i32 %and94, 0
  %cond = select i1 %tobool95.not, ptr @.str.65, ptr @.str.64
  %and98 = and i32 %conv93, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and98)
  %tobool99.not = icmp eq i32 %and98, 0
  %cond100 = select i1 %tobool99.not, ptr @.str.65, ptr @.str.66
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @firm_setup_port.__UNIQUE_ID_ddebug253, ptr noundef %dev1, ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.59, ptr noundef nonnull %cond, ptr noundef nonnull %cond100, ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.65) #9
  br label %do.end113

do.end113:                                        ; preds = %if.then91, %do.end72
  %23 = ptrtoint ptr %termios to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %termios, align 4
  %and115 = and i32 %24, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and115)
  %tobool116.not = icmp eq i32 %and115, 0
  %.208 = select i1 %tobool116.not, i8 110, i8 98
  %25 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %.208, ptr %6, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @firm_setup_port.__UNIQUE_ID_ddebug254, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@firm_setup_port, %if.then133)) #9
          to label %do.end138 [label %if.then133], !srcloc !170

if.then133:                                       ; preds = %do.end113
  call void @__sanitizer_cov_trace_pc() #11
  %conv135 = zext i8 %.208 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @firm_setup_port.__UNIQUE_ID_ddebug254, ptr noundef %dev1, ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.59, i32 noundef %conv135) #9
  br label %do.end138

do.end138:                                        ; preds = %if.then133, %do.end113
  %arrayidx = getelementptr %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 5, i32 8
  %26 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx, align 1
  %28 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %27, ptr %8, align 1
  %arrayidx142 = getelementptr %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 5, i32 9
  %29 = ptrtoint ptr %arrayidx142 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx142, align 1
  %31 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %30, ptr %7, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @firm_setup_port.__UNIQUE_ID_ddebug255, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@firm_setup_port, %if.then155)) #9
          to label %do.end162 [label %if.then155], !srcloc !170

if.then155:                                       ; preds = %do.end138
  call void @__sanitizer_cov_trace_pc() #11
  %conv157 = zext i8 %27 to i32
  %conv159 = zext i8 %30 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @firm_setup_port.__UNIQUE_ID_ddebug255, ptr noundef %dev1, ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.59, i32 noundef %conv157, i32 noundef %conv159) #9
  br label %do.end162

do.end162:                                        ; preds = %if.then155, %do.end138
  %call.i = tail call i32 @tty_termios_baud_rate(ptr noundef %termios) #9
  %32 = tail call i32 @llvm.bswap.i32(i32 %call.i)
  %33 = ptrtoint ptr %2 to i32
  call void @__asan_storeN_noabort(i32 %33, i32 4)
  store i32 %32, ptr %2, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @firm_setup_port.__UNIQUE_ID_ddebug256, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@firm_setup_port, %if.then177)) #9
          to label %do.end180 [label %if.then177], !srcloc !170

if.then177:                                       ; preds = %do.end162
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @firm_setup_port.__UNIQUE_ID_ddebug256, ptr noundef %dev1, ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.59, i32 noundef %call.i) #9
  br label %do.end180

do.end180:                                        ; preds = %if.then177, %do.end162
  %34 = getelementptr inbounds %struct.whiteheat_port_settings, ptr %port_settings, i32 0, i32 9
  tail call void @tty_encode_baud_rate(ptr noundef %tty, i32 noundef %call.i, i32 noundef %call.i) #9
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 0, ptr %34, align 1
  %call181 = call fastcc i32 @firm_send_command(ptr noundef %1, i8 noundef zeroext 3, ptr noundef nonnull %port_settings, i8 noundef zeroext 13)
  call void @llvm.lifetime.end.p0(i64 13, ptr nonnull %port_settings) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_serial_generic_open(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @firm_send_command(ptr noundef %port, i8 noundef zeroext %command, ptr nocapture noundef readonly %data, i8 noundef zeroext %datasize) unnamed_addr #2 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @firm_send_command.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@firm_send_command, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !170

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %conv = zext i8 %command to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @firm_send_command.__UNIQUE_ID_ddebug245, ptr noundef %dev1, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.53, i32 noundef %conv) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port, align 8
  %arrayidx = getelementptr %struct.usb_serial, ptr %1, i32 0, i32 12, i32 4
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %3, i32 0, i32 32, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %bulk_out_size = getelementptr inbounds %struct.usb_serial_port, ptr %3, i32 0, i32 20
  %6 = ptrtoint ptr %bulk_out_size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bulk_out_size, align 4
  %conv7 = zext i8 %datasize to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %conv7)
  %cmp.not = icmp sgt i32 %7, %conv7
  br i1 %cmp.not, label %if.end10, label %do.end.cleanup163_crit_edge

do.end.cleanup163_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup163

if.end10:                                         ; preds = %do.end
  %add = add nuw nsw i32 %conv7, 1
  tail call void @mutex_lock_nested(ptr noundef %5, i32 noundef 0) #9
  %command_finished = getelementptr inbounds %struct.whiteheat_command_private, ptr %5, i32 0, i32 2
  %8 = ptrtoint ptr %command_finished to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %command_finished, align 1
  %write_urb = getelementptr inbounds %struct.usb_serial_port, ptr %3, i32 0, i32 21
  %9 = ptrtoint ptr %write_urb to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %write_urb, align 8
  %transfer_buffer11 = getelementptr inbounds %struct.urb, ptr %10, i32 0, i32 14
  %11 = ptrtoint ptr %transfer_buffer11 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %transfer_buffer11, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %command, ptr %12, align 1
  %arrayidx13 = getelementptr i8, ptr %12, i32 1
  %14 = call ptr @memcpy(ptr %arrayidx13, ptr %data, i32 %conv7)
  %15 = load ptr, ptr %write_urb, align 8
  %transfer_buffer_length = getelementptr inbounds %struct.urb, ptr %15, i32 0, i32 19
  %16 = ptrtoint ptr %transfer_buffer_length to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %add, ptr %transfer_buffer_length, align 4
  %17 = load ptr, ptr %write_urb, align 8
  %call19 = tail call i32 @usb_submit_urb(ptr noundef %17, i32 noundef 3072) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end38, label %do.body22

do.body22:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @firm_send_command.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@firm_send_command, %if.then34)) #9
          to label %exit [label %if.then34], !srcloc !170

if.then34:                                        ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @firm_send_command.__UNIQUE_ID_ddebug246, ptr noundef %dev1, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.53) #9
  br label %exit

if.end38:                                         ; preds = %if.end10
  tail call void @__might_sleep(ptr noundef nonnull @.str.8, i32 noundef 566) #9
  %18 = ptrtoint ptr %command_finished to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %command_finished, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool46.not = icmp eq i8 %19, 0
  br i1 %tobool46.not, label %if.then60, label %if.end38.if.end93_crit_edge

if.end38.if.end93_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end93

if.then60:                                        ; preds = %if.end38
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #9
  %20 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #9
  %wait_command = getelementptr inbounds %struct.whiteheat_command_private, ptr %5, i32 0, i32 3
  %call62229 = call i32 @prepare_to_wait_event(ptr noundef %wait_command, ptr noundef nonnull %__wq_entry, i32 noundef 2) #9
  %21 = ptrtoint ptr %command_finished to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %command_finished, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool65.not230.not = icmp eq i8 %22, 0
  br i1 %tobool65.not230.not, label %if.then60.cleanup_crit_edge, label %if.end88.thread

if.then60.cleanup_crit_edge:                      ; preds = %if.then60
  br label %cleanup

if.end88.thread:                                  ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #11
  call void @finish_wait(ptr noundef %wait_command, ptr noundef nonnull %__wq_entry) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #9
  br label %if.end93thread-pre-split

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.then60.cleanup_crit_edge
  %__ret61.1232 = phi i32 [ %__ret61.1, %cleanup.cleanup_crit_edge ], [ 200, %if.then60.cleanup_crit_edge ]
  %call85 = call i32 @schedule_timeout(i32 noundef %__ret61.1232) #9
  %call62 = call i32 @prepare_to_wait_event(ptr noundef %wait_command, ptr noundef nonnull %__wq_entry, i32 noundef 2) #9
  %23 = ptrtoint ptr %command_finished to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %command_finished, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool65.not = icmp eq i8 %24, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85)
  %tobool70.not = icmp eq i32 %call85, 0
  %spec.store.select170 = select i1 %tobool70.not, i32 1, i32 %call85
  %__ret61.1 = select i1 %tobool65.not, i32 %call85, i32 %spec.store.select170
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret61.1)
  %tobool77.not = icmp eq i32 %__ret61.1, 0
  %not.tobool65.not = xor i1 %tobool65.not, true
  %25 = select i1 %not.tobool65.not, i1 true, i1 %tobool77.not
  br i1 %25, label %if.end88, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end88:                                         ; preds = %cleanup
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret61.1)
  %phi.cmp = icmp eq i32 %__ret61.1, 0
  call void @finish_wait(ptr noundef %wait_command, ptr noundef nonnull %__wq_entry) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #9
  br i1 %phi.cmp, label %if.then91, label %if.end88.if.end93thread-pre-split_crit_edge

if.end88.if.end93thread-pre-split_crit_edge:      ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end93thread-pre-split

if.then91:                                        ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #11
  %26 = ptrtoint ptr %write_urb to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %write_urb, align 8
  call void @usb_kill_urb(ptr noundef %27) #9
  br label %if.end93thread-pre-split

if.end93thread-pre-split:                         ; preds = %if.then91, %if.end88.if.end93thread-pre-split_crit_edge, %if.end88.thread
  %28 = ptrtoint ptr %command_finished to i32
  call void @__asan_load1_noabort(i32 %28)
  %.pr = load i8, ptr %command_finished, align 1
  br label %if.end93

if.end93:                                         ; preds = %if.end93thread-pre-split, %if.end38.if.end93_crit_edge
  %29 = phi i8 [ %.pr, %if.end93thread-pre-split ], [ %19, %if.end38.if.end93_crit_edge ]
  %30 = zext i8 %29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.72)
  switch i8 %29, label %if.end93.exit_crit_edge [
    i8 0, label %do.body99
    i8 17, label %do.body121
    i8 16, label %do.body143
  ]

if.end93.exit_crit_edge:                          ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit

do.body99:                                        ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @firm_send_command.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@firm_send_command, %if.then111)) #9
          to label %exit [label %if.then111], !srcloc !170

if.then111:                                       ; preds = %do.body99
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @firm_send_command.__UNIQUE_ID_ddebug247, ptr noundef %dev1, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.53) #9
  br label %exit

do.body121:                                       ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @firm_send_command.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@firm_send_command, %if.then133)) #9
          to label %exit [label %if.then133], !srcloc !170

if.then133:                                       ; preds = %do.body121
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @firm_send_command.__UNIQUE_ID_ddebug248, ptr noundef %dev1, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.53) #9
  br label %exit

do.body143:                                       ; preds = %if.end93
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @firm_send_command.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@firm_send_command, %if.then155)) #9
          to label %do.end158 [label %if.then155], !srcloc !170

if.then155:                                       ; preds = %do.body143
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @firm_send_command.__UNIQUE_ID_ddebug249, ptr noundef %dev1, ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.53) #9
  br label %do.end158

do.end158:                                        ; preds = %if.then155, %do.body143
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %command)
  %cond = icmp eq i8 %command, 10
  br i1 %cond, label %sw.bb, label %do.end158.exit_crit_edge

do.end158.exit_crit_edge:                         ; preds = %do.end158
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit

sw.bb:                                            ; preds = %do.end158
  call void @__sanitizer_cov_trace_pc() #11
  %driver_data.i.i217 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32, i32 8
  %31 = ptrtoint ptr %driver_data.i.i217 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %driver_data.i.i217, align 4
  %result_buffer = getelementptr inbounds %struct.whiteheat_command_private, ptr %5, i32 0, i32 4
  %33 = ptrtoint ptr %result_buffer to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %result_buffer, align 4
  %35 = ptrtoint ptr %32 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %34, ptr %32, align 1
  br label %exit

exit:                                             ; preds = %sw.bb, %do.end158.exit_crit_edge, %if.then133, %do.body121, %if.then111, %do.body99, %if.end93.exit_crit_edge, %if.then34, %do.body22
  %retval2.0 = phi i32 [ %call19, %if.then34 ], [ 0, %sw.bb ], [ 0, %do.end158.exit_crit_edge ], [ -110, %if.then111 ], [ -5, %if.then133 ], [ 0, %if.end93.exit_crit_edge ], [ %call19, %do.body22 ], [ -110, %do.body99 ], [ -5, %do.body121 ]
  call void @mutex_unlock(ptr noundef %5) #9
  br label %cleanup163

cleanup163:                                       ; preds = %exit, %do.end.cleanup163_crit_edge
  %retval.0 = phi i32 [ %retval2.0, %exit ], [ -5, %do.end.cleanup163_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_kill_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @tty_get_char_size(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_encode_baud_rate(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_termios_baud_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_serial_generic_close(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 71)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 71)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !40, !41, !42, !43, !44, !45, !47, !48, !49, !51, !52, !53, !55, !56, !57, !59, !60, !61, !63, !64, !65, !66, !68, !69, !71, !72, !74, !75, !76, !78, !79, !80, !82, !83, !84, !86, !87, !88, !90, !91, !92, !94, !95, !97, !98, !100, !101, !103, !104, !106, !107, !109, !110, !111, !112, !114, !115, !116, !117, !119, !120, !121, !123, !124, !126, !127, !129, !130, !132, !133, !135, !136, !137, !139, !140, !142, !143, !145, !146, !147, !148, !149, !150, !151, !153, !154, !156, !157, !159}
!llvm.module.flags = !{!160, !161, !162, !163, !164, !165, !166, !167}
!llvm.ident = !{!168}

!0 = !{ptr @__initcall__kmod_whiteheat__257_804_usb_serial_module_init6, !1, !"__initcall__kmod_whiteheat__257_804_usb_serial_module_init6", i1 false, i1 false}
!1 = !{!"../drivers/usb/serial/whiteheat.c", i32 804, i32 1}
!2 = !{ptr @__exitcall_usb_serial_module_exit, !1, !"__exitcall_usb_serial_module_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author258, !4, !"__UNIQUE_ID_author258", i1 false, i1 false}
!4 = !{!"../drivers/usb/serial/whiteheat.c", i32 806, i32 1}
!5 = !{ptr @__UNIQUE_ID_description259, !6, !"__UNIQUE_ID_description259", i1 false, i1 false}
!6 = !{!"../drivers/usb/serial/whiteheat.c", i32 807, i32 1}
!7 = !{ptr @__UNIQUE_ID_file260, !8, !"__UNIQUE_ID_file260", i1 false, i1 false}
!8 = !{!"../drivers/usb/serial/whiteheat.c", i32 808, i32 1}
!9 = !{ptr @__UNIQUE_ID_license261, !8, !"__UNIQUE_ID_license261", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_firmware262, !11, !"__UNIQUE_ID_firmware262", i1 false, i1 false}
!11 = !{!"../drivers/usb/serial/whiteheat.c", i32 810, i32 1}
!12 = !{ptr @__UNIQUE_ID_firmware263, !13, !"__UNIQUE_ID_firmware263", i1 false, i1 false}
!13 = !{!"../drivers/usb/serial/whiteheat.c", i32 811, i32 1}
!14 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @id_table_combined, !16, !"id_table_combined", i1 false, i1 false}
!16 = !{!"../drivers/usb/serial/whiteheat.c", i32 64, i32 35}
!17 = !{ptr @serial_drivers, !18, !"serial_drivers", i1 false, i1 false}
!18 = !{!"../drivers/usb/serial/whiteheat.c", i32 132, i32 41}
!19 = !{ptr @.str.1, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/usb/serial/whiteheat.c", i32 100, i32 18}
!21 = !{ptr @.str.2, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/usb/serial/whiteheat.c", i32 98, i32 12}
!23 = !{ptr @whiteheat_fake_device, !24, !"whiteheat_fake_device", i1 false, i1 false}
!24 = !{!"../drivers/usb/serial/whiteheat.c", i32 95, i32 33}
!25 = !{ptr @id_table_prerenumeration, !26, !"id_table_prerenumeration", i1 false, i1 false}
!26 = !{!"../drivers/usb/serial/whiteheat.c", i32 59, i32 35}
!27 = !{ptr @.str.3, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/usb/serial/whiteheat.c", i32 197, i32 59}
!29 = !{ptr @.str.4, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/usb/serial/whiteheat.c", i32 199, i32 60}
!31 = !{ptr @.str.5, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/usb/serial/whiteheat.c", i32 112, i32 18}
!33 = !{ptr @whiteheat_device, !34, !"whiteheat_device", i1 false, i1 false}
!34 = !{!"../drivers/usb/serial/whiteheat.c", i32 107, i32 33}
!35 = !{ptr @id_table_std, !36, !"id_table_std", i1 false, i1 false}
!36 = !{!"../drivers/usb/serial/whiteheat.c", i32 54, i32 35}
!37 = !{ptr @.str.6, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/usb/serial/whiteheat.c", i32 251, i32 3}
!39 = !{ptr @.str.7, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.8, !38, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.9, !38, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.10, !38, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @whiteheat_attach._entry, !38, !"_entry", i1 false, i1 false}
!44 = !{ptr @whiteheat_attach._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.12, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/usb/serial/whiteheat.c", i32 255, i32 3}
!47 = !{ptr @whiteheat_attach._entry.11, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @whiteheat_attach._entry_ptr.13, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.15, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/usb/serial/whiteheat.c", i32 267, i32 3}
!51 = !{ptr @whiteheat_attach._entry.14, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @whiteheat_attach._entry_ptr.16, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.18, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/usb/serial/whiteheat.c", i32 271, i32 3}
!55 = !{ptr @whiteheat_attach._entry.17, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @whiteheat_attach._entry_ptr.19, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.21, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/usb/serial/whiteheat.c", i32 275, i32 3}
!59 = !{ptr @whiteheat_attach._entry.20, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @whiteheat_attach._entry_ptr.22, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.24, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/usb/serial/whiteheat.c", i32 282, i32 2}
!63 = !{ptr @.str.25, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @whiteheat_attach._entry.23, !62, !"_entry", i1 false, i1 false}
!65 = !{ptr @whiteheat_attach._entry_ptr.26, !62, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @whiteheat_attach.__key, !67, !"__key", i1 false, i1 false}
!67 = !{!"../drivers/usb/serial/whiteheat.c", i32 291, i32 2}
!68 = !{ptr @.str.27, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @whiteheat_attach.__key.28, !70, !"__key", i1 false, i1 false}
!70 = !{!"../drivers/usb/serial/whiteheat.c", i32 293, i32 2}
!71 = !{ptr @.str.29, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @.str.31, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/usb/serial/whiteheat.c", i32 304, i32 2}
!74 = !{ptr @whiteheat_attach._entry.30, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @whiteheat_attach._entry_ptr.32, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.34, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/usb/serial/whiteheat.c", i32 307, i32 2}
!78 = !{ptr @whiteheat_attach._entry.33, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @whiteheat_attach._entry_ptr.35, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.37, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/usb/serial/whiteheat.c", i32 310, i32 2}
!82 = !{ptr @whiteheat_attach._entry.36, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @whiteheat_attach._entry_ptr.38, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.39, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/usb/serial/whiteheat.c", i32 469, i32 3}
!86 = !{ptr @.str.40, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @command_port_write_callback.__UNIQUE_ID_ddebug238, !85, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!88 = !{ptr @.str.41, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/usb/serial/whiteheat.c", i32 485, i32 3}
!90 = !{ptr @.str.42, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @command_port_read_callback.__UNIQUE_ID_ddebug239, !89, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!92 = !{ptr @.str.43, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/usb/serial/whiteheat.c", i32 489, i32 3}
!94 = !{ptr @command_port_read_callback.__UNIQUE_ID_ddebug240, !93, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!95 = !{ptr @.str.44, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/usb/serial/whiteheat.c", i32 493, i32 3}
!97 = !{ptr @command_port_read_callback.__UNIQUE_ID_ddebug241, !96, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!98 = !{ptr @.str.45, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/usb/serial/whiteheat.c", i32 511, i32 3}
!100 = !{ptr @command_port_read_callback.__UNIQUE_ID_ddebug242, !99, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!101 = !{ptr @.str.46, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/usb/serial/whiteheat.c", i32 519, i32 3}
!103 = !{ptr @command_port_read_callback.__UNIQUE_ID_ddebug243, !102, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!104 = !{ptr @.str.47, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/usb/serial/whiteheat.c", i32 524, i32 3}
!106 = !{ptr @command_port_read_callback.__UNIQUE_ID_ddebug244, !105, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!107 = !{ptr @.str.48, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../include/linux/usb/serial.h", i32 393, i32 2}
!109 = !{ptr @.str.49, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @.str.50, !108, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @usb_serial_debug_data.__UNIQUE_ID_ddebug237, !108, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!112 = !{ptr @.str.51, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/usb/serial/whiteheat.c", i32 776, i32 4}
!114 = !{ptr @.str.52, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @start_command_port._entry, !113, !"_entry", i1 false, i1 false}
!116 = !{ptr @start_command_port._entry_ptr, !113, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.53, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/usb/serial/whiteheat.c", i32 543, i32 2}
!119 = !{ptr @.str.54, !118, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @firm_send_command.__UNIQUE_ID_ddebug245, !118, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!121 = !{ptr @.str.55, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/usb/serial/whiteheat.c", i32 560, i32 3}
!123 = !{ptr @firm_send_command.__UNIQUE_ID_ddebug246, !122, !"__UNIQUE_ID_ddebug246", i1 false, i1 false}
!124 = !{ptr @.str.56, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/usb/serial/whiteheat.c", i32 571, i32 3}
!126 = !{ptr @firm_send_command.__UNIQUE_ID_ddebug247, !125, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!127 = !{ptr @.str.57, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/usb/serial/whiteheat.c", i32 577, i32 3}
!129 = !{ptr @firm_send_command.__UNIQUE_ID_ddebug248, !128, !"__UNIQUE_ID_ddebug248", i1 false, i1 false}
!130 = !{ptr @.str.58, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/usb/serial/whiteheat.c", i32 583, i32 3}
!132 = !{ptr @firm_send_command.__UNIQUE_ID_ddebug249, !131, !"__UNIQUE_ID_ddebug249", i1 false, i1 false}
!133 = !{ptr @.str.59, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/usb/serial/whiteheat.c", i32 629, i32 2}
!135 = !{ptr @.str.60, !134, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @firm_setup_port.__UNIQUE_ID_ddebug250, !134, !"__UNIQUE_ID_ddebug250", i1 false, i1 false}
!137 = !{ptr @.str.61, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/usb/serial/whiteheat.c", i32 645, i32 2}
!139 = !{ptr @firm_setup_port.__UNIQUE_ID_ddebug251, !138, !"__UNIQUE_ID_ddebug251", i1 false, i1 false}
!140 = !{ptr @.str.62, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/usb/serial/whiteheat.c", i32 652, i32 2}
!142 = !{ptr @firm_setup_port.__UNIQUE_ID_ddebug252, !141, !"__UNIQUE_ID_ddebug252", i1 false, i1 false}
!143 = !{ptr @.str.63, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/usb/serial/whiteheat.c", i32 660, i32 2}
!145 = !{ptr @firm_setup_port.__UNIQUE_ID_ddebug253, !144, !"__UNIQUE_ID_ddebug253", i1 false, i1 false}
!146 = !{ptr @.str.64, !144, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @.str.65, !144, !"<string literal>", i1 false, i1 false}
!148 = !{ptr @.str.66, !144, !"<string literal>", i1 false, i1 false}
!149 = distinct !{null, !144, !"<string literal>", i1 false, i1 false}
!150 = distinct !{null, !144, !"<string literal>", i1 false, i1 false}
!151 = !{ptr @.str.69, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/usb/serial/whiteheat.c", i32 671, i32 2}
!153 = !{ptr @firm_setup_port.__UNIQUE_ID_ddebug254, !152, !"__UNIQUE_ID_ddebug254", i1 false, i1 false}
!154 = !{ptr @.str.70, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/usb/serial/whiteheat.c", i32 675, i32 2}
!156 = !{ptr @firm_setup_port.__UNIQUE_ID_ddebug255, !155, !"__UNIQUE_ID_ddebug255", i1 false, i1 false}
!157 = !{ptr @.str.71, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/usb/serial/whiteheat.c", i32 680, i32 2}
!159 = !{ptr @firm_setup_port.__UNIQUE_ID_ddebug256, !158, !"__UNIQUE_ID_ddebug256", i1 false, i1 false}
!160 = !{i32 1, !"wchar_size", i32 2}
!161 = !{i32 1, !"min_enum_size", i32 4}
!162 = !{i32 8, !"branch-target-enforcement", i32 0}
!163 = !{i32 8, !"sign-return-address", i32 0}
!164 = !{i32 8, !"sign-return-address-all", i32 0}
!165 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!166 = !{i32 7, !"uwtable", i32 1}
!167 = !{i32 7, !"frame-pointer", i32 2}
!168 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!169 = !{!"auto-init"}
!170 = !{i64 2148713625, i64 2148713630, i64 2148713643, i64 2148713687, i64 2148713721, i64 2148713742}
