; ModuleID = '/llk/IR_all_yes/drivers/usb/serial/keyspan.c_pt.bc'
source_filename = "../drivers/usb/serial/keyspan.c"
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
%struct.keyspan_device_details = type { i32, i32, i32, i32, i32, [4 x i32], [4 x i32], [4 x i32], [4 x i32], i32, i32, i32, ptr, i32 }
%struct.callbacks = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.keyspan_serial_private = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usb_serial = type { ptr, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, [16 x ptr], %struct.kref, %struct.mutex, ptr }
%struct.keyspan_port_private = type { i32, i32, ptr, [2 x ptr], [2 x ptr], [2 x ptr], [2 x ptr], ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32 }
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
%struct.usb_interface = type { ptr, ptr, i32, ptr, i32, i32, i8, %struct.device, ptr, %struct.work_struct }
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.usb_host_interface = type { %struct.usb_interface_descriptor, i32, ptr, ptr, ptr }
%struct.keyspan_usa26_portStatusMessage = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.keyspan_usa28_portStatusMessage = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.keyspan_usa49_portStatusMessage = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.keyspan_usa90_portStatusMessage = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.keyspan_usa67_portStatusMessage = type { i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.keyspan_usa26_portControlMessage = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.keyspan_usa28_portControlMessage = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.keyspan_usa49_portControlMessage = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.usb_ctrlrequest = type { i8, i8, i16, i16, i16 }
%struct.keyspan_usa90_portControlMessage = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.keyspan_usa67_portControlMessage = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }

@__initcall__kmod_keyspan__315_3087_usb_serial_module_init6 = internal global ptr @usb_serial_module_init, section ".initcall6.init", align 4
@serial_drivers = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @keyspan_pre_device, ptr @keyspan_1port_device, ptr @keyspan_2port_device, ptr @keyspan_4port_device, ptr null], [44 x i8] zeroinitializer }, align 32
@__exitcall_usb_serial_module_exit = internal global ptr @usb_serial_module_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author316 = internal constant [43 x i8] c"keyspan.author=Hugh Blemings <hugh@misc.nu\00", section ".modinfo", align 1
@__UNIQUE_ID_description317 = internal constant [59 x i8] c"keyspan.description=Keyspan USB to Serial Converter Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file318 = internal constant [40 x i8] c"keyspan.file=drivers/usb/serial/keyspan\00", section ".modinfo", align 1
@__UNIQUE_ID_license319 = internal constant [20 x i8] c"keyspan.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware320 = internal constant [34 x i8] c"keyspan.firmware=keyspan/usa28.fw\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware321 = internal constant [35 x i8] c"keyspan.firmware=keyspan/usa28x.fw\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware322 = internal constant [36 x i8] c"keyspan.firmware=keyspan/usa28xa.fw\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware323 = internal constant [36 x i8] c"keyspan.firmware=keyspan/usa28xb.fw\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware324 = internal constant [34 x i8] c"keyspan.firmware=keyspan/usa19.fw\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware325 = internal constant [36 x i8] c"keyspan.firmware=keyspan/usa19qi.fw\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware326 = internal constant [32 x i8] c"keyspan.firmware=keyspan/mpr.fw\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware327 = internal constant [36 x i8] c"keyspan.firmware=keyspan/usa19qw.fw\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware328 = internal constant [35 x i8] c"keyspan.firmware=keyspan/usa18x.fw\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware329 = internal constant [35 x i8] c"keyspan.firmware=keyspan/usa19w.fw\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware330 = internal constant [35 x i8] c"keyspan.firmware=keyspan/usa49w.fw\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware331 = internal constant [37 x i8] c"keyspan.firmware=keyspan/usa49wlc.fw\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"keyspan\00", [24 x i8] zeroinitializer }, align 32
@keyspan_ids_combined = internal constant { [27 x %struct.usb_device_id], [184 x i8] } { [27 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 1741, i16 261, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1741, i16 259, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1741, i16 262, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1741, i16 267, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1741, i16 280, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1741, i16 283, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1741, i16 257, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1741, i16 258, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1741, i16 276, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1741, i16 275, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1741, i16 265, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1741, i16 282, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1741, i16 274, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1741, i16 263, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1741, i16 264, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1741, i16 268, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1741, i16 281, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1741, i16 289, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1741, i16 284, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1741, i16 271, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1741, i16 272, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1741, i16 277, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1741, i16 309, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1741, i16 266, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1741, i16 298, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1741, i16 305, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [184 x i8] zeroinitializer }, align 32
@keyspan_pre_device = internal global { %struct.usb_serial_driver, [72 x i8] } { %struct.usb_serial_driver { ptr @.str.1, ptr @keyspan_pre_ids, %struct.list_head zeroinitializer, %struct.device_driver { ptr @.str.2, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, %struct.usb_dynids zeroinitializer, i8 1, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, ptr @keyspan_fake_startup, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [72 x i8] zeroinitializer }, align 32
@keyspan_1port_device = internal global { %struct.usb_serial_driver, [72 x i8] } { %struct.usb_serial_driver { ptr @.str.26, ptr @keyspan_1port_ids, %struct.list_head zeroinitializer, %struct.device_driver { ptr @.str.27, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, %struct.usb_dynids zeroinitializer, i8 1, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, ptr @keyspan_startup, ptr null, ptr @keyspan_disconnect, ptr @keyspan_release, ptr @keyspan_port_probe, ptr @keyspan_port_remove, ptr null, ptr null, ptr null, ptr @keyspan_open, ptr @keyspan_close, ptr @keyspan_write, ptr @keyspan_write_room, ptr null, ptr null, ptr null, ptr @keyspan_set_termios, ptr @keyspan_break_ctl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @keyspan_tiocmget, ptr @keyspan_tiocmset, ptr null, ptr null, ptr @keyspan_dtr_rts, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [72 x i8] zeroinitializer }, align 32
@keyspan_2port_device = internal global { %struct.usb_serial_driver, [72 x i8] } { %struct.usb_serial_driver { ptr @.str.95, ptr @keyspan_2port_ids, %struct.list_head zeroinitializer, %struct.device_driver { ptr @.str.96, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, %struct.usb_dynids zeroinitializer, i8 2, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, ptr @keyspan_startup, ptr null, ptr @keyspan_disconnect, ptr @keyspan_release, ptr @keyspan_port_probe, ptr @keyspan_port_remove, ptr null, ptr null, ptr null, ptr @keyspan_open, ptr @keyspan_close, ptr @keyspan_write, ptr @keyspan_write_room, ptr null, ptr null, ptr null, ptr @keyspan_set_termios, ptr @keyspan_break_ctl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @keyspan_tiocmget, ptr @keyspan_tiocmset, ptr null, ptr null, ptr @keyspan_dtr_rts, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [72 x i8] zeroinitializer }, align 32
@keyspan_4port_device = internal global { %struct.usb_serial_driver, [72 x i8] } { %struct.usb_serial_driver { ptr @.str.97, ptr @keyspan_4port_ids, %struct.list_head zeroinitializer, %struct.device_driver { ptr @.str.98, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, %struct.usb_dynids zeroinitializer, i8 4, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, ptr @keyspan_startup, ptr null, ptr @keyspan_disconnect, ptr @keyspan_release, ptr @keyspan_port_probe, ptr @keyspan_port_remove, ptr null, ptr null, ptr null, ptr @keyspan_open, ptr @keyspan_close, ptr @keyspan_write, ptr @keyspan_write_room, ptr null, ptr null, ptr null, ptr @keyspan_set_termios, ptr @keyspan_break_ctl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @keyspan_tiocmget, ptr @keyspan_tiocmset, ptr null, ptr null, ptr @keyspan_dtr_rts, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [72 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Keyspan - (without firmware)\00", [35 x i8] zeroinitializer }, align 32
@keyspan_pre_ids = internal constant { [13 x %struct.usb_device_id], [72 x i8] } { [13 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 1741, i16 261, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1741, i16 259, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1741, i16 267, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1741, i16 280, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1741, i16 262, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1741, i16 283, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1741, i16 257, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1741, i16 258, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1741, i16 276, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1741, i16 275, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1741, i16 265, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1741, i16 282, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [72 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"keyspan_no_firm\00", [16 x i8] zeroinitializer }, align 32
@keyspan_fake_startup.__UNIQUE_ID_ddebug281 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.3, ptr @.str.4, ptr @.str.5, i8 1, i8 -111, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.3 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"keyspan_fake_startup\00", [43 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/usb/serial/keyspan.c\00", [35 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Keyspan startup version %04x product %04x\0A\00", [53 x i8] zeroinitializer }, align 32
@keyspan_fake_startup.__UNIQUE_ID_ddebug282 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.3, ptr @.str.4, ptr @.str.6, i8 1, i8 -110, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Firmware already loaded.  Quitting.\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"keyspan/usa28.fw\00", [47 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"keyspan/usa28x.fw\00", [46 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"keyspan/usa28xa.fw\00", [45 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"keyspan/usa28xb.fw\00", [45 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"keyspan/usa19.fw\00", [47 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"keyspan/usa19qi.fw\00", [45 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"keyspan/mpr.fw\00", [17 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"keyspan/usa19qw.fw\00", [45 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"keyspan/usa18x.fw\00", [46 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"keyspan/usa19w.fw\00", [46 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"keyspan/usa49w.fw\00", [46 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"keyspan/usa49wlc.fw\00", [44 x i8] zeroinitializer }, align 32
@keyspan_fake_startup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.3, ptr @.str.4, i32 1666, ptr @.str.20, ptr @.str.21 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Unknown product ID (%04x)\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@keyspan_fake_startup._entry_ptr = internal global ptr @keyspan_fake_startup._entry, section ".printk_index", align 4
@keyspan_fake_startup.__UNIQUE_ID_ddebug283 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.3, ptr @.str.4, ptr @.str.22, i8 1, i8 -95, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Uploading Keyspan %s firmware.\0A\00", [32 x i8] zeroinitializer }, align 32
@keyspan_fake_startup._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.3, ptr @.str.4, i32 1674, ptr @.str.20, ptr @.str.21 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to load firmware \22%s\22\0A\00", [34 x i8] zeroinitializer }, align 32
@keyspan_fake_startup._entry_ptr.25 = internal global ptr @keyspan_fake_startup._entry.23, section ".printk_index", align 4
@.str.26 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Keyspan 1 port adapter\00", [41 x i8] zeroinitializer }, align 32
@keyspan_1port_ids = internal constant { [8 x %struct.usb_device_id], [32 x i8] } { [8 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 1741, i16 274, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1741, i16 263, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1741, i16 268, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1741, i16 281, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1741, i16 264, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1741, i16 289, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1741, i16 284, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"keyspan_1\00", [22 x i8] zeroinitializer }, align 32
@keyspan_startup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.4, i32 2784, ptr @.str.20, ptr @.str.21 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s - unknown product id %x\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"keyspan_startup\00", [16 x i8] zeroinitializer }, align 32
@keyspan_startup._entry_ptr = internal global ptr @keyspan_startup._entry, section ".printk_index", align 4
@keyspan_startup.__UNIQUE_ID_ddebug313 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.29, ptr @.str.4, ptr @.str.30, i8 2, i8 -64, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s - submit instat urb failed %d\0A\00", [62 x i8] zeroinitializer }, align 32
@keyspan_startup.__UNIQUE_ID_ddebug314 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.29, ptr @.str.4, ptr @.str.31, i8 2, i8 -63, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s - submit indat urb failed %d\0A\00", [63 x i8] zeroinitializer }, align 32
@usa18x_device_details = internal constant { %struct.keyspan_device_details, [56 x i8] } { %struct.keyspan_device_details { i32 274, i32 0, i32 1, i32 0, i32 1, [4 x i32] [i32 129, i32 0, i32 0, i32 0], [4 x i32] [i32 1, i32 0, i32 0, i32 0], [4 x i32] [i32 133, i32 0, i32 0, i32 0], [4 x i32] [i32 5, i32 0, i32 0, i32 0], i32 135, i32 -1, i32 7, ptr @keyspan_usa19w_calc_baud, i32 12000000 }, [56 x i8] zeroinitializer }, align 32
@usa19_device_details = internal constant { %struct.keyspan_device_details, [56 x i8] } { %struct.keyspan_device_details { i32 263, i32 1, i32 1, i32 1, i32 1, [4 x i32] [i32 129, i32 0, i32 0, i32 0], [4 x i32] [i32 1, i32 0, i32 0, i32 0], [4 x i32] [i32 131, i32 0, i32 0, i32 0], [4 x i32] [i32 3, i32 0, i32 0, i32 0], i32 132, i32 -1, i32 -1, ptr @keyspan_usa19_calc_baud, i32 12000000 }, [56 x i8] zeroinitializer }, align 32
@usa19qi_device_details = internal constant { %struct.keyspan_device_details, [56 x i8] } { %struct.keyspan_device_details { i32 268, i32 1, i32 1, i32 1, i32 1, [4 x i32] [i32 129, i32 0, i32 0, i32 0], [4 x i32] [i32 1, i32 0, i32 0, i32 0], [4 x i32] [i32 131, i32 0, i32 0, i32 0], [4 x i32] [i32 3, i32 0, i32 0, i32 0], i32 132, i32 -1, i32 -1, ptr @keyspan_usa28_calc_baud, i32 12000000 }, [56 x i8] zeroinitializer }, align 32
@mpr_device_details = internal constant { %struct.keyspan_device_details, [56 x i8] } { %struct.keyspan_device_details { i32 284, i32 1, i32 1, i32 1, i32 1, [4 x i32] [i32 129, i32 0, i32 0, i32 0], [4 x i32] [i32 1, i32 0, i32 0, i32 0], [4 x i32] [i32 131, i32 0, i32 0, i32 0], [4 x i32] [i32 3, i32 0, i32 0, i32 0], i32 132, i32 -1, i32 -1, ptr @keyspan_usa28_calc_baud, i32 12000000 }, [56 x i8] zeroinitializer }, align 32
@usa19qw_device_details = internal constant { %struct.keyspan_device_details, [56 x i8] } { %struct.keyspan_device_details { i32 281, i32 0, i32 1, i32 0, i32 1, [4 x i32] [i32 129, i32 0, i32 0, i32 0], [4 x i32] [i32 1, i32 0, i32 0, i32 0], [4 x i32] [i32 133, i32 0, i32 0, i32 0], [4 x i32] [i32 5, i32 0, i32 0, i32 0], i32 135, i32 -1, i32 7, ptr @keyspan_usa19w_calc_baud, i32 24000000 }, [56 x i8] zeroinitializer }, align 32
@usa19w_device_details = internal constant { %struct.keyspan_device_details, [56 x i8] } { %struct.keyspan_device_details { i32 264, i32 0, i32 1, i32 0, i32 1, [4 x i32] [i32 129, i32 0, i32 0, i32 0], [4 x i32] [i32 1, i32 0, i32 0, i32 0], [4 x i32] [i32 133, i32 0, i32 0, i32 0], [4 x i32] [i32 5, i32 0, i32 0, i32 0], i32 135, i32 -1, i32 7, ptr @keyspan_usa19w_calc_baud, i32 24000000 }, [56 x i8] zeroinitializer }, align 32
@usa19hs_device_details = internal constant { %struct.keyspan_device_details, [56 x i8] } { %struct.keyspan_device_details { i32 289, i32 3, i32 1, i32 0, i32 0, [4 x i32] [i32 129, i32 0, i32 0, i32 0], [4 x i32] [i32 1, i32 0, i32 0, i32 0], [4 x i32] [i32 -1, i32 0, i32 0, i32 0], [4 x i32] [i32 2, i32 0, i32 0, i32 0], i32 130, i32 -1, i32 -1, ptr @keyspan_usa19hs_calc_baud, i32 14769231 }, [56 x i8] zeroinitializer }, align 32
@usa28_device_details = internal constant { %struct.keyspan_device_details, [56 x i8] } { %struct.keyspan_device_details { i32 271, i32 1, i32 2, i32 1, i32 1, [4 x i32] [i32 129, i32 131, i32 0, i32 0], [4 x i32] [i32 1, i32 3, i32 0, i32 0], [4 x i32] [i32 133, i32 134, i32 0, i32 0], [4 x i32] [i32 5, i32 6, i32 0, i32 0], i32 135, i32 -1, i32 7, ptr @keyspan_usa28_calc_baud, i32 1843200 }, [56 x i8] zeroinitializer }, align 32
@usa28x_device_details = internal constant { %struct.keyspan_device_details, [56 x i8] } { %struct.keyspan_device_details { i32 272, i32 0, i32 2, i32 0, i32 1, [4 x i32] [i32 129, i32 131, i32 0, i32 0], [4 x i32] [i32 1, i32 3, i32 0, i32 0], [4 x i32] [i32 133, i32 134, i32 0, i32 0], [4 x i32] [i32 5, i32 6, i32 0, i32 0], i32 135, i32 -1, i32 7, ptr @keyspan_usa19w_calc_baud, i32 12000000 }, [56 x i8] zeroinitializer }, align 32
@usa28xa_device_details = internal constant { %struct.keyspan_device_details, [56 x i8] } { %struct.keyspan_device_details { i32 277, i32 0, i32 2, i32 0, i32 1, [4 x i32] [i32 129, i32 131, i32 0, i32 0], [4 x i32] [i32 1, i32 3, i32 0, i32 0], [4 x i32] [i32 133, i32 134, i32 0, i32 0], [4 x i32] [i32 5, i32 6, i32 0, i32 0], i32 135, i32 -1, i32 7, ptr @keyspan_usa19w_calc_baud, i32 12000000 }, [56 x i8] zeroinitializer }, align 32
@usa28xg_device_details = internal constant { %struct.keyspan_device_details, [56 x i8] } { %struct.keyspan_device_details { i32 309, i32 4, i32 2, i32 0, i32 0, [4 x i32] [i32 132, i32 136, i32 0, i32 0], [4 x i32] [i32 2, i32 6, i32 0, i32 0], [4 x i32] [i32 -1, i32 -1, i32 0, i32 0], [4 x i32] [i32 -1, i32 -1, i32 0, i32 0], i32 129, i32 -1, i32 1, ptr @keyspan_usa19w_calc_baud, i32 12000000 }, [56 x i8] zeroinitializer }, align 32
@usa49w_device_details = internal constant { %struct.keyspan_device_details, [56 x i8] } { %struct.keyspan_device_details { i32 266, i32 2, i32 4, i32 0, i32 0, [4 x i32] [i32 129, i32 130, i32 131, i32 132], [4 x i32] [i32 1, i32 2, i32 3, i32 4], [4 x i32] [i32 -1, i32 -1, i32 -1, i32 -1], [4 x i32] [i32 -1, i32 -1, i32 -1, i32 -1], i32 135, i32 -1, i32 7, ptr @keyspan_usa19w_calc_baud, i32 48000000 }, [56 x i8] zeroinitializer }, align 32
@usa49wlc_device_details = internal constant { %struct.keyspan_device_details, [56 x i8] } { %struct.keyspan_device_details { i32 298, i32 2, i32 4, i32 0, i32 0, [4 x i32] [i32 129, i32 130, i32 131, i32 132], [4 x i32] [i32 1, i32 2, i32 3, i32 4], [4 x i32] [i32 -1, i32 -1, i32 -1, i32 -1], [4 x i32] [i32 -1, i32 -1, i32 -1, i32 -1], i32 135, i32 -1, i32 7, ptr @keyspan_usa19w_calc_baud, i32 24000000 }, [56 x i8] zeroinitializer }, align 32
@usa49wg_device_details = internal constant { %struct.keyspan_device_details, [56 x i8] } { %struct.keyspan_device_details { i32 305, i32 2, i32 4, i32 0, i32 0, [4 x i32] [i32 -1, i32 -1, i32 -1, i32 -1], [4 x i32] [i32 1, i32 2, i32 4, i32 6], [4 x i32] [i32 -1, i32 -1, i32 -1, i32 -1], [4 x i32] [i32 -1, i32 -1, i32 -1, i32 -1], i32 129, i32 136, i32 0, ptr @keyspan_usa19w_calc_baud, i32 24000000 }, [56 x i8] zeroinitializer }, align 32
@keyspan_usa19w_calc_baud.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.32, ptr @.str.4, ptr @.str.33, i8 1, i8 -30, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"keyspan_usa19w_calc_baud\00", [39 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s - %d.\0A\00", [22 x i8] zeroinitializer }, align 32
@keyspan_usa19_calc_baud.__UNIQUE_ID_ddebug286 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.34, ptr @.str.4, ptr @.str.33, i8 1, i8 -51, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"keyspan_usa19_calc_baud\00", [40 x i8] zeroinitializer }, align 32
@keyspan_usa19_calc_baud.__UNIQUE_ID_ddebug287 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.34, ptr @.str.4, ptr @.str.35, i8 1, i8 -44, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s - %d %02x %02x.\0A\00", [44 x i8] zeroinitializer }, align 32
@keyspan_usa28_calc_baud.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.36, ptr @.str.4, ptr @.str.33, i8 1, i8 -15, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"keyspan_usa28_calc_baud\00", [40 x i8] zeroinitializer }, align 32
@keyspan_usa28_calc_baud.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.36, ptr @.str.4, ptr @.str.37, i8 1, i8 -7, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%s - %d OK.\0A\00", [19 x i8] zeroinitializer }, align 32
@keyspan_usa19hs_calc_baud.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.38, ptr @.str.4, ptr @.str.33, i8 1, i8 -41, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"keyspan_usa19hs_calc_baud\00", [38 x i8] zeroinitializer }, align 32
@keyspan_usa19hs_calc_baud.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.38, ptr @.str.4, ptr @.str.35, i8 1, i8 -35, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@keyspan_callbacks = internal constant { [5 x %struct.callbacks], [40 x i8] } { [5 x %struct.callbacks] [%struct.callbacks { ptr @usa26_instat_callback, ptr @usa26_glocont_callback, ptr @usa26_indat_callback, ptr @usa2x_outdat_callback, ptr @usa26_inack_callback, ptr @usa26_outcont_callback }, %struct.callbacks { ptr @usa28_instat_callback, ptr @usa28_glocont_callback, ptr @usa28_indat_callback, ptr @usa2x_outdat_callback, ptr @usa28_inack_callback, ptr @usa28_outcont_callback }, %struct.callbacks { ptr @usa49_instat_callback, ptr @usa49_glocont_callback, ptr @usa49_indat_callback, ptr @usa2x_outdat_callback, ptr @usa49_inack_callback, ptr @usa49_outcont_callback }, %struct.callbacks { ptr @usa90_instat_callback, ptr @usa28_glocont_callback, ptr @usa90_indat_callback, ptr @usa2x_outdat_callback, ptr @usa28_inack_callback, ptr @usa90_outcont_callback }, %struct.callbacks { ptr @usa67_instat_callback, ptr @usa67_glocont_callback, ptr @usa26_indat_callback, ptr @usa2x_outdat_callback, ptr @usa26_inack_callback, ptr @usa26_outcont_callback }], [40 x i8] zeroinitializer }, align 32
@usa26_instat_callback.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.39, ptr @.str.4, ptr @.str.40, i8 0, i8 -39, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"usa26_instat_callback\00", [42 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s - nonzero status: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@usa26_instat_callback.__UNIQUE_ID_ddebug248 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.39, ptr @.str.4, ptr @.str.41, i8 0, i8 -38, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s - %d byte report??\0A\00", [41 x i8] zeroinitializer }, align 32
@usa26_instat_callback.__UNIQUE_ID_ddebug249 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.39, ptr @.str.4, ptr @.str.42, i8 0, i8 -36, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s - Unexpected port number %d\0A\00", [32 x i8] zeroinitializer }, align 32
@usa26_instat_callback.__UNIQUE_ID_ddebug250 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.39, ptr @.str.4, ptr @.str.43, i8 0, i8 -31, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s - resubmit read urb failed. (%d)\0A\00", [59 x i8] zeroinitializer }, align 32
@usa26_indat_callback.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.44, ptr @.str.4, ptr @.str.45, i8 0, i8 -63, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"usa26_indat_callback\00", [43 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s - nonzero status %d on endpoint %x\0A\00", [57 x i8] zeroinitializer }, align 32
@usa26_indat_callback.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.44, ptr @.str.4, ptr @.str.46, i8 0, i8 -58, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s - RX error!!!!\0A\00", [45 x i8] zeroinitializer }, align 32
@usa26_indat_callback.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.44, ptr @.str.4, ptr @.str.43, i8 0, i8 -52, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@usa2x_outdat_callback.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.47, ptr @.str.4, ptr @.str.48, i8 0, i8 -49, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"usa2x_outdat_callback\00", [42 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%s - urb %d\0A\00", [19 x i8] zeroinitializer }, align 32
@usa26_outcont_callback.__UNIQUE_ID_ddebug246 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.49, ptr @.str.4, ptr @.str.50, i8 0, i8 -44, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"usa26_outcont_callback\00", [41 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s - sending setup\0A\00", [44 x i8] zeroinitializer }, align 32
@keyspan_usa26_send_setup.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.51, ptr @.str.4, ptr @.str.52, i8 1, i8 -3, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"keyspan_usa26_send_setup\00", [39 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%s reset=%d\0A\00", [19 x i8] zeroinitializer }, align 32
@keyspan_usa26_send_setup.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.51, ptr @.str.4, ptr @.str.53, i8 1, i8 -1, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s - oops no urb.\0A\00", [45 x i8] zeroinitializer }, align 32
@keyspan_usa26_send_setup.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.51, ptr @.str.4, ptr @.str.54, i8 2, i8 1, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.54 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s - endpoint %x\0A\00", [46 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@keyspan_usa26_send_setup.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.51, ptr @.str.4, ptr @.str.55, i8 2, i8 6, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%s - Invalid baud rate %d requested, using 9600.\0A\00", [46 x i8] zeroinitializer }, align 32
@keyspan_usa26_send_setup.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.51, ptr @.str.4, ptr @.str.56, i8 2, i8 30, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s - usb_submit_urb(setup) failed (%d)\0A\00", [56 x i8] zeroinitializer }, align 32
@usa28_instat_callback.__UNIQUE_ID_ddebug254 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.57, ptr @.str.4, ptr @.str.40, i8 0, i8 -10, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"usa28_instat_callback\00", [42 x i8] zeroinitializer }, align 32
@usa28_instat_callback.__UNIQUE_ID_ddebug255 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.57, ptr @.str.4, ptr @.str.58, i8 0, i8 -8, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.58 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s - bad length %d\0A\00", [44 x i8] zeroinitializer }, align 32
@usa28_instat_callback.__UNIQUE_ID_ddebug256 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.57, ptr @.str.4, ptr @.str.42, i8 0, i8 -6, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@usa28_instat_callback.__UNIQUE_ID_ddebug257 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.57, ptr @.str.4, ptr @.str.43, i8 0, i8 -1, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@usa28_indat_callback.__UNIQUE_ID_ddebug251 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.59, ptr @.str.4, ptr @.str.45, i8 0, i8 -24, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.59 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"usa28_indat_callback\00", [43 x i8] zeroinitializer }, align 32
@usa28_indat_callback.__UNIQUE_ID_ddebug252 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.59, ptr @.str.4, ptr @.str.43, i8 0, i8 -20, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@usa28_outcont_callback.__UNIQUE_ID_ddebug253 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.60, ptr @.str.4, ptr @.str.50, i8 0, i8 -15, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.60 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"usa28_outcont_callback\00", [41 x i8] zeroinitializer }, align 32
@keyspan_usa28_send_setup.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.61, ptr @.str.4, ptr @.str.53, i8 2, i8 35, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.61 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"keyspan_usa28_send_setup\00", [39 x i8] zeroinitializer }, align 32
@keyspan_usa28_send_setup.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.61, ptr @.str.4, ptr @.str.62, i8 2, i8 38, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.62 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s already writing\0A\00", [44 x i8] zeroinitializer }, align 32
@keyspan_usa28_send_setup.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.61, ptr @.str.4, ptr @.str.63, i8 2, i8 41, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.63 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s - Invalid baud rate requested %d.\0A\00", [58 x i8] zeroinitializer }, align 32
@keyspan_usa28_send_setup.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.61, ptr @.str.4, ptr @.str.64, i8 2, i8 59, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.64 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s - usb_submit_urb(setup) failed\0A\00", [61 x i8] zeroinitializer }, align 32
@usa49_instat_callback.__UNIQUE_ID_ddebug259 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.65, ptr @.str.4, ptr @.str.40, i8 1, i8 11, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.65 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"usa49_instat_callback\00", [42 x i8] zeroinitializer }, align 32
@usa49_instat_callback.__UNIQUE_ID_ddebug260 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.65, ptr @.str.4, ptr @.str.58, i8 1, i8 13, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@usa49_instat_callback.__UNIQUE_ID_ddebug261 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.65, ptr @.str.4, ptr @.str.42, i8 1, i8 15, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@usa49_instat_callback.__UNIQUE_ID_ddebug262 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.65, ptr @.str.4, ptr @.str.43, i8 1, i8 20, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@usa49_glocont_callback.__UNIQUE_ID_ddebug258 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.66, ptr @.str.4, ptr @.str.50, i8 1, i8 5, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.66 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"usa49_glocont_callback\00", [41 x i8] zeroinitializer }, align 32
@keyspan_usa49_send_setup.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.67, ptr @.str.4, ptr @.str.68, i8 2, i8 66, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.67 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"keyspan_usa49_send_setup\00", [39 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s - oops no urb for port.\0A\00", [36 x i8] zeroinitializer }, align 32
@keyspan_usa49_send_setup.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.67, ptr @.str.4, ptr @.str.69, i8 2, i8 67, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.69 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s - endpoint %x (%d)\0A\00", [41 x i8] zeroinitializer }, align 32
@keyspan_usa49_send_setup.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.67, ptr @.str.4, ptr @.str.55, i8 2, i8 74, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@keyspan_usa49_send_setup.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.67, ptr @.str.4, ptr @.str.56, i8 2, i8 103, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@usa49_indat_callback.__UNIQUE_ID_ddebug263 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.70, ptr @.str.4, ptr @.str.45, i8 1, i8 25, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.70 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"usa49_indat_callback\00", [43 x i8] zeroinitializer }, align 32
@usa49_indat_callback.__UNIQUE_ID_ddebug264 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.70, ptr @.str.4, ptr @.str.43, i8 1, i8 34, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@usa90_instat_callback.__UNIQUE_ID_ddebug271 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.71, ptr @.str.4, ptr @.str.40, i8 1, i8 76, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.71 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"usa90_instat_callback\00", [42 x i8] zeroinitializer }, align 32
@usa90_instat_callback.__UNIQUE_ID_ddebug272 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.71, ptr @.str.4, ptr @.str.41, i8 1, i8 77, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@usa90_instat_callback.__UNIQUE_ID_ddebug273 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.71, ptr @.str.4, ptr @.str.43, i8 1, i8 83, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@usa90_indat_callback.__UNIQUE_ID_ddebug268 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.72, ptr @.str.4, ptr @.str.45, i8 1, i8 57, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.72 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"usa90_indat_callback\00", [43 x i8] zeroinitializer }, align 32
@usa90_indat_callback.__UNIQUE_ID_ddebug269 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.72, ptr @.str.4, ptr @.str.46, i8 1, i8 64, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@usa90_indat_callback.__UNIQUE_ID_ddebug270 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.72, ptr @.str.4, ptr @.str.43, i8 1, i8 71, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@usa90_outcont_callback.__UNIQUE_ID_ddebug274 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.73, ptr @.str.4, ptr @.str.50, i8 1, i8 87, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.73 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"usa90_outcont_callback\00", [41 x i8] zeroinitializer }, align 32
@keyspan_usa90_send_setup.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.74, ptr @.str.4, ptr @.str.53, i8 2, i8 109, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.74 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"keyspan_usa90_send_setup\00", [39 x i8] zeroinitializer }, align 32
@keyspan_usa90_send_setup.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.74, ptr @.str.4, ptr @.str.62, i8 2, i8 112, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@keyspan_usa90_send_setup.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.74, ptr @.str.4, ptr @.str.55, i8 2, i8 115, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@keyspan_usa90_send_setup.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.74, ptr @.str.4, ptr @.str.56, i8 2, i8 -120, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@usa67_instat_callback.__UNIQUE_ID_ddebug275 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.75, ptr @.str.4, ptr @.str.40, i8 1, i8 92, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.75 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"usa67_instat_callback\00", [42 x i8] zeroinitializer }, align 32
@usa67_instat_callback.__UNIQUE_ID_ddebug276 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.75, ptr @.str.4, ptr @.str.58, i8 1, i8 94, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@usa67_instat_callback.__UNIQUE_ID_ddebug277 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.75, ptr @.str.4, ptr @.str.42, i8 1, i8 96, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@usa67_instat_callback.__UNIQUE_ID_ddebug278 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.75, ptr @.str.4, ptr @.str.43, i8 1, i8 101, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@usa67_glocont_callback.__UNIQUE_ID_ddebug279 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.76, ptr @.str.4, ptr @.str.50, i8 1, i8 106, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.76 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"usa67_glocont_callback\00", [41 x i8] zeroinitializer }, align 32
@keyspan_usa67_send_setup.__UNIQUE_ID_ddebug310 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.77, ptr @.str.4, ptr @.str.68, i8 2, i8 -113, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.77 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"keyspan_usa67_send_setup\00", [39 x i8] zeroinitializer }, align 32
@keyspan_usa67_send_setup.__UNIQUE_ID_ddebug311 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.77, ptr @.str.4, ptr @.str.55, i8 2, i8 -107, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@keyspan_usa67_send_setup.__UNIQUE_ID_ddebug312 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.77, ptr @.str.4, ptr @.str.56, i8 2, i8 -84, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@keyspan_setup_urb.__UNIQUE_ID_ddebug284 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.78, ptr @.str.4, ptr @.str.79, i8 1, i8 -83, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.78 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"keyspan_setup_urb\00", [46 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s - alloc for endpoint %x\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"INT\00", [28 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"BULK\00", [27 x i8] zeroinitializer }, align 32
@keyspan_setup_urb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.78, ptr @.str.4, i32 1745, ptr @.str.83, ptr @.str.21 }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"unsupported endpoint type %x\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@keyspan_setup_urb._entry_ptr = internal global ptr @keyspan_setup_urb._entry, section ".printk_index", align 4
@keyspan_setup_urb.__UNIQUE_ID_ddebug285 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.78, ptr @.str.4, ptr @.str.84, i8 1, i8 -75, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.84 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s - using urb %p for %s endpoint %x\0A\00", [58 x i8] zeroinitializer }, align 32
@find_ep._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.86, ptr @.str.4, i32 1700, ptr @.str.83, ptr @.str.21 }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"found no endpoint descriptor for endpoint %x\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"find_ep\00", [24 x i8] zeroinitializer }, align 32
@find_ep._entry_ptr = internal global ptr @find_ep._entry, section ".printk_index", align 4
@usa49wg_indat_callback.__UNIQUE_ID_ddebug265 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.87, ptr @.str.4, ptr @.str.40, i8 1, i8 38, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.87 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"usa49wg_indat_callback\00", [41 x i8] zeroinitializer }, align 32
@usa49wg_indat_callback.__UNIQUE_ID_ddebug266 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.87, ptr @.str.4, ptr @.str.42, i8 1, i8 41, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@usa49wg_indat_callback.__UNIQUE_ID_ddebug267 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.87, ptr @.str.4, ptr @.str.43, i8 1, i8 52, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@keyspan_open.__UNIQUE_ID_ddebug280 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.88, ptr @.str.4, ptr @.str.89, i8 1, i8 125, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.88 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"keyspan_open\00", [19 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s - submit urb %d failed (%d)\0A\00", [32 x i8] zeroinitializer }, align 32
@keyspan_write.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.90, ptr @.str.4, ptr @.str.91, i8 0, i8 -78, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.90 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"keyspan_write\00", [18 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s - %d chars, flip=%d\0A\00", [40 x i8] zeroinitializer }, align 32
@keyspan_write.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.90, ptr @.str.4, ptr @.str.92, i8 0, i8 -75, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.92 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s - no output urb :(\0A\00", [41 x i8] zeroinitializer }, align 32
@keyspan_write.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.90, ptr @.str.4, ptr @.str.93, i8 0, i8 -74, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.93 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s - endpoint %x flip %d\0A\00", [38 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@keyspan_write.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.90, ptr @.str.4, ptr @.str.94, i8 0, i8 -68, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.94 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"usb_submit_urb(write bulk) failed (%d)\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Keyspan 2 port adapter\00", [41 x i8] zeroinitializer }, align 32
@keyspan_2port_ids = internal constant { [5 x %struct.usb_device_id], [40 x i8] } { [5 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 1741, i16 271, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1741, i16 272, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1741, i16 277, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1741, i16 309, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"keyspan_2\00", [22 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Keyspan 4 port adapter\00", [41 x i8] zeroinitializer }, align 32
@keyspan_4port_ids = internal constant { [4 x %struct.usb_device_id], [32 x i8] } { [4 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 1741, i16 266, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1741, i16 298, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1741, i16 305, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"keyspan_4\00", [22 x i8] zeroinitializer }, align 32
@switch.table.keyspan_fake_startup = internal constant { [27 x ptr], [52 x i8] } { [27 x ptr] [ptr @.str.7, ptr @.str.8, ptr @.str.11, ptr @.str.7, ptr @.str.15, ptr @.str.16, ptr @.str.7, ptr @.str.7, ptr @.str.17, ptr @.str.7, ptr @.str.12, ptr @.str.7, ptr @.str.7, ptr @.str.7, ptr @.str.7, ptr @.str.7, ptr @.str.7, ptr @.str.7, ptr @.str.10, ptr @.str.9, ptr @.str.7, ptr @.str.7, ptr @.str.7, ptr @.str.14, ptr @.str.7, ptr @.str.18, ptr @.str.13], [52 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [16 x i64] [i64 14, i64 16, i64 1793, i64 2049, i64 2561, i64 3073, i64 3841, i64 4097, i64 4609, i64 5377, i64 6401, i64 7169, i64 8449, i64 10753, i64 12545, i64 13569]
@__sancov_gen_cov_switch_values.99 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.100 = internal global [4 x i64] [i64 2, i64 2, i64 2, i64 3]
@__sancov_gen_cov_switch_values.101 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.102 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.103 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.104 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.105 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.106 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.107 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.108 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.109 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.110 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@___asan_gen_.111 = private unnamed_addr constant [15 x i8] c"serial_drivers\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 3082, i32 41 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 3087, i32 1 }
@___asan_gen_.117 = private unnamed_addr constant [21 x i8] c"keyspan_ids_combined\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 447, i32 35 }
@___asan_gen_.120 = private unnamed_addr constant [19 x i8] c"keyspan_pre_device\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 2999, i32 33 }
@___asan_gen_.123 = private unnamed_addr constant [21 x i8] c"keyspan_1port_device\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 3010, i32 33 }
@___asan_gen_.126 = private unnamed_addr constant [21 x i8] c"keyspan_2port_device\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 3034, i32 33 }
@___asan_gen_.129 = private unnamed_addr constant [21 x i8] c"keyspan_4port_device\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 3058, i32 33 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 3004, i32 18 }
@___asan_gen_.135 = private unnamed_addr constant [16 x i8] c"keyspan_pre_ids\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 480, i32 35 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 3002, i32 12 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 1604, i32 2 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 1610, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 1617, i32 13 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 1621, i32 13 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 1625, i32 13 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 1629, i32 13 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 1633, i32 13 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 1637, i32 13 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 1641, i32 13 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 1645, i32 13 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 1649, i32 13 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 1653, i32 13 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 1657, i32 13 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 1661, i32 13 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 1665, i32 3 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 1670, i32 2 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 1673, i32 3 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 3015, i32 18 }
@___asan_gen_.213 = private unnamed_addr constant [18 x i8] c"keyspan_1port_ids\00", align 1
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 496, i32 35 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 3013, i32 12 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 2783, i32 3 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 2817, i32 4 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 2822, i32 4 }
@___asan_gen_.234 = private unnamed_addr constant [22 x i8] c"usa18x_device_details\00", align 1
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 186, i32 44 }
@___asan_gen_.237 = private unnamed_addr constant [21 x i8] c"usa19_device_details\00", align 1
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 203, i32 44 }
@___asan_gen_.240 = private unnamed_addr constant [23 x i8] c"usa19qi_device_details\00", align 1
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 220, i32 44 }
@___asan_gen_.243 = private unnamed_addr constant [19 x i8] c"mpr_device_details\00", align 1
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 237, i32 44 }
@___asan_gen_.246 = private unnamed_addr constant [23 x i8] c"usa19qw_device_details\00", align 1
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 254, i32 44 }
@___asan_gen_.249 = private unnamed_addr constant [22 x i8] c"usa19w_device_details\00", align 1
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 271, i32 44 }
@___asan_gen_.252 = private unnamed_addr constant [23 x i8] c"usa19hs_device_details\00", align 1
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 288, i32 44 }
@___asan_gen_.255 = private unnamed_addr constant [21 x i8] c"usa28_device_details\00", align 1
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 305, i32 44 }
@___asan_gen_.258 = private unnamed_addr constant [22 x i8] c"usa28x_device_details\00", align 1
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 322, i32 44 }
@___asan_gen_.261 = private unnamed_addr constant [23 x i8] c"usa28xa_device_details\00", align 1
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 339, i32 44 }
@___asan_gen_.264 = private unnamed_addr constant [23 x i8] c"usa28xg_device_details\00", align 1
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 356, i32 44 }
@___asan_gen_.267 = private unnamed_addr constant [22 x i8] c"usa49w_device_details\00", align 1
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 377, i32 44 }
@___asan_gen_.270 = private unnamed_addr constant [24 x i8] c"usa49wlc_device_details\00", align 1
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 394, i32 44 }
@___asan_gen_.273 = private unnamed_addr constant [23 x i8] c"usa49wg_device_details\00", align 1
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 411, i32 44 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 1929, i32 2 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 1847, i32 2 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 1874, i32 3 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 1988, i32 2 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 2021, i32 2 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 1887, i32 2 }
@___asan_gen_.297 = private unnamed_addr constant [18 x i8] c"keyspan_callbacks\00", align 1
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 1762, i32 3 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 867, i32 3 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 872, i32 3 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 880, i32 3 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 901, i32 3 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 774, i32 3 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 794, i32 4 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 830, i32 2 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 848, i32 3 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 2036, i32 2 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 2047, i32 3 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 2051, i32 2 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 2073, i32 4 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 2168, i32 3 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 986, i32 3 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 992, i32 3 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 927, i32 4 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 966, i32 3 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 2191, i32 3 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 2200, i32 3 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 2211, i32 3 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 2286, i32 3 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 1069, i32 3 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 1045, i32 4 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 2314, i32 3 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 2318, i32 2 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 1125, i32 3 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 1327, i32 3 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 1254, i32 3 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 1372, i32 3 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 2487, i32 3 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 1393, i32 3 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 1448, i32 4 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 2620, i32 3 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 1715, i32 2 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 1732, i32 18 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 1738, i32 18 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 1743, i32 3 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 1750, i32 2 }
@___asan_gen_.441 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 1699, i32 2 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 1177, i32 3 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 1527, i32 4 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 711, i32 2 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 725, i32 4 }
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 729, i32 3 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 752, i32 4 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 3039, i32 18 }
@___asan_gen_.477 = private unnamed_addr constant [18 x i8] c"keyspan_2port_ids\00", align 1
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 507, i32 35 }
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 3037, i32 12 }
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 3063, i32 18 }
@___asan_gen_.486 = private unnamed_addr constant [18 x i8] c"keyspan_4port_ids\00", align 1
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 515, i32 35 }
@___asan_gen_.489 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.490 = private constant [32 x i8] c"../drivers/usb/serial/keyspan.c\00", align 1
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 3061, i32 12 }
@___asan_gen_.492 = private unnamed_addr constant [34 x i8] c"switch.table.keyspan_fake_startup\00", align 1
@llvm.compiler.used = appending global [152 x ptr] [ptr @__UNIQUE_ID_author316, ptr @__UNIQUE_ID_description317, ptr @__UNIQUE_ID_file318, ptr @__UNIQUE_ID_firmware320, ptr @__UNIQUE_ID_firmware321, ptr @__UNIQUE_ID_firmware322, ptr @__UNIQUE_ID_firmware323, ptr @__UNIQUE_ID_firmware324, ptr @__UNIQUE_ID_firmware325, ptr @__UNIQUE_ID_firmware326, ptr @__UNIQUE_ID_firmware327, ptr @__UNIQUE_ID_firmware328, ptr @__UNIQUE_ID_firmware329, ptr @__UNIQUE_ID_firmware330, ptr @__UNIQUE_ID_firmware331, ptr @__UNIQUE_ID_license319, ptr @__exitcall_usb_serial_module_exit, ptr @__initcall__kmod_keyspan__315_3087_usb_serial_module_init6, ptr @find_ep._entry, ptr @find_ep._entry_ptr, ptr @keyspan_fake_startup._entry, ptr @keyspan_fake_startup._entry.23, ptr @keyspan_fake_startup._entry_ptr, ptr @keyspan_fake_startup._entry_ptr.25, ptr @keyspan_setup_urb._entry, ptr @keyspan_setup_urb._entry_ptr, ptr @keyspan_startup._entry, ptr @keyspan_startup._entry_ptr, ptr @usb_serial_module_exit, ptr @serial_drivers, ptr @.str, ptr @keyspan_ids_combined, ptr @keyspan_pre_device, ptr @keyspan_1port_device, ptr @keyspan_2port_device, ptr @keyspan_4port_device, ptr @.str.1, ptr @keyspan_pre_ids, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.26, ptr @keyspan_1port_ids, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @usa18x_device_details, ptr @usa19_device_details, ptr @usa19qi_device_details, ptr @mpr_device_details, ptr @usa19qw_device_details, ptr @usa19w_device_details, ptr @usa19hs_device_details, ptr @usa28_device_details, ptr @usa28x_device_details, ptr @usa28xa_device_details, ptr @usa28xg_device_details, ptr @usa49w_device_details, ptr @usa49wlc_device_details, ptr @usa49wg_device_details, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @keyspan_callbacks, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @keyspan_2port_ids, ptr @.str.96, ptr @.str.97, ptr @keyspan_4port_ids, ptr @.str.98, ptr @switch.table.keyspan_fake_startup], section "llvm.metadata"
@0 = internal global [128 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serial_drivers to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @keyspan_ids_combined to i32), i32 648, i32 832, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @keyspan_pre_device to i32), i32 312, i32 384, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @keyspan_1port_device to i32), i32 312, i32 384, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @keyspan_2port_device to i32), i32 312, i32 384, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @keyspan_4port_device to i32), i32 312, i32 384, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @keyspan_pre_ids to i32), i32 312, i32 384, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @keyspan_fake_startup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @keyspan_fake_startup._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @keyspan_1port_ids to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @keyspan_startup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usa18x_device_details to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usa19_device_details to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usa19qi_device_details to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpr_device_details to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usa19qw_device_details to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usa19w_device_details to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usa19hs_device_details to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usa28_device_details to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usa28x_device_details to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usa28xa_device_details to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usa28xg_device_details to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usa49w_device_details to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usa49wlc_device_details to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usa49wg_device_details to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @keyspan_callbacks to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @keyspan_setup_urb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @find_ep._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @keyspan_2port_ids to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @keyspan_4port_ids to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.keyspan_fake_startup to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @usb_serial_module_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_serial_register_drivers(ptr noundef nonnull @serial_drivers, ptr noundef nonnull @.str, ptr noundef nonnull @keyspan_ids_combined) #9
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
define internal i32 @keyspan_fake_startup(ptr nocapture noundef readonly %serial) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @keyspan_fake_startup.__UNIQUE_ID_ddebug281, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@keyspan_fake_startup, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !383

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %serial to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %serial, align 4
  %dev3 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 15
  %bcdDevice = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 16, i32 9
  %2 = ptrtoint ptr %bcdDevice to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %bcdDevice, align 4
  %4 = tail call i16 @llvm.bswap.i16(i16 %3)
  %conv = zext i16 %4 to i32
  %idProduct = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 16, i32 8
  %5 = ptrtoint ptr %idProduct to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %idProduct, align 2
  %7 = tail call i16 @llvm.bswap.i16(i16 %6)
  %conv7 = zext i16 %7 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @keyspan_fake_startup.__UNIQUE_ID_ddebug281, ptr noundef %dev3, ptr noundef nonnull @.str.5, i32 noundef %conv, i32 noundef %conv7) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %8 = ptrtoint ptr %serial to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %serial, align 4
  %bcdDevice10 = getelementptr inbounds %struct.usb_device, ptr %9, i32 0, i32 16, i32 9
  %10 = ptrtoint ptr %bcdDevice10 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %bcdDevice10, align 4
  %12 = and i16 %11, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %cmp.not.not = icmp eq i16 %12, 0
  br i1 %cmp.not.not, label %do.body14, label %if.end32

do.body14:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @keyspan_fake_startup.__UNIQUE_ID_ddebug282, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@keyspan_fake_startup, %if.then26)) #9
          to label %cleanup [label %if.then26], !srcloc !383

if.then26:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %serial to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %serial, align 4
  %dev28 = getelementptr inbounds %struct.usb_device, ptr %14, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @keyspan_fake_startup.__UNIQUE_ID_ddebug282, ptr noundef %dev28, ptr noundef nonnull @.str.6) #9
  br label %cleanup

if.end32:                                         ; preds = %do.end
  %idProduct35 = getelementptr inbounds %struct.usb_device, ptr %9, i32 0, i32 16, i32 8
  %15 = ptrtoint ptr %idProduct35 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %idProduct35, align 2
  %17 = tail call i16 @llvm.bswap.i16(i16 %16)
  %switch.tableidx = add i16 %17, -257
  call void @__sanitizer_cov_trace_const_cmp2(i16 27, i16 %switch.tableidx)
  %18 = icmp ult i16 %switch.tableidx, 27
  br i1 %18, label %switch.hole_check, label %if.end32.do.end50_crit_edge

if.end32.do.end50_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end50

do.end50:                                         ; preds = %switch.hole_check.do.end50_crit_edge, %if.end32.do.end50_crit_edge
  %conv36 = zext i16 %17 to i32
  %dev52 = getelementptr inbounds %struct.usb_device, ptr %9, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev52, ptr noundef nonnull @.str.19, i32 noundef %conv36) #12
  br label %cleanup

switch.hole_check:                                ; preds = %if.end32
  %switch.maskindex = zext i16 %switch.tableidx to i32
  %switch.shifted = lshr i32 109839671, %switch.maskindex
  %19 = and i32 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %switch.lobit.not = icmp eq i32 %19, 0
  br i1 %switch.lobit.not, label %switch.hole_check.do.end50_crit_edge, label %switch.lookup

switch.hole_check.do.end50_crit_edge:             ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end50

switch.lookup:                                    ; preds = %switch.hole_check
  %20 = sext i16 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [27 x ptr], ptr @switch.table.keyspan_fake_startup, i32 0, i32 %20
  %21 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %21)
  %switch.load = load ptr, ptr %switch.gep, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @keyspan_fake_startup.__UNIQUE_ID_ddebug283, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@keyspan_fake_startup, %if.then69)) #9
          to label %do.end74 [label %if.then69], !srcloc !383

if.then69:                                        ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %serial to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %serial, align 4
  %dev71 = getelementptr inbounds %struct.usb_device, ptr %23, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @keyspan_fake_startup.__UNIQUE_ID_ddebug283, ptr noundef %dev71, ptr noundef nonnull @.str.22, ptr noundef nonnull %switch.load) #9
  br label %do.end74

do.end74:                                         ; preds = %if.then69, %switch.lookup
  %24 = ptrtoint ptr %serial to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %serial, align 4
  %call76 = tail call i32 @ezusb_fx1_ihex_firmware_download(ptr noundef %25, ptr noundef nonnull %switch.load) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76)
  %cmp77 = icmp slt i32 %call76, 0
  br i1 %cmp77, label %do.end82, label %do.end74.cleanup_crit_edge

do.end74.cleanup_crit_edge:                       ; preds = %do.end74
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end82:                                         ; preds = %do.end74
  call void @__sanitizer_cov_trace_pc() #11
  %26 = ptrtoint ptr %serial to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %serial, align 4
  %dev84 = getelementptr inbounds %struct.usb_device, ptr %27, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev84, ptr noundef nonnull @.str.24, ptr noundef nonnull %switch.load) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end82, %do.end74.cleanup_crit_edge, %do.end50, %if.then26, %do.body14
  %retval.0 = phi i32 [ 1, %do.end50 ], [ -2, %do.end82 ], [ 1, %if.then26 ], [ 1, %do.end74.cleanup_crit_edge ], [ 1, %do.body14 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ezusb_fx1_ihex_firmware_download(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @keyspan_startup(ptr noundef %serial) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %serial to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %serial, align 4
  %idProduct = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 16, i32 8
  %2 = ptrtoint ptr %idProduct to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %idProduct, align 2
  %4 = zext i16 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i16 %3, label %for.cond.13 [
    i16 4609, label %entry.if.end12_crit_edge
    i16 1793, label %if.end12.fold.split
    i16 3073, label %if.end12.fold.split134
    i16 7169, label %if.end12.fold.split135
    i16 6401, label %if.end12.fold.split136
    i16 2049, label %if.end12.fold.split137
    i16 8449, label %if.end12.fold.split138
    i16 3841, label %if.end12.fold.split139
    i16 4097, label %if.end12.fold.split140
    i16 5377, label %if.end12.fold.split141
    i16 13569, label %if.end12.fold.split142
    i16 2561, label %if.end12.fold.split143
    i16 10753, label %if.end12.fold.split144
    i16 12545, label %if.end12.fold.split145
  ]

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

for.cond.13:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %serial to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %serial, align 4
  %dev7 = getelementptr inbounds %struct.usb_device, ptr %6, i32 0, i32 15
  %idProduct10 = getelementptr inbounds %struct.usb_device, ptr %6, i32 0, i32 16, i32 8
  %7 = ptrtoint ptr %idProduct10 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %idProduct10, align 2
  %9 = tail call i16 @llvm.bswap.i16(i16 %8)
  %conv11 = zext i16 %9 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev7, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.29, i32 noundef %conv11) #12
  br label %cleanup

if.end12.fold.split:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.end12.fold.split134:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.end12.fold.split135:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.end12.fold.split136:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.end12.fold.split137:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.end12.fold.split138:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.end12.fold.split139:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.end12.fold.split140:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.end12.fold.split141:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.end12.fold.split142:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.end12.fold.split143:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.end12.fold.split144:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.end12.fold.split145:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.end12:                                         ; preds = %if.end12.fold.split145, %if.end12.fold.split144, %if.end12.fold.split143, %if.end12.fold.split142, %if.end12.fold.split141, %if.end12.fold.split140, %if.end12.fold.split139, %if.end12.fold.split138, %if.end12.fold.split137, %if.end12.fold.split136, %if.end12.fold.split135, %if.end12.fold.split134, %if.end12.fold.split, %entry.if.end12_crit_edge
  %.lcssa = phi ptr [ @usa18x_device_details, %entry.if.end12_crit_edge ], [ @usa19_device_details, %if.end12.fold.split ], [ @usa19qi_device_details, %if.end12.fold.split134 ], [ @mpr_device_details, %if.end12.fold.split135 ], [ @usa19qw_device_details, %if.end12.fold.split136 ], [ @usa19w_device_details, %if.end12.fold.split137 ], [ @usa19hs_device_details, %if.end12.fold.split138 ], [ @usa28_device_details, %if.end12.fold.split139 ], [ @usa28x_device_details, %if.end12.fold.split140 ], [ @usa28xa_device_details, %if.end12.fold.split141 ], [ @usa28xg_device_details, %if.end12.fold.split142 ], [ @usa49w_device_details, %if.end12.fold.split143 ], [ @usa49wlc_device_details, %if.end12.fold.split144 ], [ @usa49wg_device_details, %if.end12.fold.split145 ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %10 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3520, i32 noundef 32) #13
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.end12.cleanup_crit_edge, label %if.end14

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end14:                                         ; preds = %if.end12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %11 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i125 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 3520, i32 noundef 32) #13
  %instat_buf = getelementptr inbounds %struct.keyspan_serial_private, ptr %call7.i.i, i32 0, i32 2
  %12 = ptrtoint ptr %instat_buf to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call7.i.i125, ptr %instat_buf, align 8
  %tobool17.not = icmp eq ptr %call7.i.i125, null
  br i1 %tobool17.not, label %if.end14.err_instat_buf_crit_edge, label %if.end19

if.end14.err_instat_buf_crit_edge:                ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_instat_buf

if.end19:                                         ; preds = %if.end14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %13 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i126 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef 3520, i32 noundef 512) #13
  %indat_buf = getelementptr inbounds %struct.keyspan_serial_private, ptr %call7.i.i, i32 0, i32 4
  %14 = ptrtoint ptr %indat_buf to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call7.i.i126, ptr %indat_buf, align 8
  %tobool22.not = icmp eq ptr %call7.i.i126, null
  br i1 %tobool22.not, label %if.end19.err_indat_buf_crit_edge, label %if.end24

if.end19.err_indat_buf_crit_edge:                 ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_indat_buf

if.end24:                                         ; preds = %if.end19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %15 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i127 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %15, i32 noundef 3520, i32 noundef 64) #13
  %glocont_buf = getelementptr inbounds %struct.keyspan_serial_private, ptr %call7.i.i, i32 0, i32 6
  %16 = ptrtoint ptr %glocont_buf to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call7.i.i127, ptr %glocont_buf, align 8
  %tobool27.not = icmp eq ptr %call7.i.i127, null
  br i1 %tobool27.not, label %if.end24.err_glocont_buf_crit_edge, label %if.end29

if.end24.err_glocont_buf_crit_edge:               ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_glocont_buf

if.end29:                                         ; preds = %if.end24
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %17 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i128 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %17, i32 noundef 3520, i32 noundef 8) #13
  %ctrl_buf = getelementptr inbounds %struct.keyspan_serial_private, ptr %call7.i.i, i32 0, i32 7
  %18 = ptrtoint ptr %ctrl_buf to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call7.i.i128, ptr %ctrl_buf, align 4
  %tobool32.not = icmp eq ptr %call7.i.i128, null
  br i1 %tobool32.not, label %err_ctrl_buf, label %if.end34

if.end34:                                         ; preds = %if.end29
  %19 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %.lcssa, ptr %call7.i.i, align 8
  %private.i = getelementptr inbounds %struct.usb_serial, ptr %serial, i32 0, i32 15
  %20 = ptrtoint ptr %private.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call7.i.i, ptr %private.i, align 4
  %msg_format.i = getelementptr inbounds %struct.keyspan_device_details, ptr %.lcssa, i32 0, i32 1
  %21 = ptrtoint ptr %msg_format.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %msg_format.i, align 4
  %arrayidx.i = getelementptr [5 x %struct.callbacks], ptr @keyspan_callbacks, i32 0, i32 %22
  %instat_endpoint.i = getelementptr inbounds %struct.keyspan_device_details, ptr %.lcssa, i32 0, i32 9
  %23 = ptrtoint ptr %instat_endpoint.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %instat_endpoint.i, align 4
  %25 = ptrtoint ptr %instat_buf to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %instat_buf, align 8
  %27 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx.i, align 4
  %call1.i = tail call fastcc ptr @keyspan_setup_urb(ptr noundef %serial, i32 noundef %24, i32 noundef 128, ptr noundef %serial, ptr noundef %26, i32 noundef 32, ptr noundef %28) #9
  %instat_urb.i = getelementptr inbounds %struct.keyspan_serial_private, ptr %call7.i.i, i32 0, i32 1
  %29 = ptrtoint ptr %instat_urb.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call1.i, ptr %instat_urb.i, align 4
  %indat_endpoint.i = getelementptr inbounds %struct.keyspan_device_details, ptr %.lcssa, i32 0, i32 10
  %30 = ptrtoint ptr %indat_endpoint.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %indat_endpoint.i, align 4
  %32 = ptrtoint ptr %indat_buf to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %indat_buf, align 8
  %call2.i = tail call fastcc ptr @keyspan_setup_urb(ptr noundef %serial, i32 noundef %31, i32 noundef 128, ptr noundef %serial, ptr noundef %33, i32 noundef 512, ptr noundef nonnull @usa49wg_indat_callback) #9
  %indat_urb.i = getelementptr inbounds %struct.keyspan_serial_private, ptr %call7.i.i, i32 0, i32 3
  %34 = ptrtoint ptr %indat_urb.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call2.i, ptr %indat_urb.i, align 4
  %glocont_endpoint.i = getelementptr inbounds %struct.keyspan_device_details, ptr %.lcssa, i32 0, i32 11
  %35 = ptrtoint ptr %glocont_endpoint.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %glocont_endpoint.i, align 4
  %37 = ptrtoint ptr %glocont_buf to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %glocont_buf, align 8
  %glocont_callback.i = getelementptr [5 x %struct.callbacks], ptr @keyspan_callbacks, i32 0, i32 %22, i32 1
  %39 = ptrtoint ptr %glocont_callback.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %glocont_callback.i, align 4
  %call3.i = tail call fastcc ptr @keyspan_setup_urb(ptr noundef %serial, i32 noundef %36, i32 noundef 0, ptr noundef %serial, ptr noundef %38, i32 noundef 64, ptr noundef %40) #9
  %glocont_urb.i = getelementptr inbounds %struct.keyspan_serial_private, ptr %call7.i.i, i32 0, i32 5
  %41 = ptrtoint ptr %glocont_urb.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call3.i, ptr %glocont_urb.i, align 4
  %42 = ptrtoint ptr %instat_urb.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %instat_urb.i, align 4
  %cmp35.not = icmp eq ptr %43, null
  br i1 %cmp35.not, label %if.end34.if.end55_crit_edge, label %if.then37

if.end34.if.end55_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end55

if.then37:                                        ; preds = %if.end34
  %call39 = tail call i32 @usb_submit_urb(ptr noundef nonnull %43, i32 noundef 3264) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %cmp40.not = icmp eq i32 %call39, 0
  br i1 %cmp40.not, label %if.then37.if.end55_crit_edge, label %do.body43

if.then37.if.end55_crit_edge:                     ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end55

do.body43:                                        ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @keyspan_startup.__UNIQUE_ID_ddebug313, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@keyspan_startup, %if.then48)) #9
          to label %if.end55 [label %if.then48], !srcloc !383

if.then48:                                        ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #11
  %44 = ptrtoint ptr %serial to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %serial, align 4
  %dev50 = getelementptr inbounds %struct.usb_device, ptr %45, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @keyspan_startup.__UNIQUE_ID_ddebug313, ptr noundef %dev50, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.29, i32 noundef %call39) #9
  br label %if.end55

if.end55:                                         ; preds = %if.then48, %do.body43, %if.then37.if.end55_crit_edge, %if.end34.if.end55_crit_edge
  %46 = ptrtoint ptr %indat_urb.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %indat_urb.i, align 4
  %cmp56.not = icmp eq ptr %47, null
  br i1 %cmp56.not, label %if.end55.cleanup_crit_edge, label %if.then58

if.end55.cleanup_crit_edge:                       ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then58:                                        ; preds = %if.end55
  %call60 = tail call i32 @usb_submit_urb(ptr noundef nonnull %47, i32 noundef 3264) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %cmp61.not = icmp eq i32 %call60, 0
  br i1 %cmp61.not, label %if.then58.cleanup_crit_edge, label %do.body64

if.then58.cleanup_crit_edge:                      ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body64:                                        ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @keyspan_startup.__UNIQUE_ID_ddebug314, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@keyspan_startup, %if.then76)) #9
          to label %cleanup [label %if.then76], !srcloc !383

if.then76:                                        ; preds = %do.body64
  call void @__sanitizer_cov_trace_pc() #11
  %48 = ptrtoint ptr %serial to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %serial, align 4
  %dev78 = getelementptr inbounds %struct.usb_device, ptr %49, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @keyspan_startup.__UNIQUE_ID_ddebug314, ptr noundef %dev78, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.29, i32 noundef %call60) #9
  br label %cleanup

err_ctrl_buf:                                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  %50 = ptrtoint ptr %glocont_buf to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %glocont_buf, align 8
  tail call void @kfree(ptr noundef %51) #9
  br label %err_glocont_buf

err_glocont_buf:                                  ; preds = %err_ctrl_buf, %if.end24.err_glocont_buf_crit_edge
  %52 = ptrtoint ptr %indat_buf to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %indat_buf, align 8
  tail call void @kfree(ptr noundef %53) #9
  br label %err_indat_buf

err_indat_buf:                                    ; preds = %err_glocont_buf, %if.end19.err_indat_buf_crit_edge
  %54 = ptrtoint ptr %instat_buf to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %instat_buf, align 8
  tail call void @kfree(ptr noundef %55) #9
  br label %err_instat_buf

err_instat_buf:                                   ; preds = %err_indat_buf, %if.end14.err_instat_buf_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %err_instat_buf, %if.then76, %do.body64, %if.then58.cleanup_crit_edge, %if.end55.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %for.cond.13
  %retval.0 = phi i32 [ -19, %for.cond.13 ], [ -12, %err_instat_buf ], [ -12, %if.end12.cleanup_crit_edge ], [ 0, %if.then58.cleanup_crit_edge ], [ 0, %if.then76 ], [ 0, %if.end55.cleanup_crit_edge ], [ 0, %do.body64 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @keyspan_disconnect(ptr nocapture noundef readonly %serial) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.usb_serial, ptr %serial, i32 0, i32 15
  %0 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private.i, align 4
  %instat_urb = getelementptr inbounds %struct.keyspan_serial_private, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %instat_urb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %instat_urb, align 4
  tail call void @usb_kill_urb(ptr noundef %3) #9
  %glocont_urb = getelementptr inbounds %struct.keyspan_serial_private, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %glocont_urb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %glocont_urb, align 4
  tail call void @usb_kill_urb(ptr noundef %5) #9
  %indat_urb = getelementptr inbounds %struct.keyspan_serial_private, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %indat_urb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %indat_urb, align 4
  tail call void @usb_kill_urb(ptr noundef %7) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @keyspan_release(ptr nocapture noundef readonly %serial) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.usb_serial, ptr %serial, i32 0, i32 15
  %0 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private.i, align 4
  %instat_urb = getelementptr inbounds %struct.keyspan_serial_private, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %instat_urb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %instat_urb, align 4
  tail call void @usb_kill_urb(ptr noundef %3) #9
  %indat_urb = getelementptr inbounds %struct.keyspan_serial_private, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %indat_urb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %indat_urb, align 4
  tail call void @usb_kill_urb(ptr noundef %5) #9
  %6 = ptrtoint ptr %instat_urb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %instat_urb, align 4
  tail call void @usb_free_urb(ptr noundef %7) #9
  %8 = ptrtoint ptr %indat_urb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %indat_urb, align 4
  tail call void @usb_free_urb(ptr noundef %9) #9
  %glocont_urb = getelementptr inbounds %struct.keyspan_serial_private, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %glocont_urb to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %glocont_urb, align 4
  tail call void @usb_free_urb(ptr noundef %11) #9
  %ctrl_buf = getelementptr inbounds %struct.keyspan_serial_private, ptr %1, i32 0, i32 7
  %12 = ptrtoint ptr %ctrl_buf to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ctrl_buf, align 4
  tail call void @kfree(ptr noundef %13) #9
  %glocont_buf = getelementptr inbounds %struct.keyspan_serial_private, ptr %1, i32 0, i32 6
  %14 = ptrtoint ptr %glocont_buf to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %glocont_buf, align 4
  tail call void @kfree(ptr noundef %15) #9
  %indat_buf = getelementptr inbounds %struct.keyspan_serial_private, ptr %1, i32 0, i32 4
  %16 = ptrtoint ptr %indat_buf to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %indat_buf, align 4
  tail call void @kfree(ptr noundef %17) #9
  %instat_buf = getelementptr inbounds %struct.keyspan_serial_private, ptr %1, i32 0, i32 2
  %18 = ptrtoint ptr %instat_buf to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %instat_buf, align 4
  tail call void @kfree(ptr noundef %19) #9
  tail call void @kfree(ptr noundef %1) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @keyspan_port_probe(ptr noundef %port) #2 align 64 {
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
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 120) #13
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.body.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.preheader:                               ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %7 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i161 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 64) #13
  %arrayidx = getelementptr %struct.keyspan_port_private, ptr %call7.i.i, i32 0, i32 4, i32 0
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call7.i.i161, ptr %arrayidx, align 4
  %tobool6.not = icmp eq ptr %call7.i.i161, null
  br i1 %tobool6.not, label %for.body.preheader.err_free_in_buffer_crit_edge, label %for.cond

for.body.preheader.err_free_in_buffer_crit_edge:  ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_free_in_buffer

for.cond:                                         ; preds = %for.body.preheader
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %9 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i161.1 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3520, i32 noundef 64) #13
  %arrayidx.1 = getelementptr %struct.keyspan_port_private, ptr %call7.i.i, i32 0, i32 4, i32 1
  %10 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call7.i.i161.1, ptr %arrayidx.1, align 8
  %tobool6.not.1 = icmp eq ptr %call7.i.i161.1, null
  br i1 %tobool6.not.1, label %for.cond.err_free_in_buffer_crit_edge, label %for.cond.1

for.cond.err_free_in_buffer_crit_edge:            ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_free_in_buffer

for.cond.1:                                       ; preds = %for.cond
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %11 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i162 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 3520, i32 noundef 64) #13
  %arrayidx13 = getelementptr %struct.keyspan_port_private, ptr %call7.i.i, i32 0, i32 6, i32 0
  %12 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call7.i.i162, ptr %arrayidx13, align 4
  %tobool16.not = icmp eq ptr %call7.i.i162, null
  br i1 %tobool16.not, label %for.cond.1.err_free_out_buffer_crit_edge, label %for.cond9

for.cond.1.err_free_out_buffer_crit_edge:         ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_free_out_buffer

for.cond9:                                        ; preds = %for.cond.1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %13 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i162.1 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef 3520, i32 noundef 64) #13
  %arrayidx13.1 = getelementptr %struct.keyspan_port_private, ptr %call7.i.i, i32 0, i32 6, i32 1
  %14 = ptrtoint ptr %arrayidx13.1 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call7.i.i162.1, ptr %arrayidx13.1, align 8
  %tobool16.not.1 = icmp eq ptr %call7.i.i162.1, null
  br i1 %tobool16.not.1, label %for.cond9.err_free_out_buffer_crit_edge, label %for.cond9.1

for.cond9.err_free_out_buffer_crit_edge:          ; preds = %for.cond9
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_free_out_buffer

for.cond9.1:                                      ; preds = %for.cond9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %15 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i163 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %15, i32 noundef 3520, i32 noundef 1) #13
  %inack_buffer = getelementptr inbounds %struct.keyspan_port_private, ptr %call7.i.i, i32 0, i32 8
  %16 = ptrtoint ptr %inack_buffer to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call7.i.i163, ptr %inack_buffer, align 8
  %tobool24.not = icmp eq ptr %call7.i.i163, null
  br i1 %tobool24.not, label %for.cond9.1.err_free_out_buffer_crit_edge, label %if.end26

for.cond9.1.err_free_out_buffer_crit_edge:        ; preds = %for.cond9.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_free_out_buffer

if.end26:                                         ; preds = %for.cond9.1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %17 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i164 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %17, i32 noundef 3520, i32 noundef 64) #13
  %outcont_buffer = getelementptr inbounds %struct.keyspan_port_private, ptr %call7.i.i, i32 0, i32 10
  %18 = ptrtoint ptr %outcont_buffer to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call7.i.i164, ptr %outcont_buffer, align 8
  %tobool29.not = icmp eq ptr %call7.i.i164, null
  br i1 %tobool29.not, label %err_free_inack_buffer, label %if.end31

if.end31:                                         ; preds = %if.end26
  %device_details32 = getelementptr inbounds %struct.keyspan_port_private, ptr %call7.i.i, i32 0, i32 2
  %19 = ptrtoint ptr %device_details32 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %5, ptr %device_details32, align 8
  %msg_format = getelementptr inbounds %struct.keyspan_device_details, ptr %5, i32 0, i32 1
  %20 = ptrtoint ptr %msg_format to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %msg_format, align 4
  %port_number = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 4
  %22 = ptrtoint ptr %port_number to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %port_number, align 4
  %conv = zext i8 %23 to i32
  %indat_endp_flip = getelementptr inbounds %struct.keyspan_device_details, ptr %5, i32 0, i32 3
  %24 = ptrtoint ptr %indat_endp_flip to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %indat_endp_flip, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp36.not168 = icmp slt i32 %25, 0
  br i1 %cmp36.not168, label %if.end31.for.end46_crit_edge, label %for.body38.lr.ph

if.end31.for.end46_crit_edge:                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end46

for.body38.lr.ph:                                 ; preds = %if.end31
  %arrayidx34 = getelementptr %struct.keyspan_device_details, ptr %5, i32 0, i32 5, i32 %conv
  %26 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx34, align 4
  %indat_callback = getelementptr [5 x %struct.callbacks], ptr @keyspan_callbacks, i32 0, i32 %21, i32 2
  %28 = ptrtoint ptr %indat_callback to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %indat_callback, align 4
  br label %for.body38

for.body38:                                       ; preds = %for.body38.for.body38_crit_edge, %for.body38.lr.ph
  %i.2170 = phi i32 [ 0, %for.body38.lr.ph ], [ %inc44, %for.body38.for.body38_crit_edge ]
  %endp.0169 = phi i32 [ %27, %for.body38.lr.ph ], [ %inc45, %for.body38.for.body38_crit_edge ]
  %arrayidx40 = getelementptr %struct.keyspan_port_private, ptr %call7.i.i, i32 0, i32 4, i32 %i.2170
  %30 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx40, align 4
  %call41 = tail call fastcc ptr @keyspan_setup_urb(ptr noundef %1, i32 noundef %endp.0169, i32 noundef 128, ptr noundef %port, ptr noundef %31, i32 noundef 64, ptr noundef %29)
  %arrayidx42 = getelementptr %struct.keyspan_port_private, ptr %call7.i.i, i32 0, i32 3, i32 %i.2170
  %32 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call41, ptr %arrayidx42, align 4
  %inc44 = add i32 %i.2170, 1
  %inc45 = add i32 %endp.0169, 1
  %33 = ptrtoint ptr %indat_endp_flip to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %indat_endp_flip, align 4
  %cmp36.not = icmp sgt i32 %inc44, %34
  br i1 %cmp36.not, label %for.body38.for.end46_crit_edge, label %for.body38.for.body38_crit_edge

for.body38.for.body38_crit_edge:                  ; preds = %for.body38
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body38

for.body38.for.end46_crit_edge:                   ; preds = %for.body38
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end46

for.end46:                                        ; preds = %for.body38.for.end46_crit_edge, %if.end31.for.end46_crit_edge
  %outdat_endp_flip = getelementptr inbounds %struct.keyspan_device_details, ptr %5, i32 0, i32 4
  %35 = ptrtoint ptr %outdat_endp_flip to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %outdat_endp_flip, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp49.not171 = icmp slt i32 %36, 0
  br i1 %cmp49.not171, label %for.end46.for.end59_crit_edge, label %for.body51.lr.ph

for.end46.for.end59_crit_edge:                    ; preds = %for.end46
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end59

for.body51.lr.ph:                                 ; preds = %for.end46
  %arrayidx47 = getelementptr %struct.keyspan_device_details, ptr %5, i32 0, i32 6, i32 %conv
  %37 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx47, align 4
  %outdat_callback = getelementptr [5 x %struct.callbacks], ptr @keyspan_callbacks, i32 0, i32 %21, i32 3
  %39 = ptrtoint ptr %outdat_callback to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %outdat_callback, align 4
  br label %for.body51

for.body51:                                       ; preds = %for.body51.for.body51_crit_edge, %for.body51.lr.ph
  %i.3173 = phi i32 [ 0, %for.body51.lr.ph ], [ %inc57, %for.body51.for.body51_crit_edge ]
  %endp.1172 = phi i32 [ %38, %for.body51.lr.ph ], [ %inc58, %for.body51.for.body51_crit_edge ]
  %arrayidx53 = getelementptr %struct.keyspan_port_private, ptr %call7.i.i, i32 0, i32 6, i32 %i.3173
  %41 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx53, align 4
  %call54 = tail call fastcc ptr @keyspan_setup_urb(ptr noundef %1, i32 noundef %endp.1172, i32 noundef 0, ptr noundef %port, ptr noundef %42, i32 noundef 64, ptr noundef %40)
  %arrayidx55 = getelementptr %struct.keyspan_port_private, ptr %call7.i.i, i32 0, i32 5, i32 %i.3173
  %43 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call54, ptr %arrayidx55, align 4
  %inc57 = add i32 %i.3173, 1
  %inc58 = add i32 %endp.1172, 1
  %44 = ptrtoint ptr %outdat_endp_flip to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %outdat_endp_flip, align 4
  %cmp49.not = icmp sgt i32 %inc57, %45
  br i1 %cmp49.not, label %for.body51.for.end59_crit_edge, label %for.body51.for.body51_crit_edge

for.body51.for.body51_crit_edge:                  ; preds = %for.body51
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body51

for.body51.for.end59_crit_edge:                   ; preds = %for.body51
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end59

for.end59:                                        ; preds = %for.body51.for.end59_crit_edge, %for.end46.for.end59_crit_edge
  %arrayidx60 = getelementptr %struct.keyspan_device_details, ptr %5, i32 0, i32 7, i32 %conv
  %46 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx60, align 4
  %48 = ptrtoint ptr %inack_buffer to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %inack_buffer, align 8
  %inack_callback = getelementptr [5 x %struct.callbacks], ptr @keyspan_callbacks, i32 0, i32 %21, i32 4
  %50 = ptrtoint ptr %inack_callback to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %inack_callback, align 4
  %call62 = tail call fastcc ptr @keyspan_setup_urb(ptr noundef %1, i32 noundef %47, i32 noundef 128, ptr noundef %port, ptr noundef %49, i32 noundef 1, ptr noundef %51)
  %inack_urb = getelementptr inbounds %struct.keyspan_port_private, ptr %call7.i.i, i32 0, i32 7
  %52 = ptrtoint ptr %inack_urb to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %call62, ptr %inack_urb, align 4
  %arrayidx63 = getelementptr %struct.keyspan_device_details, ptr %5, i32 0, i32 8, i32 %conv
  %53 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx63, align 4
  %55 = ptrtoint ptr %outcont_buffer to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %outcont_buffer, align 8
  %outcont_callback = getelementptr [5 x %struct.callbacks], ptr @keyspan_callbacks, i32 0, i32 %21, i32 5
  %57 = ptrtoint ptr %outcont_callback to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %outcont_callback, align 4
  %call65 = tail call fastcc ptr @keyspan_setup_urb(ptr noundef %1, i32 noundef %54, i32 noundef 0, ptr noundef %port, ptr noundef %56, i32 noundef 64, ptr noundef %58)
  %outcont_urb = getelementptr inbounds %struct.keyspan_port_private, ptr %call7.i.i, i32 0, i32 9
  %59 = ptrtoint ptr %outcont_urb to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %call65, ptr %outcont_urb, align 4
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32, i32 8
  %60 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  br label %cleanup

err_free_inack_buffer:                            ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  %61 = ptrtoint ptr %inack_buffer to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %inack_buffer, align 8
  tail call void @kfree(ptr noundef %62) #9
  br label %err_free_out_buffer

err_free_out_buffer:                              ; preds = %err_free_inack_buffer, %for.cond9.1.err_free_out_buffer_crit_edge, %for.cond9.err_free_out_buffer_crit_edge, %for.cond.1.err_free_out_buffer_crit_edge
  %63 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %arrayidx13, align 4
  tail call void @kfree(ptr noundef %64) #9
  %arrayidx72.1 = getelementptr %struct.keyspan_port_private, ptr %call7.i.i, i32 0, i32 6, i32 1
  %65 = ptrtoint ptr %arrayidx72.1 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %arrayidx72.1, align 8
  tail call void @kfree(ptr noundef %66) #9
  br label %err_free_in_buffer

err_free_in_buffer:                               ; preds = %err_free_out_buffer, %for.cond.err_free_in_buffer_crit_edge, %for.body.preheader.err_free_in_buffer_crit_edge
  %67 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %arrayidx, align 4
  tail call void @kfree(ptr noundef %68) #9
  %arrayidx81.1 = getelementptr %struct.keyspan_port_private, ptr %call7.i.i, i32 0, i32 4, i32 1
  %69 = ptrtoint ptr %arrayidx81.1 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %arrayidx81.1, align 8
  tail call void @kfree(ptr noundef %70) #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %err_free_in_buffer, %for.end59, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %err_free_in_buffer ], [ 0, %for.end59 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @keyspan_port_remove(ptr nocapture noundef readonly %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %inack_urb = getelementptr inbounds %struct.keyspan_port_private, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %inack_urb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %inack_urb, align 4
  tail call void @usb_kill_urb(ptr noundef %3) #9
  %outcont_urb = getelementptr inbounds %struct.keyspan_port_private, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %outcont_urb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %outcont_urb, align 4
  tail call void @usb_kill_urb(ptr noundef %5) #9
  %arrayidx = getelementptr %struct.keyspan_port_private, ptr %1, i32 0, i32 3, i32 0
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  tail call void @usb_kill_urb(ptr noundef %7) #9
  %arrayidx1 = getelementptr %struct.keyspan_port_private, ptr %1, i32 0, i32 5, i32 0
  %8 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx1, align 4
  tail call void @usb_kill_urb(ptr noundef %9) #9
  %arrayidx.1 = getelementptr %struct.keyspan_port_private, ptr %1, i32 0, i32 3, i32 1
  %10 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.1, align 4
  tail call void @usb_kill_urb(ptr noundef %11) #9
  %arrayidx1.1 = getelementptr %struct.keyspan_port_private, ptr %1, i32 0, i32 5, i32 1
  %12 = ptrtoint ptr %arrayidx1.1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx1.1, align 4
  tail call void @usb_kill_urb(ptr noundef %13) #9
  %14 = ptrtoint ptr %inack_urb to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %inack_urb, align 4
  tail call void @usb_free_urb(ptr noundef %15) #9
  %16 = ptrtoint ptr %outcont_urb to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %outcont_urb, align 4
  tail call void @usb_free_urb(ptr noundef %17) #9
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx, align 4
  tail call void @usb_free_urb(ptr noundef %19) #9
  %20 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx1, align 4
  tail call void @usb_free_urb(ptr noundef %21) #9
  %22 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.1, align 4
  tail call void @usb_free_urb(ptr noundef %23) #9
  %24 = ptrtoint ptr %arrayidx1.1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx1.1, align 4
  tail call void @usb_free_urb(ptr noundef %25) #9
  %outcont_buffer = getelementptr inbounds %struct.keyspan_port_private, ptr %1, i32 0, i32 10
  %26 = ptrtoint ptr %outcont_buffer to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %outcont_buffer, align 4
  tail call void @kfree(ptr noundef %27) #9
  %inack_buffer = getelementptr inbounds %struct.keyspan_port_private, ptr %1, i32 0, i32 8
  %28 = ptrtoint ptr %inack_buffer to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %inack_buffer, align 4
  tail call void @kfree(ptr noundef %29) #9
  %arrayidx17 = getelementptr %struct.keyspan_port_private, ptr %1, i32 0, i32 6, i32 0
  %30 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx17, align 4
  tail call void @kfree(ptr noundef %31) #9
  %arrayidx17.1 = getelementptr %struct.keyspan_port_private, ptr %1, i32 0, i32 6, i32 1
  %32 = ptrtoint ptr %arrayidx17.1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx17.1, align 4
  tail call void @kfree(ptr noundef %33) #9
  %arrayidx24 = getelementptr %struct.keyspan_port_private, ptr %1, i32 0, i32 4, i32 0
  %34 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx24, align 4
  tail call void @kfree(ptr noundef %35) #9
  %arrayidx24.1 = getelementptr %struct.keyspan_port_private, ptr %1, i32 0, i32 4, i32 1
  %36 = ptrtoint ptr %arrayidx24.1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx24.1, align 4
  tail call void @kfree(ptr noundef %37) #9
  tail call void @kfree(ptr noundef %1) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @keyspan_open(ptr noundef %tty, ptr noundef %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %device_details = getelementptr inbounds %struct.keyspan_port_private, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %device_details to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device_details, align 4
  %rts_state = getelementptr inbounds %struct.keyspan_port_private, ptr %1, i32 0, i32 16
  %4 = ptrtoint ptr %rts_state to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %rts_state, align 4
  %dtr_state = getelementptr inbounds %struct.keyspan_port_private, ptr %1, i32 0, i32 17
  %5 = ptrtoint ptr %dtr_state to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %dtr_state, align 4
  %baud = getelementptr inbounds %struct.keyspan_port_private, ptr %1, i32 0, i32 11
  %6 = ptrtoint ptr %baud to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 9600, ptr %baud, align 4
  %old_baud = getelementptr inbounds %struct.keyspan_port_private, ptr %1, i32 0, i32 12
  %7 = ptrtoint ptr %old_baud to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %old_baud, align 4
  %old_cflag = getelementptr inbounds %struct.keyspan_port_private, ptr %1, i32 0, i32 14
  %8 = ptrtoint ptr %old_cflag to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %old_cflag, align 4
  %out_flip = getelementptr inbounds %struct.keyspan_port_private, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %out_flip to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %out_flip, align 4
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %1, align 4
  %dev10 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %cmp = phi i1 [ true, %entry ], [ false, %for.inc.for.body_crit_edge ]
  %i.070 = phi i32 [ 0, %entry ], [ 1, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.keyspan_port_private, ptr %1, i32 0, i32 3, i32 %i.070
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx, align 4
  %cmp1 = icmp eq ptr %12, null
  br i1 %cmp1, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end:                                           ; preds = %for.body
  %dev = getelementptr inbounds %struct.urb, ptr %12, i32 0, i32 8
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 4
  %pipe = getelementptr inbounds %struct.urb, ptr %12, i32 0, i32 10
  %15 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pipe, align 4
  %call2 = tail call i32 @usb_clear_halt(ptr noundef %14, i32 noundef %16) #9
  %call3 = tail call i32 @usb_submit_urb(ptr noundef nonnull %12, i32 noundef 3264) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4.not = icmp eq i32 %call3, 0
  br i1 %cmp4.not, label %if.end.for.inc_crit_edge, label %do.body

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @keyspan_open.__UNIQUE_ID_ddebug280, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@keyspan_open, %if.then9)) #9
          to label %for.inc [label %if.then9], !srcloc !383

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @keyspan_open.__UNIQUE_ID_ddebug280, ptr noundef %dev10, ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.88, i32 noundef %i.070, i32 noundef %call3) #9
  br label %for.inc

for.inc:                                          ; preds = %if.then9, %do.body, %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.cond13.preheader

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.cond13.preheader:                             ; preds = %for.inc
  %port_number = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 4
  %17 = ptrtoint ptr %port_number to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %port_number, align 4
  %conv = zext i8 %18 to i32
  %tobool23.not = icmp eq ptr %tty, null
  br i1 %tobool23.not, label %for.cond13.preheader.if.end34_crit_edge, label %if.then24

for.cond13.preheader.if.end34_crit_edge:          ; preds = %for.cond13.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34

if.then24:                                        ; preds = %for.cond13.preheader
  %c_cflag = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 2
  %19 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %c_cflag, align 4
  %termios.i = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13
  %call.i = tail call i32 @tty_termios_baud_rate(ptr noundef %termios.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp26 = icmp sgt i32 %call.i, -1
  br i1 %cmp26, label %land.lhs.true, label %if.then24.if.end34_crit_edge

if.then24.if.end34_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34

land.lhs.true:                                    ; preds = %if.then24
  %calculate_baud_rate = getelementptr inbounds %struct.keyspan_device_details, ptr %3, i32 0, i32 12
  %21 = ptrtoint ptr %calculate_baud_rate to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %calculate_baud_rate, align 4
  %baudclk = getelementptr inbounds %struct.keyspan_device_details, ptr %3, i32 0, i32 13
  %23 = ptrtoint ptr %baudclk to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %baudclk, align 4
  %call28 = tail call i32 %22(ptr noundef %port, i32 noundef %call.i, i32 noundef %24, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef %conv) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %cmp29 = icmp eq i32 %call28, 0
  br i1 %cmp29, label %if.then31, label %land.lhs.true.if.end34_crit_edge

land.lhs.true.if.end34_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34

if.then31:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %25 = ptrtoint ptr %baud to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %call.i, ptr %baud, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.then31, %land.lhs.true.if.end34_crit_edge, %if.then24.if.end34_crit_edge, %for.cond13.preheader.if.end34_crit_edge
  %cflag.0 = phi i32 [ %20, %if.then31 ], [ %20, %land.lhs.true.if.end34_crit_edge ], [ %20, %if.then24.if.end34_crit_edge ], [ 0, %for.cond13.preheader.if.end34_crit_edge ]
  %cflag35 = getelementptr inbounds %struct.keyspan_port_private, ptr %1, i32 0, i32 13
  %26 = ptrtoint ptr %cflag35 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %cflag.0, ptr %cflag35, align 4
  %cflag.0.lobit = lshr i32 %cflag.0, 31
  %flow_control = getelementptr inbounds %struct.keyspan_port_private, ptr %1, i32 0, i32 15
  %27 = ptrtoint ptr %flow_control to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %cflag.0.lobit, ptr %flow_control, align 4
  tail call fastcc void @keyspan_send_setup(ptr noundef %port, i32 noundef 1)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @keyspan_close(ptr noundef %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %rts_state = getelementptr inbounds %struct.keyspan_port_private, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %rts_state to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %rts_state, align 4
  %dtr_state = getelementptr inbounds %struct.keyspan_port_private, ptr %1, i32 0, i32 17
  %3 = ptrtoint ptr %dtr_state to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %dtr_state, align 4
  tail call fastcc void @keyspan_send_setup(ptr noundef %port, i32 noundef 2)
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry
  %__ms.012 = phi i32 [ 100, %entry ], [ %dec, %while.body.while.body_crit_edge ]
  %dec = add nsw i32 %__ms.012, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 214748000) #9
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %while.end, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.end:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  %out_flip = getelementptr inbounds %struct.keyspan_port_private, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %out_flip to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %out_flip, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %1, align 4
  %inack_urb = getelementptr inbounds %struct.keyspan_port_private, ptr %1, i32 0, i32 7
  %7 = ptrtoint ptr %inack_urb to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %inack_urb, align 4
  tail call void @usb_kill_urb(ptr noundef %8) #9
  %arrayidx = getelementptr %struct.keyspan_port_private, ptr %1, i32 0, i32 3, i32 0
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx, align 4
  tail call void @usb_kill_urb(ptr noundef %10) #9
  %arrayidx1 = getelementptr %struct.keyspan_port_private, ptr %1, i32 0, i32 5, i32 0
  %11 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx1, align 4
  tail call void @usb_kill_urb(ptr noundef %12) #9
  %arrayidx.1 = getelementptr %struct.keyspan_port_private, ptr %1, i32 0, i32 3, i32 1
  %13 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx.1, align 4
  tail call void @usb_kill_urb(ptr noundef %14) #9
  %arrayidx1.1 = getelementptr %struct.keyspan_port_private, ptr %1, i32 0, i32 5, i32 1
  %15 = ptrtoint ptr %arrayidx1.1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx1.1, align 4
  tail call void @usb_kill_urb(ptr noundef %16) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @keyspan_write(ptr nocapture noundef readnone %tty, ptr noundef %port, ptr nocapture noundef readonly %buf, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %device_details = getelementptr inbounds %struct.keyspan_port_private, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %device_details to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device_details, align 4
  %msg_format = getelementptr inbounds %struct.keyspan_device_details, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %msg_format to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %msg_format, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %5)
  %cmp = icmp eq i32 %5, 3
  %. = select i1 %cmp, i32 64, i32 63
  %not.cmp = xor i1 %cmp, true
  %.132 = zext i1 %not.cmp to i32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @keyspan_write.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@keyspan_write, %if.then4)) #9
          to label %do.end [label %if.then4], !srcloc !383

if.then4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  %out_flip = getelementptr inbounds %struct.keyspan_port_private, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %out_flip to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %out_flip, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @keyspan_write.__UNIQUE_ID_ddebug238, ptr noundef %dev, ptr noundef nonnull @.str.91, ptr noundef nonnull @.str.90, i32 noundef %count, i32 noundef %7) #9
  br label %do.end

do.end:                                           ; preds = %if.then4, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp6152 = icmp sgt i32 %count, 0
  br i1 %cmp6152, label %for.body.lr.ph, label %do.end.for.end_crit_edge

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end
  %out_flip10 = getelementptr inbounds %struct.keyspan_port_private, ptr %1, i32 0, i32 1
  %dev44 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  %outdat_endp_flip = getelementptr inbounds %struct.keyspan_device_details, ptr %3, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %if.end80.for.body_crit_edge, %for.body.lr.ph
  %buf.addr.0154 = phi ptr [ %buf, %for.body.lr.ph ], [ %add.ptr58, %if.end80.for.body_crit_edge ]
  %left.0153 = phi i32 [ %count, %for.body.lr.ph ], [ %sub86, %if.end80.for.body_crit_edge ]
  %8 = tail call i32 @llvm.smin.i32(i32 %left.0153, i32 %.)
  %9 = ptrtoint ptr %out_flip10 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %out_flip10, align 4
  %arrayidx = getelementptr %struct.keyspan_port_private, ptr %1, i32 0, i32 5, i32 %10
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx, align 4
  %cmp11 = icmp eq ptr %12, null
  br i1 %cmp11, label %do.body13, label %do.body31

do.body13:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @keyspan_write.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@keyspan_write, %if.then25)) #9
          to label %cleanup [label %if.then25], !srcloc !383

if.then25:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @keyspan_write.__UNIQUE_ID_ddebug239, ptr noundef %dev44, ptr noundef nonnull @.str.92, ptr noundef nonnull @.str.90) #9
  br label %cleanup

do.body31:                                        ; preds = %for.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @keyspan_write.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@keyspan_write, %if.then43)) #9
          to label %do.end47 [label %if.then43], !srcloc !383

if.then43:                                        ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #11
  %pipe = getelementptr inbounds %struct.urb, ptr %12, i32 0, i32 10
  %13 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pipe, align 4
  %shr = lshr i32 %14, 15
  %and = and i32 %shr, 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @keyspan_write.__UNIQUE_ID_ddebug240, ptr noundef %dev44, ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.90, i32 noundef %and, i32 noundef %10) #9
  br label %do.end47

do.end47:                                         ; preds = %if.then43, %do.body31
  %status = getelementptr inbounds %struct.urb, ptr %12, i32 0, i32 12
  %15 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -115, i32 %16)
  %cmp48 = icmp eq i32 %16, -115
  br i1 %cmp48, label %if.then49, label %if.end55

if.then49:                                        ; preds = %do.end47
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %17 = load volatile i32, ptr @jiffies, align 128
  %arrayidx50 = getelementptr %struct.keyspan_port_private, ptr %1, i32 0, i32 23, i32 %10
  %18 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx50, align 4
  %add.neg = add i32 %17, -1000
  %sub = sub i32 %add.neg, %19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp51 = icmp slt i32 %sub, 0
  br i1 %cmp51, label %if.then49.for.end_crit_edge, label %if.end53

if.then49.for.end_crit_edge:                      ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end53:                                         ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #11
  %call54 = tail call i32 @usb_unlink_urb(ptr noundef nonnull %12) #9
  br label %for.end

if.end55:                                         ; preds = %do.end47
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %12, i32 0, i32 14
  %20 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %transfer_buffer, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %21, align 1
  %23 = load ptr, ptr %transfer_buffer, align 4
  %add.ptr = getelementptr i8, ptr %23, i32 %.132
  %24 = call ptr @memcpy(ptr %add.ptr, ptr %buf.addr.0154, i32 %8)
  %add.ptr58 = getelementptr i8, ptr %buf.addr.0154, i32 %8
  %add59 = add i32 %8, %.132
  %transfer_buffer_length = getelementptr inbounds %struct.urb, ptr %12, i32 0, i32 19
  %25 = ptrtoint ptr %transfer_buffer_length to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %add59, ptr %transfer_buffer_length, align 4
  %call60 = tail call i32 @usb_submit_urb(ptr noundef nonnull %12, i32 noundef 2592) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %cmp61.not = icmp eq i32 %call60, 0
  br i1 %cmp61.not, label %if.end55.if.end80_crit_edge, label %do.body63

if.end55.if.end80_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end80

do.body63:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @keyspan_write.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@keyspan_write, %if.then75)) #9
          to label %if.end80 [label %if.then75], !srcloc !383

if.then75:                                        ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @keyspan_write.__UNIQUE_ID_ddebug241, ptr noundef %dev44, ptr noundef nonnull @.str.94, i32 noundef %call60) #9
  br label %if.end80

if.end80:                                         ; preds = %if.then75, %do.body63, %if.end55.if.end80_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %26 = load volatile i32, ptr @jiffies, align 128
  %arrayidx82 = getelementptr %struct.keyspan_port_private, ptr %1, i32 0, i32 23, i32 %10
  %27 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %arrayidx82, align 4
  %add83 = add i32 %10, 1
  %28 = ptrtoint ptr %outdat_endp_flip to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %outdat_endp_flip, align 4
  %and84 = and i32 %29, %add83
  %30 = ptrtoint ptr %out_flip10 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %and84, ptr %out_flip10, align 4
  %sub86 = sub i32 %left.0153, %8
  %cmp6 = icmp sgt i32 %sub86, 0
  br i1 %cmp6, label %if.end80.for.body_crit_edge, label %if.end80.for.end_crit_edge

if.end80.for.end_crit_edge:                       ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end80.for.body_crit_edge:                      ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %if.end80.for.end_crit_edge, %if.end53, %if.then49.for.end_crit_edge, %do.end.for.end_crit_edge
  %left.0148 = phi i32 [ %left.0153, %if.then49.for.end_crit_edge ], [ %left.0153, %if.end53 ], [ %count, %do.end.for.end_crit_edge ], [ %sub86, %if.end80.for.end_crit_edge ]
  %sub87 = sub i32 %count, %left.0148
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then25, %do.body13
  %retval.0 = phi i32 [ %sub87, %for.end ], [ %count, %if.then25 ], [ %count, %do.body13 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @keyspan_write_room(ptr nocapture noundef readonly %tty) #6 align 64 {
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
  %device_details = getelementptr inbounds %struct.keyspan_port_private, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %device_details to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device_details, align 4
  %msg_format = getelementptr inbounds %struct.keyspan_device_details, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %msg_format to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %msg_format, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %7)
  %cmp = icmp eq i32 %7, 3
  %. = select i1 %cmp, i32 64, i32 63
  %out_flip = getelementptr inbounds %struct.keyspan_port_private, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %out_flip to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %out_flip, align 4
  %arrayidx = getelementptr %struct.keyspan_port_private, ptr %3, i32 0, i32 5, i32 %9
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  %cmp1.not = icmp eq ptr %11, null
  br i1 %cmp1.not, label %entry.if.end15_crit_edge, label %if.then2

entry.if.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

if.then2:                                         ; preds = %entry
  %status = getelementptr inbounds %struct.urb, ptr %11, i32 0, i32 12
  %12 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -115, i32 %13)
  %cmp3.not = icmp eq i32 %13, -115
  br i1 %cmp3.not, label %if.end5, label %if.then2.cleanup_crit_edge

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %if.then2
  %add = add i32 %9, 1
  %outdat_endp_flip = getelementptr inbounds %struct.keyspan_device_details, ptr %5, i32 0, i32 4
  %14 = ptrtoint ptr %outdat_endp_flip to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %outdat_endp_flip, align 4
  %and = and i32 %15, %add
  %arrayidx7 = getelementptr %struct.keyspan_port_private, ptr %3, i32 0, i32 5, i32 %and
  %16 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx7, align 4
  %cmp8.not = icmp eq ptr %17, null
  br i1 %cmp8.not, label %if.end5.if.end15_crit_edge, label %if.then9

if.end5.if.end15_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

if.then9:                                         ; preds = %if.end5
  %status10 = getelementptr inbounds %struct.urb, ptr %17, i32 0, i32 12
  %18 = ptrtoint ptr %status10 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %status10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -115, i32 %19)
  %cmp11.not = icmp eq i32 %19, -115
  br i1 %cmp11.not, label %if.then9.if.end15_crit_edge, label %if.then9.cleanup_crit_edge

if.then9.cleanup_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then9.if.end15_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

if.end15:                                         ; preds = %if.then9.if.end15_crit_edge, %if.end5.if.end15_crit_edge, %entry.if.end15_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.then9.cleanup_crit_edge, %if.then2.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end15 ], [ %., %if.then2.cleanup_crit_edge ], [ %., %if.then9.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @keyspan_set_termios(ptr noundef %tty, ptr noundef %port, ptr noundef %old_termios) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %device_details = getelementptr inbounds %struct.keyspan_port_private, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %device_details to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device_details, align 4
  %c_cflag = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 2
  %4 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %c_cflag, align 4
  %port_number = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 4
  %6 = ptrtoint ptr %port_number to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %port_number, align 4
  %conv = zext i8 %7 to i32
  %termios.i = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13
  %call.i = tail call i32 @tty_termios_baud_rate(ptr noundef %termios.i) #9
  %calculate_baud_rate = getelementptr inbounds %struct.keyspan_device_details, ptr %3, i32 0, i32 12
  %8 = ptrtoint ptr %calculate_baud_rate to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %calculate_baud_rate, align 4
  %baudclk = getelementptr inbounds %struct.keyspan_device_details, ptr %3, i32 0, i32 13
  %10 = ptrtoint ptr %baudclk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %baudclk, align 4
  %call2 = tail call i32 %9(ptr noundef %port, i32 noundef %call.i, i32 noundef %11, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef %conv) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp eq i32 %call2, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %baud = getelementptr inbounds %struct.keyspan_port_private, ptr %1, i32 0, i32 11
  %12 = ptrtoint ptr %baud to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %call.i, ptr %baud, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call4 = tail call i32 @tty_termios_baud_rate(ptr noundef %old_termios) #9
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %baud_rate.0 = phi i32 [ %call.i, %if.then ], [ %call4, %if.else ]
  tail call void @tty_encode_baud_rate(ptr noundef %tty, i32 noundef %baud_rate.0, i32 noundef %baud_rate.0) #9
  %cflag5 = getelementptr inbounds %struct.keyspan_port_private, ptr %1, i32 0, i32 13
  %13 = ptrtoint ptr %cflag5 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %5, ptr %cflag5, align 4
  %.lobit = lshr i32 %5, 31
  %flow_control = getelementptr inbounds %struct.keyspan_port_private, ptr %1, i32 0, i32 15
  %14 = ptrtoint ptr %flow_control to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %.lobit, ptr %flow_control, align 4
  %15 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %c_cflag, align 4
  %and8 = and i32 %16, -1073741825
  store i32 %and8, ptr %c_cflag, align 4
  tail call fastcc void @keyspan_send_setup(ptr noundef %port, i32 noundef 0)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @keyspan_break_ctl(ptr nocapture noundef readonly %tty, i32 noundef %break_state) #2 align 64 {
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
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %break_state)
  %cmp = icmp eq i32 %break_state, -1
  %spec.select = zext i1 %cmp to i32
  %4 = getelementptr inbounds %struct.keyspan_port_private, ptr %3, i32 0, i32 22
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %spec.select, ptr %4, align 4
  tail call fastcc void @keyspan_send_setup(ptr noundef %1, i32 noundef 0)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @keyspan_tiocmget(ptr nocapture noundef readonly %tty) #6 align 64 {
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
  %rts_state = getelementptr inbounds %struct.keyspan_port_private, ptr %3, i32 0, i32 16
  %4 = ptrtoint ptr %rts_state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rts_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  %cond = select i1 %tobool.not, i32 0, i32 4
  %dtr_state = getelementptr inbounds %struct.keyspan_port_private, ptr %3, i32 0, i32 17
  %6 = ptrtoint ptr %dtr_state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dtr_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool1.not = icmp eq i32 %7, 0
  %cond2 = select i1 %tobool1.not, i32 0, i32 2
  %or = or i32 %cond2, %cond
  %cts_state = getelementptr inbounds %struct.keyspan_port_private, ptr %3, i32 0, i32 18
  %8 = ptrtoint ptr %cts_state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cts_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool3.not = icmp eq i32 %9, 0
  %cond4 = select i1 %tobool3.not, i32 0, i32 32
  %or5 = or i32 %or, %cond4
  %dsr_state = getelementptr inbounds %struct.keyspan_port_private, ptr %3, i32 0, i32 19
  %10 = ptrtoint ptr %dsr_state to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dsr_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool6.not = icmp eq i32 %11, 0
  %cond7 = select i1 %tobool6.not, i32 0, i32 256
  %or8 = or i32 %or5, %cond7
  %dcd_state = getelementptr inbounds %struct.keyspan_port_private, ptr %3, i32 0, i32 20
  %12 = ptrtoint ptr %dcd_state to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dcd_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool9.not = icmp eq i32 %13, 0
  %cond10 = select i1 %tobool9.not, i32 0, i32 64
  %or11 = or i32 %or8, %cond10
  %ri_state = getelementptr inbounds %struct.keyspan_port_private, ptr %3, i32 0, i32 21
  %14 = ptrtoint ptr %ri_state to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ri_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool12.not = icmp eq i32 %15, 0
  %cond13 = select i1 %tobool12.not, i32 0, i32 128
  %or14 = or i32 %or11, %cond13
  ret i32 %or14
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @keyspan_tiocmset(ptr nocapture noundef readonly %tty, i32 noundef %set, i32 noundef %clear) #2 align 64 {
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
  %and = and i32 %set, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %rts_state = getelementptr inbounds %struct.keyspan_port_private, ptr %3, i32 0, i32 16
  %4 = ptrtoint ptr %rts_state to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %rts_state, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %and1 = and i32 %set, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %if.end.if.end4_crit_edge, label %if.then3

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %dtr_state = getelementptr inbounds %struct.keyspan_port_private, ptr %3, i32 0, i32 17
  %5 = ptrtoint ptr %dtr_state to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %dtr_state, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  %and5 = and i32 %clear, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.end4.if.end9_crit_edge, label %if.then7

if.end4.if.end9_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  %rts_state8 = getelementptr inbounds %struct.keyspan_port_private, ptr %3, i32 0, i32 16
  %6 = ptrtoint ptr %rts_state8 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %rts_state8, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.end4.if.end9_crit_edge
  %and10 = and i32 %clear, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.end9.if.end14_crit_edge, label %if.then12

if.end9.if.end14_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.then12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  %dtr_state13 = getelementptr inbounds %struct.keyspan_port_private, ptr %3, i32 0, i32 17
  %7 = ptrtoint ptr %dtr_state13 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %dtr_state13, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %if.end9.if.end14_crit_edge
  tail call fastcc void @keyspan_send_setup(ptr noundef %1, i32 noundef 0)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @keyspan_dtr_rts(ptr noundef %port, i32 noundef %on) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %rts_state = getelementptr inbounds %struct.keyspan_port_private, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %rts_state to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %on, ptr %rts_state, align 4
  %dtr_state = getelementptr inbounds %struct.keyspan_port_private, ptr %1, i32 0, i32 17
  %3 = ptrtoint ptr %dtr_state to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %on, ptr %dtr_state, align 4
  tail call fastcc void @keyspan_send_setup(ptr noundef %port, i32 noundef 0)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @keyspan_usa19w_calc_baud(ptr noundef %port, i32 noundef %baud_rate, i32 noundef %baudclk, ptr noundef writeonly %rate_hi, ptr noundef writeonly %rate_low, ptr noundef writeonly %prescaler, i32 noundef %portnum) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @keyspan_usa19w_calc_baud.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@keyspan_usa19w_calc_baud, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !383

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @keyspan_usa19w_calc_baud.__UNIQUE_ID_ddebug290, ptr noundef %dev, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.32, i32 noundef %baud_rate) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %mul = shl i32 %baud_rate, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul)
  %cmp = icmp eq i32 %mul, 0
  br i1 %cmp, label %do.end.cleanup_crit_edge, label %for.cond.preheader

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.preheader:                               ; preds = %do.end
  %mul6 = shl i32 %baudclk, 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader
  %i.073 = phi i32 [ 8, %for.cond.preheader ], [ %inc, %for.inc.for.body_crit_edge ]
  %best_prescaler.072 = phi i8 [ 0, %for.cond.preheader ], [ %best_prescaler.1, %for.inc.for.body_crit_edge ]
  %smallest_diff.071 = phi i32 [ -1, %for.cond.preheader ], [ %smallest_diff.1, %for.inc.for.body_crit_edge ]
  %div7 = udiv i32 %mul6, %i.073
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %div7)
  %cmp9 = icmp ugt i32 %mul, %div7
  br i1 %cmp9, label %for.body.for.inc_crit_edge, label %if.end11

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end11:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %div8 = udiv i32 %div7, %mul
  %div12 = udiv i32 %div7, %div8
  call void @__sanitizer_cov_trace_cmp4(i32 %div12, i32 %mul)
  %cmp13 = icmp ugt i32 %div12, %mul
  %sub = sub i32 %div12, %mul
  %sub14 = sub i32 %mul, %div12
  %cond = select i1 %cmp13, i32 %sub, i32 %sub14
  call void @__sanitizer_cov_trace_cmp4(i32 %cond, i32 %smallest_diff.071)
  %cmp15 = icmp ult i32 %cond, %smallest_diff.071
  %conv = trunc i32 %i.073 to i8
  %0 = tail call i32 @llvm.umin.i32(i32 %cond, i32 %smallest_diff.071)
  %spec.select69 = select i1 %cmp15, i8 %conv, i8 %best_prescaler.072
  br label %for.inc

for.inc:                                          ; preds = %if.end11, %for.body.for.inc_crit_edge
  %smallest_diff.1 = phi i32 [ %smallest_diff.071, %for.body.for.inc_crit_edge ], [ %0, %if.end11 ]
  %best_prescaler.1 = phi i8 [ %best_prescaler.072, %for.body.for.inc_crit_edge ], [ %spec.select69, %if.end11 ]
  %inc = add nuw nsw i32 %i.073, 1
  %exitcond.not = icmp eq i32 %inc, 256
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %best_prescaler.1)
  %cmp19 = icmp eq i8 %best_prescaler.1, 0
  br i1 %cmp19, label %for.end.cleanup_crit_edge, label %if.end22

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end22:                                         ; preds = %for.end
  %conv18 = zext i8 %best_prescaler.1 to i32
  %div25 = udiv i32 %mul6, %conv18
  %div26 = udiv i32 %div25, %mul
  %tobool27.not = icmp eq ptr %rate_low, null
  br i1 %tobool27.not, label %if.end22.if.end30_crit_edge, label %if.then28

if.end22.if.end30_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30

if.then28:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  %conv29 = trunc i32 %div26 to i8
  %1 = ptrtoint ptr %rate_low to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %conv29, ptr %rate_low, align 1
  br label %if.end30

if.end30:                                         ; preds = %if.then28, %if.end22.if.end30_crit_edge
  %tobool31.not = icmp eq ptr %rate_hi, null
  br i1 %tobool31.not, label %if.end30.if.end35_crit_edge, label %if.then32

if.end30.if.end35_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35

if.then32:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  %shr = lshr i32 %div26, 8
  %conv34 = trunc i32 %shr to i8
  %2 = ptrtoint ptr %rate_hi to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv34, ptr %rate_hi, align 1
  br label %if.end35

if.end35:                                         ; preds = %if.then32, %if.end30.if.end35_crit_edge
  %tobool36.not = icmp eq ptr %prescaler, null
  br i1 %tobool36.not, label %if.end35.cleanup_crit_edge, label %if.then37

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then37:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %prescaler to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %best_prescaler.1, ptr %prescaler, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then37, %if.end35.cleanup_crit_edge, %for.end.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %do.end.cleanup_crit_edge ], [ -1, %for.end.cleanup_crit_edge ], [ 0, %if.then37 ], [ 0, %if.end35.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @keyspan_usa19_calc_baud(ptr noundef %port, i32 noundef %baud_rate, i32 noundef %baudclk, ptr noundef %rate_hi, ptr noundef %rate_low, ptr nocapture noundef readnone %prescaler, i32 noundef %portnum) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @keyspan_usa19_calc_baud.__UNIQUE_ID_ddebug286, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@keyspan_usa19_calc_baud, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !383

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @keyspan_usa19_calc_baud.__UNIQUE_ID_ddebug286, ptr noundef %dev, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.34, i32 noundef %baud_rate) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %mul = shl i32 %baud_rate, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 57600, i32 %baud_rate)
  %cmp5 = icmp ugt i32 %baud_rate, 57600
  %0 = add i32 %mul, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %0, i32 %baudclk)
  %1 = icmp uge i32 %0, %baudclk
  %2 = or i1 %cmp5, %1
  br i1 %2, label %do.end.cleanup_crit_edge, label %if.else

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.else:                                          ; preds = %do.end
  %div8 = udiv i32 %baudclk, %mul
  %sub = sub i32 0, %div8
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %div8)
  %cmp12 = icmp ugt i32 %div8, 65535
  br i1 %cmp12, label %if.else.cleanup_crit_edge, label %if.end14

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end14:                                         ; preds = %if.else
  %tobool15.not = icmp eq ptr %rate_low, null
  br i1 %tobool15.not, label %if.end17, label %if.end17.thread

if.end17:                                         ; preds = %if.end14
  %tobool18.not = icmp eq ptr %rate_hi, null
  br i1 %tobool18.not, label %if.end17.cleanup_crit_edge, label %if.end22

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end17.thread:                                  ; preds = %if.end14
  %conv = trunc i32 %sub to i8
  %3 = ptrtoint ptr %rate_low to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv, ptr %rate_low, align 1
  %tobool18.not69 = icmp eq ptr %rate_hi, null
  br i1 %tobool18.not69, label %if.end17.thread.cleanup_crit_edge, label %do.body26

if.end17.thread.cleanup_crit_edge:                ; preds = %if.end17.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end22:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  %shr = lshr i32 %sub, 8
  %conv21 = trunc i32 %shr to i8
  %4 = ptrtoint ptr %rate_hi to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv21, ptr %rate_hi, align 1
  br label %cleanup

do.body26:                                        ; preds = %if.end17.thread
  call void @__sanitizer_cov_trace_pc() #11
  %shr70 = lshr i32 %sub, 8
  %conv2171 = trunc i32 %shr70 to i8
  %5 = ptrtoint ptr %rate_hi to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv2171, ptr %rate_hi, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @keyspan_usa19_calc_baud.__UNIQUE_ID_ddebug287, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@keyspan_usa19_calc_baud, %if.then38)) #9
          to label %cleanup [label %if.then38], !srcloc !383

if.then38:                                        ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #11
  %dev39 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  %6 = ptrtoint ptr %rate_hi to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %rate_hi, align 1
  %conv40 = zext i8 %7 to i32
  %8 = ptrtoint ptr %rate_low to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %rate_low, align 1
  %conv41 = zext i8 %9 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @keyspan_usa19_calc_baud.__UNIQUE_ID_ddebug287, ptr noundef %dev39, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.34, i32 noundef %baud_rate, i32 noundef %conv40, i32 noundef %conv41) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then38, %do.body26, %if.end22, %if.end17.thread.cleanup_crit_edge, %if.end17.cleanup_crit_edge, %if.else.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %do.end.cleanup_crit_edge ], [ -1, %if.else.cleanup_crit_edge ], [ 0, %if.end22 ], [ 0, %if.then38 ], [ 0, %do.body26 ], [ 0, %if.end17.cleanup_crit_edge ], [ 0, %if.end17.thread.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @keyspan_usa28_calc_baud(ptr noundef %port, i32 noundef %baud_rate, i32 noundef %baudclk, ptr noundef writeonly %rate_hi, ptr noundef writeonly %rate_low, ptr nocapture noundef readnone %prescaler, i32 noundef %portnum) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @keyspan_usa28_calc_baud.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@keyspan_usa28_calc_baud, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !383

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @keyspan_usa28_calc_baud.__UNIQUE_ID_ddebug291, ptr noundef %dev, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.36, i32 noundef %baud_rate) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %mul = shl i32 %baud_rate, 4
  %0 = add i32 %mul, -1843201
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1843200, i32 %0)
  %1 = icmp ult i32 %0, -1843200
  br i1 %1, label %do.end.cleanup_crit_edge, label %if.else

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.else:                                          ; preds = %do.end
  %div5 = udiv i32 1843200, %mul
  %sub = sub nsw i32 0, %div5
  %2 = zext i32 %portnum to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.99)
  switch i32 %portnum, label %if.else.cleanup_crit_edge [
    i32 0, label %if.then10
    i32 1, label %if.then16
  ]

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then10:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 29, i32 %mul)
  %cmp11 = icmp ult i32 %mul, 29
  br i1 %cmp11, label %if.then10.cleanup_crit_edge, label %if.then10.if.end22_crit_edge

if.then10.if.end22_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

if.then10.cleanup_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then16:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 7201, i32 %mul)
  %cmp17 = icmp ult i32 %mul, 7201
  br i1 %cmp17, label %if.then16.cleanup_crit_edge, label %if.then16.if.end22_crit_edge

if.then16.if.end22_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

if.then16.cleanup_crit_edge:                      ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end22:                                         ; preds = %if.then16.if.end22_crit_edge, %if.then10.if.end22_crit_edge
  %tobool23.not = icmp eq ptr %rate_low, null
  br i1 %tobool23.not, label %if.end22.if.end25_crit_edge, label %if.then24

if.end22.if.end25_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

if.then24:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  %conv = trunc i32 %sub to i8
  %3 = ptrtoint ptr %rate_low to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv, ptr %rate_low, align 1
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %if.end22.if.end25_crit_edge
  %tobool26.not = icmp eq ptr %rate_hi, null
  br i1 %tobool26.not, label %if.end25.do.body31_crit_edge, label %if.then27

if.end25.do.body31_crit_edge:                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body31

if.then27:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  %shr = lshr i32 %sub, 8
  %conv29 = trunc i32 %shr to i8
  %4 = ptrtoint ptr %rate_hi to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv29, ptr %rate_hi, align 1
  br label %do.body31

do.body31:                                        ; preds = %if.then27, %if.end25.do.body31_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @keyspan_usa28_calc_baud.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@keyspan_usa28_calc_baud, %if.then43)) #9
          to label %cleanup [label %if.then43], !srcloc !383

if.then43:                                        ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #11
  %dev44 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @keyspan_usa28_calc_baud.__UNIQUE_ID_ddebug292, ptr noundef %dev44, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.36, i32 noundef %baud_rate) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then43, %do.body31, %if.then16.cleanup_crit_edge, %if.then10.cleanup_crit_edge, %if.else.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %do.end.cleanup_crit_edge ], [ -1, %if.then10.cleanup_crit_edge ], [ -1, %if.then16.cleanup_crit_edge ], [ -1, %if.else.cleanup_crit_edge ], [ 0, %if.then43 ], [ 0, %do.body31 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @keyspan_usa19hs_calc_baud(ptr noundef %port, i32 noundef %baud_rate, i32 noundef %baudclk, ptr noundef %rate_hi, ptr noundef %rate_low, ptr nocapture noundef readnone %prescaler, i32 noundef %portnum) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @keyspan_usa19hs_calc_baud.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@keyspan_usa19hs_calc_baud, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !383

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @keyspan_usa19hs_calc_baud.__UNIQUE_ID_ddebug288, ptr noundef %dev, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.38, i32 noundef %baud_rate) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %mul = shl i32 %baud_rate, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul)
  %cmp = icmp eq i32 %mul, 0
  br i1 %cmp, label %do.end.cleanup_crit_edge, label %if.end4

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %do.end
  %div5 = udiv i32 %baudclk, %mul
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %baudclk)
  %cmp6 = icmp ugt i32 %mul, %baudclk
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %div5)
  %cmp9 = icmp ugt i32 %div5, 65535
  %or.cond = or i1 %cmp6, %cmp9
  br i1 %or.cond, label %if.end4.cleanup_crit_edge, label %if.end11

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end11:                                         ; preds = %if.end4
  %tobool12.not = icmp eq ptr %rate_low, null
  br i1 %tobool12.not, label %if.end14, label %if.end14.thread

if.end14:                                         ; preds = %if.end11
  %tobool15.not = icmp eq ptr %rate_hi, null
  br i1 %tobool15.not, label %if.end14.cleanup_crit_edge, label %if.end19

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end14.thread:                                  ; preds = %if.end11
  %conv = trunc i32 %div5 to i8
  %0 = ptrtoint ptr %rate_low to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %conv, ptr %rate_low, align 1
  %tobool15.not63 = icmp eq ptr %rate_hi, null
  br i1 %tobool15.not63, label %if.end14.thread.cleanup_crit_edge, label %do.body23

if.end14.thread.cleanup_crit_edge:                ; preds = %if.end14.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end19:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  %shr = lshr i32 %div5, 8
  %conv18 = trunc i32 %shr to i8
  %1 = ptrtoint ptr %rate_hi to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %conv18, ptr %rate_hi, align 1
  br label %cleanup

do.body23:                                        ; preds = %if.end14.thread
  call void @__sanitizer_cov_trace_pc() #11
  %shr64 = lshr i32 %div5, 8
  %conv1865 = trunc i32 %shr64 to i8
  %2 = ptrtoint ptr %rate_hi to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv1865, ptr %rate_hi, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @keyspan_usa19hs_calc_baud.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@keyspan_usa19hs_calc_baud, %if.then35)) #9
          to label %cleanup [label %if.then35], !srcloc !383

if.then35:                                        ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #11
  %dev36 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  %3 = ptrtoint ptr %rate_hi to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %rate_hi, align 1
  %conv37 = zext i8 %4 to i32
  %5 = ptrtoint ptr %rate_low to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %rate_low, align 1
  %conv38 = zext i8 %6 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @keyspan_usa19hs_calc_baud.__UNIQUE_ID_ddebug289, ptr noundef %dev36, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.38, i32 noundef %baud_rate, i32 noundef %conv37, i32 noundef %conv38) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then35, %do.body23, %if.end19, %if.end14.thread.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %do.end.cleanup_crit_edge ], [ -1, %if.end4.cleanup_crit_edge ], [ 0, %if.end19 ], [ 0, %if.then35 ], [ 0, %do.body23 ], [ 0, %if.end14.cleanup_crit_edge ], [ 0, %if.end14.thread.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @keyspan_setup_urb(ptr nocapture noundef readonly %serial, i32 noundef %endpoint, i32 noundef %dir, ptr noundef %ctx, ptr noundef %buf, i32 noundef %len, ptr noundef %callback) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %endpoint)
  %cmp = icmp eq i32 %endpoint, -1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @keyspan_setup_urb.__UNIQUE_ID_ddebug284, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@keyspan_setup_urb, %if.then3)) #9
          to label %do.end [label %if.then3], !srcloc !383

if.then3:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %interface = getelementptr inbounds %struct.usb_serial, ptr %serial, i32 0, i32 2
  %0 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %interface, align 4
  %dev = getelementptr inbounds %struct.usb_interface, ptr %1, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @keyspan_setup_urb.__UNIQUE_ID_ddebug284, ptr noundef %dev, ptr noundef nonnull @.str.79, ptr noundef nonnull @.str.78, i32 noundef %endpoint) #9
  br label %do.end

do.end:                                           ; preds = %if.then3, %do.body
  %call5 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #9
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %do.end.cleanup_crit_edge, label %if.end8

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end8:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %endpoint)
  %cmp9 = icmp eq i32 %endpoint, 0
  br i1 %cmp9, label %if.end8.cleanup_crit_edge, label %if.end11

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end11:                                         ; preds = %if.end8
  %interface.i = getelementptr inbounds %struct.usb_serial, ptr %serial, i32 0, i32 2
  %2 = ptrtoint ptr %interface.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %interface.i, align 4
  %cur_altsetting.i = getelementptr inbounds %struct.usb_interface, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %cur_altsetting.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cur_altsetting.i, align 4
  %bNumEndpoints.i = getelementptr inbounds %struct.usb_interface_descriptor, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %bNumEndpoints.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %bNumEndpoints.i, align 4
  %conv.i = zext i8 %7 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp16.not.i = icmp eq i8 %7, 0
  br i1 %cmp16.not.i, label %if.end11.find_ep.exit.thread_crit_edge, label %for.body.lr.ph.i

if.end11.find_ep.exit.thread_crit_edge:           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %find_ep.exit.thread

for.body.lr.ph.i:                                 ; preds = %if.end11
  %endpoint2.i = getelementptr inbounds %struct.usb_host_interface, ptr %5, i32 0, i32 3
  %8 = ptrtoint ptr %endpoint2.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %endpoint2.i, align 4
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.017.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv.i
  br i1 %exitcond.not.i, label %for.cond.i.find_ep.exit.thread_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.cond.i.find_ep.exit.thread_crit_edge:         ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %find_ep.exit.thread

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.017.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.usb_host_endpoint, ptr %9, i32 %i.017.i
  %bEndpointAddress.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx.i, i32 0, i32 2
  %10 = ptrtoint ptr %bEndpointAddress.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %bEndpointAddress.i, align 1
  %conv4.i = zext i8 %11 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv4.i, i32 %endpoint)
  %cmp5.i = icmp eq i32 %conv4.i, %endpoint
  br i1 %cmp5.i, label %find_ep.exit, label %for.cond.i

find_ep.exit.thread:                              ; preds = %for.cond.i.find_ep.exit.thread_crit_edge, %if.end11.find_ep.exit.thread_crit_edge
  %dev.i = getelementptr inbounds %struct.usb_interface, ptr %3, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i, ptr noundef nonnull @.str.85, i32 noundef %endpoint) #12
  br label %if.then14

find_ep.exit:                                     ; preds = %for.body.i
  %tobool13.not = icmp eq ptr %arrayidx.i, null
  br i1 %tobool13.not, label %find_ep.exit.if.then14_crit_edge, label %if.end15

find_ep.exit.if.then14_crit_edge:                 ; preds = %find_ep.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then14

if.then14:                                        ; preds = %find_ep.exit.if.then14_crit_edge, %find_ep.exit.thread
  tail call void @usb_free_urb(ptr noundef nonnull %call5) #9
  br label %cleanup

if.end15:                                         ; preds = %find_ep.exit
  %bmAttributes.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx.i, i32 0, i32 3
  %12 = ptrtoint ptr %bmAttributes.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %bmAttributes.i, align 1
  %trunc = trunc i8 %13 to i2
  %14 = zext i2 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.100)
  switch i2 %trunc, label %do.end34 [
    i2 -1, label %if.then18
    i2 -2, label %if.then25
  ]

if.then18:                                        ; preds = %if.end15
  %15 = ptrtoint ptr %serial to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %serial, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 8
  %shl.i = shl i32 %18, 8
  %shl1.i = shl i32 %endpoint, 15
  %or.i = or i32 %shl1.i, %dir
  %or = or i32 %or.i, %shl.i
  %or22 = or i32 %or, 1073741824
  %bInterval = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx.i, i32 0, i32 5
  %19 = ptrtoint ptr %bInterval to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %bInterval, align 1
  %conv = zext i8 %20 to i32
  %dev1.i = getelementptr inbounds %struct.urb, ptr %call5, i32 0, i32 8
  %21 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %16, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %call5, i32 0, i32 10
  %22 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %or22, ptr %pipe2.i, align 4
  %transfer_buffer3.i = getelementptr inbounds %struct.urb, ptr %call5, i32 0, i32 14
  %23 = ptrtoint ptr %transfer_buffer3.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %buf, ptr %transfer_buffer3.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %call5, i32 0, i32 19
  %24 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %len, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %call5, i32 0, i32 28
  %25 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %callback, ptr %complete.i, align 4
  %context4.i = getelementptr inbounds %struct.urb, ptr %call5, i32 0, i32 27
  %26 = ptrtoint ptr %context4.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %ctx, ptr %context4.i, align 4
  %speed.i = getelementptr inbounds %struct.usb_device, ptr %16, i32 0, i32 4
  %27 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %speed.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %28)
  %cmp.i93 = icmp eq i32 %28, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %28)
  %cmp6.i = icmp ugt i32 %28, 4
  %or.cond.i = or i1 %cmp.i93, %cmp6.i
  br i1 %or.cond.i, label %if.then.i, label %if.then18.usb_fill_int_urb.exit_crit_edge

if.then18.usb_fill_int_urb.exit_crit_edge:        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #11
  br label %usb_fill_int_urb.exit

if.then.i:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #11
  %29 = tail call i32 @llvm.smax.i32(i32 %conv, i32 1) #9
  %30 = tail call i32 @llvm.umin.i32(i32 %29, i32 16) #9
  %sub.i = add nsw i32 %30, -1
  %shl.i94 = shl nuw nsw i32 1, %sub.i
  br label %usb_fill_int_urb.exit

usb_fill_int_urb.exit:                            ; preds = %if.then.i, %if.then18.usb_fill_int_urb.exit_crit_edge
  %interval.sink.i = phi i32 [ %shl.i94, %if.then.i ], [ %conv, %if.then18.usb_fill_int_urb.exit_crit_edge ]
  %31 = getelementptr inbounds %struct.urb, ptr %call5, i32 0, i32 25
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %interval.sink.i, ptr %31, align 4
  %start_frame.i = getelementptr inbounds %struct.urb, ptr %call5, i32 0, i32 23
  %33 = ptrtoint ptr %start_frame.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 -1, ptr %start_frame.i, align 4
  br label %do.body40

if.then25:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  %34 = ptrtoint ptr %serial to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %serial, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %35, align 8
  %shl.i98 = shl i32 %37, 8
  %shl1.i99 = shl i32 %endpoint, 15
  %or.i100 = or i32 %shl1.i99, %dir
  %or29 = or i32 %or.i100, %shl.i98
  %or30 = or i32 %or29, -1073741824
  %dev1.i101 = getelementptr inbounds %struct.urb, ptr %call5, i32 0, i32 8
  %38 = ptrtoint ptr %dev1.i101 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %35, ptr %dev1.i101, align 4
  %pipe2.i102 = getelementptr inbounds %struct.urb, ptr %call5, i32 0, i32 10
  %39 = ptrtoint ptr %pipe2.i102 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %or30, ptr %pipe2.i102, align 4
  %transfer_buffer3.i103 = getelementptr inbounds %struct.urb, ptr %call5, i32 0, i32 14
  %40 = ptrtoint ptr %transfer_buffer3.i103 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %buf, ptr %transfer_buffer3.i103, align 4
  %transfer_buffer_length.i104 = getelementptr inbounds %struct.urb, ptr %call5, i32 0, i32 19
  %41 = ptrtoint ptr %transfer_buffer_length.i104 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %len, ptr %transfer_buffer_length.i104, align 4
  %complete.i105 = getelementptr inbounds %struct.urb, ptr %call5, i32 0, i32 28
  %42 = ptrtoint ptr %complete.i105 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %callback, ptr %complete.i105, align 4
  %context4.i106 = getelementptr inbounds %struct.urb, ptr %call5, i32 0, i32 27
  %43 = ptrtoint ptr %context4.i106 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %ctx, ptr %context4.i106, align 4
  br label %do.body40

do.end34:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  %44 = and i8 %13, 3
  %45 = ptrtoint ptr %interface.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %interface.i, align 4
  %dev36 = getelementptr inbounds %struct.usb_interface, ptr %46, i32 0, i32 7
  %and.i = zext i8 %44 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev36, ptr noundef nonnull @.str.82, i32 noundef %and.i) #12
  tail call void @usb_free_urb(ptr noundef nonnull %call5) #9
  br label %cleanup

do.body40:                                        ; preds = %if.then25, %usb_fill_int_urb.exit
  %ep_type_name.0 = phi ptr [ @.str.80, %usb_fill_int_urb.exit ], [ @.str.81, %if.then25 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @keyspan_setup_urb.__UNIQUE_ID_ddebug285, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@keyspan_setup_urb, %if.then52)) #9
          to label %cleanup [label %if.then52], !srcloc !383

if.then52:                                        ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #11
  %47 = ptrtoint ptr %interface.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %interface.i, align 4
  %dev54 = getelementptr inbounds %struct.usb_interface, ptr %48, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @keyspan_setup_urb.__UNIQUE_ID_ddebug285, ptr noundef %dev54, ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.78, ptr noundef nonnull %call5, ptr noundef nonnull %ep_type_name.0, i32 noundef %endpoint) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then52, %do.body40, %do.end34, %if.then14, %if.end8.cleanup_crit_edge, %do.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %do.end34 ], [ null, %if.then14 ], [ null, %entry.cleanup_crit_edge ], [ null, %do.end.cleanup_crit_edge ], [ %call5, %if.end8.cleanup_crit_edge ], [ %call5, %if.then52 ], [ %call5, %do.body40 ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @usa49wg_indat_callback(ptr noundef %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %0 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %transfer_buffer, align 4
  %status1 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %2 = ptrtoint ptr %status1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %status1, align 4
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %4 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %context, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %while.cond.preheader, label %do.body

while.cond.preheader:                             ; preds = %entry
  %actual_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %6 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %actual_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp221.not = icmp eq i32 %7, 0
  br i1 %cmp221.not, label %while.cond.preheader.while.end_crit_edge, label %while.body.lr.ph

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %num_ports = getelementptr inbounds %struct.usb_serial, ptr %5, i32 0, i32 6
  br label %while.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usa49wg_indat_callback.__UNIQUE_ID_ddebug265, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usa49wg_indat_callback, %if.then5)) #9
          to label %cleanup [label %if.then5], !srcloc !383

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %dev6 = getelementptr inbounds %struct.usb_device, ptr %9, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usa49wg_indat_callback.__UNIQUE_ID_ddebug265, ptr noundef %dev6, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.87, i32 noundef %3) #9
  br label %cleanup

while.body:                                       ; preds = %if.end91.while.body_crit_edge, %while.body.lr.ph
  %i.0222 = phi i32 [ 0, %while.body.lr.ph ], [ %i.3, %if.end91.while.body_crit_edge ]
  %arrayidx = getelementptr i8, ptr %1, i32 %i.0222
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx, align 1
  %12 = ptrtoint ptr %num_ports to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %num_ports, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %11, i8 %13)
  %cmp9.not = icmp ult i8 %11, %13
  br i1 %cmp9.not, label %if.end32, label %do.body12

do.body12:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usa49wg_indat_callback.__UNIQUE_ID_ddebug266, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usa49wg_indat_callback, %if.then24)) #9
          to label %cleanup [label %if.then24], !srcloc !383

if.then24:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.le = getelementptr i8, ptr %1, i32 %i.0222
  %dev25 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %14 = ptrtoint ptr %dev25 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev25, align 4
  %dev26 = getelementptr inbounds %struct.usb_device, ptr %15, i32 0, i32 15
  %16 = ptrtoint ptr %arrayidx.le to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx.le, align 1
  %conv28 = zext i8 %17 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usa49wg_indat_callback.__UNIQUE_ID_ddebug266, ptr noundef %dev26, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.87, i32 noundef %conv28) #9
  br label %cleanup

if.end32:                                         ; preds = %while.body
  %conv = zext i8 %11 to i32
  %inc = add nuw i32 %i.0222, 1
  %arrayidx35 = getelementptr %struct.usb_serial, ptr %5, i32 0, i32 12, i32 %conv
  %18 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx35, align 4
  %inc36 = add i32 %i.0222, 2
  %arrayidx37 = getelementptr i8, ptr %1, i32 %inc
  %20 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx37, align 1
  %conv38 = zext i8 %21 to i32
  %arrayidx39 = getelementptr i8, ptr %1, i32 %inc36
  %22 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx39, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %23)
  %cmp41 = icmp sgt i8 %23, -1
  br i1 %cmp41, label %if.then43, label %for.cond55.preheader

for.cond55.preheader:                             ; preds = %if.end32
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %21)
  %cmp56212 = icmp ugt i8 %21, 1
  br i1 %cmp56212, label %land.rhs58.lr.ph, label %for.cond55.preheader.if.end91_crit_edge

for.cond55.preheader.if.end91_crit_edge:          ; preds = %for.cond55.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end91

land.rhs58.lr.ph:                                 ; preds = %for.cond55.preheader
  %port70 = getelementptr inbounds %struct.usb_serial_port, ptr %19, i32 0, i32 1
  %tail.i169 = getelementptr inbounds %struct.usb_serial_port, ptr %19, i32 0, i32 1, i32 0, i32 8
  br label %land.rhs58

if.then43:                                        ; preds = %if.end32
  %inc44 = add i32 %i.0222, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %21)
  %cmp45216 = icmp ugt i8 %21, 1
  br i1 %cmp45216, label %land.rhs.lr.ph, label %if.then43.if.end91_crit_edge

if.then43.if.end91_crit_edge:                     ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end91

land.rhs.lr.ph:                                   ; preds = %if.then43
  %tail.i = getelementptr inbounds %struct.usb_serial_port, ptr %19, i32 0, i32 1, i32 0, i32 8
  %port50 = getelementptr inbounds %struct.usb_serial_port, ptr %19, i32 0, i32 1
  br label %land.rhs

land.rhs:                                         ; preds = %tty_insert_flip_char.exit.land.rhs_crit_edge, %land.rhs.lr.ph
  %i.1218 = phi i32 [ %inc44, %land.rhs.lr.ph ], [ %inc51, %tty_insert_flip_char.exit.land.rhs_crit_edge ]
  %x.0217 = phi i32 [ 1, %land.rhs.lr.ph ], [ %inc54, %tty_insert_flip_char.exit.land.rhs_crit_edge ]
  %24 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %actual_length, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.1218, i32 %25)
  %cmp48 = icmp ult i32 %i.1218, %25
  br i1 %cmp48, label %for.body, label %land.rhs.if.end91_crit_edge

land.rhs.if.end91_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end91

for.body:                                         ; preds = %land.rhs
  %inc51 = add nuw i32 %i.1218, 1
  %arrayidx52 = getelementptr i8, ptr %1, i32 %i.1218
  %26 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx52, align 1
  %28 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %tail.i, align 4
  %used.i = getelementptr inbounds %struct.tty_buffer, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %used.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %used.i, align 4
  %size.i = getelementptr inbounds %struct.tty_buffer, ptr %29, i32 0, i32 2
  %32 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %33)
  %cmp3.i = icmp slt i32 %31, %33
  br i1 %cmp3.i, label %if.then.i, label %if.end12.i

if.then.i:                                        ; preds = %for.body
  %flags.i = getelementptr inbounds %struct.tty_buffer, ptr %29, i32 0, i32 5
  %34 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %35, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then8.i, label %if.then.i.if.end.i_crit_edge

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then8.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %data.i.i.i = getelementptr inbounds %struct.tty_buffer, ptr %29, i32 0, i32 6
  %add.ptr.i.i.i = getelementptr i8, ptr %data.i.i.i, i32 %31
  %add.ptr.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 %33
  %36 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 0, ptr %add.ptr.i.i, align 1
  br label %if.end.i

if.end.i:                                         ; preds = %if.then8.i, %if.then.i.if.end.i_crit_edge
  %37 = ptrtoint ptr %used.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %used.i, align 4
  %inc.i = add i32 %38, 1
  store i32 %inc.i, ptr %used.i, align 4
  %data.i.i = getelementptr inbounds %struct.tty_buffer, ptr %29, i32 0, i32 6
  %add.ptr.i1.i = getelementptr i8, ptr %data.i.i, i32 %38
  %39 = ptrtoint ptr %add.ptr.i1.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %27, ptr %add.ptr.i1.i, align 1
  br label %tty_insert_flip_char.exit

if.end12.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %call13.i = tail call i32 @__tty_insert_flip_char(ptr noundef %port50, i8 noundef zeroext %27, i8 noundef zeroext 0) #9
  br label %tty_insert_flip_char.exit

tty_insert_flip_char.exit:                        ; preds = %if.end12.i, %if.end.i
  %inc54 = add nuw nsw i32 %x.0217, 1
  %exitcond.not = icmp eq i32 %inc54, %conv38
  br i1 %exitcond.not, label %tty_insert_flip_char.exit.if.end91_crit_edge, label %tty_insert_flip_char.exit.land.rhs_crit_edge

tty_insert_flip_char.exit.land.rhs_crit_edge:     ; preds = %tty_insert_flip_char.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs

tty_insert_flip_char.exit.if.end91_crit_edge:     ; preds = %tty_insert_flip_char.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end91

land.rhs58:                                       ; preds = %tty_insert_flip_char.exit207.land.rhs58_crit_edge, %land.rhs58.lr.ph
  %i.2214 = phi i32 [ %inc36, %land.rhs58.lr.ph ], [ %add87, %tty_insert_flip_char.exit207.land.rhs58_crit_edge ]
  %x.1213 = phi i32 [ 0, %land.rhs58.lr.ph ], [ %add89, %tty_insert_flip_char.exit207.land.rhs58_crit_edge ]
  %add59 = add i32 %i.2214, 1
  %40 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %actual_length, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add59, i32 %41)
  %cmp61 = icmp ult i32 %add59, %41
  br i1 %cmp61, label %for.body64, label %land.rhs58.if.end91_crit_edge

land.rhs58.if.end91_crit_edge:                    ; preds = %land.rhs58
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end91

for.body64:                                       ; preds = %land.rhs58
  %arrayidx65 = getelementptr i8, ptr %1, i32 %i.2214
  %42 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx65, align 1
  %conv66 = zext i8 %43 to i32
  %and67 = and i32 %conv66, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and67)
  %tobool68.not = icmp eq i32 %and67, 0
  br i1 %tobool68.not, label %for.body64.if.end72_crit_edge, label %if.then69

for.body64.if.end72_crit_edge:                    ; preds = %for.body64
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end72

if.then69:                                        ; preds = %for.body64
  %44 = ptrtoint ptr %tail.i169 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %tail.i169, align 4
  %flags.i170 = getelementptr inbounds %struct.tty_buffer, ptr %45, i32 0, i32 5
  %46 = ptrtoint ptr %flags.i170 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %flags.i170, align 4
  %and.i171 = and i32 %47, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i171)
  %tobool.not.i172 = icmp eq i32 %and.i171, 0
  br i1 %tobool.not.i172, label %land.lhs.true.i, label %if.then69.if.end12.i186_crit_edge

if.then69.if.end12.i186_crit_edge:                ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12.i186

land.lhs.true.i:                                  ; preds = %if.then69
  %used.i173 = getelementptr inbounds %struct.tty_buffer, ptr %45, i32 0, i32 1
  %48 = ptrtoint ptr %used.i173 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %used.i173, align 4
  %size.i174 = getelementptr inbounds %struct.tty_buffer, ptr %45, i32 0, i32 2
  %50 = ptrtoint ptr %size.i174 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %size.i174, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %49, i32 %51)
  %cmp3.i175 = icmp slt i32 %49, %51
  br i1 %cmp3.i175, label %if.end.i184, label %land.lhs.true.i.if.end12.i186_crit_edge

land.lhs.true.i.if.end12.i186_crit_edge:          ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12.i186

if.end.i184:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  %data.i.i.i177 = getelementptr inbounds %struct.tty_buffer, ptr %45, i32 0, i32 6
  %add.ptr.i.i.i178 = getelementptr i8, ptr %data.i.i.i177, i32 %49
  %add.ptr.i.i179 = getelementptr i8, ptr %add.ptr.i.i.i178, i32 %51
  %52 = ptrtoint ptr %add.ptr.i.i179 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 4, ptr %add.ptr.i.i179, align 1
  %53 = ptrtoint ptr %used.i173 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %used.i173, align 4
  %inc.i181 = add i32 %54, 1
  store i32 %inc.i181, ptr %used.i173, align 4
  %add.ptr.i1.i183 = getelementptr i8, ptr %data.i.i.i177, i32 %54
  %55 = ptrtoint ptr %add.ptr.i1.i183 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 0, ptr %add.ptr.i1.i183, align 1
  br label %if.end72

if.end12.i186:                                    ; preds = %land.lhs.true.i.if.end12.i186_crit_edge, %if.then69.if.end12.i186_crit_edge
  %call13.i185 = tail call i32 @__tty_insert_flip_char(ptr noundef %port70, i8 noundef zeroext 0, i8 noundef zeroext 4) #9
  br label %if.end72

if.end72:                                         ; preds = %if.end12.i186, %if.end.i184, %for.body64.if.end72_crit_edge
  %and73 = and i32 %conv66, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and73)
  %tobool74.not = icmp eq i32 %and73, 0
  %and77 = lshr i8 %43, 2
  %56 = and i8 %and77, 2
  %flag.0 = select i1 %tobool74.not, i8 %56, i8 3
  %arrayidx84 = getelementptr i8, ptr %1, i32 %add59
  %57 = ptrtoint ptr %arrayidx84 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx84, align 1
  %59 = ptrtoint ptr %tail.i169 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %tail.i169, align 4
  %flags.i189 = getelementptr inbounds %struct.tty_buffer, ptr %60, i32 0, i32 5
  %61 = ptrtoint ptr %flags.i189 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %flags.i189, align 4
  %and.i190 = and i32 %62, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i190)
  %tobool.not.i191 = icmp eq i32 %and.i190, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %flag.0)
  %cmp.i = icmp eq i8 %flag.0, 0
  %63 = or i1 %cmp.i, %tobool.not.i191
  br i1 %63, label %land.lhs.true.i195, label %if.end72.if.end12.i206_crit_edge

if.end72.if.end12.i206_crit_edge:                 ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12.i206

land.lhs.true.i195:                               ; preds = %if.end72
  %used.i192 = getelementptr inbounds %struct.tty_buffer, ptr %60, i32 0, i32 1
  %64 = ptrtoint ptr %used.i192 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %used.i192, align 4
  %size.i193 = getelementptr inbounds %struct.tty_buffer, ptr %60, i32 0, i32 2
  %66 = ptrtoint ptr %size.i193 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %size.i193, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %65, i32 %67)
  %cmp3.i194 = icmp slt i32 %65, %67
  br i1 %cmp3.i194, label %if.then.i196, label %land.lhs.true.i195.if.end12.i206_crit_edge

land.lhs.true.i195.if.end12.i206_crit_edge:       ; preds = %land.lhs.true.i195
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12.i206

if.then.i196:                                     ; preds = %land.lhs.true.i195
  br i1 %tobool.not.i191, label %if.then8.i200, label %if.then.i196.if.end.i204_crit_edge

if.then.i196.if.end.i204_crit_edge:               ; preds = %if.then.i196
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i204

if.then8.i200:                                    ; preds = %if.then.i196
  call void @__sanitizer_cov_trace_pc() #11
  %data.i.i.i197 = getelementptr inbounds %struct.tty_buffer, ptr %60, i32 0, i32 6
  %add.ptr.i.i.i198 = getelementptr i8, ptr %data.i.i.i197, i32 %65
  %add.ptr.i.i199 = getelementptr i8, ptr %add.ptr.i.i.i198, i32 %67
  %68 = ptrtoint ptr %add.ptr.i.i199 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %flag.0, ptr %add.ptr.i.i199, align 1
  br label %if.end.i204

if.end.i204:                                      ; preds = %if.then8.i200, %if.then.i196.if.end.i204_crit_edge
  %69 = ptrtoint ptr %used.i192 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %used.i192, align 4
  %inc.i201 = add i32 %70, 1
  store i32 %inc.i201, ptr %used.i192, align 4
  %data.i.i202 = getelementptr inbounds %struct.tty_buffer, ptr %60, i32 0, i32 6
  %add.ptr.i1.i203 = getelementptr i8, ptr %data.i.i202, i32 %70
  %71 = ptrtoint ptr %add.ptr.i1.i203 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %58, ptr %add.ptr.i1.i203, align 1
  br label %tty_insert_flip_char.exit207

if.end12.i206:                                    ; preds = %land.lhs.true.i195.if.end12.i206_crit_edge, %if.end72.if.end12.i206_crit_edge
  %call13.i205 = tail call i32 @__tty_insert_flip_char(ptr noundef %port70, i8 noundef zeroext %58, i8 noundef zeroext %flag.0) #9
  br label %tty_insert_flip_char.exit207

tty_insert_flip_char.exit207:                     ; preds = %if.end12.i206, %if.end.i204
  %add87 = add i32 %i.2214, 2
  %add89 = add nuw nsw i32 %x.1213, 2
  %add = or i32 %add89, 1
  %cmp56 = icmp ult i32 %add, %conv38
  br i1 %cmp56, label %tty_insert_flip_char.exit207.land.rhs58_crit_edge, label %tty_insert_flip_char.exit207.if.end91_crit_edge

tty_insert_flip_char.exit207.if.end91_crit_edge:  ; preds = %tty_insert_flip_char.exit207
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end91

tty_insert_flip_char.exit207.land.rhs58_crit_edge: ; preds = %tty_insert_flip_char.exit207
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs58

if.end91:                                         ; preds = %tty_insert_flip_char.exit207.if.end91_crit_edge, %land.rhs58.if.end91_crit_edge, %tty_insert_flip_char.exit.if.end91_crit_edge, %land.rhs.if.end91_crit_edge, %if.then43.if.end91_crit_edge, %for.cond55.preheader.if.end91_crit_edge
  %i.3 = phi i32 [ %inc44, %if.then43.if.end91_crit_edge ], [ %inc36, %for.cond55.preheader.if.end91_crit_edge ], [ %inc51, %tty_insert_flip_char.exit.if.end91_crit_edge ], [ %i.1218, %land.rhs.if.end91_crit_edge ], [ %add87, %tty_insert_flip_char.exit207.if.end91_crit_edge ], [ %i.2214, %land.rhs58.if.end91_crit_edge ]
  %port92 = getelementptr inbounds %struct.usb_serial_port, ptr %19, i32 0, i32 1
  tail call void @tty_flip_buffer_push(ptr noundef %port92) #9
  %72 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %actual_length, align 4
  %cmp = icmp ult i32 %i.3, %73
  br i1 %cmp, label %if.end91.while.body_crit_edge, label %if.end91.while.end_crit_edge

if.end91.while.end_crit_edge:                     ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

if.end91.while.body_crit_edge:                    ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.end:                                        ; preds = %if.end91.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %call93 = tail call i32 @usb_submit_urb(ptr noundef %urb, i32 noundef 2592) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93)
  %cmp94.not = icmp eq i32 %call93, 0
  br i1 %cmp94.not, label %while.end.cleanup_crit_edge, label %do.body97

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body97:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usa49wg_indat_callback.__UNIQUE_ID_ddebug267, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usa49wg_indat_callback, %if.then109)) #9
          to label %cleanup [label %if.then109], !srcloc !383

if.then109:                                       ; preds = %do.body97
  call void @__sanitizer_cov_trace_pc() #11
  %dev110 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %74 = ptrtoint ptr %dev110 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %dev110, align 4
  %dev111 = getelementptr inbounds %struct.usb_device, ptr %75, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usa49wg_indat_callback.__UNIQUE_ID_ddebug267, ptr noundef %dev111, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.87, i32 noundef %call93) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then109, %do.body97, %while.end.cleanup_crit_edge, %if.then24, %do.body12, %if.then5, %do.body
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @usa26_instat_callback(ptr noundef %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %0 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %transfer_buffer, align 4
  %status1 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %2 = ptrtoint ptr %status1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %status1, align 4
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %4 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %context, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end7, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usa26_instat_callback.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usa26_instat_callback, %if.then5)) #9
          to label %cleanup [label %if.then5], !srcloc !383

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %dev6 = getelementptr inbounds %struct.usb_device, ptr %7, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usa26_instat_callback.__UNIQUE_ID_ddebug247, ptr noundef %dev6, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.39, i32 noundef %3) #9
  br label %cleanup

if.end7:                                          ; preds = %entry
  %actual_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %8 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %actual_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %9)
  %cmp.not = icmp eq i32 %9, 9
  br i1 %cmp.not, label %if.end28, label %do.body9

do.body9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usa26_instat_callback.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usa26_instat_callback, %if.then21)) #9
          to label %cleanup [label %if.then21], !srcloc !383

if.then21:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #11
  %dev22 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %10 = ptrtoint ptr %dev22 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev22, align 4
  %dev23 = getelementptr inbounds %struct.usb_device, ptr %11, i32 0, i32 15
  %12 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %actual_length, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usa26_instat_callback.__UNIQUE_ID_ddebug248, ptr noundef %dev23, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.39, i32 noundef %13) #9
  br label %cleanup

if.end28:                                         ; preds = %if.end7
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %1, align 1
  %num_ports = getelementptr inbounds %struct.usb_serial, ptr %5, i32 0, i32 6
  %16 = ptrtoint ptr %num_ports to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %num_ports, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %15, i8 %17)
  %cmp31.not = icmp ult i8 %15, %17
  br i1 %cmp31.not, label %if.end54, label %do.body34

do.body34:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usa26_instat_callback.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usa26_instat_callback, %if.then46)) #9
          to label %cleanup [label %if.then46], !srcloc !383

if.then46:                                        ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #11
  %dev47 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %18 = ptrtoint ptr %dev47 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev47, align 4
  %dev48 = getelementptr inbounds %struct.usb_device, ptr %19, i32 0, i32 15
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %1, align 1
  %conv50 = zext i8 %21 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usa26_instat_callback.__UNIQUE_ID_ddebug249, ptr noundef %dev48, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.39, i32 noundef %conv50) #9
  br label %cleanup

if.end54:                                         ; preds = %if.end28
  %conv = zext i8 %15 to i32
  %arrayidx = getelementptr %struct.usb_serial, ptr %5, i32 0, i32 12, i32 %conv
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx, align 4
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %23, i32 0, i32 32, i32 8
  %24 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %driver_data.i.i, align 4
  %tobool58.not = icmp eq ptr %25, null
  br i1 %tobool58.not, label %if.end54.resubmit_crit_edge, label %if.end60

if.end54.resubmit_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #11
  br label %resubmit

if.end60:                                         ; preds = %if.end54
  %dcd_state = getelementptr inbounds %struct.keyspan_port_private, ptr %25, i32 0, i32 20
  %26 = ptrtoint ptr %dcd_state to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %dcd_state, align 4
  %hskia_cts = getelementptr inbounds %struct.keyspan_usa26_portStatusMessage, ptr %1, i32 0, i32 1
  %28 = ptrtoint ptr %hskia_cts to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %hskia_cts, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool62.not = icmp ne i8 %29, 0
  %cond = zext i1 %tobool62.not to i32
  %cts_state = getelementptr inbounds %struct.keyspan_port_private, ptr %25, i32 0, i32 18
  %30 = ptrtoint ptr %cts_state to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %cond, ptr %cts_state, align 4
  %dsr = getelementptr inbounds %struct.keyspan_usa26_portStatusMessage, ptr %1, i32 0, i32 3
  %31 = ptrtoint ptr %dsr to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %dsr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool64.not = icmp ne i8 %32, 0
  %cond65 = zext i1 %tobool64.not to i32
  %dsr_state = getelementptr inbounds %struct.keyspan_port_private, ptr %25, i32 0, i32 19
  %33 = ptrtoint ptr %dsr_state to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %cond65, ptr %dsr_state, align 4
  %gpia_dcd = getelementptr inbounds %struct.keyspan_usa26_portStatusMessage, ptr %1, i32 0, i32 2
  %34 = ptrtoint ptr %gpia_dcd to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %gpia_dcd, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool67.not = icmp ne i8 %35, 0
  %cond68 = zext i1 %tobool67.not to i32
  %36 = ptrtoint ptr %dcd_state to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %cond68, ptr %dcd_state, align 4
  %ri = getelementptr inbounds %struct.keyspan_usa26_portStatusMessage, ptr %1, i32 0, i32 4
  %37 = ptrtoint ptr %ri to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %ri, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool71.not = icmp ne i8 %38, 0
  %cond72 = zext i1 %tobool71.not to i32
  %ri_state = getelementptr inbounds %struct.keyspan_port_private, ptr %25, i32 0, i32 21
  %39 = ptrtoint ptr %ri_state to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %cond72, ptr %ri_state, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %cond68)
  %cmp74.not = icmp eq i32 %27, %cond68
  br i1 %cmp74.not, label %if.end60.resubmit_crit_edge, label %if.then76

if.end60.resubmit_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #11
  br label %resubmit

if.then76:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #11
  %port77 = getelementptr inbounds %struct.usb_serial_port, ptr %23, i32 0, i32 1
  tail call void @tty_port_tty_hangup(ptr noundef %port77, i1 noundef zeroext true) #9
  br label %resubmit

resubmit:                                         ; preds = %if.then76, %if.end60.resubmit_crit_edge, %if.end54.resubmit_crit_edge
  %call79 = tail call i32 @usb_submit_urb(ptr noundef %urb, i32 noundef 2592) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79)
  %cmp80.not = icmp eq i32 %call79, 0
  br i1 %cmp80.not, label %resubmit.cleanup_crit_edge, label %do.body83

resubmit.cleanup_crit_edge:                       ; preds = %resubmit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body83:                                        ; preds = %resubmit
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usa26_instat_callback.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usa26_instat_callback, %if.then95)) #9
          to label %cleanup [label %if.then95], !srcloc !383

if.then95:                                        ; preds = %do.body83
  call void @__sanitizer_cov_trace_pc() #11
  %dev96 = getelementptr inbounds %struct.usb_serial_port, ptr %23, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usa26_instat_callback.__UNIQUE_ID_ddebug250, ptr noundef %dev96, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.39, i32 noundef %call79) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then95, %do.body83, %resubmit.cleanup_crit_edge, %if.then46, %do.body34, %if.then21, %do.body9, %if.then5, %do.body
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @usa26_glocont_callback(ptr nocapture noundef %urb) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @usa26_indat_callback(ptr noundef %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %0 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %transfer_buffer, align 4
  %status1 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %2 = ptrtoint ptr %status1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %status1, align 4
  %pipe = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 10
  %4 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pipe, align 4
  %shr = lshr i32 %5, 15
  %and = and i32 %shr, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end7, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usa26_indat_callback.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usa26_indat_callback, %if.then5)) #9
          to label %cleanup [label %if.then5], !srcloc !383

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %dev6 = getelementptr inbounds %struct.usb_device, ptr %7, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usa26_indat_callback.__UNIQUE_ID_ddebug242, ptr noundef %dev6, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.44, i32 noundef %3, i32 noundef %and) #9
  br label %cleanup

if.end7:                                          ; preds = %entry
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %8 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %context, align 4
  %actual_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %10 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %actual_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool8.not = icmp eq i32 %11, 0
  br i1 %tobool8.not, label %if.end7.if.end76_crit_edge, label %if.then9

if.end7.if.end76_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end76

if.then9:                                         ; preds = %if.end7
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %1, align 1
  %conv = zext i8 %13 to i32
  %and10 = and i32 %conv, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %cmp = icmp eq i32 %and10, 0
  br i1 %cmp, label %if.then12, label %do.body27

if.then12:                                        ; preds = %if.then9
  %and15 = and i32 %conv, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.then12.if.end20_crit_edge, label %if.then17

if.then12.if.end20_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

if.then17:                                        ; preds = %if.then12
  %port18 = getelementptr inbounds %struct.usb_serial_port, ptr %9, i32 0, i32 1
  %tail.i = getelementptr inbounds %struct.usb_serial_port, ptr %9, i32 0, i32 1, i32 0, i32 8
  %14 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tail.i, align 4
  %flags.i = getelementptr inbounds %struct.tty_buffer, ptr %15, i32 0, i32 5
  %16 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %if.then17.if.end12.i_crit_edge

if.then17.if.end12.i_crit_edge:                   ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12.i

land.lhs.true.i:                                  ; preds = %if.then17
  %used.i = getelementptr inbounds %struct.tty_buffer, ptr %15, i32 0, i32 1
  %18 = ptrtoint ptr %used.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %used.i, align 4
  %size.i = getelementptr inbounds %struct.tty_buffer, ptr %15, i32 0, i32 2
  %20 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %21)
  %cmp3.i = icmp slt i32 %19, %21
  br i1 %cmp3.i, label %if.end.i, label %land.lhs.true.i.if.end12.i_crit_edge

land.lhs.true.i.if.end12.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12.i

if.end.i:                                         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  %data.i.i.i = getelementptr inbounds %struct.tty_buffer, ptr %15, i32 0, i32 6
  %add.ptr.i.i.i = getelementptr i8, ptr %data.i.i.i, i32 %19
  %add.ptr.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 %21
  %22 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 4, ptr %add.ptr.i.i, align 1
  %23 = ptrtoint ptr %used.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %used.i, align 4
  %inc.i = add i32 %24, 1
  store i32 %inc.i, ptr %used.i, align 4
  %add.ptr.i1.i = getelementptr i8, ptr %data.i.i.i, i32 %24
  %25 = ptrtoint ptr %add.ptr.i1.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %add.ptr.i1.i, align 1
  br label %if.end20

if.end12.i:                                       ; preds = %land.lhs.true.i.if.end12.i_crit_edge, %if.then17.if.end12.i_crit_edge
  %call13.i = tail call i32 @__tty_insert_flip_char(ptr noundef %port18, i8 noundef zeroext 0, i8 noundef zeroext 4) #9
  br label %if.end20

if.end20:                                         ; preds = %if.end12.i, %if.end.i, %if.then12.if.end20_crit_edge
  %26 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %actual_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %27)
  %cmp22205 = icmp ugt i32 %27, 1
  br i1 %cmp22205, label %for.body.lr.ph, label %if.end20.if.end74_crit_edge

if.end20.if.end74_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end74

for.body.lr.ph:                                   ; preds = %if.end20
  %tail.i138 = getelementptr inbounds %struct.usb_serial_port, ptr %9, i32 0, i32 1, i32 0, i32 8
  %port24 = getelementptr inbounds %struct.usb_serial_port, ptr %9, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %tty_insert_flip_char.exit157.for.body_crit_edge, %for.body.lr.ph
  %i.0206 = phi i32 [ 1, %for.body.lr.ph ], [ %inc, %tty_insert_flip_char.exit157.for.body_crit_edge ]
  %arrayidx25 = getelementptr i8, ptr %1, i32 %i.0206
  %28 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx25, align 1
  %30 = ptrtoint ptr %tail.i138 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %tail.i138, align 4
  %used.i142 = getelementptr inbounds %struct.tty_buffer, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %used.i142 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %used.i142, align 4
  %size.i143 = getelementptr inbounds %struct.tty_buffer, ptr %31, i32 0, i32 2
  %34 = ptrtoint ptr %size.i143 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %size.i143, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %35)
  %cmp3.i144 = icmp slt i32 %33, %35
  br i1 %cmp3.i144, label %if.then.i146, label %if.end12.i156

if.then.i146:                                     ; preds = %for.body
  %flags.i139 = getelementptr inbounds %struct.tty_buffer, ptr %31, i32 0, i32 5
  %36 = ptrtoint ptr %flags.i139 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %flags.i139, align 4
  %and.i140 = and i32 %37, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i140)
  %tobool.not.i141 = icmp eq i32 %and.i140, 0
  br i1 %tobool.not.i141, label %if.then8.i150, label %if.then.i146.if.end.i154_crit_edge

if.then.i146.if.end.i154_crit_edge:               ; preds = %if.then.i146
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i154

if.then8.i150:                                    ; preds = %if.then.i146
  call void @__sanitizer_cov_trace_pc() #11
  %data.i.i.i147 = getelementptr inbounds %struct.tty_buffer, ptr %31, i32 0, i32 6
  %add.ptr.i.i.i148 = getelementptr i8, ptr %data.i.i.i147, i32 %33
  %add.ptr.i.i149 = getelementptr i8, ptr %add.ptr.i.i.i148, i32 %35
  %38 = ptrtoint ptr %add.ptr.i.i149 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 0, ptr %add.ptr.i.i149, align 1
  br label %if.end.i154

if.end.i154:                                      ; preds = %if.then8.i150, %if.then.i146.if.end.i154_crit_edge
  %39 = ptrtoint ptr %used.i142 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %used.i142, align 4
  %inc.i151 = add i32 %40, 1
  store i32 %inc.i151, ptr %used.i142, align 4
  %data.i.i152 = getelementptr inbounds %struct.tty_buffer, ptr %31, i32 0, i32 6
  %add.ptr.i1.i153 = getelementptr i8, ptr %data.i.i152, i32 %40
  %41 = ptrtoint ptr %add.ptr.i1.i153 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %29, ptr %add.ptr.i1.i153, align 1
  br label %tty_insert_flip_char.exit157

if.end12.i156:                                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %call13.i155 = tail call i32 @__tty_insert_flip_char(ptr noundef %port24, i8 noundef zeroext %29, i8 noundef zeroext 0) #9
  br label %tty_insert_flip_char.exit157

tty_insert_flip_char.exit157:                     ; preds = %if.end12.i156, %if.end.i154
  %inc = add nuw i32 %i.0206, 1
  %42 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %actual_length, align 4
  %cmp22 = icmp ult i32 %inc, %43
  br i1 %cmp22, label %tty_insert_flip_char.exit157.for.body_crit_edge, label %tty_insert_flip_char.exit157.if.end74_crit_edge

tty_insert_flip_char.exit157.if.end74_crit_edge:  ; preds = %tty_insert_flip_char.exit157
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end74

tty_insert_flip_char.exit157.for.body_crit_edge:  ; preds = %tty_insert_flip_char.exit157
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

do.body27:                                        ; preds = %if.then9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usa26_indat_callback.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usa26_indat_callback, %if.then39)) #9
          to label %do.end43 [label %if.then39], !srcloc !383

if.then39:                                        ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #11
  %dev40 = getelementptr inbounds %struct.usb_serial_port, ptr %9, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usa26_indat_callback.__UNIQUE_ID_ddebug243, ptr noundef %dev40, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.44) #9
  br label %do.end43

do.end43:                                         ; preds = %if.then39, %do.body27
  %44 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %actual_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %45)
  %cmp46202 = icmp ugt i32 %45, 1
  br i1 %cmp46202, label %for.body48.lr.ph, label %do.end43.if.end74_crit_edge

do.end43.if.end74_crit_edge:                      ; preds = %do.end43
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end74

for.body48.lr.ph:                                 ; preds = %do.end43
  %port54 = getelementptr inbounds %struct.usb_serial_port, ptr %9, i32 0, i32 1
  %tail.i158 = getelementptr inbounds %struct.usb_serial_port, ptr %9, i32 0, i32 1, i32 0, i32 8
  br label %for.body48

for.body48:                                       ; preds = %tty_insert_flip_char.exit197.for.body48_crit_edge, %for.body48.lr.ph
  %add204 = phi i32 [ 1, %for.body48.lr.ph ], [ %add, %tty_insert_flip_char.exit197.for.body48_crit_edge ]
  %i.1203 = phi i32 [ 0, %for.body48.lr.ph ], [ %add72, %tty_insert_flip_char.exit197.for.body48_crit_edge ]
  %arrayidx49 = getelementptr i8, ptr %1, i32 %i.1203
  %46 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx49, align 1
  %conv50 = zext i8 %47 to i32
  %and51 = and i32 %conv50, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51)
  %tobool52.not = icmp eq i32 %and51, 0
  br i1 %tobool52.not, label %for.body48.if.end56_crit_edge, label %if.then53

for.body48.if.end56_crit_edge:                    ; preds = %for.body48
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end56

if.then53:                                        ; preds = %for.body48
  %48 = ptrtoint ptr %tail.i158 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %tail.i158, align 4
  %flags.i159 = getelementptr inbounds %struct.tty_buffer, ptr %49, i32 0, i32 5
  %50 = ptrtoint ptr %flags.i159 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %flags.i159, align 4
  %and.i160 = and i32 %51, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i160)
  %tobool.not.i161 = icmp eq i32 %and.i160, 0
  br i1 %tobool.not.i161, label %land.lhs.true.i165, label %if.then53.if.end12.i176_crit_edge

if.then53.if.end12.i176_crit_edge:                ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12.i176

land.lhs.true.i165:                               ; preds = %if.then53
  %used.i162 = getelementptr inbounds %struct.tty_buffer, ptr %49, i32 0, i32 1
  %52 = ptrtoint ptr %used.i162 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %used.i162, align 4
  %size.i163 = getelementptr inbounds %struct.tty_buffer, ptr %49, i32 0, i32 2
  %54 = ptrtoint ptr %size.i163 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %size.i163, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %53, i32 %55)
  %cmp3.i164 = icmp slt i32 %53, %55
  br i1 %cmp3.i164, label %if.end.i174, label %land.lhs.true.i165.if.end12.i176_crit_edge

land.lhs.true.i165.if.end12.i176_crit_edge:       ; preds = %land.lhs.true.i165
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12.i176

if.end.i174:                                      ; preds = %land.lhs.true.i165
  call void @__sanitizer_cov_trace_pc() #11
  %data.i.i.i167 = getelementptr inbounds %struct.tty_buffer, ptr %49, i32 0, i32 6
  %add.ptr.i.i.i168 = getelementptr i8, ptr %data.i.i.i167, i32 %53
  %add.ptr.i.i169 = getelementptr i8, ptr %add.ptr.i.i.i168, i32 %55
  %56 = ptrtoint ptr %add.ptr.i.i169 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 4, ptr %add.ptr.i.i169, align 1
  %57 = ptrtoint ptr %used.i162 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %used.i162, align 4
  %inc.i171 = add i32 %58, 1
  store i32 %inc.i171, ptr %used.i162, align 4
  %add.ptr.i1.i173 = getelementptr i8, ptr %data.i.i.i167, i32 %58
  %59 = ptrtoint ptr %add.ptr.i1.i173 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 0, ptr %add.ptr.i1.i173, align 1
  br label %if.end56

if.end12.i176:                                    ; preds = %land.lhs.true.i165.if.end12.i176_crit_edge, %if.then53.if.end12.i176_crit_edge
  %call13.i175 = tail call i32 @__tty_insert_flip_char(ptr noundef %port54, i8 noundef zeroext 0, i8 noundef zeroext 4) #9
  br label %if.end56

if.end56:                                         ; preds = %if.end12.i176, %if.end.i174, %for.body48.if.end56_crit_edge
  %and57 = and i32 %conv50, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57)
  %tobool58.not = icmp eq i32 %and57, 0
  %and61 = lshr i8 %47, 2
  %60 = and i8 %and61, 2
  %flag.0 = select i1 %tobool58.not, i8 %60, i8 3
  %arrayidx68 = getelementptr i8, ptr %1, i32 %add204
  %61 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx68, align 1
  %63 = ptrtoint ptr %tail.i158 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %tail.i158, align 4
  %flags.i179 = getelementptr inbounds %struct.tty_buffer, ptr %64, i32 0, i32 5
  %65 = ptrtoint ptr %flags.i179 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %flags.i179, align 4
  %and.i180 = and i32 %66, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i180)
  %tobool.not.i181 = icmp eq i32 %and.i180, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %flag.0)
  %cmp.i = icmp eq i8 %flag.0, 0
  %67 = or i1 %cmp.i, %tobool.not.i181
  br i1 %67, label %land.lhs.true.i185, label %if.end56.if.end12.i196_crit_edge

if.end56.if.end12.i196_crit_edge:                 ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12.i196

land.lhs.true.i185:                               ; preds = %if.end56
  %used.i182 = getelementptr inbounds %struct.tty_buffer, ptr %64, i32 0, i32 1
  %68 = ptrtoint ptr %used.i182 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %used.i182, align 4
  %size.i183 = getelementptr inbounds %struct.tty_buffer, ptr %64, i32 0, i32 2
  %70 = ptrtoint ptr %size.i183 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %size.i183, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %69, i32 %71)
  %cmp3.i184 = icmp slt i32 %69, %71
  br i1 %cmp3.i184, label %if.then.i186, label %land.lhs.true.i185.if.end12.i196_crit_edge

land.lhs.true.i185.if.end12.i196_crit_edge:       ; preds = %land.lhs.true.i185
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12.i196

if.then.i186:                                     ; preds = %land.lhs.true.i185
  br i1 %tobool.not.i181, label %if.then8.i190, label %if.then.i186.if.end.i194_crit_edge

if.then.i186.if.end.i194_crit_edge:               ; preds = %if.then.i186
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i194

if.then8.i190:                                    ; preds = %if.then.i186
  call void @__sanitizer_cov_trace_pc() #11
  %data.i.i.i187 = getelementptr inbounds %struct.tty_buffer, ptr %64, i32 0, i32 6
  %add.ptr.i.i.i188 = getelementptr i8, ptr %data.i.i.i187, i32 %69
  %add.ptr.i.i189 = getelementptr i8, ptr %add.ptr.i.i.i188, i32 %71
  %72 = ptrtoint ptr %add.ptr.i.i189 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %flag.0, ptr %add.ptr.i.i189, align 1
  br label %if.end.i194

if.end.i194:                                      ; preds = %if.then8.i190, %if.then.i186.if.end.i194_crit_edge
  %73 = ptrtoint ptr %used.i182 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %used.i182, align 4
  %inc.i191 = add i32 %74, 1
  store i32 %inc.i191, ptr %used.i182, align 4
  %data.i.i192 = getelementptr inbounds %struct.tty_buffer, ptr %64, i32 0, i32 6
  %add.ptr.i1.i193 = getelementptr i8, ptr %data.i.i192, i32 %74
  %75 = ptrtoint ptr %add.ptr.i1.i193 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %62, ptr %add.ptr.i1.i193, align 1
  br label %tty_insert_flip_char.exit197

if.end12.i196:                                    ; preds = %land.lhs.true.i185.if.end12.i196_crit_edge, %if.end56.if.end12.i196_crit_edge
  %call13.i195 = tail call i32 @__tty_insert_flip_char(ptr noundef %port54, i8 noundef zeroext %62, i8 noundef zeroext %flag.0) #9
  br label %tty_insert_flip_char.exit197

tty_insert_flip_char.exit197:                     ; preds = %if.end12.i196, %if.end.i194
  %add72 = add i32 %i.1203, 2
  %add = or i32 %add72, 1
  %76 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %actual_length, align 4
  %cmp46 = icmp ult i32 %add, %77
  br i1 %cmp46, label %tty_insert_flip_char.exit197.for.body48_crit_edge, label %tty_insert_flip_char.exit197.if.end74_crit_edge

tty_insert_flip_char.exit197.if.end74_crit_edge:  ; preds = %tty_insert_flip_char.exit197
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end74

tty_insert_flip_char.exit197.for.body48_crit_edge: ; preds = %tty_insert_flip_char.exit197
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body48

if.end74:                                         ; preds = %tty_insert_flip_char.exit197.if.end74_crit_edge, %do.end43.if.end74_crit_edge, %tty_insert_flip_char.exit157.if.end74_crit_edge, %if.end20.if.end74_crit_edge
  %port75 = getelementptr inbounds %struct.usb_serial_port, ptr %9, i32 0, i32 1
  tail call void @tty_flip_buffer_push(ptr noundef %port75) #9
  br label %if.end76

if.end76:                                         ; preds = %if.end74, %if.end7.if.end76_crit_edge
  %call77 = tail call i32 @usb_submit_urb(ptr noundef %urb, i32 noundef 2592) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77)
  %cmp78.not = icmp eq i32 %call77, 0
  br i1 %cmp78.not, label %if.end76.cleanup_crit_edge, label %do.body81

if.end76.cleanup_crit_edge:                       ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body81:                                        ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usa26_indat_callback.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usa26_indat_callback, %if.then93)) #9
          to label %cleanup [label %if.then93], !srcloc !383

if.then93:                                        ; preds = %do.body81
  call void @__sanitizer_cov_trace_pc() #11
  %dev94 = getelementptr inbounds %struct.usb_serial_port, ptr %9, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usa26_indat_callback.__UNIQUE_ID_ddebug244, ptr noundef %dev94, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.44, i32 noundef %call77) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then93, %do.body81, %if.end76.cleanup_crit_edge, %if.then5, %do.body
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @usa2x_outdat_callback(ptr noundef readonly %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usa2x_outdat_callback.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usa2x_outdat_callback, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !383

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  %arrayidx = getelementptr %struct.keyspan_port_private, ptr %3, i32 0, i32 5, i32 1
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %cmp = icmp eq ptr %5, %urb
  %conv = zext i1 %cmp to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usa2x_outdat_callback.__UNIQUE_ID_ddebug245, ptr noundef %dev, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.47, i32 noundef %conv) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call void @usb_serial_port_softint(ptr noundef %1) #9
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @usa26_inack_callback(ptr nocapture noundef %urb) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @usa26_outcont_callback(ptr nocapture noundef readonly %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %resend_cont = getelementptr inbounds %struct.keyspan_port_private, ptr %3, i32 0, i32 24
  %4 = ptrtoint ptr %resend_cont to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %resend_cont, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %entry.if.end8_crit_edge, label %do.body

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usa26_outcont_callback.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usa26_outcont_callback, %if.then5)) #9
          to label %do.end [label %if.then5], !srcloc !383

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usa26_outcont_callback.__UNIQUE_ID_ddebug246, ptr noundef %dev, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.49) #9
  br label %do.end

do.end:                                           ; preds = %if.then5, %do.body
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  %8 = ptrtoint ptr %resend_cont to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %resend_cont, align 4
  %sub = add i32 %9, -1
  tail call fastcc void @keyspan_usa26_send_setup(ptr noundef %7, ptr noundef %1, i32 noundef %sub)
  br label %if.end8

if.end8:                                          ; preds = %do.end, %entry.if.end8_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @usa28_instat_callback(ptr noundef %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %0 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %transfer_buffer, align 4
  %status1 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %2 = ptrtoint ptr %status1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %status1, align 4
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %4 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %context, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end7, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usa28_instat_callback.__UNIQUE_ID_ddebug254, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usa28_instat_callback, %if.then5)) #9
          to label %cleanup [label %if.then5], !srcloc !383

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %dev6 = getelementptr inbounds %struct.usb_device, ptr %7, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usa28_instat_callback.__UNIQUE_ID_ddebug254, ptr noundef %dev6, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.57, i32 noundef %3) #9
  br label %cleanup

if.end7:                                          ; preds = %entry
  %actual_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %8 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %actual_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %9)
  %cmp.not = icmp eq i32 %9, 12
  br i1 %cmp.not, label %if.end28, label %do.body9

do.body9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usa28_instat_callback.__UNIQUE_ID_ddebug255, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usa28_instat_callback, %if.then21)) #9
          to label %cleanup [label %if.then21], !srcloc !383

if.then21:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #11
  %dev22 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %10 = ptrtoint ptr %dev22 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev22, align 4
  %dev23 = getelementptr inbounds %struct.usb_device, ptr %11, i32 0, i32 15
  %12 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %actual_length, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usa28_instat_callback.__UNIQUE_ID_ddebug255, ptr noundef %dev23, ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.57, i32 noundef %13) #9
  br label %cleanup

if.end28:                                         ; preds = %if.end7
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %1, align 1
  %num_ports = getelementptr inbounds %struct.usb_serial, ptr %5, i32 0, i32 6
  %16 = ptrtoint ptr %num_ports to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %num_ports, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %15, i8 %17)
  %cmp31.not = icmp ult i8 %15, %17
  br i1 %cmp31.not, label %if.end54, label %do.body34

do.body34:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usa28_instat_callback.__UNIQUE_ID_ddebug256, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usa28_instat_callback, %if.then46)) #9
          to label %cleanup [label %if.then46], !srcloc !383

if.then46:                                        ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #11
  %dev47 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %18 = ptrtoint ptr %dev47 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev47, align 4
  %dev48 = getelementptr inbounds %struct.usb_device, ptr %19, i32 0, i32 15
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %1, align 1
  %conv50 = zext i8 %21 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usa28_instat_callback.__UNIQUE_ID_ddebug256, ptr noundef %dev48, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.57, i32 noundef %conv50) #9
  br label %cleanup

if.end54:                                         ; preds = %if.end28
  %conv = zext i8 %15 to i32
  %arrayidx = getelementptr %struct.usb_serial, ptr %5, i32 0, i32 12, i32 %conv
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx, align 4
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %23, i32 0, i32 32, i32 8
  %24 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %driver_data.i.i, align 4
  %tobool58.not = icmp eq ptr %25, null
  br i1 %tobool58.not, label %if.end54.resubmit_crit_edge, label %if.end60

if.end54.resubmit_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #11
  br label %resubmit

if.end60:                                         ; preds = %if.end54
  %dcd_state = getelementptr inbounds %struct.keyspan_port_private, ptr %25, i32 0, i32 20
  %26 = ptrtoint ptr %dcd_state to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %dcd_state, align 4
  %cts = getelementptr inbounds %struct.keyspan_usa28_portStatusMessage, ptr %1, i32 0, i32 1
  %28 = ptrtoint ptr %cts to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %cts, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool62.not = icmp ne i8 %29, 0
  %cond = zext i1 %tobool62.not to i32
  %cts_state = getelementptr inbounds %struct.keyspan_port_private, ptr %25, i32 0, i32 18
  %30 = ptrtoint ptr %cts_state to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %cond, ptr %cts_state, align 4
  %dsr = getelementptr inbounds %struct.keyspan_usa28_portStatusMessage, ptr %1, i32 0, i32 2
  %31 = ptrtoint ptr %dsr to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %dsr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool64.not = icmp ne i8 %32, 0
  %cond65 = zext i1 %tobool64.not to i32
  %dsr_state = getelementptr inbounds %struct.keyspan_port_private, ptr %25, i32 0, i32 19
  %33 = ptrtoint ptr %dsr_state to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %cond65, ptr %dsr_state, align 4
  %dcd = getelementptr inbounds %struct.keyspan_usa28_portStatusMessage, ptr %1, i32 0, i32 3
  %34 = ptrtoint ptr %dcd to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %dcd, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool67.not = icmp ne i8 %35, 0
  %cond68 = zext i1 %tobool67.not to i32
  %36 = ptrtoint ptr %dcd_state to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %cond68, ptr %dcd_state, align 4
  %ri = getelementptr inbounds %struct.keyspan_usa28_portStatusMessage, ptr %1, i32 0, i32 4
  %37 = ptrtoint ptr %ri to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %ri, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool71.not = icmp ne i8 %38, 0
  %cond72 = zext i1 %tobool71.not to i32
  %ri_state = getelementptr inbounds %struct.keyspan_port_private, ptr %25, i32 0, i32 21
  %39 = ptrtoint ptr %ri_state to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %cond72, ptr %ri_state, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %cond68)
  %cmp74.not = icmp eq i32 %27, %cond68
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool76.not = icmp eq i32 %27, 0
  %or.cond = or i1 %tobool76.not, %cmp74.not
  br i1 %or.cond, label %if.end60.resubmit_crit_edge, label %if.then77

if.end60.resubmit_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #11
  br label %resubmit

if.then77:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #11
  %port78 = getelementptr inbounds %struct.usb_serial_port, ptr %23, i32 0, i32 1
  tail call void @tty_port_tty_hangup(ptr noundef %port78, i1 noundef zeroext true) #9
  br label %resubmit

resubmit:                                         ; preds = %if.then77, %if.end60.resubmit_crit_edge, %if.end54.resubmit_crit_edge
  %call80 = tail call i32 @usb_submit_urb(ptr noundef %urb, i32 noundef 2592) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %cmp81.not = icmp eq i32 %call80, 0
  br i1 %cmp81.not, label %resubmit.cleanup_crit_edge, label %do.body84

resubmit.cleanup_crit_edge:                       ; preds = %resubmit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body84:                                        ; preds = %resubmit
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usa28_instat_callback.__UNIQUE_ID_ddebug257, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usa28_instat_callback, %if.then96)) #9
          to label %cleanup [label %if.then96], !srcloc !383

if.then96:                                        ; preds = %do.body84
  call void @__sanitizer_cov_trace_pc() #11
  %dev97 = getelementptr inbounds %struct.usb_serial_port, ptr %23, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usa28_instat_callback.__UNIQUE_ID_ddebug257, ptr noundef %dev97, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.57, i32 noundef %call80) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then96, %do.body84, %resubmit.cleanup_crit_edge, %if.then46, %do.body34, %if.then21, %do.body9, %if.then5, %do.body
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @usa28_glocont_callback(ptr nocapture noundef %urb) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @usa28_indat_callback(ptr noundef %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %status1 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %0 = ptrtoint ptr %status1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %status1, align 4
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %2 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %context, align 4
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %3, i32 0, i32 32, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  %arrayidx = getelementptr %struct.keyspan_port_private, ptr %5, i32 0, i32 3, i32 %7
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %cmp.not = icmp eq ptr %9, %urb
  br i1 %cmp.not, label %do.body.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body.preheader:                                ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br label %do.body

do.body:                                          ; preds = %if.end42.do.body_crit_edge, %do.body.preheader
  %urb.addr.0 = phi ptr [ %25, %if.end42.do.body_crit_edge ], [ %urb, %do.body.preheader ]
  br i1 %tobool.not, label %if.end11, label %do.body3

do.body3:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usa28_indat_callback.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usa28_indat_callback, %if.then8)) #9
          to label %cleanup [label %if.then8], !srcloc !383

if.then8:                                         ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  %dev9 = getelementptr inbounds %struct.usb_device, ptr %11, i32 0, i32 15
  %pipe = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 10
  %12 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pipe, align 4
  %shr = lshr i32 %13, 15
  %and = and i32 %shr, 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usa28_indat_callback.__UNIQUE_ID_ddebug251, ptr noundef %dev9, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.59, i32 noundef %1, i32 noundef %and) #9
  br label %cleanup

if.end11:                                         ; preds = %do.body
  %context12 = getelementptr inbounds %struct.urb, ptr %urb.addr.0, i32 0, i32 27
  %14 = ptrtoint ptr %context12 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %context12, align 4
  %driver_data.i.i80 = getelementptr inbounds %struct.usb_serial_port, ptr %15, i32 0, i32 32, i32 8
  %16 = ptrtoint ptr %driver_data.i.i80 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %driver_data.i.i80, align 4
  %actual_length = getelementptr inbounds %struct.urb, ptr %urb.addr.0, i32 0, i32 20
  %18 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %actual_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool15.not = icmp eq i32 %19, 0
  br i1 %tobool15.not, label %if.end11.if.end21_crit_edge, label %if.then16

if.end11.if.end21_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

if.then16:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  %transfer_buffer14 = getelementptr inbounds %struct.urb, ptr %urb.addr.0, i32 0, i32 14
  %20 = ptrtoint ptr %transfer_buffer14 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %transfer_buffer14, align 4
  %port17 = getelementptr inbounds %struct.usb_serial_port, ptr %15, i32 0, i32 1
  %call.i = tail call i32 @tty_insert_flip_string_fixed_flag(ptr noundef %port17, ptr noundef %21, i8 noundef zeroext 0, i32 noundef %19) #9
  tail call void @tty_flip_buffer_push(ptr noundef %port17) #9
  br label %if.end21

if.end21:                                         ; preds = %if.then16, %if.end11.if.end21_crit_edge
  %call22 = tail call i32 @usb_submit_urb(ptr noundef %urb.addr.0, i32 noundef 2592) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp23.not = icmp eq i32 %call22, 0
  br i1 %cmp23.not, label %if.end21.if.end42_crit_edge, label %do.body25

if.end21.if.end42_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42

do.body25:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usa28_indat_callback.__UNIQUE_ID_ddebug252, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usa28_indat_callback, %if.then37)) #9
          to label %if.end42 [label %if.then37], !srcloc !383

if.then37:                                        ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #11
  %dev38 = getelementptr inbounds %struct.usb_serial_port, ptr %15, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usa28_indat_callback.__UNIQUE_ID_ddebug252, ptr noundef %dev38, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.59, i32 noundef %call22) #9
  br label %if.end42

if.end42:                                         ; preds = %if.then37, %do.body25, %if.end21.if.end42_crit_edge
  %22 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %17, align 4
  %xor = xor i32 %23, 1
  store i32 %xor, ptr %17, align 4
  %arrayidx46 = getelementptr %struct.keyspan_port_private, ptr %17, i32 0, i32 3, i32 %xor
  %24 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx46, align 4
  %status48 = getelementptr inbounds %struct.urb, ptr %25, i32 0, i32 12
  %26 = ptrtoint ptr %status48 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %status48, align 4
  %cmp49.not = icmp eq i32 %27, -115
  br i1 %cmp49.not, label %if.end42.cleanup_crit_edge, label %if.end42.do.body_crit_edge

if.end42.do.body_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.end42.cleanup_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %if.end42.cleanup_crit_edge, %if.then8, %do.body3, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @usa28_inack_callback(ptr nocapture noundef %urb) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @usa28_outcont_callback(ptr nocapture noundef readonly %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %resend_cont = getelementptr inbounds %struct.keyspan_port_private, ptr %3, i32 0, i32 24
  %4 = ptrtoint ptr %resend_cont to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %resend_cont, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %entry.if.end8_crit_edge, label %do.body

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usa28_outcont_callback.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usa28_outcont_callback, %if.then5)) #9
          to label %do.end [label %if.then5], !srcloc !383

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usa28_outcont_callback.__UNIQUE_ID_ddebug253, ptr noundef %dev, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.60) #9
  br label %do.end

do.end:                                           ; preds = %if.then5, %do.body
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  %8 = ptrtoint ptr %resend_cont to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %resend_cont, align 4
  %sub = add i32 %9, -1
  tail call fastcc void @keyspan_usa28_send_setup(ptr noundef %7, ptr noundef %1, i32 noundef %sub)
  br label %if.end8

if.end8:                                          ; preds = %do.end, %entry.if.end8_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @usa49_instat_callback(ptr noundef %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %0 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %transfer_buffer, align 4
  %status1 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %2 = ptrtoint ptr %status1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %status1, align 4
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %4 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %context, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end7, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usa49_instat_callback.__UNIQUE_ID_ddebug259, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usa49_instat_callback, %if.then5)) #9
          to label %cleanup [label %if.then5], !srcloc !383

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %dev6 = getelementptr inbounds %struct.usb_device, ptr %7, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usa49_instat_callback.__UNIQUE_ID_ddebug259, ptr noundef %dev6, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.65, i32 noundef %3) #9
  br label %cleanup

if.end7:                                          ; preds = %entry
  %actual_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %8 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %actual_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %9)
  %cmp.not = icmp eq i32 %9, 11
  br i1 %cmp.not, label %if.end28, label %do.body9

do.body9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usa49_instat_callback.__UNIQUE_ID_ddebug260, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usa49_instat_callback, %if.then21)) #9
          to label %cleanup [label %if.then21], !srcloc !383

if.then21:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #11
  %dev22 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %10 = ptrtoint ptr %dev22 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev22, align 4
  %dev23 = getelementptr inbounds %struct.usb_device, ptr %11, i32 0, i32 15
  %12 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %actual_length, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usa49_instat_callback.__UNIQUE_ID_ddebug260, ptr noundef %dev23, ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.65, i32 noundef %13) #9
  br label %cleanup

if.end28:                                         ; preds = %if.end7
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %1, align 1
  %num_ports = getelementptr inbounds %struct.usb_serial, ptr %5, i32 0, i32 6
  %16 = ptrtoint ptr %num_ports to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %num_ports, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %15, i8 %17)
  %cmp30.not = icmp ult i8 %15, %17
  br i1 %cmp30.not, label %if.end53, label %do.body33

do.body33:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usa49_instat_callback.__UNIQUE_ID_ddebug261, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usa49_instat_callback, %if.then45)) #9
          to label %cleanup [label %if.then45], !srcloc !383

if.then45:                                        ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #11
  %dev46 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %18 = ptrtoint ptr %dev46 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev46, align 4
  %dev47 = getelementptr inbounds %struct.usb_device, ptr %19, i32 0, i32 15
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %1, align 1
  %conv49 = zext i8 %21 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usa49_instat_callback.__UNIQUE_ID_ddebug261, ptr noundef %dev47, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.65, i32 noundef %conv49) #9
  br label %cleanup

if.end53:                                         ; preds = %if.end28
  %conv = zext i8 %15 to i32
  %arrayidx = getelementptr %struct.usb_serial, ptr %5, i32 0, i32 12, i32 %conv
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx, align 4
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %23, i32 0, i32 32, i32 8
  %24 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %driver_data.i.i, align 4
  %tobool57.not = icmp eq ptr %25, null
  br i1 %tobool57.not, label %if.end53.resubmit_crit_edge, label %if.end59

if.end53.resubmit_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #11
  br label %resubmit

if.end59:                                         ; preds = %if.end53
  %dcd_state = getelementptr inbounds %struct.keyspan_port_private, ptr %25, i32 0, i32 20
  %26 = ptrtoint ptr %dcd_state to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %dcd_state, align 4
  %cts = getelementptr inbounds %struct.keyspan_usa49_portStatusMessage, ptr %1, i32 0, i32 1
  %28 = ptrtoint ptr %cts to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %cts, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool61.not = icmp ne i8 %29, 0
  %cond = zext i1 %tobool61.not to i32
  %cts_state = getelementptr inbounds %struct.keyspan_port_private, ptr %25, i32 0, i32 18
  %30 = ptrtoint ptr %cts_state to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %cond, ptr %cts_state, align 4
  %dsr = getelementptr inbounds %struct.keyspan_usa49_portStatusMessage, ptr %1, i32 0, i32 3
  %31 = ptrtoint ptr %dsr to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %dsr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool63.not = icmp ne i8 %32, 0
  %cond64 = zext i1 %tobool63.not to i32
  %dsr_state = getelementptr inbounds %struct.keyspan_port_private, ptr %25, i32 0, i32 19
  %33 = ptrtoint ptr %dsr_state to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %cond64, ptr %dsr_state, align 4
  %dcd = getelementptr inbounds %struct.keyspan_usa49_portStatusMessage, ptr %1, i32 0, i32 2
  %34 = ptrtoint ptr %dcd to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %dcd, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool66.not = icmp ne i8 %35, 0
  %cond67 = zext i1 %tobool66.not to i32
  %36 = ptrtoint ptr %dcd_state to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %cond67, ptr %dcd_state, align 4
  %ri = getelementptr inbounds %struct.keyspan_usa49_portStatusMessage, ptr %1, i32 0, i32 4
  %37 = ptrtoint ptr %ri to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %ri, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool70.not = icmp ne i8 %38, 0
  %cond71 = zext i1 %tobool70.not to i32
  %ri_state = getelementptr inbounds %struct.keyspan_port_private, ptr %25, i32 0, i32 21
  %39 = ptrtoint ptr %ri_state to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %cond71, ptr %ri_state, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %cond67)
  %cmp73.not = icmp eq i32 %27, %cond67
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool75.not = icmp eq i32 %27, 0
  %or.cond = or i1 %tobool75.not, %cmp73.not
  br i1 %or.cond, label %if.end59.resubmit_crit_edge, label %if.then76

if.end59.resubmit_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #11
  br label %resubmit

if.then76:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #11
  %port77 = getelementptr inbounds %struct.usb_serial_port, ptr %23, i32 0, i32 1
  tail call void @tty_port_tty_hangup(ptr noundef %port77, i1 noundef zeroext true) #9
  br label %resubmit

resubmit:                                         ; preds = %if.then76, %if.end59.resubmit_crit_edge, %if.end53.resubmit_crit_edge
  %call79 = tail call i32 @usb_submit_urb(ptr noundef %urb, i32 noundef 2592) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79)
  %cmp80.not = icmp eq i32 %call79, 0
  br i1 %cmp80.not, label %resubmit.cleanup_crit_edge, label %do.body83

resubmit.cleanup_crit_edge:                       ; preds = %resubmit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body83:                                        ; preds = %resubmit
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usa49_instat_callback.__UNIQUE_ID_ddebug262, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usa49_instat_callback, %if.then95)) #9
          to label %cleanup [label %if.then95], !srcloc !383

if.then95:                                        ; preds = %do.body83
  call void @__sanitizer_cov_trace_pc() #11
  %dev96 = getelementptr inbounds %struct.usb_serial_port, ptr %23, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usa49_instat_callback.__UNIQUE_ID_ddebug262, ptr noundef %dev96, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.65, i32 noundef %call79) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then95, %do.body83, %resubmit.cleanup_crit_edge, %if.then45, %do.body33, %if.then21, %do.body9, %if.then5, %do.body
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @usa49_glocont_callback(ptr nocapture noundef readonly %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %num_ports = getelementptr inbounds %struct.usb_serial, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %num_ports to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %num_ports, align 1
  %conv = zext i8 %3 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp24.not = icmp eq i8 %3, 0
  br i1 %cmp24.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.025 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.usb_serial, ptr %1, i32 0, i32 12, i32 %i.025
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %5, i32 0, i32 32, i32 8
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end:                                           ; preds = %for.body
  %resend_cont = getelementptr inbounds %struct.keyspan_port_private, ptr %7, i32 0, i32 24
  %8 = ptrtoint ptr %resend_cont to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %resend_cont, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool3.not = icmp eq i32 %9, 0
  br i1 %tobool3.not, label %if.end.for.inc_crit_edge, label %do.body

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

do.body:                                          ; preds = %if.end
  %resend_cont.le = getelementptr inbounds %struct.keyspan_port_private, ptr %7, i32 0, i32 24
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usa49_glocont_callback.__UNIQUE_ID_ddebug258, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usa49_glocont_callback, %if.then9)) #9
          to label %do.end [label %if.then9], !srcloc !383

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %5, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usa49_glocont_callback.__UNIQUE_ID_ddebug258, ptr noundef %dev, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.66) #9
  br label %do.end

do.end:                                           ; preds = %if.then9, %do.body
  %10 = ptrtoint ptr %resend_cont.le to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %resend_cont.le, align 4
  %sub = add i32 %11, -1
  tail call fastcc void @keyspan_usa49_send_setup(ptr noundef %1, ptr noundef %5, i32 noundef %sub)
  br label %for.end

for.inc:                                          ; preds = %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.025, 1
  %exitcond.not = icmp eq i32 %inc, %conv
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @usa49_indat_callback(ptr noundef %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %0 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %transfer_buffer, align 4
  %status1 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %2 = ptrtoint ptr %status1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %status1, align 4
  %pipe = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 10
  %4 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pipe, align 4
  %shr = lshr i32 %5, 15
  %and = and i32 %shr, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end7, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usa49_indat_callback.__UNIQUE_ID_ddebug263, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usa49_indat_callback, %if.then5)) #9
          to label %cleanup [label %if.then5], !srcloc !383

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %dev6 = getelementptr inbounds %struct.usb_device, ptr %7, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usa49_indat_callback.__UNIQUE_ID_ddebug263, ptr noundef %dev6, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.70, i32 noundef %3, i32 noundef %and) #9
  br label %cleanup

if.end7:                                          ; preds = %entry
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %8 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %context, align 4
  %actual_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %10 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %actual_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool8.not = icmp eq i32 %11, 0
  br i1 %tobool8.not, label %if.end7.if.end44_crit_edge, label %if.then9

if.end7.if.end44_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end44

if.then9:                                         ; preds = %if.end7
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %13)
  %cmp = icmp sgt i8 %13, -1
  br i1 %cmp, label %if.then12, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.then9
  %14 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %actual_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %15)
  %cmp17120 = icmp ugt i32 %15, 1
  br i1 %cmp17120, label %for.body.lr.ph, label %for.cond.preheader.if.end42_crit_edge

for.cond.preheader.if.end42_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %port24 = getelementptr inbounds %struct.usb_serial_port, ptr %9, i32 0, i32 1
  %tail.i = getelementptr inbounds %struct.usb_serial_port, ptr %9, i32 0, i32 1, i32 0, i32 8
  br label %for.body

if.then12:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  %port13 = getelementptr inbounds %struct.usb_serial_port, ptr %9, i32 0, i32 1
  %add.ptr = getelementptr i8, ptr %1, i32 1
  %sub = add i32 %11, -1
  %call.i = tail call i32 @tty_insert_flip_string_fixed_flag(ptr noundef %port13, ptr noundef %add.ptr, i8 noundef zeroext 0, i32 noundef %sub) #9
  br label %if.end42

for.body:                                         ; preds = %tty_insert_flip_char.exit117.for.body_crit_edge, %for.body.lr.ph
  %add122 = phi i32 [ 1, %for.body.lr.ph ], [ %add, %tty_insert_flip_char.exit117.for.body_crit_edge ]
  %i.0121 = phi i32 [ 0, %for.body.lr.ph ], [ %add41, %tty_insert_flip_char.exit117.for.body_crit_edge ]
  %arrayidx19 = getelementptr i8, ptr %1, i32 %i.0121
  %16 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx19, align 1
  %conv20 = zext i8 %17 to i32
  %and21 = and i32 %conv20, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %for.body.if.end26_crit_edge, label %if.then23

for.body.if.end26_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

if.then23:                                        ; preds = %for.body
  %18 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %tail.i, align 4
  %flags.i = getelementptr inbounds %struct.tty_buffer, ptr %19, i32 0, i32 5
  %20 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %if.then23.if.end12.i_crit_edge

if.then23.if.end12.i_crit_edge:                   ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12.i

land.lhs.true.i:                                  ; preds = %if.then23
  %used.i = getelementptr inbounds %struct.tty_buffer, ptr %19, i32 0, i32 1
  %22 = ptrtoint ptr %used.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %used.i, align 4
  %size.i = getelementptr inbounds %struct.tty_buffer, ptr %19, i32 0, i32 2
  %24 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %25)
  %cmp3.i = icmp slt i32 %23, %25
  br i1 %cmp3.i, label %if.end.i, label %land.lhs.true.i.if.end12.i_crit_edge

land.lhs.true.i.if.end12.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12.i

if.end.i:                                         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  %data.i.i.i = getelementptr inbounds %struct.tty_buffer, ptr %19, i32 0, i32 6
  %add.ptr.i.i.i = getelementptr i8, ptr %data.i.i.i, i32 %23
  %add.ptr.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 %25
  %26 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 4, ptr %add.ptr.i.i, align 1
  %27 = ptrtoint ptr %used.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %used.i, align 4
  %inc.i = add i32 %28, 1
  store i32 %inc.i, ptr %used.i, align 4
  %add.ptr.i1.i = getelementptr i8, ptr %data.i.i.i, i32 %28
  %29 = ptrtoint ptr %add.ptr.i1.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %add.ptr.i1.i, align 1
  br label %if.end26

if.end12.i:                                       ; preds = %land.lhs.true.i.if.end12.i_crit_edge, %if.then23.if.end12.i_crit_edge
  %call13.i = tail call i32 @__tty_insert_flip_char(ptr noundef %port24, i8 noundef zeroext 0, i8 noundef zeroext 4) #9
  br label %if.end26

if.end26:                                         ; preds = %if.end12.i, %if.end.i, %for.body.if.end26_crit_edge
  %and27 = and i32 %conv20, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  %and31 = lshr i8 %17, 2
  %30 = and i8 %and31, 2
  %flag.0 = select i1 %tobool28.not, i8 %30, i8 3
  %arrayidx38 = getelementptr i8, ptr %1, i32 %add122
  %31 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx38, align 1
  %33 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %tail.i, align 4
  %flags.i99 = getelementptr inbounds %struct.tty_buffer, ptr %34, i32 0, i32 5
  %35 = ptrtoint ptr %flags.i99 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %flags.i99, align 4
  %and.i100 = and i32 %36, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i100)
  %tobool.not.i101 = icmp eq i32 %and.i100, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %flag.0)
  %cmp.i = icmp eq i8 %flag.0, 0
  %37 = or i1 %cmp.i, %tobool.not.i101
  br i1 %37, label %land.lhs.true.i105, label %if.end26.if.end12.i116_crit_edge

if.end26.if.end12.i116_crit_edge:                 ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12.i116

land.lhs.true.i105:                               ; preds = %if.end26
  %used.i102 = getelementptr inbounds %struct.tty_buffer, ptr %34, i32 0, i32 1
  %38 = ptrtoint ptr %used.i102 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %used.i102, align 4
  %size.i103 = getelementptr inbounds %struct.tty_buffer, ptr %34, i32 0, i32 2
  %40 = ptrtoint ptr %size.i103 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %size.i103, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %41)
  %cmp3.i104 = icmp slt i32 %39, %41
  br i1 %cmp3.i104, label %if.then.i106, label %land.lhs.true.i105.if.end12.i116_crit_edge

land.lhs.true.i105.if.end12.i116_crit_edge:       ; preds = %land.lhs.true.i105
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12.i116

if.then.i106:                                     ; preds = %land.lhs.true.i105
  br i1 %tobool.not.i101, label %if.then8.i110, label %if.then.i106.if.end.i114_crit_edge

if.then.i106.if.end.i114_crit_edge:               ; preds = %if.then.i106
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i114

if.then8.i110:                                    ; preds = %if.then.i106
  call void @__sanitizer_cov_trace_pc() #11
  %data.i.i.i107 = getelementptr inbounds %struct.tty_buffer, ptr %34, i32 0, i32 6
  %add.ptr.i.i.i108 = getelementptr i8, ptr %data.i.i.i107, i32 %39
  %add.ptr.i.i109 = getelementptr i8, ptr %add.ptr.i.i.i108, i32 %41
  %42 = ptrtoint ptr %add.ptr.i.i109 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %flag.0, ptr %add.ptr.i.i109, align 1
  br label %if.end.i114

if.end.i114:                                      ; preds = %if.then8.i110, %if.then.i106.if.end.i114_crit_edge
  %43 = ptrtoint ptr %used.i102 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %used.i102, align 4
  %inc.i111 = add i32 %44, 1
  store i32 %inc.i111, ptr %used.i102, align 4
  %data.i.i112 = getelementptr inbounds %struct.tty_buffer, ptr %34, i32 0, i32 6
  %add.ptr.i1.i113 = getelementptr i8, ptr %data.i.i112, i32 %44
  %45 = ptrtoint ptr %add.ptr.i1.i113 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %32, ptr %add.ptr.i1.i113, align 1
  br label %tty_insert_flip_char.exit117

if.end12.i116:                                    ; preds = %land.lhs.true.i105.if.end12.i116_crit_edge, %if.end26.if.end12.i116_crit_edge
  %call13.i115 = tail call i32 @__tty_insert_flip_char(ptr noundef %port24, i8 noundef zeroext %32, i8 noundef zeroext %flag.0) #9
  br label %tty_insert_flip_char.exit117

tty_insert_flip_char.exit117:                     ; preds = %if.end12.i116, %if.end.i114
  %add41 = add i32 %i.0121, 2
  %add = or i32 %add41, 1
  %46 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %actual_length, align 4
  %cmp17 = icmp ult i32 %add, %47
  br i1 %cmp17, label %tty_insert_flip_char.exit117.for.body_crit_edge, label %tty_insert_flip_char.exit117.if.end42_crit_edge

tty_insert_flip_char.exit117.if.end42_crit_edge:  ; preds = %tty_insert_flip_char.exit117
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42

tty_insert_flip_char.exit117.for.body_crit_edge:  ; preds = %tty_insert_flip_char.exit117
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

if.end42:                                         ; preds = %tty_insert_flip_char.exit117.if.end42_crit_edge, %if.then12, %for.cond.preheader.if.end42_crit_edge
  %port43 = getelementptr inbounds %struct.usb_serial_port, ptr %9, i32 0, i32 1
  tail call void @tty_flip_buffer_push(ptr noundef %port43) #9
  br label %if.end44

if.end44:                                         ; preds = %if.end42, %if.end7.if.end44_crit_edge
  %call45 = tail call i32 @usb_submit_urb(ptr noundef %urb, i32 noundef 2592) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %cmp46.not = icmp eq i32 %call45, 0
  br i1 %cmp46.not, label %if.end44.cleanup_crit_edge, label %do.body49

if.end44.cleanup_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body49:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usa49_indat_callback.__UNIQUE_ID_ddebug264, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usa49_indat_callback, %if.then61)) #9
          to label %cleanup [label %if.then61], !srcloc !383

if.then61:                                        ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #11
  %dev62 = getelementptr inbounds %struct.usb_serial_port, ptr %9, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usa49_indat_callback.__UNIQUE_ID_ddebug264, ptr noundef %dev62, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.70, i32 noundef %call45) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then61, %do.body49, %if.end44.cleanup_crit_edge, %if.then5, %do.body
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @usa49_inack_callback(ptr nocapture noundef %urb) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @usa49_outcont_callback(ptr nocapture noundef %urb) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @usa90_instat_callback(ptr noundef %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %0 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %transfer_buffer, align 4
  %status1 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %2 = ptrtoint ptr %status1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %status1, align 4
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %4 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %context, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end7, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usa90_instat_callback.__UNIQUE_ID_ddebug271, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usa90_instat_callback, %if.then5)) #9
          to label %cleanup [label %if.then5], !srcloc !383

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %dev6 = getelementptr inbounds %struct.usb_device, ptr %7, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usa90_instat_callback.__UNIQUE_ID_ddebug271, ptr noundef %dev6, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.71, i32 noundef %3) #9
  br label %cleanup

if.end7:                                          ; preds = %entry
  %actual_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %8 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %actual_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %9)
  %cmp = icmp ult i32 %9, 14
  br i1 %cmp, label %do.body9, label %if.end28

do.body9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usa90_instat_callback.__UNIQUE_ID_ddebug272, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usa90_instat_callback, %if.then21)) #9
          to label %cleanup [label %if.then21], !srcloc !383

if.then21:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #11
  %dev22 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %10 = ptrtoint ptr %dev22 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev22, align 4
  %dev23 = getelementptr inbounds %struct.usb_device, ptr %11, i32 0, i32 15
  %12 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %actual_length, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usa90_instat_callback.__UNIQUE_ID_ddebug272, ptr noundef %dev23, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.71, i32 noundef %13) #9
  br label %cleanup

if.end28:                                         ; preds = %if.end7
  %port29 = getelementptr inbounds %struct.usb_serial, ptr %5, i32 0, i32 12
  %14 = ptrtoint ptr %port29 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %port29, align 4
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %15, i32 0, i32 32, i32 8
  %16 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %driver_data.i.i, align 4
  %tobool31.not = icmp eq ptr %17, null
  br i1 %tobool31.not, label %if.end28.resubmit_crit_edge, label %if.end33

if.end28.resubmit_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %resubmit

if.end33:                                         ; preds = %if.end28
  %dcd_state = getelementptr inbounds %struct.keyspan_port_private, ptr %17, i32 0, i32 20
  %18 = ptrtoint ptr %dcd_state to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %dcd_state, align 4
  %cts = getelementptr inbounds %struct.keyspan_usa90_portStatusMessage, ptr %1, i32 0, i32 1
  %20 = ptrtoint ptr %cts to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %cts, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool34.not = icmp ne i8 %21, 0
  %cond = zext i1 %tobool34.not to i32
  %cts_state = getelementptr inbounds %struct.keyspan_port_private, ptr %17, i32 0, i32 18
  %22 = ptrtoint ptr %cts_state to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %cond, ptr %cts_state, align 4
  %dsr = getelementptr inbounds %struct.keyspan_usa90_portStatusMessage, ptr %1, i32 0, i32 3
  %23 = ptrtoint ptr %dsr to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %dsr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool36.not = icmp ne i8 %24, 0
  %cond37 = zext i1 %tobool36.not to i32
  %dsr_state = getelementptr inbounds %struct.keyspan_port_private, ptr %17, i32 0, i32 19
  %25 = ptrtoint ptr %dsr_state to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %cond37, ptr %dsr_state, align 4
  %dcd = getelementptr inbounds %struct.keyspan_usa90_portStatusMessage, ptr %1, i32 0, i32 2
  %26 = ptrtoint ptr %dcd to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %dcd, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool39.not = icmp ne i8 %27, 0
  %cond40 = zext i1 %tobool39.not to i32
  %28 = ptrtoint ptr %dcd_state to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %cond40, ptr %dcd_state, align 4
  %ri = getelementptr inbounds %struct.keyspan_usa90_portStatusMessage, ptr %1, i32 0, i32 4
  %29 = ptrtoint ptr %ri to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %ri, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool43.not = icmp ne i8 %30, 0
  %cond44 = zext i1 %tobool43.not to i32
  %ri_state = getelementptr inbounds %struct.keyspan_port_private, ptr %17, i32 0, i32 21
  %31 = ptrtoint ptr %ri_state to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %cond44, ptr %ri_state, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %cond40)
  %cmp46.not = icmp eq i32 %19, %cond40
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool48.not = icmp eq i32 %19, 0
  %or.cond = or i1 %tobool48.not, %cmp46.not
  br i1 %or.cond, label %if.end33.resubmit_crit_edge, label %if.then49

if.end33.resubmit_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  br label %resubmit

if.then49:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  %port50 = getelementptr inbounds %struct.usb_serial_port, ptr %15, i32 0, i32 1
  tail call void @tty_port_tty_hangup(ptr noundef %port50, i1 noundef zeroext true) #9
  br label %resubmit

resubmit:                                         ; preds = %if.then49, %if.end33.resubmit_crit_edge, %if.end28.resubmit_crit_edge
  %call52 = tail call i32 @usb_submit_urb(ptr noundef %urb, i32 noundef 2592) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %cmp53.not = icmp eq i32 %call52, 0
  br i1 %cmp53.not, label %resubmit.cleanup_crit_edge, label %do.body56

resubmit.cleanup_crit_edge:                       ; preds = %resubmit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body56:                                        ; preds = %resubmit
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usa90_instat_callback.__UNIQUE_ID_ddebug273, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usa90_instat_callback, %if.then68)) #9
          to label %cleanup [label %if.then68], !srcloc !383

if.then68:                                        ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #11
  %dev69 = getelementptr inbounds %struct.usb_serial_port, ptr %15, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usa90_instat_callback.__UNIQUE_ID_ddebug273, ptr noundef %dev69, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.71, i32 noundef %call52) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then68, %do.body56, %resubmit.cleanup_crit_edge, %if.then21, %do.body9, %if.then5, %do.body
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @usa90_indat_callback(ptr noundef %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %0 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %transfer_buffer, align 4
  %status1 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %2 = ptrtoint ptr %status1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %status1, align 4
  %pipe = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 10
  %4 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pipe, align 4
  %shr = lshr i32 %5, 15
  %and = and i32 %shr, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end7, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usa90_indat_callback.__UNIQUE_ID_ddebug268, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usa90_indat_callback, %if.then5)) #9
          to label %cleanup [label %if.then5], !srcloc !383

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %dev6 = getelementptr inbounds %struct.usb_device, ptr %7, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usa90_indat_callback.__UNIQUE_ID_ddebug268, ptr noundef %dev6, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.72, i32 noundef %3, i32 noundef %and) #9
  br label %cleanup

if.end7:                                          ; preds = %entry
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %8 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %context, align 4
  %actual_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %10 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %actual_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool9.not = icmp eq i32 %11, 0
  br i1 %tobool9.not, label %if.end7.if.end84_crit_edge, label %if.then10

if.end7.if.end84_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end84

if.then10:                                        ; preds = %if.end7
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %9, i32 0, i32 32, i32 8
  %12 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %driver_data.i.i, align 4
  %baud = getelementptr inbounds %struct.keyspan_port_private, ptr %13, i32 0, i32 11
  %14 = ptrtoint ptr %baud to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %baud, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 57600, i32 %15)
  %cmp = icmp sgt i32 %15, 57600
  br i1 %cmp, label %if.then11, label %if.else

if.then11:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  %port12 = getelementptr inbounds %struct.usb_serial_port, ptr %9, i32 0, i32 1
  %call.i = tail call i32 @tty_insert_flip_string_fixed_flag(ptr noundef %port12, ptr noundef %1, i8 noundef zeroext 0, i32 noundef %11) #9
  br label %if.end82

if.else:                                          ; preds = %if.then10
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %1, align 1
  %conv = zext i8 %17 to i32
  %and15 = and i32 %conv, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %cmp16 = icmp eq i32 %and15, 0
  br i1 %cmp16, label %if.then18, label %do.body34

if.then18:                                        ; preds = %if.else
  %and21 = and i32 %conv, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %if.then18.if.end26_crit_edge, label %if.then23

if.then18.if.end26_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

if.then23:                                        ; preds = %if.then18
  %port24 = getelementptr inbounds %struct.usb_serial_port, ptr %9, i32 0, i32 1
  %tail.i = getelementptr inbounds %struct.usb_serial_port, ptr %9, i32 0, i32 1, i32 0, i32 8
  %18 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %tail.i, align 4
  %flags.i = getelementptr inbounds %struct.tty_buffer, ptr %19, i32 0, i32 5
  %20 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %if.then23.if.end12.i_crit_edge

if.then23.if.end12.i_crit_edge:                   ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12.i

land.lhs.true.i:                                  ; preds = %if.then23
  %used.i = getelementptr inbounds %struct.tty_buffer, ptr %19, i32 0, i32 1
  %22 = ptrtoint ptr %used.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %used.i, align 4
  %size.i = getelementptr inbounds %struct.tty_buffer, ptr %19, i32 0, i32 2
  %24 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %25)
  %cmp3.i = icmp slt i32 %23, %25
  br i1 %cmp3.i, label %if.end.i, label %land.lhs.true.i.if.end12.i_crit_edge

land.lhs.true.i.if.end12.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12.i

if.end.i:                                         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  %data.i.i.i = getelementptr inbounds %struct.tty_buffer, ptr %19, i32 0, i32 6
  %add.ptr.i.i.i = getelementptr i8, ptr %data.i.i.i, i32 %23
  %add.ptr.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 %25
  %26 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 4, ptr %add.ptr.i.i, align 1
  %27 = ptrtoint ptr %used.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %used.i, align 4
  %inc.i = add i32 %28, 1
  store i32 %inc.i, ptr %used.i, align 4
  %add.ptr.i1.i = getelementptr i8, ptr %data.i.i.i, i32 %28
  %29 = ptrtoint ptr %add.ptr.i1.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %add.ptr.i1.i, align 1
  br label %if.end26

if.end12.i:                                       ; preds = %land.lhs.true.i.if.end12.i_crit_edge, %if.then23.if.end12.i_crit_edge
  %call13.i = tail call i32 @__tty_insert_flip_char(ptr noundef %port24, i8 noundef zeroext 0, i8 noundef zeroext 4) #9
  br label %if.end26

if.end26:                                         ; preds = %if.end12.i, %if.end.i, %if.then18.if.end26_crit_edge
  %30 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %actual_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %31)
  %cmp28219 = icmp ugt i32 %31, 1
  br i1 %cmp28219, label %for.body.lr.ph, label %if.end26.if.end82_crit_edge

if.end26.if.end82_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end82

for.body.lr.ph:                                   ; preds = %if.end26
  %tail.i152 = getelementptr inbounds %struct.usb_serial_port, ptr %9, i32 0, i32 1, i32 0, i32 8
  %port30 = getelementptr inbounds %struct.usb_serial_port, ptr %9, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %tty_insert_flip_char.exit171.for.body_crit_edge, %for.body.lr.ph
  %i.0220 = phi i32 [ 1, %for.body.lr.ph ], [ %inc, %tty_insert_flip_char.exit171.for.body_crit_edge ]
  %arrayidx31 = getelementptr i8, ptr %1, i32 %i.0220
  %32 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx31, align 1
  %34 = ptrtoint ptr %tail.i152 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %tail.i152, align 4
  %used.i156 = getelementptr inbounds %struct.tty_buffer, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %used.i156 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %used.i156, align 4
  %size.i157 = getelementptr inbounds %struct.tty_buffer, ptr %35, i32 0, i32 2
  %38 = ptrtoint ptr %size.i157 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %size.i157, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %39)
  %cmp3.i158 = icmp slt i32 %37, %39
  br i1 %cmp3.i158, label %if.then.i160, label %if.end12.i170

if.then.i160:                                     ; preds = %for.body
  %flags.i153 = getelementptr inbounds %struct.tty_buffer, ptr %35, i32 0, i32 5
  %40 = ptrtoint ptr %flags.i153 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %flags.i153, align 4
  %and.i154 = and i32 %41, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i154)
  %tobool.not.i155 = icmp eq i32 %and.i154, 0
  br i1 %tobool.not.i155, label %if.then8.i164, label %if.then.i160.if.end.i168_crit_edge

if.then.i160.if.end.i168_crit_edge:               ; preds = %if.then.i160
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i168

if.then8.i164:                                    ; preds = %if.then.i160
  call void @__sanitizer_cov_trace_pc() #11
  %data.i.i.i161 = getelementptr inbounds %struct.tty_buffer, ptr %35, i32 0, i32 6
  %add.ptr.i.i.i162 = getelementptr i8, ptr %data.i.i.i161, i32 %37
  %add.ptr.i.i163 = getelementptr i8, ptr %add.ptr.i.i.i162, i32 %39
  %42 = ptrtoint ptr %add.ptr.i.i163 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 0, ptr %add.ptr.i.i163, align 1
  br label %if.end.i168

if.end.i168:                                      ; preds = %if.then8.i164, %if.then.i160.if.end.i168_crit_edge
  %43 = ptrtoint ptr %used.i156 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %used.i156, align 4
  %inc.i165 = add i32 %44, 1
  store i32 %inc.i165, ptr %used.i156, align 4
  %data.i.i166 = getelementptr inbounds %struct.tty_buffer, ptr %35, i32 0, i32 6
  %add.ptr.i1.i167 = getelementptr i8, ptr %data.i.i166, i32 %44
  %45 = ptrtoint ptr %add.ptr.i1.i167 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %33, ptr %add.ptr.i1.i167, align 1
  br label %tty_insert_flip_char.exit171

if.end12.i170:                                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %call13.i169 = tail call i32 @__tty_insert_flip_char(ptr noundef %port30, i8 noundef zeroext %33, i8 noundef zeroext 0) #9
  br label %tty_insert_flip_char.exit171

tty_insert_flip_char.exit171:                     ; preds = %if.end12.i170, %if.end.i168
  %inc = add nuw i32 %i.0220, 1
  %46 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %actual_length, align 4
  %cmp28 = icmp ult i32 %inc, %47
  br i1 %cmp28, label %tty_insert_flip_char.exit171.for.body_crit_edge, label %tty_insert_flip_char.exit171.if.end82_crit_edge

tty_insert_flip_char.exit171.if.end82_crit_edge:  ; preds = %tty_insert_flip_char.exit171
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end82

tty_insert_flip_char.exit171.for.body_crit_edge:  ; preds = %tty_insert_flip_char.exit171
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

do.body34:                                        ; preds = %if.else
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usa90_indat_callback.__UNIQUE_ID_ddebug269, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usa90_indat_callback, %if.then46)) #9
          to label %do.end50 [label %if.then46], !srcloc !383

if.then46:                                        ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #11
  %dev47 = getelementptr inbounds %struct.usb_serial_port, ptr %9, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usa90_indat_callback.__UNIQUE_ID_ddebug269, ptr noundef %dev47, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.72) #9
  br label %do.end50

do.end50:                                         ; preds = %if.then46, %do.body34
  %48 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %actual_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %49)
  %cmp53216 = icmp ugt i32 %49, 1
  br i1 %cmp53216, label %for.body55.lr.ph, label %do.end50.if.end82_crit_edge

do.end50.if.end82_crit_edge:                      ; preds = %do.end50
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end82

for.body55.lr.ph:                                 ; preds = %do.end50
  %port61 = getelementptr inbounds %struct.usb_serial_port, ptr %9, i32 0, i32 1
  %tail.i172 = getelementptr inbounds %struct.usb_serial_port, ptr %9, i32 0, i32 1, i32 0, i32 8
  br label %for.body55

for.body55:                                       ; preds = %tty_insert_flip_char.exit211.for.body55_crit_edge, %for.body55.lr.ph
  %add218 = phi i32 [ 1, %for.body55.lr.ph ], [ %add, %tty_insert_flip_char.exit211.for.body55_crit_edge ]
  %i.1217 = phi i32 [ 0, %for.body55.lr.ph ], [ %add79, %tty_insert_flip_char.exit211.for.body55_crit_edge ]
  %arrayidx56 = getelementptr i8, ptr %1, i32 %i.1217
  %50 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx56, align 1
  %conv57 = zext i8 %51 to i32
  %and58 = and i32 %conv57, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and58)
  %tobool59.not = icmp eq i32 %and58, 0
  br i1 %tobool59.not, label %for.body55.if.end63_crit_edge, label %if.then60

for.body55.if.end63_crit_edge:                    ; preds = %for.body55
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end63

if.then60:                                        ; preds = %for.body55
  %52 = ptrtoint ptr %tail.i172 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %tail.i172, align 4
  %flags.i173 = getelementptr inbounds %struct.tty_buffer, ptr %53, i32 0, i32 5
  %54 = ptrtoint ptr %flags.i173 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %flags.i173, align 4
  %and.i174 = and i32 %55, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i174)
  %tobool.not.i175 = icmp eq i32 %and.i174, 0
  br i1 %tobool.not.i175, label %land.lhs.true.i179, label %if.then60.if.end12.i190_crit_edge

if.then60.if.end12.i190_crit_edge:                ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12.i190

land.lhs.true.i179:                               ; preds = %if.then60
  %used.i176 = getelementptr inbounds %struct.tty_buffer, ptr %53, i32 0, i32 1
  %56 = ptrtoint ptr %used.i176 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %used.i176, align 4
  %size.i177 = getelementptr inbounds %struct.tty_buffer, ptr %53, i32 0, i32 2
  %58 = ptrtoint ptr %size.i177 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %size.i177, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %57, i32 %59)
  %cmp3.i178 = icmp slt i32 %57, %59
  br i1 %cmp3.i178, label %if.end.i188, label %land.lhs.true.i179.if.end12.i190_crit_edge

land.lhs.true.i179.if.end12.i190_crit_edge:       ; preds = %land.lhs.true.i179
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12.i190

if.end.i188:                                      ; preds = %land.lhs.true.i179
  call void @__sanitizer_cov_trace_pc() #11
  %data.i.i.i181 = getelementptr inbounds %struct.tty_buffer, ptr %53, i32 0, i32 6
  %add.ptr.i.i.i182 = getelementptr i8, ptr %data.i.i.i181, i32 %57
  %add.ptr.i.i183 = getelementptr i8, ptr %add.ptr.i.i.i182, i32 %59
  %60 = ptrtoint ptr %add.ptr.i.i183 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 4, ptr %add.ptr.i.i183, align 1
  %61 = ptrtoint ptr %used.i176 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %used.i176, align 4
  %inc.i185 = add i32 %62, 1
  store i32 %inc.i185, ptr %used.i176, align 4
  %add.ptr.i1.i187 = getelementptr i8, ptr %data.i.i.i181, i32 %62
  %63 = ptrtoint ptr %add.ptr.i1.i187 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 0, ptr %add.ptr.i1.i187, align 1
  br label %if.end63

if.end12.i190:                                    ; preds = %land.lhs.true.i179.if.end12.i190_crit_edge, %if.then60.if.end12.i190_crit_edge
  %call13.i189 = tail call i32 @__tty_insert_flip_char(ptr noundef %port61, i8 noundef zeroext 0, i8 noundef zeroext 4) #9
  br label %if.end63

if.end63:                                         ; preds = %if.end12.i190, %if.end.i188, %for.body55.if.end63_crit_edge
  %and64 = and i32 %conv57, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and64)
  %tobool65.not = icmp eq i32 %and64, 0
  %and68 = lshr i8 %51, 2
  %64 = and i8 %and68, 2
  %flag.0 = select i1 %tobool65.not, i8 %64, i8 3
  %arrayidx75 = getelementptr i8, ptr %1, i32 %add218
  %65 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %arrayidx75, align 1
  %67 = ptrtoint ptr %tail.i172 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %tail.i172, align 4
  %flags.i193 = getelementptr inbounds %struct.tty_buffer, ptr %68, i32 0, i32 5
  %69 = ptrtoint ptr %flags.i193 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %flags.i193, align 4
  %and.i194 = and i32 %70, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i194)
  %tobool.not.i195 = icmp eq i32 %and.i194, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %flag.0)
  %cmp.i = icmp eq i8 %flag.0, 0
  %71 = or i1 %cmp.i, %tobool.not.i195
  br i1 %71, label %land.lhs.true.i199, label %if.end63.if.end12.i210_crit_edge

if.end63.if.end12.i210_crit_edge:                 ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12.i210

land.lhs.true.i199:                               ; preds = %if.end63
  %used.i196 = getelementptr inbounds %struct.tty_buffer, ptr %68, i32 0, i32 1
  %72 = ptrtoint ptr %used.i196 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %used.i196, align 4
  %size.i197 = getelementptr inbounds %struct.tty_buffer, ptr %68, i32 0, i32 2
  %74 = ptrtoint ptr %size.i197 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %size.i197, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %73, i32 %75)
  %cmp3.i198 = icmp slt i32 %73, %75
  br i1 %cmp3.i198, label %if.then.i200, label %land.lhs.true.i199.if.end12.i210_crit_edge

land.lhs.true.i199.if.end12.i210_crit_edge:       ; preds = %land.lhs.true.i199
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12.i210

if.then.i200:                                     ; preds = %land.lhs.true.i199
  br i1 %tobool.not.i195, label %if.then8.i204, label %if.then.i200.if.end.i208_crit_edge

if.then.i200.if.end.i208_crit_edge:               ; preds = %if.then.i200
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i208

if.then8.i204:                                    ; preds = %if.then.i200
  call void @__sanitizer_cov_trace_pc() #11
  %data.i.i.i201 = getelementptr inbounds %struct.tty_buffer, ptr %68, i32 0, i32 6
  %add.ptr.i.i.i202 = getelementptr i8, ptr %data.i.i.i201, i32 %73
  %add.ptr.i.i203 = getelementptr i8, ptr %add.ptr.i.i.i202, i32 %75
  %76 = ptrtoint ptr %add.ptr.i.i203 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 %flag.0, ptr %add.ptr.i.i203, align 1
  br label %if.end.i208

if.end.i208:                                      ; preds = %if.then8.i204, %if.then.i200.if.end.i208_crit_edge
  %77 = ptrtoint ptr %used.i196 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %used.i196, align 4
  %inc.i205 = add i32 %78, 1
  store i32 %inc.i205, ptr %used.i196, align 4
  %data.i.i206 = getelementptr inbounds %struct.tty_buffer, ptr %68, i32 0, i32 6
  %add.ptr.i1.i207 = getelementptr i8, ptr %data.i.i206, i32 %78
  %79 = ptrtoint ptr %add.ptr.i1.i207 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %66, ptr %add.ptr.i1.i207, align 1
  br label %tty_insert_flip_char.exit211

if.end12.i210:                                    ; preds = %land.lhs.true.i199.if.end12.i210_crit_edge, %if.end63.if.end12.i210_crit_edge
  %call13.i209 = tail call i32 @__tty_insert_flip_char(ptr noundef %port61, i8 noundef zeroext %66, i8 noundef zeroext %flag.0) #9
  br label %tty_insert_flip_char.exit211

tty_insert_flip_char.exit211:                     ; preds = %if.end12.i210, %if.end.i208
  %add79 = add i32 %i.1217, 2
  %add = or i32 %add79, 1
  %80 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %actual_length, align 4
  %cmp53 = icmp ult i32 %add, %81
  br i1 %cmp53, label %tty_insert_flip_char.exit211.for.body55_crit_edge, label %tty_insert_flip_char.exit211.if.end82_crit_edge

tty_insert_flip_char.exit211.if.end82_crit_edge:  ; preds = %tty_insert_flip_char.exit211
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end82

tty_insert_flip_char.exit211.for.body55_crit_edge: ; preds = %tty_insert_flip_char.exit211
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body55

if.end82:                                         ; preds = %tty_insert_flip_char.exit211.if.end82_crit_edge, %do.end50.if.end82_crit_edge, %tty_insert_flip_char.exit171.if.end82_crit_edge, %if.end26.if.end82_crit_edge, %if.then11
  %port83 = getelementptr inbounds %struct.usb_serial_port, ptr %9, i32 0, i32 1
  tail call void @tty_flip_buffer_push(ptr noundef %port83) #9
  br label %if.end84

if.end84:                                         ; preds = %if.end82, %if.end7.if.end84_crit_edge
  %call85 = tail call i32 @usb_submit_urb(ptr noundef %urb, i32 noundef 2592) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85)
  %cmp86.not = icmp eq i32 %call85, 0
  br i1 %cmp86.not, label %if.end84.cleanup_crit_edge, label %do.body89

if.end84.cleanup_crit_edge:                       ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body89:                                        ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usa90_indat_callback.__UNIQUE_ID_ddebug270, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usa90_indat_callback, %if.then101)) #9
          to label %cleanup [label %if.then101], !srcloc !383

if.then101:                                       ; preds = %do.body89
  call void @__sanitizer_cov_trace_pc() #11
  %dev102 = getelementptr inbounds %struct.usb_serial_port, ptr %9, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usa90_indat_callback.__UNIQUE_ID_ddebug270, ptr noundef %dev102, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.72, i32 noundef %call85) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then101, %do.body89, %if.end84.cleanup_crit_edge, %if.then5, %do.body
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @usa90_outcont_callback(ptr nocapture noundef readonly %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %resend_cont = getelementptr inbounds %struct.keyspan_port_private, ptr %3, i32 0, i32 24
  %4 = ptrtoint ptr %resend_cont to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %resend_cont, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %entry.if.end9_crit_edge, label %do.body

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usa90_outcont_callback.__UNIQUE_ID_ddebug274, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usa90_outcont_callback, %if.then5)) #9
          to label %do.end [label %if.then5], !srcloc !383

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %dev6 = getelementptr inbounds %struct.usb_device, ptr %7, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usa90_outcont_callback.__UNIQUE_ID_ddebug274, ptr noundef %dev6, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.73) #9
  br label %do.end

do.end:                                           ; preds = %if.then5, %do.body
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 8
  %10 = ptrtoint ptr %resend_cont to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %resend_cont, align 4
  %sub = add i32 %11, -1
  tail call fastcc void @keyspan_usa90_send_setup(ptr noundef %9, ptr noundef %1, i32 noundef %sub)
  br label %if.end9

if.end9:                                          ; preds = %do.end, %entry.if.end9_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @usa67_instat_callback(ptr noundef %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %0 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %transfer_buffer, align 4
  %status1 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %2 = ptrtoint ptr %status1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %status1, align 4
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %4 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %context, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end7, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usa67_instat_callback.__UNIQUE_ID_ddebug275, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usa67_instat_callback, %if.then5)) #9
          to label %cleanup [label %if.then5], !srcloc !383

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %dev6 = getelementptr inbounds %struct.usb_device, ptr %7, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usa67_instat_callback.__UNIQUE_ID_ddebug275, ptr noundef %dev6, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.75, i32 noundef %3) #9
  br label %cleanup

if.end7:                                          ; preds = %entry
  %actual_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %8 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %actual_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %9)
  %cmp.not = icmp eq i32 %9, 8
  br i1 %cmp.not, label %if.end28, label %do.body9

do.body9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usa67_instat_callback.__UNIQUE_ID_ddebug276, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usa67_instat_callback, %if.then21)) #9
          to label %cleanup [label %if.then21], !srcloc !383

if.then21:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #11
  %dev22 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %10 = ptrtoint ptr %dev22 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev22, align 4
  %dev23 = getelementptr inbounds %struct.usb_device, ptr %11, i32 0, i32 15
  %12 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %actual_length, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usa67_instat_callback.__UNIQUE_ID_ddebug276, ptr noundef %dev23, ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.75, i32 noundef %13) #9
  br label %cleanup

if.end28:                                         ; preds = %if.end7
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %1, align 1
  %num_ports = getelementptr inbounds %struct.usb_serial, ptr %5, i32 0, i32 6
  %16 = ptrtoint ptr %num_ports to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %num_ports, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %15, i8 %17)
  %cmp31.not = icmp ult i8 %15, %17
  br i1 %cmp31.not, label %if.end54, label %do.body34

do.body34:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usa67_instat_callback.__UNIQUE_ID_ddebug277, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usa67_instat_callback, %if.then46)) #9
          to label %cleanup [label %if.then46], !srcloc !383

if.then46:                                        ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #11
  %dev47 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %18 = ptrtoint ptr %dev47 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev47, align 4
  %dev48 = getelementptr inbounds %struct.usb_device, ptr %19, i32 0, i32 15
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %1, align 1
  %conv50 = zext i8 %21 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usa67_instat_callback.__UNIQUE_ID_ddebug277, ptr noundef %dev48, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.75, i32 noundef %conv50) #9
  br label %cleanup

if.end54:                                         ; preds = %if.end28
  %conv = zext i8 %15 to i32
  %arrayidx = getelementptr %struct.usb_serial, ptr %5, i32 0, i32 12, i32 %conv
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx, align 4
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %23, i32 0, i32 32, i32 8
  %24 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %driver_data.i.i, align 4
  %tobool58.not = icmp eq ptr %25, null
  br i1 %tobool58.not, label %if.end54.resubmit_crit_edge, label %if.end60

if.end54.resubmit_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #11
  br label %resubmit

if.end60:                                         ; preds = %if.end54
  %dcd_state = getelementptr inbounds %struct.keyspan_port_private, ptr %25, i32 0, i32 20
  %26 = ptrtoint ptr %dcd_state to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %dcd_state, align 4
  %hskia_cts = getelementptr inbounds %struct.keyspan_usa67_portStatusMessage, ptr %1, i32 0, i32 1
  %28 = ptrtoint ptr %hskia_cts to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %hskia_cts, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool62.not = icmp ne i8 %29, 0
  %cond = zext i1 %tobool62.not to i32
  %cts_state = getelementptr inbounds %struct.keyspan_port_private, ptr %25, i32 0, i32 18
  %30 = ptrtoint ptr %cts_state to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %cond, ptr %cts_state, align 4
  %gpia_dcd = getelementptr inbounds %struct.keyspan_usa67_portStatusMessage, ptr %1, i32 0, i32 2
  %31 = ptrtoint ptr %gpia_dcd to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %gpia_dcd, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool64.not = icmp ne i8 %32, 0
  %cond65 = zext i1 %tobool64.not to i32
  %33 = ptrtoint ptr %dcd_state to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %cond65, ptr %dcd_state, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %cond65)
  %cmp68.not = icmp eq i32 %27, %cond65
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool70.not = icmp eq i32 %27, 0
  %or.cond = or i1 %tobool70.not, %cmp68.not
  br i1 %or.cond, label %if.end60.resubmit_crit_edge, label %if.then71

if.end60.resubmit_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #11
  br label %resubmit

if.then71:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #11
  %port72 = getelementptr inbounds %struct.usb_serial_port, ptr %23, i32 0, i32 1
  tail call void @tty_port_tty_hangup(ptr noundef %port72, i1 noundef zeroext true) #9
  br label %resubmit

resubmit:                                         ; preds = %if.then71, %if.end60.resubmit_crit_edge, %if.end54.resubmit_crit_edge
  %call74 = tail call i32 @usb_submit_urb(ptr noundef %urb, i32 noundef 2592) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %cmp75.not = icmp eq i32 %call74, 0
  br i1 %cmp75.not, label %resubmit.cleanup_crit_edge, label %do.body78

resubmit.cleanup_crit_edge:                       ; preds = %resubmit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body78:                                        ; preds = %resubmit
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usa67_instat_callback.__UNIQUE_ID_ddebug278, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usa67_instat_callback, %if.then90)) #9
          to label %cleanup [label %if.then90], !srcloc !383

if.then90:                                        ; preds = %do.body78
  call void @__sanitizer_cov_trace_pc() #11
  %dev91 = getelementptr inbounds %struct.usb_serial_port, ptr %23, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usa67_instat_callback.__UNIQUE_ID_ddebug278, ptr noundef %dev91, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.75, i32 noundef %call74) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then90, %do.body78, %resubmit.cleanup_crit_edge, %if.then46, %do.body34, %if.then21, %do.body9, %if.then5, %do.body
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @usa67_glocont_callback(ptr nocapture noundef readonly %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %num_ports = getelementptr inbounds %struct.usb_serial, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %num_ports to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %num_ports, align 1
  %conv = zext i8 %3 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp24.not = icmp eq i8 %3, 0
  br i1 %cmp24.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.025 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.usb_serial, ptr %1, i32 0, i32 12, i32 %i.025
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %5, i32 0, i32 32, i32 8
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end:                                           ; preds = %for.body
  %resend_cont = getelementptr inbounds %struct.keyspan_port_private, ptr %7, i32 0, i32 24
  %8 = ptrtoint ptr %resend_cont to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %resend_cont, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool3.not = icmp eq i32 %9, 0
  br i1 %tobool3.not, label %if.end.for.inc_crit_edge, label %do.body

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

do.body:                                          ; preds = %if.end
  %resend_cont.le = getelementptr inbounds %struct.keyspan_port_private, ptr %7, i32 0, i32 24
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usa67_glocont_callback.__UNIQUE_ID_ddebug279, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usa67_glocont_callback, %if.then9)) #9
          to label %do.end [label %if.then9], !srcloc !383

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %5, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usa67_glocont_callback.__UNIQUE_ID_ddebug279, ptr noundef %dev, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.76) #9
  br label %do.end

do.end:                                           ; preds = %if.then9, %do.body
  %10 = ptrtoint ptr %resend_cont.le to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %resend_cont.le, align 4
  %sub = add i32 %11, -1
  tail call fastcc void @keyspan_usa67_send_setup(ptr noundef %1, ptr noundef %5, i32 noundef %sub)
  br label %for.end

for.inc:                                          ; preds = %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.025, 1
  %exitcond.not = icmp eq i32 %inc, %conv
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_port_tty_hangup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_flip_buffer_push(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__tty_insert_flip_char(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_serial_port_softint(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @keyspan_usa26_send_setup(ptr nocapture noundef readonly %serial, ptr noundef %port, i32 noundef %reset_port) unnamed_addr #2 align 64 {
entry:
  %msg = alloca %struct.keyspan_usa26_portControlMessage, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %msg) #9
  %0 = getelementptr inbounds %struct.keyspan_usa26_portControlMessage, ptr %msg, i32 0, i32 1
  %1 = getelementptr inbounds %struct.keyspan_usa26_portControlMessage, ptr %msg, i32 0, i32 2
  %2 = getelementptr inbounds %struct.keyspan_usa26_portControlMessage, ptr %msg, i32 0, i32 5
  %3 = getelementptr inbounds %struct.keyspan_usa26_portControlMessage, ptr %msg, i32 0, i32 6
  %4 = getelementptr inbounds %struct.keyspan_usa26_portControlMessage, ptr %msg, i32 0, i32 7
  %5 = getelementptr inbounds %struct.keyspan_usa26_portControlMessage, ptr %msg, i32 0, i32 8
  %6 = getelementptr inbounds %struct.keyspan_usa26_portControlMessage, ptr %msg, i32 0, i32 9
  %7 = getelementptr inbounds %struct.keyspan_usa26_portControlMessage, ptr %msg, i32 0, i32 10
  %8 = getelementptr inbounds %struct.keyspan_usa26_portControlMessage, ptr %msg, i32 0, i32 11
  %9 = getelementptr inbounds %struct.keyspan_usa26_portControlMessage, ptr %msg, i32 0, i32 12
  %10 = getelementptr inbounds %struct.keyspan_usa26_portControlMessage, ptr %msg, i32 0, i32 13
  %11 = getelementptr inbounds %struct.keyspan_usa26_portControlMessage, ptr %msg, i32 0, i32 14
  %12 = getelementptr inbounds %struct.keyspan_usa26_portControlMessage, ptr %msg, i32 0, i32 15
  %13 = getelementptr inbounds %struct.keyspan_usa26_portControlMessage, ptr %msg, i32 0, i32 16
  %14 = getelementptr inbounds %struct.keyspan_usa26_portControlMessage, ptr %msg, i32 0, i32 17
  %15 = getelementptr inbounds %struct.keyspan_usa26_portControlMessage, ptr %msg, i32 0, i32 18
  %16 = getelementptr inbounds %struct.keyspan_usa26_portControlMessage, ptr %msg, i32 0, i32 22
  %17 = getelementptr inbounds %struct.keyspan_usa26_portControlMessage, ptr %msg, i32 0, i32 23
  %18 = getelementptr inbounds %struct.keyspan_usa26_portControlMessage, ptr %msg, i32 0, i32 24
  %19 = getelementptr inbounds %struct.keyspan_usa26_portControlMessage, ptr %msg, i32 0, i32 25
  %20 = getelementptr inbounds %struct.keyspan_usa26_portControlMessage, ptr %msg, i32 0, i32 26
  %21 = getelementptr inbounds %struct.keyspan_usa26_portControlMessage, ptr %msg, i32 0, i32 27
  %22 = getelementptr inbounds %struct.keyspan_usa26_portControlMessage, ptr %msg, i32 0, i32 28
  %23 = getelementptr inbounds %struct.keyspan_usa26_portControlMessage, ptr %msg, i32 0, i32 29
  %24 = getelementptr inbounds %struct.keyspan_usa26_portControlMessage, ptr %msg, i32 0, i32 30
  %25 = getelementptr inbounds %struct.keyspan_usa26_portControlMessage, ptr %msg, i32 0, i32 31
  %26 = call ptr @memset(ptr %msg, i32 255, i32 32)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @keyspan_usa26_send_setup.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@keyspan_usa26_send_setup, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !383

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @keyspan_usa26_send_setup.__UNIQUE_ID_ddebug293, ptr noundef %dev, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.51, i32 noundef %reset_port) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %private.i = getelementptr inbounds %struct.usb_serial, ptr %serial, i32 0, i32 15
  %27 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %private.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32, i32 8
  %29 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %driver_data.i.i, align 4
  %31 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %28, align 4
  %port_number = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 4
  %33 = ptrtoint ptr %port_number to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %port_number, align 4
  %conv = zext i8 %34 to i32
  %outcont_urb = getelementptr inbounds %struct.keyspan_port_private, ptr %30, i32 0, i32 9
  %35 = ptrtoint ptr %outcont_urb to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %outcont_urb, align 4
  %cmp = icmp eq ptr %36, null
  br i1 %cmp, label %do.body7, label %do.body25

do.body7:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @keyspan_usa26_send_setup.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@keyspan_usa26_send_setup, %if.then19)) #9
          to label %cleanup [label %if.then19], !srcloc !383

if.then19:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #11
  %dev20 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @keyspan_usa26_send_setup.__UNIQUE_ID_ddebug294, ptr noundef %dev20, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.51) #9
  br label %cleanup

do.body25:                                        ; preds = %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @keyspan_usa26_send_setup.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@keyspan_usa26_send_setup, %if.then37)) #9
          to label %do.end41 [label %if.then37], !srcloc !383

if.then37:                                        ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #11
  %dev38 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  %pipe = getelementptr inbounds %struct.urb, ptr %36, i32 0, i32 10
  %37 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %pipe, align 4
  %shr = lshr i32 %38, 15
  %and = and i32 %shr, 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @keyspan_usa26_send_setup.__UNIQUE_ID_ddebug295, ptr noundef %dev38, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.51, i32 noundef %and) #9
  br label %do.end41

do.end41:                                         ; preds = %if.then37, %do.body25
  %add = add i32 %reset_port, 1
  %resend_cont = getelementptr inbounds %struct.keyspan_port_private, ptr %30, i32 0, i32 24
  %39 = ptrtoint ptr %resend_cont to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %resend_cont, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %40)
  %cmp42 = icmp sgt i32 %add, %40
  br i1 %cmp42, label %if.then44, label %do.end41.if.end47_crit_edge

do.end41.if.end47_crit_edge:                      ; preds = %do.end41
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end47

if.then44:                                        ; preds = %do.end41
  call void @__sanitizer_cov_trace_pc() #11
  %41 = ptrtoint ptr %resend_cont to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %add, ptr %resend_cont, align 4
  br label %if.end47

if.end47:                                         ; preds = %if.then44, %do.end41.if.end47_crit_edge
  %status = getelementptr inbounds %struct.urb, ptr %36, i32 0, i32 12
  %42 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -115, i32 %43)
  %cmp48 = icmp eq i32 %43, -115
  br i1 %cmp48, label %while.body.preheader, label %if.end52

while.body.preheader:                             ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %44 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %44(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %45 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %45(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %46 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %46(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %47 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %47(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %48 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %48(i32 noundef 214748000) #9
  br label %cleanup

if.end52:                                         ; preds = %if.end47
  %49 = call ptr @memset(ptr %msg, i32 0, i32 32)
  %old_baud = getelementptr inbounds %struct.keyspan_port_private, ptr %30, i32 0, i32 12
  %50 = ptrtoint ptr %old_baud to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %old_baud, align 4
  %baud = getelementptr inbounds %struct.keyspan_port_private, ptr %30, i32 0, i32 11
  %52 = ptrtoint ptr %baud to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %baud, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %51, i32 %53)
  %cmp53.not = icmp eq i32 %51, %53
  br i1 %cmp53.not, label %if.end52.if.end85_crit_edge, label %if.then55

if.end52.if.end85_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end85

if.then55:                                        ; preds = %if.end52
  %54 = ptrtoint ptr %old_baud to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %old_baud, align 4
  %55 = ptrtoint ptr %msg to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 -1, ptr %msg, align 1
  %calculate_baud_rate = getelementptr inbounds %struct.keyspan_device_details, ptr %32, i32 0, i32 12
  %56 = ptrtoint ptr %calculate_baud_rate to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %calculate_baud_rate, align 4
  %baudclk = getelementptr inbounds %struct.keyspan_device_details, ptr %32, i32 0, i32 13
  %58 = ptrtoint ptr %baudclk to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %baudclk, align 4
  %call59 = call i32 %57(ptr noundef %port, i32 noundef %53, i32 noundef %59, ptr noundef %1, ptr noundef %0, ptr noundef %14, i32 noundef %conv) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call59)
  %cmp60 = icmp eq i32 %call59, -1
  br i1 %cmp60, label %do.body63, label %if.then55.if.end84_crit_edge

if.then55.if.end84_crit_edge:                     ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end84

do.body63:                                        ; preds = %if.then55
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @keyspan_usa26_send_setup.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@keyspan_usa26_send_setup, %if.then75)) #9
          to label %do.end80 [label %if.then75], !srcloc !383

if.then75:                                        ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #11
  %dev76 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  %60 = ptrtoint ptr %baud to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %baud, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @keyspan_usa26_send_setup.__UNIQUE_ID_ddebug296, ptr noundef %dev76, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.51, i32 noundef %61) #9
  br label %do.end80

do.end80:                                         ; preds = %if.then75, %do.body63
  %62 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 0, ptr %0, align 1
  %63 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 125, ptr %1, align 1
  %64 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 10, ptr %14, align 1
  br label %if.end84

if.end84:                                         ; preds = %do.end80, %if.then55.if.end84_crit_edge
  %65 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 -1, ptr %13, align 1
  br label %if.end85

if.end85:                                         ; preds = %if.end84, %if.end52.if.end85_crit_edge
  %cflag = getelementptr inbounds %struct.keyspan_port_private, ptr %30, i32 0, i32 13
  %66 = ptrtoint ptr %cflag to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %cflag, align 4
  %68 = trunc i32 %67 to i8
  %69 = lshr i8 %68, 4
  %conv88 = and i8 %69, 4
  %and90 = lshr i32 %67, 4
  %70 = and i32 %and90, 3
  %71 = zext i32 %70 to i64
  call void @__sanitizer_cov_trace_switch(i64 %71, ptr @__sancov_gen_cov_switch_values.101)
  switch i32 %70, label %if.end85.unreachabledefault [
    i32 0, label %if.end85.sw.epilog_crit_edge
    i32 1, label %sw.bb94
    i32 2, label %sw.bb99
    i32 3, label %sw.bb104
  ]

if.end85.sw.epilog_crit_edge:                     ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb94:                                          ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #11
  %72 = or i8 %conv88, 1
  br label %sw.epilog

sw.bb99:                                          ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #11
  %73 = or i8 %conv88, 2
  br label %sw.epilog

sw.bb104:                                         ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #11
  %74 = or i8 %conv88, 3
  br label %sw.epilog

if.end85.unreachabledefault:                      ; preds = %if.end85
  unreachable

sw.epilog:                                        ; preds = %sw.bb104, %sw.bb99, %sw.bb94, %if.end85.sw.epilog_crit_edge
  %.sink = phi i8 [ %74, %sw.bb104 ], [ %73, %sw.bb99 ], [ %72, %sw.bb94 ], [ %conv88, %if.end85.sw.epilog_crit_edge ]
  %75 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %.sink, ptr %3, align 1
  %76 = ptrtoint ptr %cflag to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %cflag, align 4
  %and110 = and i32 %77, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and110)
  %tobool111.not = icmp eq i32 %and110, 0
  br i1 %tobool111.not, label %sw.epilog.if.end121_crit_edge, label %if.then112

sw.epilog.if.end121_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end121

if.then112:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %and114 = and i32 %77, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and114)
  %tobool115.not = icmp eq i32 %and114, 0
  %cond116 = select i1 %tobool115.not, i8 24, i8 8
  %78 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %3, align 1
  %or119 = or i8 %79, %cond116
  store i8 %or119, ptr %3, align 1
  br label %if.end121

if.end121:                                        ; preds = %if.then112, %sw.epilog.if.end121_crit_edge
  %80 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 -1, ptr %2, align 1
  %flow_control = getelementptr inbounds %struct.keyspan_port_private, ptr %30, i32 0, i32 15
  %81 = ptrtoint ptr %flow_control to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %flow_control, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %82)
  %cmp122 = icmp eq i32 %82, 1
  %conv124 = zext i1 %cmp122 to i8
  %83 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %conv124, ptr %5, align 1
  %84 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 0, ptr %6, align 1
  %85 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 -1, ptr %4, align 1
  %86 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 16, ptr %15, align 1
  %87 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 17, ptr %7, align 1
  %88 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 19, ptr %8, align 1
  %89 = zext i32 %reset_port to i64
  call void @__sanitizer_cov_trace_switch(i64 %89, ptr @__sancov_gen_cov_switch_values.102)
  switch i32 %reset_port, label %if.else141 [
    i32 1, label %if.then127
    i32 2, label %if.then130
  ]

if.then127:                                       ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #11
  %90 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 1, ptr %16, align 1
  %91 = ptrtoint ptr %17 to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 0, ptr %17, align 1
  %92 = ptrtoint ptr %18 to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 0, ptr %18, align 1
  %93 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 0, ptr %19, align 1
  %94 = ptrtoint ptr %20 to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 1, ptr %20, align 1
  %95 = ptrtoint ptr %21 to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 0, ptr %21, align 1
  %96 = ptrtoint ptr %22 to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 1, ptr %22, align 1
  %97 = ptrtoint ptr %23 to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 0, ptr %23, align 1
  %98 = ptrtoint ptr %24 to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 0, ptr %24, align 1
  %99 = ptrtoint ptr %25 to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 -1, ptr %25, align 1
  br label %if.end159

if.then130:                                       ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #11
  %100 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 0, ptr %16, align 1
  %101 = ptrtoint ptr %17 to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 1, ptr %17, align 1
  %102 = ptrtoint ptr %18 to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 0, ptr %18, align 1
  %103 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 0, ptr %19, align 1
  %104 = ptrtoint ptr %20 to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 0, ptr %20, align 1
  %105 = ptrtoint ptr %21 to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 1, ptr %21, align 1
  %106 = ptrtoint ptr %22 to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 1, ptr %22, align 1
  %107 = ptrtoint ptr %23 to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 0, ptr %23, align 1
  %108 = ptrtoint ptr %24 to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 0, ptr %24, align 1
  %109 = ptrtoint ptr %25 to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 0, ptr %25, align 1
  br label %if.end159

if.else141:                                       ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #11
  %break_on = getelementptr inbounds %struct.keyspan_port_private, ptr %30, i32 0, i32 22
  %110 = ptrtoint ptr %break_on to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %break_on, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %111)
  %tobool142.not = icmp eq i32 %111, 0
  %conv145 = zext i1 %tobool142.not to i8
  %112 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 %conv145, ptr %16, align 1
  %113 = ptrtoint ptr %17 to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 0, ptr %17, align 1
  %114 = ptrtoint ptr %18 to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 0, ptr %18, align 1
  %conv150 = trunc i32 %111 to i8
  %115 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 %conv150, ptr %19, align 1
  %116 = call ptr @memset(ptr %20, i32 0, i32 6)
  br label %if.end159

if.end159:                                        ; preds = %if.else141, %if.then130, %if.then127
  %117 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 -1, ptr %9, align 1
  %rts_state = getelementptr inbounds %struct.keyspan_port_private, ptr %30, i32 0, i32 16
  %118 = ptrtoint ptr %rts_state to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %rts_state, align 4
  %conv160 = trunc i32 %119 to i8
  %120 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 %conv160, ptr %10, align 1
  %121 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 -1, ptr %11, align 1
  %dtr_state = getelementptr inbounds %struct.keyspan_port_private, ptr %30, i32 0, i32 17
  %122 = ptrtoint ptr %dtr_state to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %dtr_state, align 4
  %conv161 = trunc i32 %123 to i8
  %124 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 %conv161, ptr %12, align 1
  %125 = ptrtoint ptr %resend_cont to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 0, ptr %resend_cont, align 4
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %36, i32 0, i32 14
  %126 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %transfer_buffer, align 4
  %128 = call ptr @memcpy(ptr %127, ptr %msg, i32 32)
  %transfer_buffer_length = getelementptr inbounds %struct.urb, ptr %36, i32 0, i32 19
  %129 = ptrtoint ptr %transfer_buffer_length to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 32, ptr %transfer_buffer_length, align 4
  %call163 = call i32 @usb_submit_urb(ptr noundef nonnull %36, i32 noundef 2592) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call163)
  %cmp164.not = icmp eq i32 %call163, 0
  br i1 %cmp164.not, label %if.end159.cleanup_crit_edge, label %do.body167

if.end159.cleanup_crit_edge:                      ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body167:                                       ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @keyspan_usa26_send_setup.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@keyspan_usa26_send_setup, %if.then179)) #9
          to label %cleanup [label %if.then179], !srcloc !383

if.then179:                                       ; preds = %do.body167
  call void @__sanitizer_cov_trace_pc() #11
  %dev180 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @keyspan_usa26_send_setup.__UNIQUE_ID_ddebug297, ptr noundef %dev180, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.51, i32 noundef %call163) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then179, %do.body167, %if.end159.cleanup_crit_edge, %while.body.preheader, %if.then19, %do.body7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %msg) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_insert_flip_string_fixed_flag(ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @keyspan_usa28_send_setup(ptr nocapture noundef readonly %serial, ptr noundef %port, i32 noundef %reset_port) unnamed_addr #2 align 64 {
entry:
  %msg = alloca %struct.keyspan_usa28_portControlMessage, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg) #9
  %0 = getelementptr inbounds %struct.keyspan_usa28_portControlMessage, ptr %msg, i32 0, i32 1
  %1 = getelementptr inbounds %struct.keyspan_usa28_portControlMessage, ptr %msg, i32 0, i32 2
  %2 = getelementptr inbounds %struct.keyspan_usa28_portControlMessage, ptr %msg, i32 0, i32 3
  %3 = getelementptr inbounds %struct.keyspan_usa28_portControlMessage, ptr %msg, i32 0, i32 4
  %4 = getelementptr inbounds %struct.keyspan_usa28_portControlMessage, ptr %msg, i32 0, i32 5
  %5 = getelementptr inbounds %struct.keyspan_usa28_portControlMessage, ptr %msg, i32 0, i32 6
  %6 = getelementptr inbounds %struct.keyspan_usa28_portControlMessage, ptr %msg, i32 0, i32 7
  %7 = getelementptr inbounds %struct.keyspan_usa28_portControlMessage, ptr %msg, i32 0, i32 8
  %8 = getelementptr inbounds %struct.keyspan_usa28_portControlMessage, ptr %msg, i32 0, i32 9
  %9 = getelementptr inbounds %struct.keyspan_usa28_portControlMessage, ptr %msg, i32 0, i32 10
  %10 = getelementptr inbounds %struct.keyspan_usa28_portControlMessage, ptr %msg, i32 0, i32 11
  %11 = getelementptr inbounds %struct.keyspan_usa28_portControlMessage, ptr %msg, i32 0, i32 12
  %12 = getelementptr inbounds %struct.keyspan_usa28_portControlMessage, ptr %msg, i32 0, i32 13
  %13 = getelementptr inbounds %struct.keyspan_usa28_portControlMessage, ptr %msg, i32 0, i32 14
  %14 = getelementptr inbounds %struct.keyspan_usa28_portControlMessage, ptr %msg, i32 0, i32 15
  %15 = getelementptr inbounds %struct.keyspan_usa28_portControlMessage, ptr %msg, i32 0, i32 16
  %16 = getelementptr inbounds %struct.keyspan_usa28_portControlMessage, ptr %msg, i32 0, i32 17
  %17 = getelementptr inbounds %struct.keyspan_usa28_portControlMessage, ptr %msg, i32 0, i32 18
  %18 = getelementptr inbounds %struct.keyspan_usa28_portControlMessage, ptr %msg, i32 0, i32 19
  %19 = getelementptr inbounds %struct.keyspan_usa28_portControlMessage, ptr %msg, i32 0, i32 20
  %20 = getelementptr inbounds %struct.keyspan_usa28_portControlMessage, ptr %msg, i32 0, i32 21
  %21 = getelementptr inbounds %struct.keyspan_usa28_portControlMessage, ptr %msg, i32 0, i32 22
  %22 = getelementptr inbounds %struct.keyspan_usa28_portControlMessage, ptr %msg, i32 0, i32 23
  %private.i = getelementptr inbounds %struct.usb_serial, ptr %serial, i32 0, i32 15
  %23 = call ptr @memset(ptr %msg, i32 255, i32 24)
  %24 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %private.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32, i32 8
  %26 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %driver_data.i.i, align 4
  %28 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %25, align 4
  %port_number = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 4
  %30 = ptrtoint ptr %port_number to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %port_number, align 4
  %conv = zext i8 %31 to i32
  %outcont_urb = getelementptr inbounds %struct.keyspan_port_private, ptr %27, i32 0, i32 9
  %32 = ptrtoint ptr %outcont_urb to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %outcont_urb, align 4
  %cmp = icmp eq ptr %33, null
  br i1 %cmp, label %do.body, label %if.end7

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @keyspan_usa28_send_setup.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@keyspan_usa28_send_setup, %if.then6)) #9
          to label %cleanup [label %if.then6], !srcloc !383

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @keyspan_usa28_send_setup.__UNIQUE_ID_ddebug298, ptr noundef %dev, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.61) #9
  br label %cleanup

if.end7:                                          ; preds = %entry
  %add = add i32 %reset_port, 1
  %resend_cont = getelementptr inbounds %struct.keyspan_port_private, ptr %27, i32 0, i32 24
  %34 = ptrtoint ptr %resend_cont to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %resend_cont, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %35)
  %cmp8 = icmp sgt i32 %add, %35
  br i1 %cmp8, label %if.then10, label %if.end7.if.end13_crit_edge

if.end7.if.end13_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

if.then10:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  %36 = ptrtoint ptr %resend_cont to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %add, ptr %resend_cont, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %if.end7.if.end13_crit_edge
  %status = getelementptr inbounds %struct.urb, ptr %33, i32 0, i32 12
  %37 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -115, i32 %38)
  %cmp14 = icmp eq i32 %38, -115
  br i1 %cmp14, label %do.body17, label %if.end35

do.body17:                                        ; preds = %if.end13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @keyspan_usa28_send_setup.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@keyspan_usa28_send_setup, %if.then29)) #9
          to label %do.end33 [label %if.then29], !srcloc !383

if.then29:                                        ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #11
  %dev30 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @keyspan_usa28_send_setup.__UNIQUE_ID_ddebug299, ptr noundef %dev30, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.61) #9
  br label %do.end33

do.end33:                                         ; preds = %if.then29, %do.body17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %39 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %39(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %40 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %40(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %41 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %41(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %42 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %42(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %43 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %43(i32 noundef 214748000) #9
  br label %cleanup

if.end35:                                         ; preds = %if.end13
  %44 = getelementptr inbounds i8, ptr %msg, i32 1
  %45 = call ptr @memset(ptr %44, i32 0, i32 23)
  %46 = ptrtoint ptr %msg to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 1, ptr %msg, align 1
  %calculate_baud_rate = getelementptr inbounds %struct.keyspan_device_details, ptr %29, i32 0, i32 12
  %47 = ptrtoint ptr %calculate_baud_rate to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %calculate_baud_rate, align 4
  %baud = getelementptr inbounds %struct.keyspan_port_private, ptr %27, i32 0, i32 11
  %49 = ptrtoint ptr %baud to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %baud, align 4
  %baudclk = getelementptr inbounds %struct.keyspan_device_details, ptr %29, i32 0, i32 13
  %51 = ptrtoint ptr %baudclk to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %baudclk, align 4
  %call36 = call i32 %48(ptr noundef %port, i32 noundef %50, i32 noundef %52, ptr noundef %1, ptr noundef %0, ptr noundef null, i32 noundef %conv) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call36)
  %cmp37 = icmp eq i32 %call36, -1
  br i1 %cmp37, label %do.body40, label %if.end35.if.end60_crit_edge

if.end35.if.end60_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end60

do.body40:                                        ; preds = %if.end35
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @keyspan_usa28_send_setup.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@keyspan_usa28_send_setup, %if.then52)) #9
          to label %do.end57 [label %if.then52], !srcloc !383

if.then52:                                        ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #11
  %dev53 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  %53 = ptrtoint ptr %baud to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %baud, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @keyspan_usa28_send_setup.__UNIQUE_ID_ddebug300, ptr noundef %dev53, ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.61, i32 noundef %54) #9
  br label %do.end57

do.end57:                                         ; preds = %if.then52, %do.body40
  %55 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 -1, ptr %0, align 1
  %56 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 -78, ptr %1, align 1
  br label %if.end60

if.end60:                                         ; preds = %do.end57, %if.end35.if.end60_crit_edge
  %57 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 0, ptr %2, align 1
  %flow_control = getelementptr inbounds %struct.keyspan_port_private, ptr %27, i32 0, i32 15
  %58 = ptrtoint ptr %flow_control to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %flow_control, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %59)
  %cmp61 = icmp eq i32 %59, 1
  %conv63 = zext i1 %cmp61 to i8
  %60 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %conv63, ptr %3, align 1
  %61 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 0, ptr %4, align 1
  %rts_state = getelementptr inbounds %struct.keyspan_port_private, ptr %27, i32 0, i32 16
  %62 = ptrtoint ptr %rts_state to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %rts_state, align 4
  %conv64 = trunc i32 %63 to i8
  %64 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %conv64, ptr %5, align 1
  %dtr_state = getelementptr inbounds %struct.keyspan_port_private, ptr %27, i32 0, i32 17
  %65 = ptrtoint ptr %dtr_state to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %dtr_state, align 4
  %conv65 = trunc i32 %66 to i8
  %67 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %conv65, ptr %6, align 1
  %68 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 16, ptr %7, align 1
  %69 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 10, ptr %8, align 1
  %70 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 45, ptr %9, align 1
  %71 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 17, ptr %10, align 1
  %72 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 19, ptr %11, align 1
  %73 = zext i32 %reset_port to i64
  call void @__sanitizer_cov_trace_switch(i64 %73, ptr @__sancov_gen_cov_switch_values.103)
  switch i32 %reset_port, label %if.else83 [
    i32 1, label %if.then68
    i32 2, label %if.then71
  ]

if.then68:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #11
  %74 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 1, ptr %12, align 1
  %75 = ptrtoint ptr %13 to i32
  call void @__asan_storeN_noabort(i32 %75, i32 4)
  store i32 0, ptr %13, align 1
  %76 = ptrtoint ptr %17 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 1, ptr %17, align 1
  %77 = ptrtoint ptr %18 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 0, ptr %18, align 1
  %78 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 1, ptr %19, align 1
  %79 = ptrtoint ptr %20 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 0, ptr %20, align 1
  %80 = ptrtoint ptr %21 to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 0, ptr %21, align 1
  %81 = ptrtoint ptr %22 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 -1, ptr %22, align 1
  br label %if.end102

if.then71:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #11
  %82 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 0, ptr %12, align 1
  %83 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 1, ptr %13, align 1
  %84 = ptrtoint ptr %14 to i32
  call void @__asan_storeN_noabort(i32 %84, i32 4)
  store i32 0, ptr %14, align 1
  %85 = ptrtoint ptr %18 to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 1, ptr %18, align 1
  %86 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 1, ptr %19, align 1
  %87 = ptrtoint ptr %20 to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 0, ptr %20, align 1
  %88 = ptrtoint ptr %21 to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 0, ptr %21, align 1
  %89 = ptrtoint ptr %22 to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 0, ptr %22, align 1
  br label %if.end102

if.else83:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #11
  %break_on = getelementptr inbounds %struct.keyspan_port_private, ptr %27, i32 0, i32 22
  %90 = ptrtoint ptr %break_on to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %break_on, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %tobool84.not = icmp eq i32 %91, 0
  %conv87 = zext i1 %tobool84.not to i8
  %92 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 %conv87, ptr %12, align 1
  %93 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 0, ptr %13, align 1
  %94 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 0, ptr %14, align 1
  %95 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 0, ptr %15, align 1
  %conv93 = trunc i32 %91 to i8
  %96 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 %conv93, ptr %16, align 1
  %97 = call ptr @memset(ptr %17, i32 0, i32 6)
  br label %if.end102

if.end102:                                        ; preds = %if.else83, %if.then71, %if.then68
  %98 = ptrtoint ptr %resend_cont to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 0, ptr %resend_cont, align 4
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %33, i32 0, i32 14
  %99 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %transfer_buffer, align 4
  %101 = call ptr @memcpy(ptr %100, ptr %msg, i32 24)
  %transfer_buffer_length = getelementptr inbounds %struct.urb, ptr %33, i32 0, i32 19
  %102 = ptrtoint ptr %transfer_buffer_length to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 24, ptr %transfer_buffer_length, align 4
  %call104 = call i32 @usb_submit_urb(ptr noundef nonnull %33, i32 noundef 2592) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call104)
  %cmp105.not = icmp eq i32 %call104, 0
  br i1 %cmp105.not, label %if.end102.cleanup_crit_edge, label %do.body108

if.end102.cleanup_crit_edge:                      ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body108:                                       ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @keyspan_usa28_send_setup.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@keyspan_usa28_send_setup, %if.then120)) #9
          to label %cleanup [label %if.then120], !srcloc !383

if.then120:                                       ; preds = %do.body108
  call void @__sanitizer_cov_trace_pc() #11
  %dev121 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @keyspan_usa28_send_setup.__UNIQUE_ID_ddebug301, ptr noundef %dev121, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.61) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then120, %do.body108, %if.end102.cleanup_crit_edge, %do.end33, %if.then6, %do.body
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @keyspan_usa49_send_setup(ptr noundef %serial, ptr noundef %port, i32 noundef %reset_port) unnamed_addr #2 align 64 {
entry:
  %msg = alloca %struct.keyspan_usa49_portControlMessage, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 34, ptr nonnull %msg) #9
  %0 = call ptr @memset(ptr %msg, i32 255, i32 34)
  %private.i = getelementptr inbounds %struct.usb_serial, ptr %serial, i32 0, i32 15
  %1 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %private.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32, i32 8
  %3 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %driver_data.i.i, align 4
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %2, align 4
  %glocont_urb = getelementptr inbounds %struct.keyspan_serial_private, ptr %2, i32 0, i32 5
  %7 = ptrtoint ptr %glocont_urb to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %glocont_urb, align 4
  %port_number = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 4
  %9 = ptrtoint ptr %port_number to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %port_number, align 4
  %conv = zext i8 %10 to i32
  %cmp = icmp eq ptr %8, null
  br i1 %cmp, label %do.body, label %do.body8

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @keyspan_usa49_send_setup.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@keyspan_usa49_send_setup, %if.then6)) #9
          to label %cleanup [label %if.then6], !srcloc !383

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @keyspan_usa49_send_setup.__UNIQUE_ID_ddebug302, ptr noundef %dev, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.67) #9
  br label %cleanup

do.body8:                                         ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @keyspan_usa49_send_setup.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@keyspan_usa49_send_setup, %if.then20)) #9
          to label %do.end24 [label %if.then20], !srcloc !383

if.then20:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #11
  %dev21 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  %pipe = getelementptr inbounds %struct.urb, ptr %8, i32 0, i32 10
  %11 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pipe, align 4
  %shr = lshr i32 %12, 15
  %and = and i32 %shr, 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @keyspan_usa49_send_setup.__UNIQUE_ID_ddebug303, ptr noundef %dev21, ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.67, i32 noundef %and, i32 noundef %conv) #9
  br label %do.end24

do.end24:                                         ; preds = %if.then20, %do.body8
  %add = add i32 %reset_port, 1
  %resend_cont = getelementptr inbounds %struct.keyspan_port_private, ptr %4, i32 0, i32 24
  %13 = ptrtoint ptr %resend_cont to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %resend_cont, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %14)
  %cmp25 = icmp sgt i32 %add, %14
  br i1 %cmp25, label %if.then27, label %do.end24.if.end30_crit_edge

do.end24.if.end30_crit_edge:                      ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30

if.then27:                                        ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %resend_cont to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %add, ptr %resend_cont, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.then27, %do.end24.if.end30_crit_edge
  %status = getelementptr inbounds %struct.urb, ptr %8, i32 0, i32 12
  %16 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -115, i32 %17)
  %cmp31 = icmp eq i32 %17, -115
  br i1 %cmp31, label %while.body.preheader, label %if.end35

while.body.preheader:                             ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %20(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %22(i32 noundef 214748000) #9
  br label %cleanup

if.end35:                                         ; preds = %if.end30
  %23 = getelementptr inbounds i8, ptr %msg, i32 1
  %24 = call ptr @memset(ptr %23, i32 0, i32 33)
  %25 = ptrtoint ptr %msg to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %10, ptr %msg, align 1
  %old_baud = getelementptr inbounds %struct.keyspan_port_private, ptr %4, i32 0, i32 12
  %26 = ptrtoint ptr %old_baud to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %old_baud, align 4
  %baud = getelementptr inbounds %struct.keyspan_port_private, ptr %4, i32 0, i32 11
  %28 = ptrtoint ptr %baud to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %baud, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %29)
  %cmp37.not = icmp eq i32 %27, %29
  br i1 %cmp37.not, label %if.end35.if.end69_crit_edge, label %if.then39

if.end35.if.end69_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then39:                                        ; preds = %if.end35
  %30 = ptrtoint ptr %old_baud to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %old_baud, align 4
  %setClocking = getelementptr inbounds %struct.keyspan_usa49_portControlMessage, ptr %msg, i32 0, i32 1
  %31 = ptrtoint ptr %setClocking to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 -1, ptr %setClocking, align 1
  %calculate_baud_rate = getelementptr inbounds %struct.keyspan_device_details, ptr %6, i32 0, i32 12
  %32 = ptrtoint ptr %calculate_baud_rate to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %calculate_baud_rate, align 4
  %baudclk = getelementptr inbounds %struct.keyspan_device_details, ptr %6, i32 0, i32 13
  %34 = ptrtoint ptr %baudclk to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %baudclk, align 4
  %baudHi = getelementptr inbounds %struct.keyspan_usa49_portControlMessage, ptr %msg, i32 0, i32 3
  %baudLo = getelementptr inbounds %struct.keyspan_usa49_portControlMessage, ptr %msg, i32 0, i32 2
  %prescaler = getelementptr inbounds %struct.keyspan_usa49_portControlMessage, ptr %msg, i32 0, i32 4
  %call43 = call i32 %33(ptr noundef %port, i32 noundef %29, i32 noundef %35, ptr noundef %baudHi, ptr noundef %baudLo, ptr noundef %prescaler, i32 noundef %conv) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call43)
  %cmp44 = icmp eq i32 %call43, -1
  br i1 %cmp44, label %do.body47, label %if.then39.if.end69_crit_edge

if.then39.if.end69_crit_edge:                     ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

do.body47:                                        ; preds = %if.then39
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @keyspan_usa49_send_setup.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@keyspan_usa49_send_setup, %if.then59)) #9
          to label %do.end64 [label %if.then59], !srcloc !383

if.then59:                                        ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #11
  %dev60 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  %36 = ptrtoint ptr %baud to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %baud, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @keyspan_usa49_send_setup.__UNIQUE_ID_ddebug304, ptr noundef %dev60, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.67, i32 noundef %37) #9
  br label %do.end64

do.end64:                                         ; preds = %if.then59, %do.body47
  %38 = ptrtoint ptr %baudLo to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 0, ptr %baudLo, align 1
  %39 = ptrtoint ptr %baudHi to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 125, ptr %baudHi, align 1
  %40 = ptrtoint ptr %prescaler to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 10, ptr %prescaler, align 1
  br label %if.end69

if.end69:                                         ; preds = %do.end64, %if.then39.if.end69_crit_edge, %if.end35.if.end69_crit_edge
  %cflag = getelementptr inbounds %struct.keyspan_port_private, ptr %4, i32 0, i32 13
  %41 = ptrtoint ptr %cflag to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %cflag, align 4
  %43 = trunc i32 %42 to i8
  %44 = lshr i8 %43, 4
  %conv72 = and i8 %44, 4
  %lcr = getelementptr inbounds %struct.keyspan_usa49_portControlMessage, ptr %msg, i32 0, i32 8
  %and74 = lshr i32 %42, 4
  %45 = and i32 %and74, 3
  %46 = zext i32 %45 to i64
  call void @__sanitizer_cov_trace_switch(i64 %46, ptr @__sancov_gen_cov_switch_values.104)
  switch i32 %45, label %if.end69.unreachabledefault [
    i32 0, label %if.end69.sw.epilog_crit_edge
    i32 1, label %sw.bb78
    i32 2, label %sw.bb83
    i32 3, label %sw.bb88
  ]

if.end69.sw.epilog_crit_edge:                     ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb78:                                          ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #11
  %47 = or i8 %conv72, 1
  br label %sw.epilog

sw.bb83:                                          ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #11
  %48 = or i8 %conv72, 2
  br label %sw.epilog

sw.bb88:                                          ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #11
  %49 = or i8 %conv72, 3
  br label %sw.epilog

if.end69.unreachabledefault:                      ; preds = %if.end69
  unreachable

sw.epilog:                                        ; preds = %sw.bb88, %sw.bb83, %sw.bb78, %if.end69.sw.epilog_crit_edge
  %.sink = phi i8 [ %49, %sw.bb88 ], [ %48, %sw.bb83 ], [ %47, %sw.bb78 ], [ %conv72, %if.end69.sw.epilog_crit_edge ]
  %50 = ptrtoint ptr %lcr to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %.sink, ptr %lcr, align 1
  %51 = ptrtoint ptr %cflag to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %cflag, align 4
  %and94 = and i32 %52, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and94)
  %tobool95.not = icmp eq i32 %and94, 0
  br i1 %tobool95.not, label %sw.epilog.if.end105_crit_edge, label %if.then96

sw.epilog.if.end105_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end105

if.then96:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %and98 = and i32 %52, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and98)
  %tobool99.not = icmp eq i32 %and98, 0
  %cond100 = select i1 %tobool99.not, i8 24, i8 8
  %53 = ptrtoint ptr %lcr to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %lcr, align 1
  %or103 = or i8 %54, %cond100
  store i8 %or103, ptr %lcr, align 1
  br label %if.end105

if.end105:                                        ; preds = %if.then96, %sw.epilog.if.end105_crit_edge
  %setLcr = getelementptr inbounds %struct.keyspan_usa49_portControlMessage, ptr %msg, i32 0, i32 7
  %55 = ptrtoint ptr %setLcr to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 -1, ptr %setLcr, align 1
  %flow_control = getelementptr inbounds %struct.keyspan_port_private, ptr %4, i32 0, i32 15
  %56 = ptrtoint ptr %flow_control to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %flow_control, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %57)
  %cmp106 = icmp eq i32 %57, 1
  %conv108 = zext i1 %cmp106 to i8
  %ctsFlowControl = getelementptr inbounds %struct.keyspan_usa49_portControlMessage, ptr %msg, i32 0, i32 10
  %58 = ptrtoint ptr %ctsFlowControl to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %conv108, ptr %ctsFlowControl, align 1
  %xonFlowControl = getelementptr inbounds %struct.keyspan_usa49_portControlMessage, ptr %msg, i32 0, i32 11
  %59 = ptrtoint ptr %xonFlowControl to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 0, ptr %xonFlowControl, align 1
  %setFlowControl = getelementptr inbounds %struct.keyspan_usa49_portControlMessage, ptr %msg, i32 0, i32 9
  %60 = ptrtoint ptr %setFlowControl to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 -1, ptr %setFlowControl, align 1
  %forwardingLength = getelementptr inbounds %struct.keyspan_usa49_portControlMessage, ptr %msg, i32 0, i32 18
  %61 = ptrtoint ptr %forwardingLength to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 16, ptr %forwardingLength, align 1
  %xonChar = getelementptr inbounds %struct.keyspan_usa49_portControlMessage, ptr %msg, i32 0, i32 12
  %62 = ptrtoint ptr %xonChar to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 17, ptr %xonChar, align 1
  %xoffChar = getelementptr inbounds %struct.keyspan_usa49_portControlMessage, ptr %msg, i32 0, i32 13
  %63 = ptrtoint ptr %xoffChar to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 19, ptr %xoffChar, align 1
  %64 = zext i32 %reset_port to i64
  call void @__sanitizer_cov_trace_switch(i64 %64, ptr @__sancov_gen_cov_switch_values.105)
  switch i32 %reset_port, label %if.else127 [
    i32 1, label %if.then111
    i32 2, label %if.then114
  ]

if.then111:                                       ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #11
  %_txOn = getelementptr inbounds %struct.keyspan_usa49_portControlMessage, ptr %msg, i32 0, i32 22
  %65 = ptrtoint ptr %_txOn to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 1, ptr %_txOn, align 1
  %_txOff = getelementptr inbounds %struct.keyspan_usa49_portControlMessage, ptr %msg, i32 0, i32 23
  %66 = ptrtoint ptr %_txOff to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 0, ptr %_txOff, align 1
  %txFlush = getelementptr inbounds %struct.keyspan_usa49_portControlMessage, ptr %msg, i32 0, i32 24
  %67 = ptrtoint ptr %txFlush to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 0, ptr %txFlush, align 1
  %txBreak = getelementptr inbounds %struct.keyspan_usa49_portControlMessage, ptr %msg, i32 0, i32 25
  %68 = ptrtoint ptr %txBreak to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 0, ptr %txBreak, align 1
  %rxOn = getelementptr inbounds %struct.keyspan_usa49_portControlMessage, ptr %msg, i32 0, i32 26
  %69 = ptrtoint ptr %rxOn to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 1, ptr %rxOn, align 1
  %rxOff = getelementptr inbounds %struct.keyspan_usa49_portControlMessage, ptr %msg, i32 0, i32 27
  %70 = ptrtoint ptr %rxOff to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 0, ptr %rxOff, align 1
  %rxFlush = getelementptr inbounds %struct.keyspan_usa49_portControlMessage, ptr %msg, i32 0, i32 28
  %71 = ptrtoint ptr %rxFlush to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 1, ptr %rxFlush, align 1
  %rxForward = getelementptr inbounds %struct.keyspan_usa49_portControlMessage, ptr %msg, i32 0, i32 29
  %72 = ptrtoint ptr %rxForward to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 0, ptr %rxForward, align 1
  %returnStatus = getelementptr inbounds %struct.keyspan_usa49_portControlMessage, ptr %msg, i32 0, i32 30
  %73 = ptrtoint ptr %returnStatus to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 0, ptr %returnStatus, align 1
  %resetDataToggle = getelementptr inbounds %struct.keyspan_usa49_portControlMessage, ptr %msg, i32 0, i32 31
  %74 = ptrtoint ptr %resetDataToggle to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 -1, ptr %resetDataToggle, align 1
  %enablePort = getelementptr inbounds %struct.keyspan_usa49_portControlMessage, ptr %msg, i32 0, i32 32
  %75 = ptrtoint ptr %enablePort to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 1, ptr %enablePort, align 1
  %disablePort = getelementptr inbounds %struct.keyspan_usa49_portControlMessage, ptr %msg, i32 0, i32 33
  %76 = ptrtoint ptr %disablePort to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 0, ptr %disablePort, align 1
  br label %if.end147

if.then114:                                       ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #11
  %_txOn115 = getelementptr inbounds %struct.keyspan_usa49_portControlMessage, ptr %msg, i32 0, i32 22
  %77 = ptrtoint ptr %_txOn115 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 0, ptr %_txOn115, align 1
  %_txOff116 = getelementptr inbounds %struct.keyspan_usa49_portControlMessage, ptr %msg, i32 0, i32 23
  %78 = ptrtoint ptr %_txOff116 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 1, ptr %_txOff116, align 1
  %txFlush117 = getelementptr inbounds %struct.keyspan_usa49_portControlMessage, ptr %msg, i32 0, i32 24
  %79 = ptrtoint ptr %txFlush117 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 0, ptr %txFlush117, align 1
  %txBreak118 = getelementptr inbounds %struct.keyspan_usa49_portControlMessage, ptr %msg, i32 0, i32 25
  %80 = ptrtoint ptr %txBreak118 to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 0, ptr %txBreak118, align 1
  %rxOn119 = getelementptr inbounds %struct.keyspan_usa49_portControlMessage, ptr %msg, i32 0, i32 26
  %81 = ptrtoint ptr %rxOn119 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 0, ptr %rxOn119, align 1
  %rxOff120 = getelementptr inbounds %struct.keyspan_usa49_portControlMessage, ptr %msg, i32 0, i32 27
  %82 = ptrtoint ptr %rxOff120 to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 1, ptr %rxOff120, align 1
  %rxFlush121 = getelementptr inbounds %struct.keyspan_usa49_portControlMessage, ptr %msg, i32 0, i32 28
  %83 = ptrtoint ptr %rxFlush121 to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 1, ptr %rxFlush121, align 1
  %rxForward122 = getelementptr inbounds %struct.keyspan_usa49_portControlMessage, ptr %msg, i32 0, i32 29
  %disablePort126 = getelementptr inbounds %struct.keyspan_usa49_portControlMessage, ptr %msg, i32 0, i32 33
  %84 = ptrtoint ptr %rxForward122 to i32
  call void @__asan_storeN_noabort(i32 %84, i32 4)
  store i32 0, ptr %rxForward122, align 1
  %85 = ptrtoint ptr %disablePort126 to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 1, ptr %disablePort126, align 1
  br label %if.end147

if.else127:                                       ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #11
  %break_on = getelementptr inbounds %struct.keyspan_port_private, ptr %4, i32 0, i32 22
  %86 = ptrtoint ptr %break_on to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %break_on, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %tobool128.not = icmp eq i32 %87, 0
  %conv131 = zext i1 %tobool128.not to i8
  %_txOn132 = getelementptr inbounds %struct.keyspan_usa49_portControlMessage, ptr %msg, i32 0, i32 22
  %88 = ptrtoint ptr %_txOn132 to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 %conv131, ptr %_txOn132, align 1
  %_txOff133 = getelementptr inbounds %struct.keyspan_usa49_portControlMessage, ptr %msg, i32 0, i32 23
  %89 = ptrtoint ptr %_txOff133 to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 0, ptr %_txOff133, align 1
  %txFlush134 = getelementptr inbounds %struct.keyspan_usa49_portControlMessage, ptr %msg, i32 0, i32 24
  %90 = ptrtoint ptr %txFlush134 to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 0, ptr %txFlush134, align 1
  %conv136 = trunc i32 %87 to i8
  %txBreak137 = getelementptr inbounds %struct.keyspan_usa49_portControlMessage, ptr %msg, i32 0, i32 25
  %91 = ptrtoint ptr %txBreak137 to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 %conv136, ptr %txBreak137, align 1
  %rxOn138 = getelementptr inbounds %struct.keyspan_usa49_portControlMessage, ptr %msg, i32 0, i32 26
  %92 = ptrtoint ptr %rxOn138 to i32
  call void @__asan_storeN_noabort(i32 %92, i32 8)
  store i64 0, ptr %rxOn138, align 1
  br label %if.end147

if.end147:                                        ; preds = %if.else127, %if.then114, %if.then111
  %setRts = getelementptr inbounds %struct.keyspan_usa49_portControlMessage, ptr %msg, i32 0, i32 14
  %93 = ptrtoint ptr %setRts to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 -1, ptr %setRts, align 1
  %rts_state = getelementptr inbounds %struct.keyspan_port_private, ptr %4, i32 0, i32 16
  %94 = ptrtoint ptr %rts_state to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %rts_state, align 4
  %conv148 = trunc i32 %95 to i8
  %rts = getelementptr inbounds %struct.keyspan_usa49_portControlMessage, ptr %msg, i32 0, i32 15
  %96 = ptrtoint ptr %rts to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 %conv148, ptr %rts, align 1
  %setDtr = getelementptr inbounds %struct.keyspan_usa49_portControlMessage, ptr %msg, i32 0, i32 16
  %97 = ptrtoint ptr %setDtr to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 -1, ptr %setDtr, align 1
  %dtr_state = getelementptr inbounds %struct.keyspan_port_private, ptr %4, i32 0, i32 17
  %98 = ptrtoint ptr %dtr_state to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %dtr_state, align 4
  %conv149 = trunc i32 %99 to i8
  %dtr = getelementptr inbounds %struct.keyspan_usa49_portControlMessage, ptr %msg, i32 0, i32 17
  %100 = ptrtoint ptr %dtr to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 %conv149, ptr %dtr, align 1
  %101 = ptrtoint ptr %resend_cont to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 0, ptr %resend_cont, align 4
  %102 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 305, i32 %103)
  %cmp151 = icmp eq i32 %103, 305
  br i1 %cmp151, label %if.then153, label %if.else159

if.then153:                                       ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #11
  %ctrl_buf = getelementptr inbounds %struct.keyspan_serial_private, ptr %2, i32 0, i32 7
  %104 = ptrtoint ptr %ctrl_buf to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %ctrl_buf, align 4
  %106 = ptrtoint ptr %105 to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 64, ptr %105, align 1
  %bRequest = getelementptr inbounds %struct.usb_ctrlrequest, ptr %105, i32 0, i32 1
  %107 = ptrtoint ptr %bRequest to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 -80, ptr %bRequest, align 1
  %wValue = getelementptr inbounds %struct.usb_ctrlrequest, ptr %105, i32 0, i32 2
  %108 = ptrtoint ptr %wValue to i32
  call void @__asan_storeN_noabort(i32 %108, i32 2)
  store i16 0, ptr %wValue, align 1
  %wIndex = getelementptr inbounds %struct.usb_ctrlrequest, ptr %105, i32 0, i32 3
  %109 = ptrtoint ptr %wIndex to i32
  call void @__asan_storeN_noabort(i32 %109, i32 2)
  store i16 0, ptr %wIndex, align 1
  %wLength = getelementptr inbounds %struct.usb_ctrlrequest, ptr %105, i32 0, i32 4
  %110 = ptrtoint ptr %wLength to i32
  call void @__asan_storeN_noabort(i32 %110, i32 2)
  store i16 8704, ptr %wLength, align 1
  %glocont_buf = getelementptr inbounds %struct.keyspan_serial_private, ptr %2, i32 0, i32 6
  %111 = ptrtoint ptr %glocont_buf to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %glocont_buf, align 4
  %113 = call ptr @memcpy(ptr %112, ptr %msg, i32 34)
  %114 = ptrtoint ptr %serial to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %serial, align 4
  %116 = ptrtoint ptr %115 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %115, align 8
  %shl.i = shl i32 %117, 8
  %or157 = or i32 %shl.i, -2147483648
  %118 = load ptr, ptr %glocont_buf, align 4
  %dev1.i = getelementptr inbounds %struct.urb, ptr %8, i32 0, i32 8
  %119 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr %115, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %8, i32 0, i32 10
  %120 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %or157, ptr %pipe2.i, align 4
  %setup_packet3.i = getelementptr inbounds %struct.urb, ptr %8, i32 0, i32 21
  %121 = ptrtoint ptr %setup_packet3.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr %105, ptr %setup_packet3.i, align 4
  %transfer_buffer4.i = getelementptr inbounds %struct.urb, ptr %8, i32 0, i32 14
  %122 = ptrtoint ptr %transfer_buffer4.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr %118, ptr %transfer_buffer4.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %8, i32 0, i32 28
  %123 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr @usa49_glocont_callback, ptr %complete.i, align 4
  %context5.i = getelementptr inbounds %struct.urb, ptr %8, i32 0, i32 27
  %124 = ptrtoint ptr %context5.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr %serial, ptr %context5.i, align 4
  br label %if.end160

if.else159:                                       ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #11
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %8, i32 0, i32 14
  %125 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %transfer_buffer, align 4
  %127 = call ptr @memcpy(ptr %126, ptr %msg, i32 34)
  br label %if.end160

if.end160:                                        ; preds = %if.else159, %if.then153
  %128 = getelementptr inbounds %struct.urb, ptr %8, i32 0, i32 19
  %129 = ptrtoint ptr %128 to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 34, ptr %128, align 4
  %call161 = call i32 @usb_submit_urb(ptr noundef nonnull %8, i32 noundef 2592) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call161)
  %cmp162.not = icmp eq i32 %call161, 0
  br i1 %cmp162.not, label %if.end160.cleanup_crit_edge, label %do.body165

if.end160.cleanup_crit_edge:                      ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body165:                                       ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @keyspan_usa49_send_setup.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@keyspan_usa49_send_setup, %if.then177)) #9
          to label %cleanup [label %if.then177], !srcloc !383

if.then177:                                       ; preds = %do.body165
  call void @__sanitizer_cov_trace_pc() #11
  %dev178 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @keyspan_usa49_send_setup.__UNIQUE_ID_ddebug305, ptr noundef %dev178, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.67, i32 noundef %call161) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then177, %do.body165, %if.end160.cleanup_crit_edge, %while.body.preheader, %if.then6, %do.body
  call void @llvm.lifetime.end.p0(i64 34, ptr nonnull %msg) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @keyspan_usa90_send_setup(ptr nocapture noundef readonly %serial, ptr noundef %port, i32 noundef %reset_port) unnamed_addr #2 align 64 {
entry:
  %msg = alloca %struct.keyspan_usa90_portControlMessage, align 1
  %prescaler = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 34, ptr nonnull %msg) #9
  %0 = call ptr @memset(ptr %msg, i32 255, i32 34)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %prescaler) #9
  %1 = ptrtoint ptr %prescaler to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %prescaler, align 1, !annotation !384
  %private.i = getelementptr inbounds %struct.usb_serial, ptr %serial, i32 0, i32 15
  %2 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %outcont_urb = getelementptr inbounds %struct.keyspan_port_private, ptr %5, i32 0, i32 9
  %8 = ptrtoint ptr %outcont_urb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %outcont_urb, align 4
  %cmp = icmp eq ptr %9, null
  br i1 %cmp, label %do.body, label %if.end6

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @keyspan_usa90_send_setup.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@keyspan_usa90_send_setup, %if.then5)) #9
          to label %cleanup [label %if.then5], !srcloc !383

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @keyspan_usa90_send_setup.__UNIQUE_ID_ddebug306, ptr noundef %dev, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.74) #9
  br label %cleanup

if.end6:                                          ; preds = %entry
  %add = add i32 %reset_port, 1
  %resend_cont = getelementptr inbounds %struct.keyspan_port_private, ptr %5, i32 0, i32 24
  %10 = ptrtoint ptr %resend_cont to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %resend_cont, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %11)
  %cmp7 = icmp sgt i32 %add, %11
  br i1 %cmp7, label %if.then8, label %if.end6.if.end11_crit_edge

if.end6.if.end11_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %resend_cont to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %add, ptr %resend_cont, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %if.end6.if.end11_crit_edge
  %status = getelementptr inbounds %struct.urb, ptr %9, i32 0, i32 12
  %13 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -115, i32 %14)
  %cmp12 = icmp eq i32 %14, -115
  br i1 %cmp12, label %do.body14, label %if.end32

do.body14:                                        ; preds = %if.end11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @keyspan_usa90_send_setup.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@keyspan_usa90_send_setup, %if.then26)) #9
          to label %do.end30 [label %if.then26], !srcloc !383

if.then26:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #11
  %dev27 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @keyspan_usa90_send_setup.__UNIQUE_ID_ddebug307, ptr noundef %dev27, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.74) #9
  br label %do.end30

do.end30:                                         ; preds = %if.then26, %do.body14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 214748000) #9
  br label %cleanup

if.end32:                                         ; preds = %if.end11
  %20 = call ptr @memset(ptr %msg, i32 0, i32 34)
  %old_baud = getelementptr inbounds %struct.keyspan_port_private, ptr %5, i32 0, i32 12
  %21 = ptrtoint ptr %old_baud to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %old_baud, align 4
  %baud = getelementptr inbounds %struct.keyspan_port_private, ptr %5, i32 0, i32 11
  %23 = ptrtoint ptr %baud to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %baud, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %24)
  %cmp33.not = icmp eq i32 %22, %24
  br i1 %cmp33.not, label %if.end32.if.end67_crit_edge, label %if.then34

if.end32.if.end67_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end67

if.then34:                                        ; preds = %if.end32
  %25 = ptrtoint ptr %old_baud to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %old_baud, align 4
  %26 = ptrtoint ptr %msg to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 1, ptr %msg, align 1
  %calculate_baud_rate = getelementptr inbounds %struct.keyspan_device_details, ptr %7, i32 0, i32 12
  %27 = ptrtoint ptr %calculate_baud_rate to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %calculate_baud_rate, align 4
  %baudclk = getelementptr inbounds %struct.keyspan_device_details, ptr %7, i32 0, i32 13
  %29 = ptrtoint ptr %baudclk to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %baudclk, align 4
  %baudHi = getelementptr inbounds %struct.keyspan_usa90_portControlMessage, ptr %msg, i32 0, i32 2
  %baudLo = getelementptr inbounds %struct.keyspan_usa90_portControlMessage, ptr %msg, i32 0, i32 1
  %call38 = call i32 %28(ptr noundef %port, i32 noundef %24, i32 noundef %30, ptr noundef %baudHi, ptr noundef %baudLo, ptr noundef nonnull %prescaler, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call38)
  %cmp39 = icmp eq i32 %call38, -1
  br i1 %cmp39, label %do.body41, label %if.then34.if.end66_crit_edge

if.then34.if.end66_crit_edge:                     ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end66

do.body41:                                        ; preds = %if.then34
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @keyspan_usa90_send_setup.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@keyspan_usa90_send_setup, %if.then53)) #9
          to label %do.end58 [label %if.then53], !srcloc !383

if.then53:                                        ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #11
  %dev54 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  %31 = ptrtoint ptr %baud to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %baud, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @keyspan_usa90_send_setup.__UNIQUE_ID_ddebug308, ptr noundef %dev54, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.74, i32 noundef %32) #9
  br label %do.end58

do.end58:                                         ; preds = %if.then53, %do.body41
  %33 = ptrtoint ptr %baud to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 9600, ptr %baud, align 4
  %34 = ptrtoint ptr %calculate_baud_rate to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %calculate_baud_rate, align 4
  %36 = ptrtoint ptr %baudclk to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %baudclk, align 4
  %call65 = call i32 %35(ptr noundef %port, i32 noundef 9600, i32 noundef %37, ptr noundef %baudHi, ptr noundef %baudLo, ptr noundef nonnull %prescaler, i32 noundef 0) #9
  br label %if.end66

if.end66:                                         ; preds = %do.end58, %if.then34.if.end66_crit_edge
  %setRxMode = getelementptr inbounds %struct.keyspan_usa90_portControlMessage, ptr %msg, i32 0, i32 5
  %38 = ptrtoint ptr %setRxMode to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 1, ptr %setRxMode, align 1
  %setTxMode = getelementptr inbounds %struct.keyspan_usa90_portControlMessage, ptr %msg, i32 0, i32 7
  %39 = ptrtoint ptr %setTxMode to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 1, ptr %setTxMode, align 1
  %40 = ptrtoint ptr %baud to i32
  call void @__asan_load4_noabort(i32 %40)
  %.pr = load i32, ptr %baud, align 4
  br label %if.end67

if.end67:                                         ; preds = %if.end66, %if.end32.if.end67_crit_edge
  %41 = phi i32 [ %.pr, %if.end66 ], [ %22, %if.end32.if.end67_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 57600, i32 %41)
  %cmp69 = icmp sgt i32 %41, 57600
  %spec.select = select i1 %cmp69, i8 2, i8 0
  %42 = getelementptr inbounds %struct.keyspan_usa90_portControlMessage, ptr %msg, i32 0, i32 6
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %spec.select, ptr %42, align 1
  %44 = getelementptr inbounds %struct.keyspan_usa90_portControlMessage, ptr %msg, i32 0, i32 8
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %spec.select, ptr %44, align 1
  %cflag = getelementptr inbounds %struct.keyspan_port_private, ptr %5, i32 0, i32 13
  %46 = ptrtoint ptr %cflag to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %cflag, align 4
  %48 = trunc i32 %47 to i8
  %49 = lshr i8 %48, 4
  %conv = and i8 %49, 4
  %lcr = getelementptr inbounds %struct.keyspan_usa90_portControlMessage, ptr %msg, i32 0, i32 4
  %and76 = lshr i32 %47, 4
  %50 = and i32 %and76, 3
  %51 = zext i32 %50 to i64
  call void @__sanitizer_cov_trace_switch(i64 %51, ptr @__sancov_gen_cov_switch_values.106)
  switch i32 %50, label %if.end73.unreachabledefault [
    i32 0, label %if.end67.sw.epilog_crit_edge
    i32 1, label %sw.bb80
    i32 2, label %sw.bb85
    i32 3, label %sw.bb90
  ]

if.end67.sw.epilog_crit_edge:                     ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb80:                                          ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #11
  %52 = or i8 %conv, 1
  br label %sw.epilog

sw.bb85:                                          ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #11
  %53 = or i8 %conv, 2
  br label %sw.epilog

sw.bb90:                                          ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #11
  %54 = or i8 %conv, 3
  br label %sw.epilog

if.end73.unreachabledefault:                      ; preds = %if.end67
  unreachable

sw.epilog:                                        ; preds = %sw.bb90, %sw.bb85, %sw.bb80, %if.end67.sw.epilog_crit_edge
  %.sink = phi i8 [ %54, %sw.bb90 ], [ %53, %sw.bb85 ], [ %52, %sw.bb80 ], [ %conv, %if.end67.sw.epilog_crit_edge ]
  %55 = ptrtoint ptr %lcr to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %.sink, ptr %lcr, align 1
  %56 = ptrtoint ptr %cflag to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %cflag, align 4
  %and96 = and i32 %57, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and96)
  %tobool97.not = icmp eq i32 %and96, 0
  br i1 %tobool97.not, label %sw.epilog.if.end107_crit_edge, label %if.then98

sw.epilog.if.end107_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end107

if.then98:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %and100 = and i32 %57, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and100)
  %tobool101.not = icmp eq i32 %and100, 0
  %cond102 = select i1 %tobool101.not, i8 24, i8 8
  %58 = ptrtoint ptr %lcr to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %lcr, align 1
  %or105 = or i8 %59, %cond102
  store i8 %or105, ptr %lcr, align 1
  br label %if.end107

if.end107:                                        ; preds = %if.then98, %sw.epilog.if.end107_crit_edge
  %old_cflag = getelementptr inbounds %struct.keyspan_port_private, ptr %5, i32 0, i32 14
  %60 = ptrtoint ptr %old_cflag to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %old_cflag, align 4
  %62 = ptrtoint ptr %cflag to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %cflag, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %61, i32 %63)
  %cmp109.not = icmp eq i32 %61, %63
  br i1 %cmp109.not, label %if.end107.if.end114_crit_edge, label %if.then111

if.end107.if.end114_crit_edge:                    ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end114

if.then111:                                       ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #11
  %64 = ptrtoint ptr %old_cflag to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %old_cflag, align 4
  %setLcr = getelementptr inbounds %struct.keyspan_usa90_portControlMessage, ptr %msg, i32 0, i32 3
  %65 = ptrtoint ptr %setLcr to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 1, ptr %setLcr, align 1
  br label %if.end114

if.end114:                                        ; preds = %if.then111, %if.end107.if.end114_crit_edge
  %flow_control = getelementptr inbounds %struct.keyspan_port_private, ptr %5, i32 0, i32 15
  %66 = ptrtoint ptr %flow_control to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %flow_control, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %67)
  %cmp115 = icmp eq i32 %67, 1
  br i1 %cmp115, label %if.then117, label %if.end114.if.end118_crit_edge

if.end114.if.end118_crit_edge:                    ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end118

if.then117:                                       ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #11
  %txFlowControl = getelementptr inbounds %struct.keyspan_usa90_portControlMessage, ptr %msg, i32 0, i32 10
  %68 = ptrtoint ptr %txFlowControl to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 4, ptr %txFlowControl, align 1
  br label %if.end118

if.end118:                                        ; preds = %if.then117, %if.end114.if.end118_crit_edge
  %setTxFlowControl = getelementptr inbounds %struct.keyspan_usa90_portControlMessage, ptr %msg, i32 0, i32 9
  %69 = ptrtoint ptr %setTxFlowControl to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 1, ptr %setTxFlowControl, align 1
  %setRxFlowControl = getelementptr inbounds %struct.keyspan_usa90_portControlMessage, ptr %msg, i32 0, i32 11
  %70 = ptrtoint ptr %setRxFlowControl to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 1, ptr %setRxFlowControl, align 1
  %rxForwardingLength = getelementptr inbounds %struct.keyspan_usa90_portControlMessage, ptr %msg, i32 0, i32 23
  %71 = ptrtoint ptr %rxForwardingLength to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 16, ptr %rxForwardingLength, align 1
  %rxForwardingTimeout = getelementptr inbounds %struct.keyspan_usa90_portControlMessage, ptr %msg, i32 0, i32 24
  %72 = ptrtoint ptr %rxForwardingTimeout to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 16, ptr %rxForwardingTimeout, align 1
  %txAckSetting = getelementptr inbounds %struct.keyspan_usa90_portControlMessage, ptr %msg, i32 0, i32 25
  %73 = ptrtoint ptr %txAckSetting to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 0, ptr %txAckSetting, align 1
  %xonChar = getelementptr inbounds %struct.keyspan_usa90_portControlMessage, ptr %msg, i32 0, i32 15
  %74 = ptrtoint ptr %xonChar to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 17, ptr %xonChar, align 1
  %xoffChar = getelementptr inbounds %struct.keyspan_usa90_portControlMessage, ptr %msg, i32 0, i32 16
  %75 = ptrtoint ptr %xoffChar to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 19, ptr %xoffChar, align 1
  %76 = zext i32 %reset_port to i64
  call void @__sanitizer_cov_trace_switch(i64 %76, ptr @__sancov_gen_cov_switch_values.107)
  switch i32 %reset_port, label %if.else128 [
    i32 1, label %if.then121
    i32 2, label %if.then126
  ]

if.then121:                                       ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #11
  %portEnabled = getelementptr inbounds %struct.keyspan_usa90_portControlMessage, ptr %msg, i32 0, i32 26
  %77 = ptrtoint ptr %portEnabled to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 1, ptr %portEnabled, align 1
  %rxFlush = getelementptr inbounds %struct.keyspan_usa90_portControlMessage, ptr %msg, i32 0, i32 30
  %78 = ptrtoint ptr %rxFlush to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 1, ptr %rxFlush, align 1
  %break_on = getelementptr inbounds %struct.keyspan_port_private, ptr %5, i32 0, i32 22
  %79 = ptrtoint ptr %break_on to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %break_on, align 4
  %conv122 = trunc i32 %80 to i8
  %txBreak = getelementptr inbounds %struct.keyspan_usa90_portControlMessage, ptr %msg, i32 0, i32 28
  %81 = ptrtoint ptr %txBreak to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %conv122, ptr %txBreak, align 1
  br label %if.end134

if.then126:                                       ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #11
  %portEnabled127 = getelementptr inbounds %struct.keyspan_usa90_portControlMessage, ptr %msg, i32 0, i32 26
  %82 = ptrtoint ptr %portEnabled127 to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 0, ptr %portEnabled127, align 1
  br label %if.end134

if.else128:                                       ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #11
  %portEnabled129 = getelementptr inbounds %struct.keyspan_usa90_portControlMessage, ptr %msg, i32 0, i32 26
  %83 = ptrtoint ptr %portEnabled129 to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 1, ptr %portEnabled129, align 1
  %break_on130 = getelementptr inbounds %struct.keyspan_port_private, ptr %5, i32 0, i32 22
  %84 = ptrtoint ptr %break_on130 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %break_on130, align 4
  %conv131 = trunc i32 %85 to i8
  %txBreak132 = getelementptr inbounds %struct.keyspan_usa90_portControlMessage, ptr %msg, i32 0, i32 28
  %86 = ptrtoint ptr %txBreak132 to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 %conv131, ptr %txBreak132, align 1
  br label %if.end134

if.end134:                                        ; preds = %if.else128, %if.then126, %if.then121
  %setRts = getelementptr inbounds %struct.keyspan_usa90_portControlMessage, ptr %msg, i32 0, i32 19
  %87 = ptrtoint ptr %setRts to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 1, ptr %setRts, align 1
  %rts_state = getelementptr inbounds %struct.keyspan_port_private, ptr %5, i32 0, i32 16
  %88 = ptrtoint ptr %rts_state to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %rts_state, align 4
  %conv135 = trunc i32 %89 to i8
  %rts = getelementptr inbounds %struct.keyspan_usa90_portControlMessage, ptr %msg, i32 0, i32 20
  %90 = ptrtoint ptr %rts to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 %conv135, ptr %rts, align 1
  %setDtr = getelementptr inbounds %struct.keyspan_usa90_portControlMessage, ptr %msg, i32 0, i32 21
  %91 = ptrtoint ptr %setDtr to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 1, ptr %setDtr, align 1
  %dtr_state = getelementptr inbounds %struct.keyspan_port_private, ptr %5, i32 0, i32 17
  %92 = ptrtoint ptr %dtr_state to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %dtr_state, align 4
  %conv136 = trunc i32 %93 to i8
  %dtr = getelementptr inbounds %struct.keyspan_usa90_portControlMessage, ptr %msg, i32 0, i32 22
  %94 = ptrtoint ptr %dtr to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 %conv136, ptr %dtr, align 1
  %95 = ptrtoint ptr %resend_cont to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 0, ptr %resend_cont, align 4
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %9, i32 0, i32 14
  %96 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %transfer_buffer, align 4
  %98 = call ptr @memcpy(ptr %97, ptr %msg, i32 34)
  %transfer_buffer_length = getelementptr inbounds %struct.urb, ptr %9, i32 0, i32 19
  %99 = ptrtoint ptr %transfer_buffer_length to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 34, ptr %transfer_buffer_length, align 4
  %call138 = call i32 @usb_submit_urb(ptr noundef nonnull %9, i32 noundef 2592) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call138)
  %cmp139.not = icmp eq i32 %call138, 0
  br i1 %cmp139.not, label %if.end134.cleanup_crit_edge, label %do.body142

if.end134.cleanup_crit_edge:                      ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body142:                                       ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @keyspan_usa90_send_setup.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@keyspan_usa90_send_setup, %if.then154)) #9
          to label %cleanup [label %if.then154], !srcloc !383

if.then154:                                       ; preds = %do.body142
  call void @__sanitizer_cov_trace_pc() #11
  %dev155 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @keyspan_usa90_send_setup.__UNIQUE_ID_ddebug309, ptr noundef %dev155, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.74, i32 noundef %call138) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then154, %do.body142, %if.end134.cleanup_crit_edge, %do.end30, %if.then5, %do.body
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %prescaler) #9
  call void @llvm.lifetime.end.p0(i64 34, ptr nonnull %msg) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @keyspan_usa67_send_setup(ptr nocapture noundef readonly %serial, ptr noundef %port, i32 noundef %reset_port) unnamed_addr #2 align 64 {
entry:
  %msg = alloca %struct.keyspan_usa67_portControlMessage, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %msg) #9
  %0 = getelementptr inbounds %struct.keyspan_usa67_portControlMessage, ptr %msg, i32 0, i32 1
  %1 = getelementptr inbounds %struct.keyspan_usa67_portControlMessage, ptr %msg, i32 0, i32 2
  %2 = getelementptr inbounds %struct.keyspan_usa67_portControlMessage, ptr %msg, i32 0, i32 3
  %3 = getelementptr inbounds %struct.keyspan_usa67_portControlMessage, ptr %msg, i32 0, i32 5
  %4 = getelementptr inbounds %struct.keyspan_usa67_portControlMessage, ptr %msg, i32 0, i32 6
  %5 = getelementptr inbounds %struct.keyspan_usa67_portControlMessage, ptr %msg, i32 0, i32 7
  %6 = getelementptr inbounds %struct.keyspan_usa67_portControlMessage, ptr %msg, i32 0, i32 8
  %7 = getelementptr inbounds %struct.keyspan_usa67_portControlMessage, ptr %msg, i32 0, i32 9
  %8 = getelementptr inbounds %struct.keyspan_usa67_portControlMessage, ptr %msg, i32 0, i32 10
  %9 = getelementptr inbounds %struct.keyspan_usa67_portControlMessage, ptr %msg, i32 0, i32 11
  %10 = getelementptr inbounds %struct.keyspan_usa67_portControlMessage, ptr %msg, i32 0, i32 12
  %11 = getelementptr inbounds %struct.keyspan_usa67_portControlMessage, ptr %msg, i32 0, i32 13
  %12 = getelementptr inbounds %struct.keyspan_usa67_portControlMessage, ptr %msg, i32 0, i32 14
  %13 = getelementptr inbounds %struct.keyspan_usa67_portControlMessage, ptr %msg, i32 0, i32 15
  %14 = getelementptr inbounds %struct.keyspan_usa67_portControlMessage, ptr %msg, i32 0, i32 16
  %15 = getelementptr inbounds %struct.keyspan_usa67_portControlMessage, ptr %msg, i32 0, i32 17
  %16 = getelementptr inbounds %struct.keyspan_usa67_portControlMessage, ptr %msg, i32 0, i32 18
  %17 = getelementptr inbounds %struct.keyspan_usa67_portControlMessage, ptr %msg, i32 0, i32 22
  %18 = getelementptr inbounds %struct.keyspan_usa67_portControlMessage, ptr %msg, i32 0, i32 23
  %19 = getelementptr inbounds %struct.keyspan_usa67_portControlMessage, ptr %msg, i32 0, i32 24
  %20 = getelementptr inbounds %struct.keyspan_usa67_portControlMessage, ptr %msg, i32 0, i32 25
  %21 = getelementptr inbounds %struct.keyspan_usa67_portControlMessage, ptr %msg, i32 0, i32 26
  %22 = getelementptr inbounds %struct.keyspan_usa67_portControlMessage, ptr %msg, i32 0, i32 27
  %23 = getelementptr inbounds %struct.keyspan_usa67_portControlMessage, ptr %msg, i32 0, i32 28
  %24 = getelementptr inbounds %struct.keyspan_usa67_portControlMessage, ptr %msg, i32 0, i32 29
  %25 = getelementptr inbounds %struct.keyspan_usa67_portControlMessage, ptr %msg, i32 0, i32 30
  %26 = getelementptr inbounds %struct.keyspan_usa67_portControlMessage, ptr %msg, i32 0, i32 31
  %private.i = getelementptr inbounds %struct.usb_serial, ptr %serial, i32 0, i32 15
  %27 = call ptr @memset(ptr %msg, i32 255, i32 32)
  %28 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %private.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32, i32 8
  %30 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %driver_data.i.i, align 4
  %32 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %29, align 4
  %glocont_urb = getelementptr inbounds %struct.keyspan_serial_private, ptr %29, i32 0, i32 5
  %34 = ptrtoint ptr %glocont_urb to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %glocont_urb, align 4
  %port_number = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 4
  %36 = ptrtoint ptr %port_number to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %port_number, align 4
  %conv = zext i8 %37 to i32
  %cmp = icmp eq ptr %35, null
  br i1 %cmp, label %do.body, label %if.end7

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @keyspan_usa67_send_setup.__UNIQUE_ID_ddebug310, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@keyspan_usa67_send_setup, %if.then6)) #9
          to label %cleanup [label %if.then6], !srcloc !383

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @keyspan_usa67_send_setup.__UNIQUE_ID_ddebug310, ptr noundef %dev, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.77) #9
  br label %cleanup

if.end7:                                          ; preds = %entry
  %add = add i32 %reset_port, 1
  %resend_cont = getelementptr inbounds %struct.keyspan_port_private, ptr %31, i32 0, i32 24
  %38 = ptrtoint ptr %resend_cont to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %resend_cont, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %39)
  %cmp8 = icmp sgt i32 %add, %39
  br i1 %cmp8, label %if.then10, label %if.end7.if.end13_crit_edge

if.end7.if.end13_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

if.then10:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  %40 = ptrtoint ptr %resend_cont to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %add, ptr %resend_cont, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %if.end7.if.end13_crit_edge
  %status = getelementptr inbounds %struct.urb, ptr %35, i32 0, i32 12
  %41 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -115, i32 %42)
  %cmp14 = icmp eq i32 %42, -115
  br i1 %cmp14, label %while.body.preheader, label %if.end18

while.body.preheader:                             ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %43 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %43(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %44 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %44(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %45 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %45(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %46 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %46(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %47 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %47(i32 noundef 214748000) #9
  br label %cleanup

if.end18:                                         ; preds = %if.end13
  %48 = getelementptr inbounds i8, ptr %msg, i32 1
  %49 = call ptr @memset(ptr %48, i32 0, i32 31)
  %50 = ptrtoint ptr %msg to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %37, ptr %msg, align 1
  %old_baud = getelementptr inbounds %struct.keyspan_port_private, ptr %31, i32 0, i32 12
  %51 = ptrtoint ptr %old_baud to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %old_baud, align 4
  %baud = getelementptr inbounds %struct.keyspan_port_private, ptr %31, i32 0, i32 11
  %53 = ptrtoint ptr %baud to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %baud, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %52, i32 %54)
  %cmp21.not = icmp eq i32 %52, %54
  br i1 %cmp21.not, label %if.end18.if.end53_crit_edge, label %if.then23

if.end18.if.end53_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end53

if.then23:                                        ; preds = %if.end18
  %55 = ptrtoint ptr %old_baud to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %old_baud, align 4
  %56 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 -1, ptr %0, align 1
  %calculate_baud_rate = getelementptr inbounds %struct.keyspan_device_details, ptr %33, i32 0, i32 12
  %57 = ptrtoint ptr %calculate_baud_rate to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %calculate_baud_rate, align 4
  %baudclk = getelementptr inbounds %struct.keyspan_device_details, ptr %33, i32 0, i32 13
  %59 = ptrtoint ptr %baudclk to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %baudclk, align 4
  %call27 = call i32 %58(ptr noundef %port, i32 noundef %54, i32 noundef %60, ptr noundef %2, ptr noundef %1, ptr noundef %15, i32 noundef %conv) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call27)
  %cmp28 = icmp eq i32 %call27, -1
  br i1 %cmp28, label %do.body31, label %if.then23.if.end52_crit_edge

if.then23.if.end52_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end52

do.body31:                                        ; preds = %if.then23
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @keyspan_usa67_send_setup.__UNIQUE_ID_ddebug311, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@keyspan_usa67_send_setup, %if.then43)) #9
          to label %do.end48 [label %if.then43], !srcloc !383

if.then43:                                        ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #11
  %dev44 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  %61 = ptrtoint ptr %baud to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %baud, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @keyspan_usa67_send_setup.__UNIQUE_ID_ddebug311, ptr noundef %dev44, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.77, i32 noundef %62) #9
  br label %do.end48

do.end48:                                         ; preds = %if.then43, %do.body31
  %63 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 0, ptr %1, align 1
  %64 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 125, ptr %2, align 1
  %65 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 10, ptr %15, align 1
  br label %if.end52

if.end52:                                         ; preds = %do.end48, %if.then23.if.end52_crit_edge
  %66 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 -1, ptr %14, align 1
  br label %if.end53

if.end53:                                         ; preds = %if.end52, %if.end18.if.end53_crit_edge
  %cflag = getelementptr inbounds %struct.keyspan_port_private, ptr %31, i32 0, i32 13
  %67 = ptrtoint ptr %cflag to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %cflag, align 4
  %69 = trunc i32 %68 to i8
  %70 = lshr i8 %69, 4
  %conv55 = and i8 %70, 4
  %and57 = lshr i32 %68, 4
  %71 = and i32 %and57, 3
  %72 = zext i32 %71 to i64
  call void @__sanitizer_cov_trace_switch(i64 %72, ptr @__sancov_gen_cov_switch_values.108)
  switch i32 %71, label %if.end53.unreachabledefault [
    i32 0, label %if.end53.sw.epilog_crit_edge
    i32 1, label %sw.bb61
    i32 2, label %sw.bb66
    i32 3, label %sw.bb71
  ]

if.end53.sw.epilog_crit_edge:                     ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb61:                                          ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #11
  %73 = or i8 %conv55, 1
  br label %sw.epilog

sw.bb66:                                          ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #11
  %74 = or i8 %conv55, 2
  br label %sw.epilog

sw.bb71:                                          ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #11
  %75 = or i8 %conv55, 3
  br label %sw.epilog

if.end53.unreachabledefault:                      ; preds = %if.end53
  unreachable

sw.epilog:                                        ; preds = %sw.bb71, %sw.bb66, %sw.bb61, %if.end53.sw.epilog_crit_edge
  %.sink = phi i8 [ %75, %sw.bb71 ], [ %74, %sw.bb66 ], [ %73, %sw.bb61 ], [ %conv55, %if.end53.sw.epilog_crit_edge ]
  %76 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 %.sink, ptr %4, align 1
  %77 = ptrtoint ptr %cflag to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %cflag, align 4
  %and77 = and i32 %78, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and77)
  %tobool78.not = icmp eq i32 %and77, 0
  br i1 %tobool78.not, label %sw.epilog.if.end88_crit_edge, label %if.then79

sw.epilog.if.end88_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end88

if.then79:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %and81 = and i32 %78, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and81)
  %tobool82.not = icmp eq i32 %and81, 0
  %cond83 = select i1 %tobool82.not, i8 24, i8 8
  %79 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %4, align 1
  %or86 = or i8 %80, %cond83
  store i8 %or86, ptr %4, align 1
  br label %if.end88

if.end88:                                         ; preds = %if.then79, %sw.epilog.if.end88_crit_edge
  %81 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 -1, ptr %3, align 1
  %flow_control = getelementptr inbounds %struct.keyspan_port_private, ptr %31, i32 0, i32 15
  %82 = ptrtoint ptr %flow_control to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %flow_control, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %83)
  %cmp89 = icmp eq i32 %83, 1
  %conv91 = zext i1 %cmp89 to i8
  %84 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 %conv91, ptr %6, align 1
  %85 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 0, ptr %7, align 1
  %86 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 -1, ptr %5, align 1
  %87 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 16, ptr %16, align 1
  %88 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 17, ptr %8, align 1
  %89 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 19, ptr %9, align 1
  %90 = zext i32 %reset_port to i64
  call void @__sanitizer_cov_trace_switch(i64 %90, ptr @__sancov_gen_cov_switch_values.109)
  switch i32 %reset_port, label %if.else108 [
    i32 1, label %if.then94
    i32 2, label %if.then97
  ]

if.then94:                                        ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #11
  %91 = ptrtoint ptr %17 to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 1, ptr %17, align 1
  %92 = ptrtoint ptr %18 to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 0, ptr %18, align 1
  %93 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 0, ptr %19, align 1
  %94 = ptrtoint ptr %20 to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 0, ptr %20, align 1
  %95 = ptrtoint ptr %21 to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 1, ptr %21, align 1
  %96 = ptrtoint ptr %22 to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 0, ptr %22, align 1
  %97 = ptrtoint ptr %23 to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 1, ptr %23, align 1
  %98 = ptrtoint ptr %24 to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 0, ptr %24, align 1
  %99 = ptrtoint ptr %25 to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 0, ptr %25, align 1
  %100 = ptrtoint ptr %26 to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 -1, ptr %26, align 1
  br label %if.end126

if.then97:                                        ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #11
  %101 = ptrtoint ptr %17 to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 0, ptr %17, align 1
  %102 = ptrtoint ptr %18 to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 1, ptr %18, align 1
  %103 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 0, ptr %19, align 1
  %104 = ptrtoint ptr %20 to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 0, ptr %20, align 1
  %105 = ptrtoint ptr %21 to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 0, ptr %21, align 1
  %106 = ptrtoint ptr %22 to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 1, ptr %22, align 1
  %107 = ptrtoint ptr %23 to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 1, ptr %23, align 1
  %108 = ptrtoint ptr %24 to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 0, ptr %24, align 1
  %109 = ptrtoint ptr %25 to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 0, ptr %25, align 1
  %110 = ptrtoint ptr %26 to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 0, ptr %26, align 1
  br label %if.end126

if.else108:                                       ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #11
  %break_on = getelementptr inbounds %struct.keyspan_port_private, ptr %31, i32 0, i32 22
  %111 = ptrtoint ptr %break_on to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %break_on, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %112)
  %tobool109.not = icmp eq i32 %112, 0
  %conv112 = zext i1 %tobool109.not to i8
  %113 = ptrtoint ptr %17 to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 %conv112, ptr %17, align 1
  %114 = ptrtoint ptr %18 to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 0, ptr %18, align 1
  %115 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 0, ptr %19, align 1
  %conv117 = trunc i32 %112 to i8
  %116 = ptrtoint ptr %20 to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 %conv117, ptr %20, align 1
  %117 = call ptr @memset(ptr %21, i32 0, i32 6)
  br label %if.end126

if.end126:                                        ; preds = %if.else108, %if.then97, %if.then94
  %118 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 -1, ptr %10, align 1
  %rts_state = getelementptr inbounds %struct.keyspan_port_private, ptr %31, i32 0, i32 16
  %119 = ptrtoint ptr %rts_state to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %rts_state, align 4
  %conv127 = trunc i32 %120 to i8
  %121 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 %conv127, ptr %11, align 1
  %122 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 -1, ptr %12, align 1
  %dtr_state = getelementptr inbounds %struct.keyspan_port_private, ptr %31, i32 0, i32 17
  %123 = ptrtoint ptr %dtr_state to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %dtr_state, align 4
  %conv128 = trunc i32 %124 to i8
  %125 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 %conv128, ptr %13, align 1
  %126 = ptrtoint ptr %resend_cont to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 0, ptr %resend_cont, align 4
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %35, i32 0, i32 14
  %127 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %transfer_buffer, align 4
  %129 = call ptr @memcpy(ptr %128, ptr %msg, i32 32)
  %transfer_buffer_length = getelementptr inbounds %struct.urb, ptr %35, i32 0, i32 19
  %130 = ptrtoint ptr %transfer_buffer_length to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 32, ptr %transfer_buffer_length, align 4
  %call130 = call i32 @usb_submit_urb(ptr noundef nonnull %35, i32 noundef 2592) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call130)
  %cmp131.not = icmp eq i32 %call130, 0
  br i1 %cmp131.not, label %if.end126.cleanup_crit_edge, label %do.body134

if.end126.cleanup_crit_edge:                      ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body134:                                       ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @keyspan_usa67_send_setup.__UNIQUE_ID_ddebug312, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@keyspan_usa67_send_setup, %if.then146)) #9
          to label %cleanup [label %if.then146], !srcloc !383

if.then146:                                       ; preds = %do.body134
  call void @__sanitizer_cov_trace_pc() #11
  %dev147 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @keyspan_usa67_send_setup.__UNIQUE_ID_ddebug312, ptr noundef %dev147, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.77, i32 noundef %call130) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then146, %do.body134, %if.end126.cleanup_crit_edge, %while.body.preheader, %if.then6, %do.body
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %msg) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_urb(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_kill_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_clear_halt(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @keyspan_send_setup(ptr noundef %port, i32 noundef %reset_port) unnamed_addr #2 align 64 {
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
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %msg_format = getelementptr inbounds %struct.keyspan_device_details, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %msg_format to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %msg_format, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.110)
  switch i32 %7, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb3
    i32 2, label %sw.bb5
    i32 3, label %sw.bb7
    i32 4, label %sw.bb9
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @keyspan_usa26_send_setup(ptr noundef %1, ptr noundef %port, i32 noundef %reset_port)
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @keyspan_usa28_send_setup(ptr noundef %1, ptr noundef %port, i32 noundef %reset_port)
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @keyspan_usa49_send_setup(ptr noundef %1, ptr noundef %port, i32 noundef %reset_port)
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @keyspan_usa90_send_setup(ptr noundef %1, ptr noundef %port, i32 noundef %reset_port)
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @keyspan_usa67_send_setup(ptr noundef %1, ptr noundef %port, i32 noundef %reset_port)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb9, %sw.bb7, %sw.bb5, %sw.bb3, %sw.bb, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_termios_baud_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_unlink_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_encode_baud_rate(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 128)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 128)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !35, !37, !39, !41, !43, !45, !47, !49, !50, !51, !52, !54, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !82, !83, !84, !85, !87, !88, !90, !91, !92, !94, !96, !98, !100, !102, !103, !104, !105, !107, !108, !110, !111, !113, !115, !117, !118, !119, !121, !123, !124, !126, !127, !129, !131, !132, !134, !135, !137, !139, !141, !143, !145, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !167, !168, !170, !171, !173, !174, !176, !177, !179, !180, !181, !183, !184, !186, !188, !189, !190, !192, !193, !194, !196, !197, !198, !200, !201, !203, !204, !206, !207, !209, !210, !212, !213, !215, !216, !218, !220, !222, !223, !225, !227, !228, !230, !231, !233, !234, !236, !237, !239, !240, !242, !243, !245, !247, !249, !251, !252, !254, !255, !256, !258, !259, !261, !263, !265, !266, !268, !270, !271, !273, !275, !277, !278, !280, !282, !284, !285, !287, !288, !290, !292, !294, !296, !297, !299, !301, !303, !305, !306, !308, !309, !311, !313, !315, !316, !317, !319, !321, !323, !324, !325, !326, !328, !329, !331, !332, !333, !334, !336, !337, !339, !341, !343, !344, !345, !347, !348, !349, !351, !352, !354, !355, !357, !358, !360, !362, !364, !366, !368, !370, !372}
!llvm.module.flags = !{!374, !375, !376, !377, !378, !379, !380, !381}
!llvm.ident = !{!382}

!0 = !{ptr @__initcall__kmod_keyspan__315_3087_usb_serial_module_init6, !1, !"__initcall__kmod_keyspan__315_3087_usb_serial_module_init6", i1 false, i1 false}
!1 = !{!"../drivers/usb/serial/keyspan.c", i32 3087, i32 1}
!2 = !{ptr @__exitcall_usb_serial_module_exit, !1, !"__exitcall_usb_serial_module_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author316, !4, !"__UNIQUE_ID_author316", i1 false, i1 false}
!4 = !{!"../drivers/usb/serial/keyspan.c", i32 3089, i32 1}
!5 = !{ptr @__UNIQUE_ID_description317, !6, !"__UNIQUE_ID_description317", i1 false, i1 false}
!6 = !{!"../drivers/usb/serial/keyspan.c", i32 3090, i32 1}
!7 = !{ptr @__UNIQUE_ID_file318, !8, !"__UNIQUE_ID_file318", i1 false, i1 false}
!8 = !{!"../drivers/usb/serial/keyspan.c", i32 3091, i32 1}
!9 = !{ptr @__UNIQUE_ID_license319, !8, !"__UNIQUE_ID_license319", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_firmware320, !11, !"__UNIQUE_ID_firmware320", i1 false, i1 false}
!11 = !{!"../drivers/usb/serial/keyspan.c", i32 3093, i32 1}
!12 = !{ptr @__UNIQUE_ID_firmware321, !13, !"__UNIQUE_ID_firmware321", i1 false, i1 false}
!13 = !{!"../drivers/usb/serial/keyspan.c", i32 3094, i32 1}
!14 = !{ptr @__UNIQUE_ID_firmware322, !15, !"__UNIQUE_ID_firmware322", i1 false, i1 false}
!15 = !{!"../drivers/usb/serial/keyspan.c", i32 3095, i32 1}
!16 = !{ptr @__UNIQUE_ID_firmware323, !17, !"__UNIQUE_ID_firmware323", i1 false, i1 false}
!17 = !{!"../drivers/usb/serial/keyspan.c", i32 3096, i32 1}
!18 = !{ptr @__UNIQUE_ID_firmware324, !19, !"__UNIQUE_ID_firmware324", i1 false, i1 false}
!19 = !{!"../drivers/usb/serial/keyspan.c", i32 3097, i32 1}
!20 = !{ptr @__UNIQUE_ID_firmware325, !21, !"__UNIQUE_ID_firmware325", i1 false, i1 false}
!21 = !{!"../drivers/usb/serial/keyspan.c", i32 3098, i32 1}
!22 = !{ptr @__UNIQUE_ID_firmware326, !23, !"__UNIQUE_ID_firmware326", i1 false, i1 false}
!23 = !{!"../drivers/usb/serial/keyspan.c", i32 3099, i32 1}
!24 = !{ptr @__UNIQUE_ID_firmware327, !25, !"__UNIQUE_ID_firmware327", i1 false, i1 false}
!25 = !{!"../drivers/usb/serial/keyspan.c", i32 3100, i32 1}
!26 = !{ptr @__UNIQUE_ID_firmware328, !27, !"__UNIQUE_ID_firmware328", i1 false, i1 false}
!27 = !{!"../drivers/usb/serial/keyspan.c", i32 3101, i32 1}
!28 = !{ptr @__UNIQUE_ID_firmware329, !29, !"__UNIQUE_ID_firmware329", i1 false, i1 false}
!29 = !{!"../drivers/usb/serial/keyspan.c", i32 3102, i32 1}
!30 = !{ptr @__UNIQUE_ID_firmware330, !31, !"__UNIQUE_ID_firmware330", i1 false, i1 false}
!31 = !{!"../drivers/usb/serial/keyspan.c", i32 3103, i32 1}
!32 = !{ptr @__UNIQUE_ID_firmware331, !33, !"__UNIQUE_ID_firmware331", i1 false, i1 false}
!33 = !{!"../drivers/usb/serial/keyspan.c", i32 3104, i32 1}
!34 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @keyspan_ids_combined, !36, !"keyspan_ids_combined", i1 false, i1 false}
!36 = !{!"../drivers/usb/serial/keyspan.c", i32 447, i32 35}
!37 = !{ptr @serial_drivers, !38, !"serial_drivers", i1 false, i1 false}
!38 = !{!"../drivers/usb/serial/keyspan.c", i32 3082, i32 41}
!39 = !{ptr @.str.1, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/usb/serial/keyspan.c", i32 3004, i32 18}
!41 = !{ptr @.str.2, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/usb/serial/keyspan.c", i32 3002, i32 12}
!43 = !{ptr @keyspan_pre_device, !44, !"keyspan_pre_device", i1 false, i1 false}
!44 = !{!"../drivers/usb/serial/keyspan.c", i32 2999, i32 33}
!45 = !{ptr @keyspan_pre_ids, !46, !"keyspan_pre_ids", i1 false, i1 false}
!46 = !{!"../drivers/usb/serial/keyspan.c", i32 480, i32 35}
!47 = !{ptr @.str.3, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/usb/serial/keyspan.c", i32 1604, i32 2}
!49 = !{ptr @.str.4, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.5, !48, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @keyspan_fake_startup.__UNIQUE_ID_ddebug281, !48, !"__UNIQUE_ID_ddebug281", i1 false, i1 false}
!52 = !{ptr @.str.6, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/usb/serial/keyspan.c", i32 1610, i32 3}
!54 = !{ptr @keyspan_fake_startup.__UNIQUE_ID_ddebug282, !53, !"__UNIQUE_ID_ddebug282", i1 false, i1 false}
!55 = !{ptr @.str.7, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/usb/serial/keyspan.c", i32 1617, i32 13}
!57 = !{ptr @.str.8, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/usb/serial/keyspan.c", i32 1621, i32 13}
!59 = !{ptr @.str.9, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/usb/serial/keyspan.c", i32 1625, i32 13}
!61 = !{ptr @.str.10, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/usb/serial/keyspan.c", i32 1629, i32 13}
!63 = !{ptr @.str.11, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/usb/serial/keyspan.c", i32 1633, i32 13}
!65 = !{ptr @.str.12, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/usb/serial/keyspan.c", i32 1637, i32 13}
!67 = !{ptr @.str.13, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/usb/serial/keyspan.c", i32 1641, i32 13}
!69 = !{ptr @.str.14, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/usb/serial/keyspan.c", i32 1645, i32 13}
!71 = !{ptr @.str.15, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/usb/serial/keyspan.c", i32 1649, i32 13}
!73 = !{ptr @.str.16, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/usb/serial/keyspan.c", i32 1653, i32 13}
!75 = !{ptr @.str.17, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/usb/serial/keyspan.c", i32 1657, i32 13}
!77 = !{ptr @.str.18, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/usb/serial/keyspan.c", i32 1661, i32 13}
!79 = !{ptr @.str.19, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/usb/serial/keyspan.c", i32 1665, i32 3}
!81 = !{ptr @.str.20, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @.str.21, !80, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @keyspan_fake_startup._entry, !80, !"_entry", i1 false, i1 false}
!84 = !{ptr @keyspan_fake_startup._entry_ptr, !80, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.22, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/usb/serial/keyspan.c", i32 1670, i32 2}
!87 = !{ptr @keyspan_fake_startup.__UNIQUE_ID_ddebug283, !86, !"__UNIQUE_ID_ddebug283", i1 false, i1 false}
!88 = !{ptr @.str.24, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/usb/serial/keyspan.c", i32 1673, i32 3}
!90 = !{ptr @keyspan_fake_startup._entry.23, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @keyspan_fake_startup._entry_ptr.25, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.26, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/usb/serial/keyspan.c", i32 3015, i32 18}
!94 = !{ptr @.str.27, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/usb/serial/keyspan.c", i32 3013, i32 12}
!96 = !{ptr @keyspan_1port_device, !97, !"keyspan_1port_device", i1 false, i1 false}
!97 = !{!"../drivers/usb/serial/keyspan.c", i32 3010, i32 33}
!98 = !{ptr @keyspan_1port_ids, !99, !"keyspan_1port_ids", i1 false, i1 false}
!99 = !{!"../drivers/usb/serial/keyspan.c", i32 496, i32 35}
!100 = !{ptr @.str.28, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/usb/serial/keyspan.c", i32 2783, i32 3}
!102 = !{ptr @.str.29, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @keyspan_startup._entry, !101, !"_entry", i1 false, i1 false}
!104 = !{ptr @keyspan_startup._entry_ptr, !101, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.30, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/usb/serial/keyspan.c", i32 2817, i32 4}
!107 = !{ptr @keyspan_startup.__UNIQUE_ID_ddebug313, !106, !"__UNIQUE_ID_ddebug313", i1 false, i1 false}
!108 = !{ptr @.str.31, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/usb/serial/keyspan.c", i32 2822, i32 4}
!110 = !{ptr @keyspan_startup.__UNIQUE_ID_ddebug314, !109, !"__UNIQUE_ID_ddebug314", i1 false, i1 false}
!111 = distinct !{null, !112, !"keyspan_devices", i1 false, i1 false}
!112 = !{!"../drivers/usb/serial/keyspan.c", i32 428, i32 45}
!113 = !{ptr @usa18x_device_details, !114, !"usa18x_device_details", i1 false, i1 false}
!114 = !{!"../drivers/usb/serial/keyspan.c", i32 186, i32 44}
!115 = !{ptr @.str.32, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/usb/serial/keyspan.c", i32 1929, i32 2}
!117 = !{ptr @.str.33, !116, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @keyspan_usa19w_calc_baud.__UNIQUE_ID_ddebug290, !116, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!119 = !{ptr @usa19_device_details, !120, !"usa19_device_details", i1 false, i1 false}
!120 = !{!"../drivers/usb/serial/keyspan.c", i32 203, i32 44}
!121 = !{ptr @.str.34, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/usb/serial/keyspan.c", i32 1847, i32 2}
!123 = !{ptr @keyspan_usa19_calc_baud.__UNIQUE_ID_ddebug286, !122, !"__UNIQUE_ID_ddebug286", i1 false, i1 false}
!124 = !{ptr @.str.35, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/usb/serial/keyspan.c", i32 1874, i32 3}
!126 = !{ptr @keyspan_usa19_calc_baud.__UNIQUE_ID_ddebug287, !125, !"__UNIQUE_ID_ddebug287", i1 false, i1 false}
!127 = !{ptr @usa19qi_device_details, !128, !"usa19qi_device_details", i1 false, i1 false}
!128 = !{!"../drivers/usb/serial/keyspan.c", i32 220, i32 44}
!129 = !{ptr @.str.36, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/usb/serial/keyspan.c", i32 1988, i32 2}
!131 = !{ptr @keyspan_usa28_calc_baud.__UNIQUE_ID_ddebug291, !130, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!132 = !{ptr @.str.37, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/usb/serial/keyspan.c", i32 2021, i32 2}
!134 = !{ptr @keyspan_usa28_calc_baud.__UNIQUE_ID_ddebug292, !133, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!135 = !{ptr @mpr_device_details, !136, !"mpr_device_details", i1 false, i1 false}
!136 = !{!"../drivers/usb/serial/keyspan.c", i32 237, i32 44}
!137 = !{ptr @usa19qw_device_details, !138, !"usa19qw_device_details", i1 false, i1 false}
!138 = !{!"../drivers/usb/serial/keyspan.c", i32 254, i32 44}
!139 = !{ptr @usa19w_device_details, !140, !"usa19w_device_details", i1 false, i1 false}
!140 = !{!"../drivers/usb/serial/keyspan.c", i32 271, i32 44}
!141 = !{ptr @usa19hs_device_details, !142, !"usa19hs_device_details", i1 false, i1 false}
!142 = !{!"../drivers/usb/serial/keyspan.c", i32 288, i32 44}
!143 = !{ptr @.str.38, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/usb/serial/keyspan.c", i32 1887, i32 2}
!145 = !{ptr @keyspan_usa19hs_calc_baud.__UNIQUE_ID_ddebug288, !144, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!146 = !{ptr @keyspan_usa19hs_calc_baud.__UNIQUE_ID_ddebug289, !147, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!147 = !{!"../drivers/usb/serial/keyspan.c", i32 1910, i32 3}
!148 = !{ptr @usa28_device_details, !149, !"usa28_device_details", i1 false, i1 false}
!149 = !{!"../drivers/usb/serial/keyspan.c", i32 305, i32 44}
!150 = !{ptr @usa28x_device_details, !151, !"usa28x_device_details", i1 false, i1 false}
!151 = !{!"../drivers/usb/serial/keyspan.c", i32 322, i32 44}
!152 = !{ptr @usa28xa_device_details, !153, !"usa28xa_device_details", i1 false, i1 false}
!153 = !{!"../drivers/usb/serial/keyspan.c", i32 339, i32 44}
!154 = !{ptr @usa28xg_device_details, !155, !"usa28xg_device_details", i1 false, i1 false}
!155 = !{!"../drivers/usb/serial/keyspan.c", i32 356, i32 44}
!156 = !{ptr @usa49w_device_details, !157, !"usa49w_device_details", i1 false, i1 false}
!157 = !{!"../drivers/usb/serial/keyspan.c", i32 377, i32 44}
!158 = !{ptr @usa49wlc_device_details, !159, !"usa49wlc_device_details", i1 false, i1 false}
!159 = !{!"../drivers/usb/serial/keyspan.c", i32 394, i32 44}
!160 = !{ptr @usa49wg_device_details, !161, !"usa49wg_device_details", i1 false, i1 false}
!161 = !{!"../drivers/usb/serial/keyspan.c", i32 411, i32 44}
!162 = !{ptr @keyspan_callbacks, !163, !"keyspan_callbacks", i1 false, i1 false}
!163 = !{!"../drivers/usb/serial/keyspan.c", i32 1762, i32 3}
!164 = !{ptr @.str.39, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/usb/serial/keyspan.c", i32 867, i32 3}
!166 = !{ptr @.str.40, !165, !"<string literal>", i1 false, i1 false}
!167 = !{ptr @usa26_instat_callback.__UNIQUE_ID_ddebug247, !165, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!168 = !{ptr @.str.41, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/usb/serial/keyspan.c", i32 872, i32 3}
!170 = !{ptr @usa26_instat_callback.__UNIQUE_ID_ddebug248, !169, !"__UNIQUE_ID_ddebug248", i1 false, i1 false}
!171 = !{ptr @.str.42, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/usb/serial/keyspan.c", i32 880, i32 3}
!173 = !{ptr @usa26_instat_callback.__UNIQUE_ID_ddebug249, !172, !"__UNIQUE_ID_ddebug249", i1 false, i1 false}
!174 = !{ptr @.str.43, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/usb/serial/keyspan.c", i32 901, i32 3}
!176 = !{ptr @usa26_instat_callback.__UNIQUE_ID_ddebug250, !175, !"__UNIQUE_ID_ddebug250", i1 false, i1 false}
!177 = !{ptr @.str.44, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/usb/serial/keyspan.c", i32 774, i32 3}
!179 = !{ptr @.str.45, !178, !"<string literal>", i1 false, i1 false}
!180 = !{ptr @usa26_indat_callback.__UNIQUE_ID_ddebug242, !178, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!181 = !{ptr @.str.46, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/usb/serial/keyspan.c", i32 794, i32 4}
!183 = !{ptr @usa26_indat_callback.__UNIQUE_ID_ddebug243, !182, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!184 = !{ptr @usa26_indat_callback.__UNIQUE_ID_ddebug244, !185, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!185 = !{!"../drivers/usb/serial/keyspan.c", i32 819, i32 3}
!186 = !{ptr @.str.47, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/usb/serial/keyspan.c", i32 830, i32 2}
!188 = !{ptr @.str.48, !187, !"<string literal>", i1 false, i1 false}
!189 = !{ptr @usa2x_outdat_callback.__UNIQUE_ID_ddebug245, !187, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!190 = !{ptr @.str.49, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/usb/serial/keyspan.c", i32 848, i32 3}
!192 = !{ptr @.str.50, !191, !"<string literal>", i1 false, i1 false}
!193 = !{ptr @usa26_outcont_callback.__UNIQUE_ID_ddebug246, !191, !"__UNIQUE_ID_ddebug246", i1 false, i1 false}
!194 = !{ptr @.str.51, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/usb/serial/keyspan.c", i32 2036, i32 2}
!196 = !{ptr @.str.52, !195, !"<string literal>", i1 false, i1 false}
!197 = !{ptr @keyspan_usa26_send_setup.__UNIQUE_ID_ddebug293, !195, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!198 = !{ptr @.str.53, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/usb/serial/keyspan.c", i32 2047, i32 3}
!200 = !{ptr @keyspan_usa26_send_setup.__UNIQUE_ID_ddebug294, !199, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!201 = !{ptr @.str.54, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/usb/serial/keyspan.c", i32 2051, i32 2}
!203 = !{ptr @keyspan_usa26_send_setup.__UNIQUE_ID_ddebug295, !202, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!204 = !{ptr @.str.55, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/usb/serial/keyspan.c", i32 2073, i32 4}
!206 = !{ptr @keyspan_usa26_send_setup.__UNIQUE_ID_ddebug296, !205, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!207 = !{ptr @.str.56, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/usb/serial/keyspan.c", i32 2168, i32 3}
!209 = !{ptr @keyspan_usa26_send_setup.__UNIQUE_ID_ddebug297, !208, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!210 = !{ptr @.str.57, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/usb/serial/keyspan.c", i32 986, i32 3}
!212 = !{ptr @usa28_instat_callback.__UNIQUE_ID_ddebug254, !211, !"__UNIQUE_ID_ddebug254", i1 false, i1 false}
!213 = !{ptr @.str.58, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/usb/serial/keyspan.c", i32 992, i32 3}
!215 = !{ptr @usa28_instat_callback.__UNIQUE_ID_ddebug255, !214, !"__UNIQUE_ID_ddebug255", i1 false, i1 false}
!216 = !{ptr @usa28_instat_callback.__UNIQUE_ID_ddebug256, !217, !"__UNIQUE_ID_ddebug256", i1 false, i1 false}
!217 = !{!"../drivers/usb/serial/keyspan.c", i32 1000, i32 3}
!218 = !{ptr @usa28_instat_callback.__UNIQUE_ID_ddebug257, !219, !"__UNIQUE_ID_ddebug257", i1 false, i1 false}
!219 = !{!"../drivers/usb/serial/keyspan.c", i32 1021, i32 3}
!220 = !{ptr @.str.59, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/usb/serial/keyspan.c", i32 927, i32 4}
!222 = !{ptr @usa28_indat_callback.__UNIQUE_ID_ddebug251, !221, !"__UNIQUE_ID_ddebug251", i1 false, i1 false}
!223 = !{ptr @usa28_indat_callback.__UNIQUE_ID_ddebug252, !224, !"__UNIQUE_ID_ddebug252", i1 false, i1 false}
!224 = !{!"../drivers/usb/serial/keyspan.c", i32 945, i32 4}
!225 = !{ptr @.str.60, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/usb/serial/keyspan.c", i32 966, i32 3}
!227 = !{ptr @usa28_outcont_callback.__UNIQUE_ID_ddebug253, !226, !"__UNIQUE_ID_ddebug253", i1 false, i1 false}
!228 = !{ptr @.str.61, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/usb/serial/keyspan.c", i32 2191, i32 3}
!230 = !{ptr @keyspan_usa28_send_setup.__UNIQUE_ID_ddebug298, !229, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!231 = !{ptr @.str.62, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/usb/serial/keyspan.c", i32 2200, i32 3}
!233 = !{ptr @keyspan_usa28_send_setup.__UNIQUE_ID_ddebug299, !232, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!234 = !{ptr @.str.63, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/usb/serial/keyspan.c", i32 2211, i32 3}
!236 = !{ptr @keyspan_usa28_send_setup.__UNIQUE_ID_ddebug300, !235, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!237 = !{ptr @.str.64, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/usb/serial/keyspan.c", i32 2286, i32 3}
!239 = !{ptr @keyspan_usa28_send_setup.__UNIQUE_ID_ddebug301, !238, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!240 = !{ptr @.str.65, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/usb/serial/keyspan.c", i32 1069, i32 3}
!242 = !{ptr @usa49_instat_callback.__UNIQUE_ID_ddebug259, !241, !"__UNIQUE_ID_ddebug259", i1 false, i1 false}
!243 = !{ptr @usa49_instat_callback.__UNIQUE_ID_ddebug260, !244, !"__UNIQUE_ID_ddebug260", i1 false, i1 false}
!244 = !{!"../drivers/usb/serial/keyspan.c", i32 1076, i32 3}
!245 = !{ptr @usa49_instat_callback.__UNIQUE_ID_ddebug261, !246, !"__UNIQUE_ID_ddebug261", i1 false, i1 false}
!246 = !{!"../drivers/usb/serial/keyspan.c", i32 1084, i32 3}
!247 = !{ptr @usa49_instat_callback.__UNIQUE_ID_ddebug262, !248, !"__UNIQUE_ID_ddebug262", i1 false, i1 false}
!248 = !{!"../drivers/usb/serial/keyspan.c", i32 1106, i32 3}
!249 = !{ptr @.str.66, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/usb/serial/keyspan.c", i32 1045, i32 4}
!251 = !{ptr @usa49_glocont_callback.__UNIQUE_ID_ddebug258, !250, !"__UNIQUE_ID_ddebug258", i1 false, i1 false}
!252 = !{ptr @.str.67, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/usb/serial/keyspan.c", i32 2314, i32 3}
!254 = !{ptr @.str.68, !253, !"<string literal>", i1 false, i1 false}
!255 = !{ptr @keyspan_usa49_send_setup.__UNIQUE_ID_ddebug302, !253, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!256 = !{ptr @.str.69, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/usb/serial/keyspan.c", i32 2318, i32 2}
!258 = !{ptr @keyspan_usa49_send_setup.__UNIQUE_ID_ddebug303, !257, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!259 = !{ptr @keyspan_usa49_send_setup.__UNIQUE_ID_ddebug304, !260, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!260 = !{!"../drivers/usb/serial/keyspan.c", i32 2343, i32 4}
!261 = !{ptr @keyspan_usa49_send_setup.__UNIQUE_ID_ddebug305, !262, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!262 = !{!"../drivers/usb/serial/keyspan.c", i32 2463, i32 3}
!263 = !{ptr @.str.70, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/usb/serial/keyspan.c", i32 1125, i32 3}
!265 = !{ptr @usa49_indat_callback.__UNIQUE_ID_ddebug263, !264, !"__UNIQUE_ID_ddebug263", i1 false, i1 false}
!266 = !{ptr @usa49_indat_callback.__UNIQUE_ID_ddebug264, !267, !"__UNIQUE_ID_ddebug264", i1 false, i1 false}
!267 = !{!"../drivers/usb/serial/keyspan.c", i32 1163, i32 3}
!268 = !{ptr @.str.71, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/usb/serial/keyspan.c", i32 1327, i32 3}
!270 = !{ptr @usa90_instat_callback.__UNIQUE_ID_ddebug271, !269, !"__UNIQUE_ID_ddebug271", i1 false, i1 false}
!271 = !{ptr @usa90_instat_callback.__UNIQUE_ID_ddebug272, !272, !"__UNIQUE_ID_ddebug272", i1 false, i1 false}
!272 = !{!"../drivers/usb/serial/keyspan.c", i32 1332, i32 3}
!273 = !{ptr @usa90_instat_callback.__UNIQUE_ID_ddebug273, !274, !"__UNIQUE_ID_ddebug273", i1 false, i1 false}
!274 = !{!"../drivers/usb/serial/keyspan.c", i32 1358, i32 3}
!275 = !{ptr @.str.72, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../drivers/usb/serial/keyspan.c", i32 1254, i32 3}
!277 = !{ptr @usa90_indat_callback.__UNIQUE_ID_ddebug268, !276, !"__UNIQUE_ID_ddebug268", i1 false, i1 false}
!278 = !{ptr @usa90_indat_callback.__UNIQUE_ID_ddebug269, !279, !"__UNIQUE_ID_ddebug269", i1 false, i1 false}
!279 = !{!"../drivers/usb/serial/keyspan.c", i32 1283, i32 5}
!280 = !{ptr @usa90_indat_callback.__UNIQUE_ID_ddebug270, !281, !"__UNIQUE_ID_ddebug270", i1 false, i1 false}
!281 = !{!"../drivers/usb/serial/keyspan.c", i32 1310, i32 3}
!282 = !{ptr @.str.73, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../drivers/usb/serial/keyspan.c", i32 1372, i32 3}
!284 = !{ptr @usa90_outcont_callback.__UNIQUE_ID_ddebug274, !283, !"__UNIQUE_ID_ddebug274", i1 false, i1 false}
!285 = !{ptr @.str.74, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../drivers/usb/serial/keyspan.c", i32 2487, i32 3}
!287 = !{ptr @keyspan_usa90_send_setup.__UNIQUE_ID_ddebug306, !286, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!288 = !{ptr @keyspan_usa90_send_setup.__UNIQUE_ID_ddebug307, !289, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!289 = !{!"../drivers/usb/serial/keyspan.c", i32 2496, i32 3}
!290 = !{ptr @keyspan_usa90_send_setup.__UNIQUE_ID_ddebug308, !291, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!291 = !{!"../drivers/usb/serial/keyspan.c", i32 2509, i32 4}
!292 = !{ptr @keyspan_usa90_send_setup.__UNIQUE_ID_ddebug309, !293, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!293 = !{!"../drivers/usb/serial/keyspan.c", i32 2594, i32 3}
!294 = !{ptr @.str.75, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../drivers/usb/serial/keyspan.c", i32 1393, i32 3}
!296 = !{ptr @usa67_instat_callback.__UNIQUE_ID_ddebug275, !295, !"__UNIQUE_ID_ddebug275", i1 false, i1 false}
!297 = !{ptr @usa67_instat_callback.__UNIQUE_ID_ddebug276, !298, !"__UNIQUE_ID_ddebug276", i1 false, i1 false}
!298 = !{!"../drivers/usb/serial/keyspan.c", i32 1400, i32 3}
!299 = !{ptr @usa67_instat_callback.__UNIQUE_ID_ddebug277, !300, !"__UNIQUE_ID_ddebug277", i1 false, i1 false}
!300 = !{!"../drivers/usb/serial/keyspan.c", i32 1410, i32 3}
!301 = !{ptr @usa67_instat_callback.__UNIQUE_ID_ddebug278, !302, !"__UNIQUE_ID_ddebug278", i1 false, i1 false}
!302 = !{!"../drivers/usb/serial/keyspan.c", i32 1430, i32 3}
!303 = !{ptr @.str.76, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../drivers/usb/serial/keyspan.c", i32 1448, i32 4}
!305 = !{ptr @usa67_glocont_callback.__UNIQUE_ID_ddebug279, !304, !"__UNIQUE_ID_ddebug279", i1 false, i1 false}
!306 = !{ptr @.str.77, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../drivers/usb/serial/keyspan.c", i32 2620, i32 3}
!308 = !{ptr @keyspan_usa67_send_setup.__UNIQUE_ID_ddebug310, !307, !"__UNIQUE_ID_ddebug310", i1 false, i1 false}
!309 = !{ptr @keyspan_usa67_send_setup.__UNIQUE_ID_ddebug311, !310, !"__UNIQUE_ID_ddebug311", i1 false, i1 false}
!310 = !{!"../drivers/usb/serial/keyspan.c", i32 2645, i32 4}
!311 = !{ptr @keyspan_usa67_send_setup.__UNIQUE_ID_ddebug312, !312, !"__UNIQUE_ID_ddebug312", i1 false, i1 false}
!312 = !{!"../drivers/usb/serial/keyspan.c", i32 2737, i32 3}
!313 = !{ptr @.str.78, !314, !"<string literal>", i1 false, i1 false}
!314 = !{!"../drivers/usb/serial/keyspan.c", i32 1715, i32 2}
!315 = !{ptr @.str.79, !314, !"<string literal>", i1 false, i1 false}
!316 = !{ptr @keyspan_setup_urb.__UNIQUE_ID_ddebug284, !314, !"__UNIQUE_ID_ddebug284", i1 false, i1 false}
!317 = !{ptr @.str.80, !318, !"<string literal>", i1 false, i1 false}
!318 = !{!"../drivers/usb/serial/keyspan.c", i32 1732, i32 18}
!319 = !{ptr @.str.81, !320, !"<string literal>", i1 false, i1 false}
!320 = !{!"../drivers/usb/serial/keyspan.c", i32 1738, i32 18}
!321 = !{ptr @.str.82, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../drivers/usb/serial/keyspan.c", i32 1743, i32 3}
!323 = !{ptr @.str.83, !322, !"<string literal>", i1 false, i1 false}
!324 = !{ptr @keyspan_setup_urb._entry, !322, !"_entry", i1 false, i1 false}
!325 = !{ptr @keyspan_setup_urb._entry_ptr, !322, !"_entry_ptr", i1 false, i1 false}
!326 = !{ptr @.str.84, !327, !"<string literal>", i1 false, i1 false}
!327 = !{!"../drivers/usb/serial/keyspan.c", i32 1750, i32 2}
!328 = !{ptr @keyspan_setup_urb.__UNIQUE_ID_ddebug285, !327, !"__UNIQUE_ID_ddebug285", i1 false, i1 false}
!329 = !{ptr @.str.85, !330, !"<string literal>", i1 false, i1 false}
!330 = !{!"../drivers/usb/serial/keyspan.c", i32 1699, i32 2}
!331 = !{ptr @.str.86, !330, !"<string literal>", i1 false, i1 false}
!332 = !{ptr @find_ep._entry, !330, !"_entry", i1 false, i1 false}
!333 = !{ptr @find_ep._entry_ptr, !330, !"_entry_ptr", i1 false, i1 false}
!334 = !{ptr @.str.87, !335, !"<string literal>", i1 false, i1 false}
!335 = !{!"../drivers/usb/serial/keyspan.c", i32 1177, i32 3}
!336 = !{ptr @usa49wg_indat_callback.__UNIQUE_ID_ddebug265, !335, !"__UNIQUE_ID_ddebug265", i1 false, i1 false}
!337 = !{ptr @usa49wg_indat_callback.__UNIQUE_ID_ddebug266, !338, !"__UNIQUE_ID_ddebug266", i1 false, i1 false}
!338 = !{!"../drivers/usb/serial/keyspan.c", i32 1190, i32 4}
!339 = !{ptr @usa49wg_indat_callback.__UNIQUE_ID_ddebug267, !340, !"__UNIQUE_ID_ddebug267", i1 false, i1 false}
!340 = !{!"../drivers/usb/serial/keyspan.c", i32 1234, i32 3}
!341 = !{ptr @.str.88, !342, !"<string literal>", i1 false, i1 false}
!342 = !{!"../drivers/usb/serial/keyspan.c", i32 1527, i32 4}
!343 = !{ptr @.str.89, !342, !"<string literal>", i1 false, i1 false}
!344 = !{ptr @keyspan_open.__UNIQUE_ID_ddebug280, !342, !"__UNIQUE_ID_ddebug280", i1 false, i1 false}
!345 = !{ptr @.str.90, !346, !"<string literal>", i1 false, i1 false}
!346 = !{!"../drivers/usb/serial/keyspan.c", i32 711, i32 2}
!347 = !{ptr @.str.91, !346, !"<string literal>", i1 false, i1 false}
!348 = !{ptr @keyspan_write.__UNIQUE_ID_ddebug238, !346, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!349 = !{ptr @.str.92, !350, !"<string literal>", i1 false, i1 false}
!350 = !{!"../drivers/usb/serial/keyspan.c", i32 725, i32 4}
!351 = !{ptr @keyspan_write.__UNIQUE_ID_ddebug239, !350, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!352 = !{ptr @.str.93, !353, !"<string literal>", i1 false, i1 false}
!353 = !{!"../drivers/usb/serial/keyspan.c", i32 729, i32 3}
!354 = !{ptr @keyspan_write.__UNIQUE_ID_ddebug240, !353, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!355 = !{ptr @.str.94, !356, !"<string literal>", i1 false, i1 false}
!356 = !{!"../drivers/usb/serial/keyspan.c", i32 752, i32 4}
!357 = !{ptr @keyspan_write.__UNIQUE_ID_ddebug241, !356, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!358 = !{ptr @.str.95, !359, !"<string literal>", i1 false, i1 false}
!359 = !{!"../drivers/usb/serial/keyspan.c", i32 3039, i32 18}
!360 = !{ptr @.str.96, !361, !"<string literal>", i1 false, i1 false}
!361 = !{!"../drivers/usb/serial/keyspan.c", i32 3037, i32 12}
!362 = !{ptr @keyspan_2port_device, !363, !"keyspan_2port_device", i1 false, i1 false}
!363 = !{!"../drivers/usb/serial/keyspan.c", i32 3034, i32 33}
!364 = !{ptr @keyspan_2port_ids, !365, !"keyspan_2port_ids", i1 false, i1 false}
!365 = !{!"../drivers/usb/serial/keyspan.c", i32 507, i32 35}
!366 = !{ptr @.str.97, !367, !"<string literal>", i1 false, i1 false}
!367 = !{!"../drivers/usb/serial/keyspan.c", i32 3063, i32 18}
!368 = !{ptr @.str.98, !369, !"<string literal>", i1 false, i1 false}
!369 = !{!"../drivers/usb/serial/keyspan.c", i32 3061, i32 12}
!370 = !{ptr @keyspan_4port_device, !371, !"keyspan_4port_device", i1 false, i1 false}
!371 = !{!"../drivers/usb/serial/keyspan.c", i32 3058, i32 33}
!372 = !{ptr @keyspan_4port_ids, !373, !"keyspan_4port_ids", i1 false, i1 false}
!373 = !{!"../drivers/usb/serial/keyspan.c", i32 515, i32 35}
!374 = !{i32 1, !"wchar_size", i32 2}
!375 = !{i32 1, !"min_enum_size", i32 4}
!376 = !{i32 8, !"branch-target-enforcement", i32 0}
!377 = !{i32 8, !"sign-return-address", i32 0}
!378 = !{i32 8, !"sign-return-address-all", i32 0}
!379 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!380 = !{i32 7, !"uwtable", i32 1}
!381 = !{i32 7, !"frame-pointer", i32 2}
!382 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!383 = !{i64 2148775743, i64 2148775748, i64 2148775761, i64 2148775805, i64 2148775839, i64 2148775860}
!384 = !{!"auto-init"}
