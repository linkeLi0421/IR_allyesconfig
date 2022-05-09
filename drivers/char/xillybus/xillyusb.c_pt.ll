; ModuleID = '/llk/IR_all_yes/drivers/char/xillybus/xillyusb.c_pt.bc'
source_filename = "../drivers/char/xillybus/xillyusb.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.usb_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.usb_dynids, %struct.usbdrv_wrap, i8 }
%struct.usb_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.usbdrv_wrap = type { %struct.device_driver, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usb_device_id = type { i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.xillyfifo = type { i32, i32, i32, i32, i32, %struct.spinlock, %struct.wait_queue_head, i32, i32, i32, i32, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.xillyusb_dev = type { ptr, ptr, ptr, %struct.kref, ptr, i32, %struct.spinlock, %struct.work_struct, i32, ptr, ptr, %struct.mutex, i32, i32, i32, %struct.mutex }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.xillyusb_endpoint = type { ptr, %struct.mutex, %struct.list_head, %struct.list_head, %struct.spinlock, i32, i32, i32, i32, %struct.usb_anchor, %struct.xillyfifo, %struct.work_struct, i8, i8, i8, i8 }
%struct.usb_anchor = type { %struct.list_head, %struct.wait_queue_head, %struct.spinlock, %struct.atomic_t, i8 }
%struct.xillyusb_channel = type { ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.wait_queue_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.xillybuffer = type { %struct.list_head, ptr, ptr, i32 }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.file = type { %union.anon.13, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.13 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@__UNIQUE_ID_description232 = internal constant [54 x i8] c"xillyusb.description=Driver for XillyUSB FPGA IP Core\00", section ".modinfo", align 1
@__UNIQUE_ID_author233 = internal constant [44 x i8] c"xillyusb.author=Eli Billauer, Xillybus Ltd.\00", section ".modinfo", align 1
@__UNIQUE_ID_alias234 = internal constant [24 x i8] c"xillyusb.alias=xillyusb\00", section ".modinfo", align 1
@__UNIQUE_ID_file235 = internal constant [45 x i8] c"xillyusb.file=drivers/char/xillybus/xillyusb\00", section ".modinfo", align 1
@__UNIQUE_ID_license236 = internal constant [24 x i8] c"xillyusb.license=GPL v2\00", section ".modinfo", align 1
@xillyusb_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @xillyname, ptr @xillyusb_probe, ptr @xillyusb_disconnect, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @xillyusb_table, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 16 }, [44 x i8] zeroinitializer }, align 32
@__initcall__kmod_xillyusb__256_2259_xillyusb_init6 = internal global ptr @xillyusb_init, section ".initcall6.init", align 4
@__exitcall_xillyusb_exit = internal global ptr @xillyusb_exit, section ".exitcall.exit", align 4
@xillyname = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"xillyusb\00", [23 x i8] zeroinitializer }, align 32
@xillyusb_table = internal constant { [3 x %struct.usb_device_id], [56 x i8] } { [3 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 1021, i16 -5186, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2555, i16 -5186, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@xillyusb_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"&xdev->process_in_mutex\00", [40 x i8] zeroinitializer }, align 32
@xillyusb_probe.__key.1 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&xdev->msg_mutex\00", [47 x i8] zeroinitializer }, align 32
@xillyusb_probe.__key.3 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&xdev->error_lock\00", [46 x i8] zeroinitializer }, align 32
@xillyusb_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 2137, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to allocate work queue\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"xillyusb_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/char/xillybus/xillyusb.c\00", [63 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@xillyusb_probe._entry_ptr = internal global ptr @xillyusb_probe._entry, section ".printk_index", align 4
@xillyusb_probe.__key.10 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"(work_completion)(&xdev->wakeup_workitem)\00", [54 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@endpoint_alloc.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&ep->buffers_lock\00", [46 x i8] zeroinitializer }, align 32
@endpoint_alloc.__key.13 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&ep->ep_mutex\00", [18 x i8] zeroinitializer }, align 32
@endpoint_alloc.__key.15 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"(work_completion)(&ep->workitem)\00", [63 x i8] zeroinitializer }, align 32
@init_usb_anchor.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&anchor->wait\00", [18 x i8] zeroinitializer }, align 32
@init_usb_anchor.__key.18 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.19 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&anchor->lock\00", [18 x i8] zeroinitializer }, align 32
@fifo_buf_order = internal global { i32, [28 x i8] } zeroinitializer, align 32
@fifo_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.20 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&fifo->lock\00", [20 x i8] zeroinitializer }, align 32
@fifo_init.__key.21 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.22 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&fifo->waitq\00", [19 x i8] zeroinitializer }, align 32
@process_bulk_in._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.7, i32 946, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"Received BULK IN transfer with %d bytes, not a multiple of 4\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"process_bulk_in\00", [16 x i8] zeroinitializer }, align 32
@process_bulk_in._entry_ptr = internal global ptr @process_bulk_in._entry, section ".printk_index", align 4
@process_bulk_in._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.24, ptr @.str.7, i32 970, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Expected opcode counter %d, got %d\0A\00", [60 x i8] zeroinitializer }, align 32
@process_bulk_in._entry_ptr.27 = internal global ptr @process_bulk_in._entry.25, section ".printk_index", align 4
@process_bulk_in._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.24, ptr @.str.7, i32 991, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Received illegal channel ID %d from FPGA\0A\00", [54 x i8] zeroinitializer }, align 32
@process_bulk_in._entry_ptr.30 = internal global ptr @process_bulk_in._entry.28, section ".printk_index", align 4
@process_bulk_in._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.24, ptr @.str.7, i32 1002, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Misbehaving FPGA overflowed an upstream FIFO!\0A\00", [49 x i8] zeroinitializer }, align 32
@process_bulk_in._entry_ptr.33 = internal global ptr @process_bulk_in._entry.31, section ".printk_index", align 4
@process_in_opcode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.34, ptr @.str.7, i32 885, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"process_in_opcode\00", [46 x i8] zeroinitializer }, align 32
@process_in_opcode._entry_ptr = internal global ptr @process_in_opcode._entry, section ".printk_index", align 4
@process_in_opcode._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.34, ptr @.str.7, i32 895, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Received unexpected EOF for channel %d\0A\00", [56 x i8] zeroinitializer }, align 32
@process_in_opcode._entry_ptr.37 = internal global ptr @process_in_opcode._entry.35, section ".printk_index", align 4
@process_in_opcode._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.34, ptr @.str.7, i32 921, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Received illegal opcode %d from FPGA\0A\00", [58 x i8] zeroinitializer }, align 32
@process_in_opcode._entry_ptr.40 = internal global ptr @process_in_opcode._entry.38, section ".printk_index", align 4
@xillyusb_discovery._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.7, i32 1985, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Failed to send quiesce request. Aborting.\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"xillyusb_discovery\00", [45 x i8] zeroinitializer }, align 32
@xillyusb_discovery._entry_ptr = internal global ptr @xillyusb_discovery._entry, section ".printk_index", align 4
@xillyusb_discovery._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.42, ptr @.str.7, i32 2015, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed to send IDT request. Aborting.\0A\00", [57 x i8] zeroinitializer }, align 32
@xillyusb_discovery._entry_ptr.45 = internal global ptr @xillyusb_discovery._entry.43, section ".printk_index", align 4
@xillyusb_discovery._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.42, ptr @.str.7, i32 2035, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"No response from FPGA. Aborting.\0A\00", [62 x i8] zeroinitializer }, align 32
@xillyusb_discovery._entry_ptr.48 = internal global ptr @xillyusb_discovery._entry.46, section ".printk_index", align 4
@xillyusb_discovery._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.42, ptr @.str.7, i32 2050, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"IDT failed CRC check. Aborting.\0A\00", [63 x i8] zeroinitializer }, align 32
@xillyusb_discovery._entry_ptr.51 = internal global ptr @xillyusb_discovery._entry.49, section ".printk_index", align 4
@xillyusb_discovery._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.42, ptr @.str.7, i32 2057, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [90 x i8], [38 x i8] } { [90 x i8] c"No support for IDT version 0x%02x. Maybe the xillyusb driver needs an upgrade. Aborting.\0A\00", [38 x i8] zeroinitializer }, align 32
@xillyusb_discovery._entry_ptr.54 = internal global ptr @xillyusb_discovery._entry.52, section ".printk_index", align 4
@xillyusb_discovery._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.42, ptr @.str.7, i32 2069, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"IDT too short. This is exceptionally weird, because its CRC is OK\0A\00", [61 x i8] zeroinitializer }, align 32
@xillyusb_discovery._entry_ptr.57 = internal global ptr @xillyusb_discovery._entry.55, section ".printk_index", align 4
@xillyusb_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @xillyusb_llseek, ptr @xillyusb_read, ptr @xillyusb_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @xillyusb_poll, ptr null, ptr null, ptr null, i32 0, ptr @xillyusb_open, ptr @xillyusb_flush, ptr @xillyusb_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@setup_channels.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.58 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&chan->in_mutex\00", [16 x i8] zeroinitializer }, align 32
@setup_channels.__key.59 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.60 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&chan->out_mutex\00", [47 x i8] zeroinitializer }, align 32
@setup_channels.__key.61 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.62 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&chan->lock\00", [20 x i8] zeroinitializer }, align 32
@setup_channels.__key.63 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.64 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&chan->flushq\00", [18 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.65 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@xillyusb_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.69, ptr @.str.7, i32 1260, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"open() failed: O_NONBLOCK not allowed for read on this device\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"xillyusb_open\00", [18 x i8] zeroinitializer }, align 32
@xillyusb_open._entry_ptr = internal global ptr @xillyusb_open._entry, section ".printk_index", align 4
@xillyusb_open._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.69, ptr @.str.7, i32 1267, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"open() failed: O_NONBLOCK not allowed for write on this device\0A\00", [32 x i8] zeroinitializer }, align 32
@xillyusb_open._entry_ptr.72 = internal global ptr @xillyusb_open._entry.70, section ".printk_index", align 4
@xillyusb_flush._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.74, ptr @.str.7, i32 1623, ptr @.str.75, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Timed out while flushing. Output data may be lost.\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"xillyusb_flush\00", [17 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@xillyusb_flush._entry_ptr = internal global ptr @xillyusb_flush._entry, section ".printk_index", align 4
@xillyusb_disconnect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.77, ptr @.str.7, i32 2197, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"Weird timeout condition on sending quiesce request.\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"xillyusb_disconnect\00", [44 x i8] zeroinitializer }, align 32
@xillyusb_disconnect._entry_ptr = internal global ptr @xillyusb_disconnect._entry, section ".printk_index", align 4
@.str.78 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"xillyusb\00", [23 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.79 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 4294967188, i64 4294967192, i64 4294967294]
@__sancov_gen_cov_switch_values.80 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 4294967188, i64 4294967192, i64 4294967294]
@__sancov_gen_cov_switch_values.81 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.82 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967186]
@___asan_gen_.83 = private unnamed_addr constant [16 x i8] c"xillyusb_driver\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 2232, i32 26 }
@___asan_gen_.86 = private unnamed_addr constant [10 x i8] c"xillyname\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 50, i32 19 }
@___asan_gen_.89 = private unnamed_addr constant [15 x i8] c"xillyusb_table\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 59, i32 35 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 2125, i32 2 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 2126, i32 2 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 2131, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 2137, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 2142, i32 2 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 497, i32 2 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 498, i32 2 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 501, i32 2 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 1367, i32 2 }
@___asan_gen_.162 = private unnamed_addr constant [23 x i8] c"../include/linux/usb.h\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 1368, i32 2 }
@___asan_gen_.164 = private unnamed_addr constant [15 x i8] c"fifo_buf_order\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 52, i32 21 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 405, i32 2 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 406, i32 2 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 945, i32 3 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 969, i32 5 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 990, i32 4 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 1002, i32 4 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 884, i32 3 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 894, i32 4 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 920, i32 3 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 1985, i32 3 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 2015, i32 3 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 2035, i32 3 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 2050, i32 3 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 2056, i32 3 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 2069, i32 3 }
@___asan_gen_.263 = private unnamed_addr constant [14 x i8] c"xillyusb_fops\00", align 1
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 1881, i32 37 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 1937, i32 3 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 1938, i32 3 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 1939, i32 3 }
@___asan_gen_.284 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 1940, i32 3 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 230, i32 6 }
@___asan_gen_.294 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 214, i32 2 }
@___asan_gen_.297 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 174, i32 2 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 1259, i32 3 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 1266, i32 3 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 1622, i32 4 }
@___asan_gen_.326 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 2196, i32 3 }
@___asan_gen_.335 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.336 = private constant [36 x i8] c"../drivers/char/xillybus/xillyusb.c\00", align 1
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 2249, i32 7 }
@llvm.compiler.used = appending global [111 x ptr] [ptr @__UNIQUE_ID_alias234, ptr @__UNIQUE_ID_author233, ptr @__UNIQUE_ID_description232, ptr @__UNIQUE_ID_file235, ptr @__UNIQUE_ID_license236, ptr @__exitcall_xillyusb_exit, ptr @__initcall__kmod_xillyusb__256_2259_xillyusb_init6, ptr @process_bulk_in._entry, ptr @process_bulk_in._entry.25, ptr @process_bulk_in._entry.28, ptr @process_bulk_in._entry.31, ptr @process_bulk_in._entry_ptr, ptr @process_bulk_in._entry_ptr.27, ptr @process_bulk_in._entry_ptr.30, ptr @process_bulk_in._entry_ptr.33, ptr @process_in_opcode._entry, ptr @process_in_opcode._entry.35, ptr @process_in_opcode._entry.38, ptr @process_in_opcode._entry_ptr, ptr @process_in_opcode._entry_ptr.37, ptr @process_in_opcode._entry_ptr.40, ptr @xillyusb_disconnect._entry, ptr @xillyusb_disconnect._entry_ptr, ptr @xillyusb_discovery._entry, ptr @xillyusb_discovery._entry.43, ptr @xillyusb_discovery._entry.46, ptr @xillyusb_discovery._entry.49, ptr @xillyusb_discovery._entry.52, ptr @xillyusb_discovery._entry.55, ptr @xillyusb_discovery._entry_ptr, ptr @xillyusb_discovery._entry_ptr.45, ptr @xillyusb_discovery._entry_ptr.48, ptr @xillyusb_discovery._entry_ptr.51, ptr @xillyusb_discovery._entry_ptr.54, ptr @xillyusb_discovery._entry_ptr.57, ptr @xillyusb_exit, ptr @xillyusb_flush._entry, ptr @xillyusb_flush._entry_ptr, ptr @xillyusb_open._entry, ptr @xillyusb_open._entry.70, ptr @xillyusb_open._entry_ptr, ptr @xillyusb_open._entry_ptr.72, ptr @xillyusb_probe._entry, ptr @xillyusb_probe._entry_ptr, ptr @xillyusb_driver, ptr @xillyname, ptr @xillyusb_table, ptr @xillyusb_probe.__key, ptr @.str, ptr @xillyusb_probe.__key.1, ptr @.str.2, ptr @xillyusb_probe.__key.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @xillyusb_probe.__key.10, ptr @.str.11, ptr @endpoint_alloc.__key, ptr @.str.12, ptr @endpoint_alloc.__key.13, ptr @.str.14, ptr @endpoint_alloc.__key.15, ptr @.str.16, ptr @init_usb_anchor.__key, ptr @.str.17, ptr @init_usb_anchor.__key.18, ptr @.str.19, ptr @fifo_buf_order, ptr @fifo_init.__key, ptr @.str.20, ptr @fifo_init.__key.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @.str.29, ptr @.str.32, ptr @.str.34, ptr @.str.36, ptr @.str.39, ptr @.str.41, ptr @.str.42, ptr @.str.44, ptr @.str.47, ptr @.str.50, ptr @.str.53, ptr @.str.56, ptr @xillyusb_fops, ptr @setup_channels.__key, ptr @.str.58, ptr @setup_channels.__key.59, ptr @.str.60, ptr @setup_channels.__key.61, ptr @.str.62, ptr @setup_channels.__key.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.71, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78], section "llvm.metadata"
@0 = internal global [85 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xillyusb_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xillyname to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xillyusb_table to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xillyusb_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xillyusb_probe.__key.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xillyusb_probe.__key.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xillyusb_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xillyusb_probe.__key.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @endpoint_alloc.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @endpoint_alloc.__key.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @endpoint_alloc.__key.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_usb_anchor.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_usb_anchor.__key.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fifo_buf_order to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fifo_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fifo_init.__key.21 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @process_bulk_in._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @process_bulk_in._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @process_bulk_in._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @process_bulk_in._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @process_in_opcode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @process_in_opcode._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @process_in_opcode._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xillyusb_discovery._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xillyusb_discovery._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xillyusb_discovery._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xillyusb_discovery._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xillyusb_discovery._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 90, i32 128, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xillyusb_discovery._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xillyusb_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @setup_channels.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @setup_channels.__key.59 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @setup_channels.__key.61 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @setup_channels.__key.63 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xillyusb_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xillyusb_open._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xillyusb_flush._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xillyusb_disconnect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @xillyusb_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @usb_deregister(ptr noundef nonnull @xillyusb_driver) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @xillyusb_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  store i32 4, ptr @fifo_buf_order, align 4
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @xillyusb_driver, ptr noundef null, ptr noundef nonnull @.str.78) #13
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xillyusb_probe(ptr noundef %interface, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %bogus_chandesc.i = alloca [2 x i16], align 2
  %idt_fifo.i = alloca %struct.xillyfifo, align 4
  %__wq_entry.i = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 320) #16
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %kref = getelementptr inbounds %struct.xillyusb_dev, ptr %call7.i.i, i32 0, i32 3
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #13
  %1 = ptrtoint ptr %kref to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile i32 1, ptr %kref, align 4
  %process_in_mutex = getelementptr inbounds %struct.xillyusb_dev, ptr %call7.i.i, i32 0, i32 15
  tail call void @__mutex_init(ptr noundef %process_in_mutex, ptr noundef nonnull @.str, ptr noundef nonnull @xillyusb_probe.__key) #13
  %msg_mutex = getelementptr inbounds %struct.xillyusb_dev, ptr %call7.i.i, i32 0, i32 11
  tail call void @__mutex_init(ptr noundef %msg_mutex, ptr noundef nonnull @.str.2, ptr noundef nonnull @xillyusb_probe.__key.1) #13
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7, i32 1
  %2 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %3, i32 -128
  %call5 = tail call ptr @usb_get_dev(ptr noundef %add.ptr.i) #13
  %udev = getelementptr inbounds %struct.xillyusb_dev, ptr %call7.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %udev to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call5, ptr %udev, align 4
  %dev = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7
  %dev6 = getelementptr inbounds %struct.xillyusb_dev, ptr %call7.i.i, i32 0, i32 2
  %5 = ptrtoint ptr %dev6 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %dev, ptr %dev6, align 8
  %error = getelementptr inbounds %struct.xillyusb_dev, ptr %call7.i.i, i32 0, i32 5
  %6 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %error, align 4
  %error_lock = getelementptr inbounds %struct.xillyusb_dev, ptr %call7.i.i, i32 0, i32 6
  tail call void @__raw_spin_lock_init(ptr noundef %error_lock, ptr noundef nonnull @.str.4, ptr noundef nonnull @xillyusb_probe.__key.3, i16 noundef signext 3) #13
  %in_counter = getelementptr inbounds %struct.xillyusb_dev, ptr %call7.i.i, i32 0, i32 14
  %7 = ptrtoint ptr %in_counter to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %in_counter, align 8
  %in_bytes_left = getelementptr inbounds %struct.xillyusb_dev, ptr %call7.i.i, i32 0, i32 12
  %8 = ptrtoint ptr %in_bytes_left to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %in_bytes_left, align 8
  %call11 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @xillyname, i32 noundef 16, i32 noundef 0) #13
  %workq = getelementptr inbounds %struct.xillyusb_dev, ptr %call7.i.i, i32 0, i32 4
  %9 = ptrtoint ptr %workq to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call11, ptr %workq, align 8
  %tobool13.not = icmp eq ptr %call11, null
  br i1 %tobool13.not, label %do.end17, label %do.body20

do.end17:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.5) #17
  br label %fail

do.body20:                                        ; preds = %if.end
  %wakeup_workitem = getelementptr inbounds %struct.xillyusb_dev, ptr %call7.i.i, i32 0, i32 7
  tail call void @__init_work(ptr noundef %wakeup_workitem, i32 noundef 0) #13
  %10 = ptrtoint ptr %wakeup_workitem to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -64, ptr %wakeup_workitem, align 4
  %lockdep_map = getelementptr inbounds %struct.xillyusb_dev, ptr %call7.i.i, i32 0, i32 7, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.11, ptr noundef nonnull @xillyusb_probe.__key.10, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #13
  %entry24 = getelementptr inbounds %struct.xillyusb_dev, ptr %call7.i.i, i32 0, i32 7, i32 1
  %11 = ptrtoint ptr %entry24 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %entry24, ptr %entry24, align 8
  %prev.i = getelementptr inbounds %struct.xillyusb_dev, ptr %call7.i.i, i32 0, i32 7, i32 1, i32 1
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %entry24, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.xillyusb_dev, ptr %call7.i.i, i32 0, i32 7, i32 2
  %13 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @wakeup_all, ptr %func, align 8
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7, i32 8
  %14 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %call.i = tail call fastcc ptr @endpoint_alloc(ptr noundef nonnull %call7.i.i, i8 noundef zeroext 1, ptr noundef nonnull @bulk_out_work, i32 noundef 1, i32 noundef 2) #13
  %msg_ep.i = getelementptr inbounds %struct.xillyusb_dev, ptr %call7.i.i, i32 0, i32 9
  %15 = ptrtoint ptr %msg_ep.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call.i, ptr %msg_ep.i, align 4
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %do.body20.fail_crit_edge, label %if.end.i

do.body20.fail_crit_edge:                         ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #15
  br label %fail

if.end.i:                                         ; preds = %do.body20
  %fifo.i = getelementptr inbounds %struct.xillyusb_endpoint, ptr %call.i, i32 0, i32 10
  %call3.i = tail call fastcc i32 @fifo_init(ptr noundef %fifo.i, i32 noundef 13) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %if.end6.i, label %if.end.i.dealloc.i_crit_edge

if.end.i.dealloc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dealloc.i

if.end6.i:                                        ; preds = %if.end.i
  %16 = ptrtoint ptr %msg_ep.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %msg_ep.i, align 4
  %fill_mask.i = getelementptr inbounds %struct.xillyusb_endpoint, ptr %17, i32 0, i32 7
  %18 = ptrtoint ptr %fill_mask.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -8, ptr %fill_mask.i, align 4
  %call8.i = tail call fastcc ptr @endpoint_alloc(ptr noundef nonnull %call7.i.i, i8 noundef zeroext -127, ptr noundef nonnull @bulk_in_work, i32 noundef 4, i32 noundef 8) #13
  %in_ep.i = getelementptr inbounds %struct.xillyusb_dev, ptr %call7.i.i, i32 0, i32 10
  %19 = ptrtoint ptr %in_ep.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call8.i, ptr %in_ep.i, align 8
  %tobool10.not.i = icmp eq ptr %call8.i, null
  br i1 %tobool10.not.i, label %if.end6.i.dealloc.i_crit_edge, label %if.end31

if.end6.i.dealloc.i_crit_edge:                    ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dealloc.i

dealloc.i:                                        ; preds = %if.end6.i.dealloc.i_crit_edge, %if.end.i.dealloc.i_crit_edge
  %20 = ptrtoint ptr %msg_ep.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %msg_ep.i, align 4
  tail call fastcc void @endpoint_dealloc(ptr noundef %21) #13
  %22 = ptrtoint ptr %msg_ep.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %msg_ep.i, align 4
  br label %fail

if.end31:                                         ; preds = %if.end6.i
  tail call fastcc void @try_queue_bulk_in(ptr noundef nonnull %call8.i) #13
  %23 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bogus_chandesc.i) #13
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %idt_fifo.i) #13
  %25 = call ptr @memset(ptr %idt_fifo.i, i32 255, i32 136)
  %call1.i = tail call fastcc i32 @xillyusb_send_opcode(ptr noundef %24, i32 noundef -1, i8 noundef zeroext 0, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i67 = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i67, label %if.end.i70, label %do.end.i

do.end.i:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.41) #17
  br label %xillyusb_discovery.exit.thread

if.end.i70:                                       ; preds = %if.end31
  %26 = getelementptr inbounds [2 x i16], ptr %bogus_chandesc.i, i32 0, i32 1
  %27 = ptrtoint ptr %bogus_chandesc.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 -32768, ptr %bogus_chandesc.i, align 2
  %28 = ptrtoint ptr %26 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 0, ptr %26, align 2
  %call3.i68 = call fastcc i32 @setup_channels(ptr noundef %24, ptr noundef nonnull %bogus_chandesc.i, i32 noundef 1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i68)
  %tobool4.not.i69 = icmp eq i32 %call3.i68, 0
  br i1 %tobool4.not.i69, label %if.end6.i71, label %if.end.i70.xillyusb_discovery.exit.thread_crit_edge

if.end.i70.xillyusb_discovery.exit.thread_crit_edge: ; preds = %if.end.i70
  call void @__sanitizer_cov_trace_pc() #15
  br label %xillyusb_discovery.exit.thread

if.end6.i71:                                      ; preds = %if.end.i70
  %call7.i = call fastcc i32 @fifo_init(ptr noundef nonnull %idt_fifo.i, i32 noundef 16) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %if.end10.i, label %if.end6.i71.xillyusb_discovery.exit.thread_crit_edge

if.end6.i71.xillyusb_discovery.exit.thread_crit_edge: ; preds = %if.end6.i71
  call void @__sanitizer_cov_trace_pc() #15
  br label %xillyusb_discovery.exit.thread

if.end10.i:                                       ; preds = %if.end6.i71
  %29 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %24, align 4
  %in_fifo.i = getelementptr inbounds %struct.xillyusb_channel, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %in_fifo.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %idt_fifo.i, ptr %in_fifo.i, align 4
  %read_data_ok.i = getelementptr inbounds %struct.xillyusb_channel, ptr %30, i32 0, i32 15
  %32 = ptrtoint ptr %read_data_ok.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 1, ptr %read_data_ok.i, align 4
  %num_channels11.i = getelementptr inbounds %struct.xillyusb_dev, ptr %24, i32 0, i32 8
  %33 = ptrtoint ptr %num_channels11.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 1, ptr %num_channels11.i, align 4
  %call12.i = call fastcc i32 @xillyusb_send_opcode(ptr noundef %24, i32 noundef -1, i8 noundef zeroext 1, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool13.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool13.not.i, label %if.end19.i, label %do.end17.i

do.end17.i:                                       ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.44) #17
  br label %unfifo.i

if.end19.i:                                       ; preds = %if.end10.i
  call void @__might_sleep(ptr noundef nonnull @.str.7, i32 noundef 2021) #13
  %34 = ptrtoint ptr %read_data_ok.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %read_data_ok.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool27.not.i = icmp eq i32 %35, 0
  br i1 %tobool27.not.i, label %if.end65.thread.i, label %if.then36.i

if.then36.i:                                      ; preds = %if.end19.i
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry.i) #13
  %36 = call ptr @memset(ptr %__wq_entry.i, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry.i, i32 noundef 0) #13
  %waitq.i = getelementptr inbounds %struct.xillyfifo, ptr %idt_fifo.i, i32 0, i32 6
  %call38216.i = call i32 @prepare_to_wait_event(ptr noundef %waitq.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 1) #13
  %37 = ptrtoint ptr %read_data_ok.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %read_data_ok.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool41.not217.i = icmp eq i32 %38, 0
  br i1 %tobool41.not217.i, label %if.then36.i.for.end.i_crit_edge, label %if.then36.i.if.end58.i_crit_edge

if.then36.i.if.end58.i_crit_edge:                 ; preds = %if.then36.i
  br label %if.end58.i

if.then36.i.for.end.i_crit_edge:                  ; preds = %if.then36.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

if.end58.i:                                       ; preds = %cleanup.i.if.end58.i_crit_edge, %if.then36.i.if.end58.i_crit_edge
  %__ret37.1219.i = phi i32 [ %__ret37.1.i, %cleanup.i.if.end58.i_crit_edge ], [ 50, %if.then36.i.if.end58.i_crit_edge ]
  %call38218.i = phi i32 [ %call38.i, %cleanup.i.if.end58.i_crit_edge ], [ %call38216.i, %if.then36.i.if.end58.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38218.i)
  %tobool59.not.i = icmp eq i32 %call38218.i, 0
  br i1 %tobool59.not.i, label %cleanup.i, label %if.end58.i.if.end65.i_crit_edge

if.end58.i.if.end65.i_crit_edge:                  ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end65.i

cleanup.i:                                        ; preds = %if.end58.i
  %call62.i = call i32 @schedule_timeout(i32 noundef %__ret37.1219.i) #13
  %call38.i = call i32 @prepare_to_wait_event(ptr noundef %waitq.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 1) #13
  %39 = ptrtoint ptr %read_data_ok.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %read_data_ok.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool41.not.i = icmp eq i32 %40, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62.i)
  %tobool46.not.i = icmp eq i32 %call62.i, 0
  %41 = select i1 %tobool41.not.i, i1 %tobool46.not.i, i1 false
  %__ret37.1.i = select i1 %41, i32 1, i32 %call62.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret37.1.i)
  %tobool52.not.i = icmp eq i32 %__ret37.1.i, 0
  %42 = select i1 %tobool41.not.i, i1 true, i1 %tobool52.not.i
  br i1 %42, label %cleanup.i.for.end.i_crit_edge, label %cleanup.i.if.end58.i_crit_edge

cleanup.i.if.end58.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end58.i

cleanup.i.for.end.i_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

for.end.i:                                        ; preds = %cleanup.i.for.end.i_crit_edge, %if.then36.i.for.end.i_crit_edge
  %__ret37.1.lcssa.i = phi i32 [ 50, %if.then36.i.for.end.i_crit_edge ], [ %__ret37.1.i, %cleanup.i.for.end.i_crit_edge ]
  call void @finish_wait(ptr noundef %waitq.i, ptr noundef nonnull %__wq_entry.i) #13
  br label %if.end65.i

if.end65.i:                                       ; preds = %for.end.i, %if.end58.i.if.end65.i_crit_edge
  %__ret37.2199.i = phi i32 [ %__ret37.1.lcssa.i, %for.end.i ], [ %call38218.i, %if.end58.i.if.end65.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i) #13
  %error.i = getelementptr inbounds %struct.xillyusb_dev, ptr %24, i32 0, i32 5
  %43 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool67.not.i = icmp eq i32 %44, 0
  br i1 %tobool67.not.i, label %if.end70.i, label %if.end65.i.unfifo.i_crit_edge

if.end65.i.unfifo.i_crit_edge:                    ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %unfifo.i

if.end65.thread.i:                                ; preds = %if.end19.i
  %error205.i = getelementptr inbounds %struct.xillyusb_dev, ptr %24, i32 0, i32 5
  %45 = ptrtoint ptr %error205.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %error205.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool67.not206.i = icmp eq i32 %46, 0
  br i1 %tobool67.not206.i, label %if.end65.thread.i.if.end72.i_crit_edge, label %if.end65.thread.i.unfifo.i_crit_edge

if.end65.thread.i.unfifo.i_crit_edge:             ; preds = %if.end65.thread.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %unfifo.i

if.end65.thread.i.if.end72.i_crit_edge:           ; preds = %if.end65.thread.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end72.i

if.end70.i:                                       ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret37.2199.i)
  %cmp.i = icmp slt i32 %__ret37.2199.i, 0
  br i1 %cmp.i, label %if.end70.i.unfifo.i_crit_edge, label %if.end70.i.if.end72.i_crit_edge

if.end70.i.if.end72.i_crit_edge:                  ; preds = %if.end70.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end72.i

if.end70.i.unfifo.i_crit_edge:                    ; preds = %if.end70.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %unfifo.i

if.end72.i:                                       ; preds = %if.end70.i.if.end72.i_crit_edge, %if.end65.thread.i.if.end72.i_crit_edge
  %47 = ptrtoint ptr %read_data_ok.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %read_data_ok.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool74.not.i = icmp eq i32 %48, 0
  br i1 %tobool74.not.i, label %do.end83.i, label %if.then75.i

if.then75.i:                                      ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.47) #17
  br label %unfifo.i

do.end83.i:                                       ; preds = %if.end72.i
  %fill.i = getelementptr inbounds %struct.xillyfifo, ptr %idt_fifo.i, i32 0, i32 4
  %49 = ptrtoint ptr %fill.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile i32, ptr %fill.i, align 4
  %call9.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %50, i32 noundef 3264) #18
  %tobool86.not.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool86.not.i, label %do.end83.i.unfifo.i_crit_edge, label %if.end88.i

do.end83.i.unfifo.i_crit_edge:                    ; preds = %do.end83.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %unfifo.i

if.end88.i:                                       ; preds = %do.end83.i
  %call89.i = call fastcc i32 @fifo_read(ptr noundef nonnull %idt_fifo.i, ptr noundef nonnull %call9.i.i, i32 noundef %50, ptr noundef nonnull @xilly_memcpy) #13
  %call90.i = call i32 @crc32_le(i32 noundef -1, ptr noundef nonnull %call9.i.i, i32 noundef %50) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90.i)
  %cmp91.not.i = icmp eq i32 %call90.i, 0
  br i1 %cmp91.not.i, label %if.end97.i, label %do.end95.i

do.end95.i:                                       ; preds = %if.end88.i
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.50) #17
  br label %unidt.i

if.end97.i:                                       ; preds = %if.end88.i
  %51 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %call9.i.i, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 -112, i8 %52)
  %cmp98.i = icmp ugt i8 %52, -112
  br i1 %cmp98.i, label %do.end103.i, label %if.end106.i

do.end103.i:                                      ; preds = %if.end97.i
  call void @__sanitizer_cov_trace_pc() #15
  %conv.i = zext i8 %52 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.53, i32 noundef %conv.i) #17
  br label %unidt.i

if.end106.i:                                      ; preds = %if.end97.i
  %add.ptr.i73 = getelementptr i8, ptr %call9.i.i, i32 1
  %53 = ptrtoint ptr %add.ptr.i73 to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %add.ptr.i73, align 2
  %55 = call i16 @llvm.bswap.i16(i16 %54) #13
  %conv107.i = zext i16 %55 to i32
  %mul.i = shl nuw nsw i32 %conv107.i, 2
  %add.i = or i32 %mul.i, 3
  %sub.i = add i32 %50, -4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %add.i)
  %cmp108.i = icmp ult i32 %sub.i, %add.i
  br i1 %cmp108.i, label %do.end113.i, label %if.end115.i

do.end113.i:                                      ; preds = %if.end106.i
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.56) #17
  br label %unidt.i

if.end115.i:                                      ; preds = %if.end106.i
  %add.ptr116.i = getelementptr i8, ptr %call9.i.i, i32 3
  %call117.i = call fastcc i32 @setup_channels(ptr noundef %24, ptr noundef %add.ptr116.i, i32 noundef %conv107.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call117.i)
  %tobool118.not.i = icmp eq i32 %call117.i, 0
  br i1 %tobool118.not.i, label %if.end120.i, label %if.end115.i.unidt.i_crit_edge

if.end115.i.unidt.i_crit_edge:                    ; preds = %if.end115.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %unidt.i

if.end120.i:                                      ; preds = %if.end115.i
  call void @__sanitizer_cov_trace_pc() #15
  %workq.i = getelementptr inbounds %struct.xillyusb_dev, ptr %24, i32 0, i32 4
  %56 = ptrtoint ptr %workq.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %workq.i, align 4
  call void @flush_workqueue(ptr noundef %57) #13
  %58 = ptrtoint ptr %num_channels11.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %conv107.i, ptr %num_channels11.i, align 4
  call fastcc void @fifo_mem_release(ptr noundef nonnull %idt_fifo.i) #13
  call void @kfree(ptr noundef %30) #13
  %add.ptr123.i = getelementptr i8, ptr %call9.i.i, i32 %add.i
  %sub124.i = sub i32 %sub.i, %add.i
  %call125.i = call i32 @xillybus_init_chrdev(ptr noundef %dev, ptr noundef nonnull @xillyusb_fops, ptr noundef null, ptr noundef %24, ptr noundef %add.ptr123.i, i32 noundef %sub124.i, i32 noundef %conv107.i, ptr noundef nonnull @xillyname, i1 noundef zeroext true) #13
  call void @kfree(ptr noundef nonnull %call9.i.i) #13
  br label %xillyusb_discovery.exit

unidt.i:                                          ; preds = %if.end115.i.unidt.i_crit_edge, %do.end113.i, %do.end103.i, %do.end95.i
  %rc.0.i = phi i32 [ -19, %do.end95.i ], [ -19, %do.end103.i ], [ -19, %do.end113.i ], [ %call117.i, %if.end115.i.unidt.i_crit_edge ]
  call void @kfree(ptr noundef nonnull %call9.i.i) #13
  br label %unfifo.i

unfifo.i:                                         ; preds = %unidt.i, %do.end83.i.unfifo.i_crit_edge, %if.then75.i, %if.end70.i.unfifo.i_crit_edge, %if.end65.thread.i.unfifo.i_crit_edge, %if.end65.i.unfifo.i_crit_edge, %do.end17.i
  %rc.1.i = phi i32 [ %call12.i, %do.end17.i ], [ -110, %if.then75.i ], [ %rc.0.i, %unidt.i ], [ %44, %if.end65.i.unfifo.i_crit_edge ], [ -4, %if.end70.i.unfifo.i_crit_edge ], [ -12, %do.end83.i.unfifo.i_crit_edge ], [ %46, %if.end65.thread.i.unfifo.i_crit_edge ]
  %lock.i.i = getelementptr inbounds %struct.xillyusb_channel, ptr %30, i32 0, i32 3
  call void @mutex_lock_nested(ptr noundef %lock.i.i, i32 noundef 0) #13
  %59 = ptrtoint ptr %in_fifo.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr null, ptr %in_fifo.i, align 4
  call void @mutex_unlock(ptr noundef %lock.i.i) #13
  %60 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %30, align 4
  %in_ep.i.i = getelementptr inbounds %struct.xillyusb_dev, ptr %61, i32 0, i32 10
  %62 = ptrtoint ptr %in_ep.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %in_ep.i.i, align 4
  %workitem.i.i = getelementptr inbounds %struct.xillyusb_endpoint, ptr %63, i32 0, i32 11
  %call.i.i = call zeroext i1 @flush_work(ptr noundef %workitem.i.i) #13
  %mem.i.i = getelementptr inbounds %struct.xillyfifo, ptr %idt_fifo.i, i32 0, i32 11
  %64 = ptrtoint ptr %mem.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %mem.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %65, null
  br i1 %tobool.not.i.i, label %unfifo.i.xillyusb_discovery.exit.thread_crit_edge, label %for.cond.preheader.i.i

unfifo.i.xillyusb_discovery.exit.thread_crit_edge: ; preds = %unfifo.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %xillyusb_discovery.exit.thread

for.cond.preheader.i.i:                           ; preds = %unfifo.i
  %bufnum.i.i = getelementptr inbounds %struct.xillyfifo, ptr %idt_fifo.i, i32 0, i32 1
  %66 = ptrtoint ptr %bufnum.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %bufnum.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %cmp9.not.i.i = icmp eq i32 %67, 0
  br i1 %cmp9.not.i.i, label %for.cond.preheader.i.i.for.end.i.i_crit_edge, label %for.body.lr.ph.i.i

for.cond.preheader.i.i.for.end.i.i_crit_edge:     ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i.i

for.body.lr.ph.i.i:                               ; preds = %for.cond.preheader.i.i
  %buf_order.i.i = getelementptr inbounds %struct.xillyfifo, ptr %idt_fifo.i, i32 0, i32 3
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.010.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %68 = ptrtoint ptr %mem.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %mem.i.i, align 4
  %arrayidx.i.i = getelementptr ptr, ptr %69, i32 %i.010.i.i
  %70 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %arrayidx.i.i, align 4
  %72 = ptrtoint ptr %71 to i32
  %73 = ptrtoint ptr %buf_order.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %buf_order.i.i, align 4
  call void @free_pages(i32 noundef %72, i32 noundef %74) #13
  %inc.i.i = add nuw i32 %i.010.i.i, 1
  %75 = ptrtoint ptr %bufnum.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %bufnum.i.i, align 4
  %cmp.i196.i = icmp ult i32 %inc.i.i, %76
  br i1 %cmp.i196.i, label %for.body.i.i.for.body.i.i_crit_edge, label %for.body.i.i.for.end.i.i_crit_edge

for.body.i.i.for.end.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i.i

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %for.body.i.i.for.end.i.i_crit_edge, %for.cond.preheader.i.i.for.end.i.i_crit_edge
  %77 = ptrtoint ptr %mem.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %mem.i.i, align 4
  call void @kfree(ptr noundef %78) #13
  br label %xillyusb_discovery.exit

xillyusb_discovery.exit.thread:                   ; preds = %unfifo.i.xillyusb_discovery.exit.thread_crit_edge, %if.end6.i71.xillyusb_discovery.exit.thread_crit_edge, %if.end.i70.xillyusb_discovery.exit.thread_crit_edge, %do.end.i
  %retval.0.i74.ph = phi i32 [ %rc.1.i, %unfifo.i.xillyusb_discovery.exit.thread_crit_edge ], [ %call7.i, %if.end6.i71.xillyusb_discovery.exit.thread_crit_edge ], [ %call3.i68, %if.end.i70.xillyusb_discovery.exit.thread_crit_edge ], [ %call1.i, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %idt_fifo.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bogus_chandesc.i) #13
  br label %latefail

xillyusb_discovery.exit:                          ; preds = %for.end.i.i, %if.end120.i
  %retval.0.i74 = phi i32 [ %call125.i, %if.end120.i ], [ %rc.1.i, %for.end.i.i ]
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %idt_fifo.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bogus_chandesc.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i74)
  %tobool33.not = icmp eq i32 %retval.0.i74, 0
  br i1 %tobool33.not, label %xillyusb_discovery.exit.cleanup_crit_edge, label %xillyusb_discovery.exit.latefail_crit_edge

xillyusb_discovery.exit.latefail_crit_edge:       ; preds = %xillyusb_discovery.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %latefail

xillyusb_discovery.exit.cleanup_crit_edge:        ; preds = %xillyusb_discovery.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

latefail:                                         ; preds = %xillyusb_discovery.exit.latefail_crit_edge, %xillyusb_discovery.exit.thread
  %retval.0.i7486 = phi i32 [ %retval.0.i74.ph, %xillyusb_discovery.exit.thread ], [ %retval.0.i74, %xillyusb_discovery.exit.latefail_crit_edge ]
  %79 = ptrtoint ptr %in_ep.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %in_ep.i, align 8
  %ep_mutex.i = getelementptr inbounds %struct.xillyusb_endpoint, ptr %80, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %ep_mutex.i, i32 noundef 0) #13
  %shutting_down.i = getelementptr inbounds %struct.xillyusb_endpoint, ptr %80, i32 0, i32 12
  %81 = ptrtoint ptr %shutting_down.i to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 1, ptr %shutting_down.i, align 4
  call void @mutex_unlock(ptr noundef %ep_mutex.i) #13
  %anchor.i = getelementptr inbounds %struct.xillyusb_endpoint, ptr %80, i32 0, i32 9
  call void @usb_kill_anchored_urbs(ptr noundef %anchor.i) #13
  %workitem.i = getelementptr inbounds %struct.xillyusb_endpoint, ptr %80, i32 0, i32 11
  %call.i75 = call zeroext i1 @cancel_work_sync(ptr noundef %workitem.i) #13
  %82 = ptrtoint ptr %msg_ep.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %msg_ep.i, align 4
  %ep_mutex.i76 = getelementptr inbounds %struct.xillyusb_endpoint, ptr %83, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %ep_mutex.i76, i32 noundef 0) #13
  %shutting_down.i77 = getelementptr inbounds %struct.xillyusb_endpoint, ptr %83, i32 0, i32 12
  %84 = ptrtoint ptr %shutting_down.i77 to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 1, ptr %shutting_down.i77, align 4
  call void @mutex_unlock(ptr noundef %ep_mutex.i76) #13
  %anchor.i78 = getelementptr inbounds %struct.xillyusb_endpoint, ptr %83, i32 0, i32 9
  call void @usb_kill_anchored_urbs(ptr noundef %anchor.i78) #13
  %workitem.i79 = getelementptr inbounds %struct.xillyusb_endpoint, ptr %83, i32 0, i32 11
  %call.i80 = call zeroext i1 @cancel_work_sync(ptr noundef %workitem.i79) #13
  br label %fail

fail:                                             ; preds = %latefail, %dealloc.i, %do.body20.fail_crit_edge, %do.end17
  %rc.0 = phi i32 [ %retval.0.i7486, %latefail ], [ -12, %do.end17 ], [ -12, %dealloc.i ], [ -12, %do.body20.fail_crit_edge ]
  %driver_data.i.i81 = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7, i32 8
  %85 = ptrtoint ptr %driver_data.i.i81 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr null, ptr %driver_data.i.i81, align 4
  call fastcc void @kref_put(ptr noundef %kref)
  br label %cleanup

cleanup:                                          ; preds = %fail, %xillyusb_discovery.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0, %fail ], [ -12, %entry.cleanup_crit_edge ], [ 0, %xillyusb_discovery.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xillyusb_disconnect(ptr noundef %interface) #2 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %msg_ep1 = getelementptr inbounds %struct.xillyusb_dev, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %msg_ep1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %msg_ep1, align 4
  %dev = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7
  tail call void @xillybus_cleanup_chrdev(ptr noundef %1, ptr noundef %dev) #13
  %wake_on_drain = getelementptr inbounds %struct.xillyusb_endpoint, ptr %3, i32 0, i32 14
  %4 = ptrtoint ptr %wake_on_drain to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %wake_on_drain, align 2
  %call3 = tail call fastcc i32 @xillyusb_send_opcode(ptr noundef %1, i32 noundef -1, i8 noundef zeroext 0, i32 noundef 0)
  tail call void @__might_sleep(ptr noundef nonnull @.str.7, i32 noundef 2193) #13
  %drained = getelementptr inbounds %struct.xillyusb_endpoint, ptr %3, i32 0, i32 13
  %5 = ptrtoint ptr %drained to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %drained, align 1, !range !169
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %lor.rhs, label %entry.if.end56_crit_edge

entry.if.end56_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end56

lor.rhs:                                          ; preds = %entry
  %error = getelementptr inbounds %struct.xillyusb_dev, ptr %1, i32 0, i32 5
  %7 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool7.not = icmp eq i32 %8, 0
  br i1 %tobool7.not, label %if.then15, label %lor.rhs.if.end56_crit_edge

lor.rhs.if.end56_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end56

if.then15:                                        ; preds = %lor.rhs
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #13
  %9 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #13
  %waitq = getelementptr inbounds %struct.xillyusb_endpoint, ptr %3, i32 0, i32 10, i32 6
  %call17131 = call i32 @prepare_to_wait_event(ptr noundef %waitq, ptr noundef nonnull %__wq_entry, i32 noundef 1) #13
  %10 = ptrtoint ptr %drained to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %drained, align 1, !range !169
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool20.not132 = icmp eq i8 %11, 0
  br i1 %tobool20.not132, label %if.then15.lor.end24_crit_edge, label %if.then15.if.end48.thread126_crit_edge

if.then15.if.end48.thread126_crit_edge:           ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end48.thread126

if.then15.lor.end24_crit_edge:                    ; preds = %if.then15
  br label %lor.end24

lor.end24:                                        ; preds = %cleanup.lor.end24_crit_edge, %if.then15.lor.end24_crit_edge
  %call17134 = phi i32 [ %call17, %cleanup.lor.end24_crit_edge ], [ %call17131, %if.then15.lor.end24_crit_edge ]
  %__ret16.0133 = phi i32 [ %call45, %cleanup.lor.end24_crit_edge ], [ 50, %if.then15.lor.end24_crit_edge ]
  %12 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool23.not = icmp eq i32 %13, 0
  br i1 %tobool23.not, label %14, label %lor.end24.if.end48.thread126_crit_edge

lor.end24.if.end48.thread126_crit_edge:           ; preds = %lor.end24
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end48.thread126

if.end48.thread126:                               ; preds = %cleanup.if.end48.thread126_crit_edge, %lor.end24.if.end48.thread126_crit_edge, %if.then15.if.end48.thread126_crit_edge
  call void @finish_wait(ptr noundef %waitq, ptr noundef nonnull %__wq_entry) #13
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #13
  br label %if.end56

14:                                               ; preds = %lor.end24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret16.0133)
  %tobool35.not = icmp eq i32 %__ret16.0133, 0
  br i1 %tobool35.not, label %if.end48, label %if.end41

if.end41:                                         ; preds = %14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17134)
  %tobool42.not = icmp eq i32 %call17134, 0
  br i1 %tobool42.not, label %cleanup, label %if.end48.thread123

if.end48.thread123:                               ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #13
  br label %if.end56

cleanup:                                          ; preds = %if.end41
  %call45 = call i32 @schedule_timeout(i32 noundef %__ret16.0133) #13
  %call17 = call i32 @prepare_to_wait_event(ptr noundef %waitq, ptr noundef nonnull %__wq_entry, i32 noundef 1) #13
  %15 = ptrtoint ptr %drained to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %drained, align 1, !range !169
  %tobool20.not = icmp eq i8 %16, 0
  br i1 %tobool20.not, label %cleanup.lor.end24_crit_edge, label %cleanup.if.end48.thread126_crit_edge

cleanup.if.end48.thread126_crit_edge:             ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end48.thread126

cleanup.lor.end24_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.end24

if.end48:                                         ; preds = %14
  call void @__sanitizer_cov_trace_pc() #15
  call void @finish_wait(ptr noundef %waitq, ptr noundef nonnull %__wq_entry) #13
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.76) #17
  br label %if.end56

if.end56:                                         ; preds = %if.end48, %if.end48.thread123, %if.end48.thread126, %lor.rhs.if.end56_crit_edge, %entry.if.end56_crit_edge
  call fastcc void @report_io_error(ptr noundef %1, i32 noundef -19)
  %num_channels = getelementptr inbounds %struct.xillyusb_dev, ptr %1, i32 0, i32 8
  %17 = ptrtoint ptr %num_channels to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %num_channels, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp136 = icmp sgt i32 %18, 0
  br i1 %cmp136, label %if.end56.for.body_crit_edge, label %if.end56.for.end63_crit_edge

if.end56.for.end63_crit_edge:                     ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end63

if.end56.for.body_crit_edge:                      ; preds = %if.end56
  br label %for.body

for.body:                                         ; preds = %if.end61.for.body_crit_edge, %if.end56.for.body_crit_edge
  %i.0137 = phi i32 [ %inc, %if.end61.for.body_crit_edge ], [ 0, %if.end56.for.body_crit_edge ]
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 4
  %lock = getelementptr %struct.xillyusb_channel, ptr %20, i32 %i.0137, i32 3
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #13
  %out_ep = getelementptr %struct.xillyusb_channel, ptr %20, i32 %i.0137, i32 2
  %21 = ptrtoint ptr %out_ep to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %out_ep, align 4
  %tobool58.not = icmp eq ptr %22, null
  br i1 %tobool58.not, label %for.body.if.end61_crit_edge, label %if.then59

for.body.if.end61_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end61

if.then59:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %ep_mutex.i = getelementptr inbounds %struct.xillyusb_endpoint, ptr %22, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %ep_mutex.i, i32 noundef 0) #13
  %shutting_down.i = getelementptr inbounds %struct.xillyusb_endpoint, ptr %22, i32 0, i32 12
  %23 = ptrtoint ptr %shutting_down.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %shutting_down.i, align 4
  call void @mutex_unlock(ptr noundef %ep_mutex.i) #13
  %anchor.i = getelementptr inbounds %struct.xillyusb_endpoint, ptr %22, i32 0, i32 9
  call void @usb_kill_anchored_urbs(ptr noundef %anchor.i) #13
  %workitem.i = getelementptr inbounds %struct.xillyusb_endpoint, ptr %22, i32 0, i32 11
  %call.i = call zeroext i1 @cancel_work_sync(ptr noundef %workitem.i) #13
  br label %if.end61

if.end61:                                         ; preds = %if.then59, %for.body.if.end61_crit_edge
  call void @mutex_unlock(ptr noundef %lock) #13
  %inc = add nuw nsw i32 %i.0137, 1
  %24 = ptrtoint ptr %num_channels to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %num_channels, align 4
  %cmp = icmp slt i32 %inc, %25
  br i1 %cmp, label %if.end61.for.body_crit_edge, label %if.end61.for.end63_crit_edge

if.end61.for.end63_crit_edge:                     ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end63

if.end61.for.body_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end63:                                        ; preds = %if.end61.for.end63_crit_edge, %if.end56.for.end63_crit_edge
  %in_ep = getelementptr inbounds %struct.xillyusb_dev, ptr %1, i32 0, i32 10
  %26 = ptrtoint ptr %in_ep to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %in_ep, align 4
  %ep_mutex.i99 = getelementptr inbounds %struct.xillyusb_endpoint, ptr %27, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %ep_mutex.i99, i32 noundef 0) #13
  %shutting_down.i100 = getelementptr inbounds %struct.xillyusb_endpoint, ptr %27, i32 0, i32 12
  %28 = ptrtoint ptr %shutting_down.i100 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 1, ptr %shutting_down.i100, align 4
  call void @mutex_unlock(ptr noundef %ep_mutex.i99) #13
  %anchor.i101 = getelementptr inbounds %struct.xillyusb_endpoint, ptr %27, i32 0, i32 9
  call void @usb_kill_anchored_urbs(ptr noundef %anchor.i101) #13
  %workitem.i102 = getelementptr inbounds %struct.xillyusb_endpoint, ptr %27, i32 0, i32 11
  %call.i103 = call zeroext i1 @cancel_work_sync(ptr noundef %workitem.i102) #13
  %29 = ptrtoint ptr %msg_ep1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %msg_ep1, align 4
  %ep_mutex.i104 = getelementptr inbounds %struct.xillyusb_endpoint, ptr %30, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %ep_mutex.i104, i32 noundef 0) #13
  %shutting_down.i105 = getelementptr inbounds %struct.xillyusb_endpoint, ptr %30, i32 0, i32 12
  %31 = ptrtoint ptr %shutting_down.i105 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 1, ptr %shutting_down.i105, align 4
  call void @mutex_unlock(ptr noundef %ep_mutex.i104) #13
  %anchor.i106 = getelementptr inbounds %struct.xillyusb_endpoint, ptr %30, i32 0, i32 9
  call void @usb_kill_anchored_urbs(ptr noundef %anchor.i106) #13
  %workitem.i107 = getelementptr inbounds %struct.xillyusb_endpoint, ptr %30, i32 0, i32 11
  %call.i108 = call zeroext i1 @cancel_work_sync(ptr noundef %workitem.i107) #13
  %32 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %driver_data.i.i, align 4
  %dev65 = getelementptr inbounds %struct.xillyusb_dev, ptr %1, i32 0, i32 2
  %33 = ptrtoint ptr %dev65 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %dev65, align 4
  %kref = getelementptr inbounds %struct.xillyusb_dev, ptr %1, i32 0, i32 3
  call fastcc void @kref_put(ptr noundef %kref)
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_get_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wakeup_all(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -68
  %process_in_mutex = getelementptr i8, ptr %work, i32 160
  tail call void @mutex_lock_nested(ptr noundef %process_in_mutex, i32 noundef 0) #13
  %num_channels = getelementptr i8, ptr %work, i32 44
  %0 = ptrtoint ptr %num_channels to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_channels, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp25 = icmp sgt i32 %1, 0
  br i1 %cmp25, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %if.end6.for.body_crit_edge, %entry.for.body_crit_edge
  %i.026 = phi i32 [ %inc, %if.end6.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 4
  %lock = getelementptr %struct.xillyusb_channel, ptr %3, i32 %i.026, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #13
  %in_fifo = getelementptr %struct.xillyusb_channel, ptr %3, i32 %i.026, i32 1
  %4 = ptrtoint ptr %in_fifo to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %in_fifo, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %for.body.if.end_crit_edge, label %if.then

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %read_data_ok = getelementptr %struct.xillyusb_channel, ptr %3, i32 %i.026, i32 15
  %6 = ptrtoint ptr %read_data_ok to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %read_data_ok, align 4
  %waitq = getelementptr inbounds %struct.xillyfifo, ptr %5, i32 0, i32 6
  tail call void @__wake_up(ptr noundef %waitq, i32 noundef 1, i32 noundef 1, ptr noundef null) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  %out_ep = getelementptr %struct.xillyusb_channel, ptr %3, i32 %i.026, i32 2
  %7 = ptrtoint ptr %out_ep to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %out_ep, align 4
  %tobool2.not = icmp eq ptr %8, null
  br i1 %tobool2.not, label %if.end.if.end6_crit_edge, label %if.then3

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end6

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %waitq5 = getelementptr inbounds %struct.xillyusb_endpoint, ptr %8, i32 0, i32 10, i32 6
  tail call void @__wake_up(ptr noundef %waitq5, i32 noundef 1, i32 noundef 1, ptr noundef null) #13
  br label %if.end6

if.end6:                                          ; preds = %if.then3, %if.end.if.end6_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #13
  %flushq = getelementptr %struct.xillyusb_channel, ptr %3, i32 %i.026, i32 6
  tail call void @__wake_up(ptr noundef %flushq, i32 noundef 1, i32 noundef 1, ptr noundef null) #13
  %inc = add nuw nsw i32 %i.026, 1
  %9 = ptrtoint ptr %num_channels to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %num_channels, align 4
  %cmp = icmp slt i32 %inc, %10
  br i1 %cmp, label %if.end6.for.body_crit_edge, label %if.end6.for.end_crit_edge

if.end6.for.end_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

if.end6.for.body_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %if.end6.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %process_in_mutex) #13
  %msg_ep = getelementptr i8, ptr %work, i32 48
  %11 = ptrtoint ptr %msg_ep to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %msg_ep, align 4
  %waitq10 = getelementptr inbounds %struct.xillyusb_endpoint, ptr %12, i32 0, i32 10, i32 6
  tail call void @__wake_up(ptr noundef %waitq10, i32 noundef 1, i32 noundef 1, ptr noundef null) #13
  %kref = getelementptr i8, ptr %work, i32 -56
  tail call fastcc void @kref_put(ptr noundef %kref)
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @kref_put(ptr noundef %kref) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !170
  tail call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #13
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #13, !srcloc !171
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.then, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.return_crit_edge, label %if.then10.i.i.i, !prof !172

if.end5.i.i.i.return_crit_edge:                   ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef 3) #13
  br label %return

if.then:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !173
  %in_ep.i = getelementptr i8, ptr %kref, i32 108
  %1 = ptrtoint ptr %in_ep.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %in_ep.i, align 4
  %tobool.not.i = icmp eq ptr %2, null
  br i1 %tobool.not.i, label %if.then.if.end.i_crit_edge, label %if.then.i

if.then.if.end.i_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @endpoint_dealloc(ptr noundef nonnull %2) #13
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then.if.end.i_crit_edge
  %msg_ep.i = getelementptr i8, ptr %kref, i32 104
  %3 = ptrtoint ptr %msg_ep.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %msg_ep.i, align 4
  %tobool2.not.i = icmp eq ptr %4, null
  br i1 %tobool2.not.i, label %if.end.i.if.end5.i_crit_edge, label %if.then3.i

if.end.i.if.end5.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end5.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @endpoint_dealloc(ptr noundef nonnull %4) #13
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then3.i, %if.end.i.if.end5.i_crit_edge
  %workq.i = getelementptr i8, ptr %kref, i32 4
  %5 = ptrtoint ptr %workq.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %workq.i, align 4
  %tobool6.not.i = icmp eq ptr %6, null
  br i1 %tobool6.not.i, label %if.end5.i.cleanup_dev.exit_crit_edge, label %if.then7.i

if.end5.i.cleanup_dev.exit_crit_edge:             ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup_dev.exit

if.then7.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @destroy_workqueue(ptr noundef nonnull %6) #13
  br label %cleanup_dev.exit

cleanup_dev.exit:                                 ; preds = %if.then7.i, %if.end5.i.cleanup_dev.exit_crit_edge
  %add.ptr.i = getelementptr i8, ptr %kref, i32 -12
  %7 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %add.ptr.i, align 4
  tail call void @kfree(ptr noundef %8) #13
  tail call void @kfree(ptr noundef %add.ptr.i) #13
  br label %return

return:                                           ; preds = %cleanup_dev.exit, %if.then10.i.i.i, %if.end5.i.i.i.return_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @endpoint_alloc(ptr noundef %xdev, i8 noundef zeroext %ep_num, ptr noundef %work, i32 noundef %order, i32 noundef %bufnum) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 468) #16
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup28_crit_edge, label %if.end

entry.cleanup28_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup28

if.end:                                           ; preds = %entry
  %buffers = getelementptr inbounds %struct.xillyusb_endpoint, ptr %call7.i.i, i32 0, i32 2
  %1 = ptrtoint ptr %buffers to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %buffers, ptr %buffers, align 8
  %prev.i = getelementptr inbounds %struct.xillyusb_endpoint, ptr %call7.i.i, i32 0, i32 2, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %buffers, ptr %prev.i, align 4
  %filled_buffers = getelementptr inbounds %struct.xillyusb_endpoint, ptr %call7.i.i, i32 0, i32 3
  %3 = ptrtoint ptr %filled_buffers to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %filled_buffers, ptr %filled_buffers, align 8
  %prev.i61 = getelementptr inbounds %struct.xillyusb_endpoint, ptr %call7.i.i, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %prev.i61 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %filled_buffers, ptr %prev.i61, align 4
  %buffers_lock = getelementptr inbounds %struct.xillyusb_endpoint, ptr %call7.i.i, i32 0, i32 4
  tail call void @__raw_spin_lock_init(ptr noundef %buffers_lock, ptr noundef nonnull @.str.12, ptr noundef nonnull @endpoint_alloc.__key, i16 noundef signext 3) #13
  %ep_mutex = getelementptr inbounds %struct.xillyusb_endpoint, ptr %call7.i.i, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %ep_mutex, ptr noundef nonnull @.str.14, ptr noundef nonnull @endpoint_alloc.__key.13) #13
  %anchor = getelementptr inbounds %struct.xillyusb_endpoint, ptr %call7.i.i, i32 0, i32 9
  %5 = getelementptr inbounds %struct.xillyusb_endpoint, ptr %call7.i.i, i32 0, i32 9, i32 1
  %6 = call ptr @memset(ptr %5, i32 0, i32 104)
  %7 = ptrtoint ptr %anchor to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %anchor, ptr %anchor, align 4
  %prev.i.i = getelementptr inbounds %struct.xillyusb_endpoint, ptr %call7.i.i, i32 0, i32 9, i32 0, i32 1
  %8 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %anchor, ptr %prev.i.i, align 8
  tail call void @__init_waitqueue_head(ptr noundef %5, ptr noundef nonnull @.str.17, ptr noundef nonnull @init_usb_anchor.__key) #13
  %lock.i = getelementptr inbounds %struct.xillyusb_endpoint, ptr %call7.i.i, i32 0, i32 9, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.19, ptr noundef nonnull @init_usb_anchor.__key.18, i16 noundef signext 3) #13
  %workitem = getelementptr inbounds %struct.xillyusb_endpoint, ptr %call7.i.i, i32 0, i32 11
  tail call void @__init_work(ptr noundef %workitem, i32 noundef 0) #13
  %9 = ptrtoint ptr %workitem to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -64, ptr %workitem, align 4
  %lockdep_map = getelementptr inbounds %struct.xillyusb_endpoint, ptr %call7.i.i, i32 0, i32 11, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.16, ptr noundef nonnull @endpoint_alloc.__key.15, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #13
  %entry9 = getelementptr inbounds %struct.xillyusb_endpoint, ptr %call7.i.i, i32 0, i32 11, i32 1
  %10 = ptrtoint ptr %entry9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %entry9, ptr %entry9, align 8
  %prev.i62 = getelementptr inbounds %struct.xillyusb_endpoint, ptr %call7.i.i, i32 0, i32 11, i32 1, i32 1
  %11 = ptrtoint ptr %prev.i62 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %entry9, ptr %prev.i62, align 4
  %func = getelementptr inbounds %struct.xillyusb_endpoint, ptr %call7.i.i, i32 0, i32 11, i32 2
  %12 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %work, ptr %func, align 8
  %order13 = getelementptr inbounds %struct.xillyusb_endpoint, ptr %call7.i.i, i32 0, i32 5
  %13 = ptrtoint ptr %order13 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %order, ptr %order13, align 4
  %add = add i32 %order, 12
  %shl = shl nuw i32 1, %add
  %buffer_size = getelementptr inbounds %struct.xillyusb_endpoint, ptr %call7.i.i, i32 0, i32 6
  %14 = ptrtoint ptr %buffer_size to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %shl, ptr %buffer_size, align 8
  %outstanding_urbs = getelementptr inbounds %struct.xillyusb_endpoint, ptr %call7.i.i, i32 0, i32 8
  %15 = ptrtoint ptr %outstanding_urbs to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %outstanding_urbs, align 8
  %drained = getelementptr inbounds %struct.xillyusb_endpoint, ptr %call7.i.i, i32 0, i32 13
  %16 = ptrtoint ptr %drained to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %drained, align 1
  %wake_on_drain = getelementptr inbounds %struct.xillyusb_endpoint, ptr %call7.i.i, i32 0, i32 14
  %17 = ptrtoint ptr %wake_on_drain to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %wake_on_drain, align 2
  %18 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %xdev, ptr %call7.i.i, align 8
  %ep_num15 = getelementptr inbounds %struct.xillyusb_endpoint, ptr %call7.i.i, i32 0, i32 15
  %19 = ptrtoint ptr %ep_num15 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %ep_num, ptr %ep_num15, align 1
  %shutting_down = getelementptr inbounds %struct.xillyusb_endpoint, ptr %call7.i.i, i32 0, i32 12
  %20 = ptrtoint ptr %shutting_down to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %shutting_down, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bufnum)
  %cmp66 = icmp sgt i32 %bufnum, 0
  br i1 %cmp66, label %if.end.for.body_crit_edge, label %if.end.cleanup28_crit_edge

if.end.cleanup28_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup28

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

for.body:                                         ; preds = %list_add_tail.exit.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.067 = phi i32 [ %inc, %list_add_tail.exit.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %21 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i63 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %21, i32 noundef 3520, i32 noundef 20) #16
  %tobool17.not = icmp eq ptr %call7.i.i63, null
  br i1 %tobool17.not, label %for.body.cleanup28.sink.split_crit_edge, label %if.end19

for.body.cleanup28.sink.split_crit_edge:          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup28.sink.split

if.end19:                                         ; preds = %for.body
  %call20 = tail call i32 @__get_free_pages(i32 noundef 3264, i32 noundef %order) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.then22, label %if.end23

if.then22:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @kfree(ptr noundef nonnull %call7.i.i63) #13
  br label %cleanup28.sink.split

if.end23:                                         ; preds = %if.end19
  %22 = inttoptr i32 %call20 to ptr
  %buf = getelementptr inbounds %struct.xillybuffer, ptr %call7.i.i63, i32 0, i32 2
  %23 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %22, ptr %buf, align 4
  %ep24 = getelementptr inbounds %struct.xillybuffer, ptr %call7.i.i63, i32 0, i32 1
  %24 = ptrtoint ptr %ep24 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call7.i.i, ptr %ep24, align 8
  %25 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i63, ptr noundef %26, ptr noundef %buffers) #13
  br i1 %call.i.i, label %if.end.i.i, label %if.end23.list_add_tail.exit_crit_edge

if.end23.list_add_tail.exit_crit_edge:            ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #15
  %27 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call7.i.i63, ptr %prev.i, align 4
  %28 = ptrtoint ptr %call7.i.i63 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %buffers, ptr %call7.i.i63, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i63, i32 0, i32 1
  %29 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %26, ptr %prev3.i.i, align 4
  %30 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %call7.i.i63, ptr %26, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end23.list_add_tail.exit_crit_edge
  %inc = add nuw nsw i32 %i.067, 1
  %exitcond.not = icmp eq i32 %inc, %bufnum
  br i1 %exitcond.not, label %list_add_tail.exit.cleanup28_crit_edge, label %list_add_tail.exit.for.body_crit_edge

list_add_tail.exit.for.body_crit_edge:            ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

list_add_tail.exit.cleanup28_crit_edge:           ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup28

cleanup28.sink.split:                             ; preds = %if.then22, %for.body.cleanup28.sink.split_crit_edge
  tail call fastcc void @endpoint_dealloc(ptr noundef nonnull %call7.i.i)
  br label %cleanup28

cleanup28:                                        ; preds = %cleanup28.sink.split, %list_add_tail.exit.cleanup28_crit_edge, %if.end.cleanup28_crit_edge, %entry.cleanup28_crit_edge
  %retval.2 = phi ptr [ null, %entry.cleanup28_crit_edge ], [ %call7.i.i, %if.end.cleanup28_crit_edge ], [ null, %cleanup28.sink.split ], [ %call7.i.i, %list_add_tail.exit.cleanup28_crit_edge ]
  ret ptr %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bulk_out_work(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -420
  tail call fastcc void @try_queue_bulk_out(ptr noundef %add.ptr)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fifo_init(ptr noundef %fifo, i32 noundef %log2_size) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.usub.sat.i32(i32 %log2_size, i32 12)
  %bufnum = getelementptr inbounds %struct.xillyfifo, ptr %fifo, i32 0, i32 1
  %size = getelementptr inbounds %struct.xillyfifo, ptr %fifo, i32 0, i32 2
  %buf_order8 = getelementptr inbounds %struct.xillyfifo, ptr %fifo, i32 0, i32 3
  %mem = getelementptr inbounds %struct.xillyfifo, ptr %fifo, i32 0, i32 11
  br label %retry

retry:                                            ; preds = %if.then37, %entry
  %1 = load i32, ptr @fifo_buf_order, align 4
  %add = add i32 %1, 12
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %log2_size)
  %cmp = icmp ult i32 %add, %log2_size
  %2 = tail call i32 @llvm.umin.i32(i32 %add, i32 %log2_size)
  %3 = tail call i32 @llvm.usub.sat.i32(i32 %log2_size, i32 %add)
  %buf_order.0 = select i1 %cmp, i32 %1, i32 %0
  %storemerge = shl nuw i32 1, %2
  %4 = ptrtoint ptr %fifo to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %storemerge, ptr %fifo, align 4
  %shl5 = shl nuw i32 1, %3
  %5 = ptrtoint ptr %bufnum to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %shl5, ptr %bufnum, align 4
  %mul = shl i32 %storemerge, %3
  %6 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %mul, ptr %size, align 4
  %7 = ptrtoint ptr %buf_order8 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %buf_order.0, ptr %buf_order8, align 4
  %8 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %shl5, i32 4) #13
  %9 = extractvalue { i32, i1 } %8, 1
  br i1 %9, label %kmalloc_array.exit.thread, label %if.end7.i, !prof !174

kmalloc_array.exit.thread:                        ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #15
  %10 = ptrtoint ptr %mem to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %mem, align 4
  br label %cleanup

if.end7.i:                                        ; preds = %retry
  %11 = extractvalue { i32, i1 } %8, 0
  %call8.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %11, i32 noundef 3264) #18
  %12 = ptrtoint ptr %mem to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call8.i, ptr %mem, align 4
  %tobool.not = icmp eq ptr %call8.i, null
  br i1 %tobool.not, label %if.end7.i.cleanup_crit_edge, label %for.cond.preheader

if.end7.i.cleanup_crit_edge:                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end7.i
  %13 = ptrtoint ptr %bufnum to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %bufnum, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp1484.not = icmp eq i32 %14, 0
  br i1 %cmp1484.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.085 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %call15 = tail call i32 @__get_free_pages(i32 noundef 3264, i32 noundef %buf_order.0) #13
  %15 = inttoptr i32 %call15 to ptr
  %16 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mem, align 4
  %arrayidx = getelementptr ptr, ptr %17, i32 %i.085
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %15, ptr %arrayidx, align 4
  %19 = load ptr, ptr %mem, align 4
  %arrayidx18 = getelementptr ptr, ptr %19, i32 %i.085
  %20 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx18, align 4
  %tobool19.not = icmp eq ptr %21, null
  br i1 %tobool19.not, label %for.cond26.preheader, label %for.inc

for.cond26.preheader:                             ; preds = %for.body
  %i.186 = add i32 %i.085, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.186)
  %cmp2787 = icmp sgt i32 %i.186, -1
  br i1 %cmp2787, label %for.cond26.preheader.for.body28_crit_edge, label %for.cond26.preheader.for.end33_crit_edge

for.cond26.preheader.for.end33_crit_edge:         ; preds = %for.cond26.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end33

for.cond26.preheader.for.body28_crit_edge:        ; preds = %for.cond26.preheader
  br label %for.body28

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %i.085, 1
  %22 = ptrtoint ptr %bufnum to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %bufnum, align 4
  %cmp14 = icmp ult i32 %inc, %23
  br i1 %cmp14, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %fill = getelementptr inbounds %struct.xillyfifo, ptr %fifo, i32 0, i32 4
  %24 = ptrtoint ptr %fill to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %fill, align 4
  %readpos = getelementptr inbounds %struct.xillyfifo, ptr %fifo, i32 0, i32 7
  %lock = getelementptr inbounds %struct.xillyfifo, ptr %fifo, i32 0, i32 5
  %25 = call ptr @memset(ptr %readpos, i32 0, i32 16)
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.20, ptr noundef nonnull @fifo_init.__key, i16 noundef signext 3) #13
  %waitq = getelementptr inbounds %struct.xillyfifo, ptr %fifo, i32 0, i32 6
  tail call void @__init_waitqueue_head(ptr noundef %waitq, ptr noundef nonnull @.str.22, ptr noundef nonnull @fifo_init.__key.21) #13
  br label %cleanup

for.body28:                                       ; preds = %for.body28.for.body28_crit_edge, %for.cond26.preheader.for.body28_crit_edge
  %i.188 = phi i32 [ %i.1, %for.body28.for.body28_crit_edge ], [ %i.186, %for.cond26.preheader.for.body28_crit_edge ]
  %26 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mem, align 4
  %arrayidx30 = getelementptr ptr, ptr %27, i32 %i.188
  %28 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx30, align 4
  %30 = ptrtoint ptr %29 to i32
  tail call void @free_pages(i32 noundef %30, i32 noundef %buf_order.0) #13
  %i.1 = add nsw i32 %i.188, -1
  %cmp27 = icmp sgt i32 %i.188, 0
  br i1 %cmp27, label %for.body28.for.body28_crit_edge, label %for.body28.for.end33_crit_edge

for.body28.for.end33_crit_edge:                   ; preds = %for.body28
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end33

for.body28.for.body28_crit_edge:                  ; preds = %for.body28
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body28

for.end33:                                        ; preds = %for.body28.for.end33_crit_edge, %for.cond26.preheader.for.end33_crit_edge
  %31 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %mem, align 4
  tail call void @kfree(ptr noundef %32) #13
  %33 = ptrtoint ptr %mem to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %mem, align 4
  %34 = load i32, ptr @fifo_buf_order, align 4
  %tobool36.not = icmp eq i32 %34, 0
  br i1 %tobool36.not, label %for.end33.cleanup_crit_edge, label %if.then37

for.end33.cleanup_crit_edge:                      ; preds = %for.end33
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then37:                                        ; preds = %for.end33
  call void @__sanitizer_cov_trace_pc() #15
  %dec38 = add i32 %34, -1
  store i32 %dec38, ptr @fifo_buf_order, align 4
  br label %retry

cleanup:                                          ; preds = %for.end33.cleanup_crit_edge, %for.end, %if.end7.i.cleanup_crit_edge, %kmalloc_array.exit.thread
  %retval.0 = phi i32 [ 0, %for.end ], [ -12, %kmalloc_array.exit.thread ], [ -12, %if.end7.i.cleanup_crit_edge ], [ -12, %for.end33.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bulk_in_work(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -420
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %process_in_mutex = getelementptr inbounds %struct.xillyusb_dev, ptr %1, i32 0, i32 15
  tail call void @mutex_lock_nested(ptr noundef %process_in_mutex, i32 noundef 0) #13
  %buffers_lock = getelementptr i8, ptr %work, i32 -308
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %buffers_lock) #13
  %filled_buffers = getelementptr i8, ptr %work, i32 -316
  %error = getelementptr inbounds %struct.xillyusb_dev, ptr %1, i32 0, i32 5
  %buffers = getelementptr i8, ptr %work, i32 -324
  %prev.i60 = getelementptr i8, ptr %work, i32 -320
  %outstanding_urbs = getelementptr i8, ptr %work, i32 -252
  %2 = ptrtoint ptr %filled_buffers to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %filled_buffers, align 4
  %cmp.i.not202 = icmp eq ptr %3, %filled_buffers
  br i1 %cmp.i.not202, label %if.end15.critedge, label %entry.if.end16_crit_edge

entry.if.end16_crit_edge:                         ; preds = %entry
  br label %if.end16

lor.lhs.false:                                    ; preds = %list_add_tail.exit
  %4 = ptrtoint ptr %filled_buffers to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %filled_buffers, align 4
  %cmp.i.not = icmp eq ptr %5, %filled_buffers
  br i1 %cmp.i.not, label %if.else.critedge, label %lor.lhs.false.if.end16_crit_edge

lor.lhs.false.if.end16_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end16

if.then12.critedge:                               ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %buffers_lock, i32 noundef %call36) #13
  tail call void @mutex_unlock(ptr noundef %process_in_mutex) #13
  tail call fastcc void @report_io_error(ptr noundef %1, i32 noundef %rc.1)
  br label %if.end15

if.else.critedge:                                 ; preds = %lor.lhs.false
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %buffers_lock, i32 noundef %call36) #13
  tail call void @mutex_unlock(ptr noundef %process_in_mutex) #13
  br i1 %cmp.i.not202, label %if.else.critedge.if.end15_crit_edge, label %if.then14

if.else.critedge.if.end15_crit_edge:              ; preds = %if.else.critedge
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15

if.then14:                                        ; preds = %if.else.critedge
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @try_queue_bulk_in(ptr noundef %add.ptr)
  br label %if.end15

if.end15.critedge:                                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %buffers_lock, i32 noundef %call4) #13
  tail call void @mutex_unlock(ptr noundef %process_in_mutex) #13
  br label %if.end15

if.end15:                                         ; preds = %if.end15.critedge, %if.then14, %if.else.critedge.if.end15_crit_edge, %if.then12.critedge
  ret void

if.end16:                                         ; preds = %lor.lhs.false.if.end16_crit_edge, %entry.if.end16_crit_edge
  %6 = phi ptr [ %5, %lor.lhs.false.if.end16_crit_edge ], [ %3, %entry.if.end16_crit_edge ]
  %flags.099203 = phi i32 [ %call36, %lor.lhs.false.if.end16_crit_edge ], [ %call4, %entry.if.end16_crit_edge ]
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %6) #13
  br i1 %call.i.i, label %if.end.i.i, label %if.end16.list_del.exit_crit_edge

if.end16.list_del.exit_crit_edge:                 ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i.i, align 4
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %6, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev1.i.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %10, ptr %8, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end16.list_del.exit_crit_edge
  %13 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 256 to ptr), ptr %6, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %buffers_lock, i32 noundef %flags.099203) #13
  %15 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool23.not = icmp eq i32 %16, 0
  br i1 %tobool23.not, label %if.then24, label %list_del.exit.do.body28_crit_edge

list_del.exit.do.body28_crit_edge:                ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body28

if.then24:                                        ; preds = %list_del.exit
  %ep1.i = getelementptr inbounds %struct.xillybuffer, ptr %6, i32 0, i32 1
  %17 = ptrtoint ptr %ep1.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ep1.i, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  %dev3.i = getelementptr inbounds %struct.xillyusb_dev, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %dev3.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev3.i, align 4
  %len.i = getelementptr inbounds %struct.xillybuffer, ptr %6, i32 0, i32 3
  %23 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %len.i, align 4
  %shr.i = lshr i32 %24, 2
  %buf.i = getelementptr inbounds %struct.xillybuffer, ptr %6, i32 0, i32 2
  %25 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %buf.i, align 4
  %shl.i = and i32 %24, -4
  call void @__sanitizer_cov_trace_cmp4(i32 %shl.i, i32 %24)
  %cmp.not.i = icmp eq i32 %shl.i, %24
  br i1 %cmp.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.23, i32 noundef %24) #17
  br label %do.body28

if.end.i:                                         ; preds = %if.then24
  %in_bytes_left6.i = getelementptr inbounds %struct.xillyusb_dev, ptr %20, i32 0, i32 12
  %27 = ptrtoint ptr %in_bytes_left6.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %in_bytes_left6.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not.i = icmp eq i32 %28, 0
  br i1 %tobool.not.i, label %if.end.i.while.cond.preheader.i_crit_edge, label %if.then7.i

if.end.i.while.cond.preheader.i_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond.preheader.i

while.cond.preheader.i:                           ; preds = %if.end66.i, %if.end.i.while.cond.preheader.i_crit_edge
  %dws.0.ph.i = phi i32 [ %shr.i, %if.end.i.while.cond.preheader.i_crit_edge ], [ %sub69.i, %if.end66.i ]
  %p.0.ph.i = phi ptr [ %26, %if.end.i.while.cond.preheader.i_crit_edge ], [ %add.ptr.i, %if.end66.i ]
  %chan_num.0.ph.i = phi i32 [ 0, %if.end.i.while.cond.preheader.i_crit_edge ], [ %chan_num.1.i, %if.end66.i ]
  %in_bytes_left.0.ph.i = phi i32 [ 0, %if.end.i.while.cond.preheader.i_crit_edge ], [ %in_bytes_left.1.i, %if.end66.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dws.0.ph.i)
  %tobool13.not179.i = icmp eq i32 %dws.0.ph.i, 0
  br i1 %tobool13.not179.i, label %while.cond.preheader.i.while.end.i_crit_edge, label %while.body.lr.ph.i

while.cond.preheader.i.while.end.i_crit_edge:     ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end.i

while.body.lr.ph.i:                               ; preds = %while.cond.preheader.i
  %in_counter20.i = getelementptr inbounds %struct.xillyusb_dev, ptr %20, i32 0, i32 14
  %num_channels.i.i = getelementptr inbounds %struct.xillyusb_dev, ptr %20, i32 0, i32 8
  br label %while.body.i

if.then7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %29 = tail call i32 @llvm.smin.i32(i32 %28, i32 %24) #13
  %sub.i = sub i32 %28, %29
  %leftover_chan_num.i = getelementptr inbounds %struct.xillyusb_dev, ptr %20, i32 0, i32 13
  %30 = ptrtoint ptr %leftover_chan_num.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %leftover_chan_num.i, align 4
  br label %resume_leftovers.i

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %p.0181.i = phi ptr [ %p.0.ph.i, %while.body.lr.ph.i ], [ %incdec.ptr.i, %cleanup.i.while.body.i_crit_edge ]
  %dws.0180.i = phi i32 [ %dws.0.ph.i, %while.body.lr.ph.i ], [ %dec.i, %cleanup.i.while.body.i_crit_edge ]
  %incdec.ptr.i = getelementptr i32, ptr %p.0181.i, i32 1
  %32 = ptrtoint ptr %p.0181.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %p.0181.i, align 4
  %34 = tail call i32 @llvm.bswap.i32(i32 %33) #13
  %dec.i = add i32 %dws.0180.i, -1
  %and.i = and i32 %34, 4095
  %shr14.i = lshr i32 %34, 12
  %and15.i = and i32 %shr14.i, 1023
  %shr16.i = lshr i32 %34, 24
  %and17.i = and i32 %shr16.i, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i)
  %cmp18.not.i = icmp eq i32 %and17.i, 0
  br i1 %cmp18.not.i, label %if.end31.i, label %if.then19.i

if.then19.i:                                      ; preds = %while.body.i
  %35 = ptrtoint ptr %in_counter20.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %in_counter20.i, align 4
  %inc.i = add i32 %36, 1
  store i32 %inc.i, ptr %in_counter20.i, align 4
  %and21.i = and i32 %36, 1023
  call void @__sanitizer_cov_trace_cmp4(i32 %and15.i, i32 %and21.i)
  %cmp22.not.i = icmp eq i32 %and15.i, %and21.i
  br i1 %cmp22.not.i, label %if.end27.i, label %cleanup.thread.i

cleanup.thread.i:                                 ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.26, i32 noundef %and21.i, i32 noundef %and15.i) #17
  br label %do.body28

if.end27.i:                                       ; preds = %if.then19.i
  %37 = ptrtoint ptr %dev3.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev3.i, align 4
  %shr.i148.i = lshr i32 %and.i, 1
  %39 = ptrtoint ptr %num_channels.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %num_channels.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i148.i, i32 %40)
  %cmp.not.i.i = icmp slt i32 %shr.i148.i, %40
  br i1 %cmp.not.i.i, label %if.end.i.i59, label %do.end.i.i

do.end.i.i:                                       ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.29, i32 noundef %and.i) #17
  br label %do.body28

if.end.i.i59:                                     ; preds = %if.end27.i
  %41 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %20, align 4
  %43 = zext i32 %and17.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %43, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and17.i, label %do.end28.i.i [
    i32 2, label %sw.bb.i.i
    i32 3, label %sw.bb23.i.i
    i32 4, label %sw.bb24.i.i
  ]

sw.bb.i.i:                                        ; preds = %if.end.i.i59
  %read_data_ok.i.i = getelementptr %struct.xillyusb_channel, ptr %42, i32 %shr.i148.i, i32 15
  %44 = ptrtoint ptr %read_data_ok.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %read_data_ok.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool.not.i.i = icmp eq i32 %45, 0
  br i1 %tobool.not.i.i, label %do.end5.i.i, label %do.end10.i.i

do.end5.i.i:                                      ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.36, i32 noundef %and.i) #17
  br label %do.body28

do.end10.i.i:                                     ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !175
  %46 = ptrtoint ptr %read_data_ok.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile i32 0, ptr %read_data_ok.i.i, align 4
  %in_fifo.i.i = getelementptr %struct.xillyusb_channel, ptr %42, i32 %shr.i148.i, i32 1
  %47 = ptrtoint ptr %in_fifo.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %in_fifo.i.i, align 4
  %waitq.i.i = getelementptr inbounds %struct.xillyfifo, ptr %48, i32 0, i32 6
  br label %cleanup.i

sw.bb23.i.i:                                      ; preds = %if.end.i.i59
  call void @__sanitizer_cov_trace_pc() #15
  %flushing.i.i = getelementptr %struct.xillyusb_channel, ptr %42, i32 %shr.i148.i, i32 17
  %49 = ptrtoint ptr %flushing.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %flushing.i.i, align 4
  %flushq.i.i = getelementptr %struct.xillyusb_channel, ptr %42, i32 %shr.i148.i, i32 6
  br label %cleanup.i

sw.bb24.i.i:                                      ; preds = %if.end.i.i59
  call void @__sanitizer_cov_trace_pc() #15
  %canceled.i.i = getelementptr %struct.xillyusb_channel, ptr %42, i32 %shr.i148.i, i32 19
  %50 = ptrtoint ptr %canceled.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 1, ptr %canceled.i.i, align 4
  %flushq25.i.i = getelementptr %struct.xillyusb_channel, ptr %42, i32 %shr.i148.i, i32 6
  br label %cleanup.i

do.end28.i.i:                                     ; preds = %if.end.i.i59
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.39, i32 noundef %and17.i) #17
  br label %do.body28

cleanup.i:                                        ; preds = %sw.bb24.i.i, %sw.bb23.i.i, %do.end10.i.i
  %flushq25.i.sink.i = phi ptr [ %flushq25.i.i, %sw.bb24.i.i ], [ %flushq.i.i, %sw.bb23.i.i ], [ %waitq.i.i, %do.end10.i.i ]
  tail call void @__wake_up(ptr noundef %flushq25.i.sink.i, i32 noundef 1, i32 noundef 1, ptr noundef null) #13
  %tobool13.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool13.not.i, label %cleanup.i.while.end.i_crit_edge, label %cleanup.i.while.body.i_crit_edge

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i

cleanup.i.while.end.i_crit_edge:                  ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end.i

if.end31.i:                                       ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  %add.i = add nuw nsw i32 %and15.i, 1
  %shl32.i = shl i32 %dec.i, 2
  %51 = tail call i32 @llvm.smin.i32(i32 %add.i, i32 %shl32.i) #13
  %sub40.i = sub i32 %add.i, %51
  br label %resume_leftovers.i

resume_leftovers.i:                               ; preds = %if.end31.i, %if.then7.i
  %dws.1.i = phi i32 [ %shr.i, %if.then7.i ], [ %dec.i, %if.end31.i ]
  %p.1.i = phi ptr [ %26, %if.then7.i ], [ %incdec.ptr.i, %if.end31.i ]
  %chan_num.1.i = phi i32 [ %31, %if.then7.i ], [ %and.i, %if.end31.i ]
  %bytes.0.i = phi i32 [ %29, %if.then7.i ], [ %51, %if.end31.i ]
  %in_bytes_left.1.i = phi i32 [ %sub.i, %if.then7.i ], [ %sub40.i, %if.end31.i ]
  %shr41.i = ashr i32 %chan_num.1.i, 1
  %and42.i = and i32 %chan_num.1.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42.i)
  %tobool43.not.i = icmp eq i32 %and42.i, 0
  br i1 %tobool43.not.i, label %resume_leftovers.i.do.end50.i_crit_edge, label %lor.lhs.false.i

resume_leftovers.i.do.end50.i_crit_edge:          ; preds = %resume_leftovers.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end50.i

lor.lhs.false.i:                                  ; preds = %resume_leftovers.i
  %num_channels.i = getelementptr inbounds %struct.xillyusb_dev, ptr %20, i32 0, i32 8
  %52 = ptrtoint ptr %num_channels.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %num_channels.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shr41.i, i32 %53)
  %cmp44.not.i = icmp slt i32 %shr41.i, %53
  br i1 %cmp44.not.i, label %lor.lhs.false45.i, label %lor.lhs.false.i.do.end50.i_crit_edge

lor.lhs.false.i.do.end50.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end50.i

lor.lhs.false45.i:                                ; preds = %lor.lhs.false.i
  %54 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %20, align 4
  %read_data_ok.i = getelementptr %struct.xillyusb_channel, ptr %55, i32 %shr41.i, i32 15
  %56 = ptrtoint ptr %read_data_ok.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %read_data_ok.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool46.not.i = icmp eq i32 %57, 0
  br i1 %tobool46.not.i, label %lor.lhs.false45.i.do.end50.i_crit_edge, label %if.end51.i

lor.lhs.false45.i.do.end50.i_crit_edge:           ; preds = %lor.lhs.false45.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end50.i

do.end50.i:                                       ; preds = %lor.lhs.false45.i.do.end50.i_crit_edge, %lor.lhs.false.i.do.end50.i_crit_edge, %resume_leftovers.i.do.end50.i_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.29, i32 noundef %chan_num.1.i) #17
  br label %do.body28

if.end51.i:                                       ; preds = %lor.lhs.false45.i
  %in_fifo.i = getelementptr %struct.xillyusb_channel, ptr %55, i32 %shr41.i, i32 1
  %58 = ptrtoint ptr %in_fifo.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %in_fifo.i, align 4
  %tobool54.not.i = icmp eq ptr %59, null
  br i1 %tobool54.not.i, label %if.end51.i.do.body28_crit_edge, label %if.end59.i, !prof !174

if.end51.i.do.body28_crit_edge:                   ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body28

if.end59.i:                                       ; preds = %if.end51.i
  %writepos1.i.i = getelementptr inbounds %struct.xillyfifo, ptr %59, i32 0, i32 9
  %60 = ptrtoint ptr %writepos1.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %writepos1.i.i, align 4
  %writebuf2.i.i = getelementptr inbounds %struct.xillyfifo, ptr %59, i32 0, i32 10
  %62 = ptrtoint ptr %writebuf2.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %writebuf2.i.i, align 4
  %size.i.i = getelementptr inbounds %struct.xillyfifo, ptr %59, i32 0, i32 2
  %64 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %size.i.i, align 4
  %fill.i.i = getelementptr inbounds %struct.xillyfifo, ptr %59, i32 0, i32 4
  %66 = ptrtoint ptr %fill.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load volatile i32, ptr %fill.i.i, align 4
  %sub.i.i = sub i32 %65, %67
  %68 = tail call i32 @llvm.umin.i32(i32 %bytes.0.i, i32 %sub.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %cmp594.i.i = icmp eq i32 %68, 0
  br i1 %cmp594.i.i, label %if.end59.i.fifo_write.exit.i_crit_edge, label %if.end.lr.ph.i.i

if.end59.i.fifo_write.exit.i_crit_edge:           ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %fifo_write.exit.i

if.end.lr.ph.i.i:                                 ; preds = %if.end59.i
  %mem.i.i = getelementptr inbounds %struct.xillyfifo, ptr %59, i32 0, i32 11
  %bufnum.i.i = getelementptr inbounds %struct.xillyfifo, ptr %59, i32 0, i32 1
  br label %if.end26.i.i

if.end26.i.i:                                     ; preds = %cleanup.i.i.if.end26.i.i_crit_edge, %if.end.lr.ph.i.i
  %69 = phi i32 [ %68, %if.end.lr.ph.i.i ], [ %82, %cleanup.i.i.if.end26.i.i_crit_edge ]
  %done.099.i.i = phi i32 [ 0, %if.end.lr.ph.i.i ], [ %add27.i.i, %cleanup.i.i.if.end26.i.i_crit_edge ]
  %todo.098.i.i = phi i32 [ %bytes.0.i, %if.end.lr.ph.i.i ], [ %sub28.i.i, %cleanup.i.i.if.end26.i.i_crit_edge ]
  %writebuf.097.i.i = phi i32 [ %63, %if.end.lr.ph.i.i ], [ %writebuf.2.i.i, %cleanup.i.i.if.end26.i.i_crit_edge ]
  %writepos.096.i.i = phi i32 [ %61, %if.end.lr.ph.i.i ], [ %writepos.2.i.i, %cleanup.i.i.if.end26.i.i_crit_edge ]
  %nmax.095.i.i = phi i32 [ %sub.i.i, %if.end.lr.ph.i.i ], [ %sub30.i.i, %cleanup.i.i.if.end26.i.i_crit_edge ]
  %70 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %59, align 4
  %sub3.i.i = sub i32 %71, %writepos.096.i.i
  %72 = tail call i32 @llvm.umin.i32(i32 %69, i32 %sub3.i.i) #13
  %73 = ptrtoint ptr %mem.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %mem.i.i, align 4
  %arrayidx.i.i = getelementptr ptr, ptr %74, i32 %writebuf.097.i.i
  %75 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %76, i32 %writepos.096.i.i
  %add.ptr23.i.i = getelementptr i8, ptr %p.1.i, i32 %done.099.i.i
  %77 = call ptr @memcpy(ptr %add.ptr.i.i, ptr %add.ptr23.i.i, i32 %72)
  %add27.i.i = add i32 %72, %done.099.i.i
  %sub28.i.i = sub i32 %todo.098.i.i, %72
  %add29.i.i = add i32 %72, %writepos.096.i.i
  %sub30.i.i = sub i32 %nmax.095.i.i, %72
  %78 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %59, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add29.i.i, i32 %79)
  %cmp32.i.i = icmp eq i32 %add29.i.i, %79
  br i1 %cmp32.i.i, label %if.then34.i.i, label %if.end26.i.i.cleanup.i.i_crit_edge

if.end26.i.i.cleanup.i.i_crit_edge:               ; preds = %if.end26.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.i.i

if.then34.i.i:                                    ; preds = %if.end26.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %inc.i.i = add i32 %writebuf.097.i.i, 1
  %80 = ptrtoint ptr %bufnum.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %bufnum.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i.i, i32 %81)
  %cmp35.i.i = icmp eq i32 %inc.i.i, %81
  %spec.store.select.i.i = select i1 %cmp35.i.i, i32 0, i32 %inc.i.i
  br label %cleanup.i.i

cleanup.i.i:                                      ; preds = %if.then34.i.i, %if.end26.i.i.cleanup.i.i_crit_edge
  %writepos.2.i.i = phi i32 [ 0, %if.then34.i.i ], [ %add29.i.i, %if.end26.i.i.cleanup.i.i_crit_edge ]
  %writebuf.2.i.i = phi i32 [ %spec.store.select.i.i, %if.then34.i.i ], [ %writebuf.097.i.i, %if.end26.i.i.cleanup.i.i_crit_edge ]
  %82 = tail call i32 @llvm.umin.i32(i32 %sub28.i.i, i32 %sub30.i.i) #13
  %cmp5.i.i = icmp eq i32 %82, 0
  br i1 %cmp5.i.i, label %cleanup.i.i.fifo_write.exit.i_crit_edge, label %cleanup.i.i.if.end26.i.i_crit_edge

cleanup.i.i.if.end26.i.i_crit_edge:               ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end26.i.i

cleanup.i.i.fifo_write.exit.i_crit_edge:          ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %fifo_write.exit.i

fifo_write.exit.i:                                ; preds = %cleanup.i.i.fifo_write.exit.i_crit_edge, %if.end59.i.fifo_write.exit.i_crit_edge
  %writepos.0.lcssa.i.i = phi i32 [ %61, %if.end59.i.fifo_write.exit.i_crit_edge ], [ %writepos.2.i.i, %cleanup.i.i.fifo_write.exit.i_crit_edge ]
  %writebuf.0.lcssa.i.i = phi i32 [ %63, %if.end59.i.fifo_write.exit.i_crit_edge ], [ %writebuf.2.i.i, %cleanup.i.i.fifo_write.exit.i_crit_edge ]
  %done.0.lcssa.i.i = phi i32 [ 0, %if.end59.i.fifo_write.exit.i_crit_edge ], [ %add27.i.i, %cleanup.i.i.fifo_write.exit.i_crit_edge ]
  %lock.i.i = getelementptr inbounds %struct.xillyfifo, ptr %59, i32 0, i32 5
  %call10.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i) #13
  %83 = ptrtoint ptr %fill.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %fill.i.i, align 4
  %add.i.i = add i32 %84, %done.0.lcssa.i.i
  store i32 %add.i.i, ptr %fill.i.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i, i32 noundef %call10.i.i) #13
  %85 = ptrtoint ptr %writepos1.i.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %writepos.0.lcssa.i.i, ptr %writepos1.i.i, align 4
  %86 = ptrtoint ptr %writebuf2.i.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %writebuf.0.lcssa.i.i, ptr %writebuf2.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %bytes.0.i, i32 %done.0.lcssa.i.i)
  %cmp61.not.i = icmp eq i32 %bytes.0.i, %done.0.lcssa.i.i
  br i1 %cmp61.not.i, label %if.end66.i, label %do.end65.i

do.end65.i:                                       ; preds = %fifo_write.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.32) #17
  br label %do.body28

if.end66.i:                                       ; preds = %fifo_write.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %waitq.i = getelementptr inbounds %struct.xillyfifo, ptr %59, i32 0, i32 6
  tail call void @__wake_up(ptr noundef %waitq.i, i32 noundef 1, i32 noundef 1, ptr noundef null) #13
  %add67.i = add i32 %bytes.0.i, 3
  %shr68.i = ashr i32 %add67.i, 2
  %sub69.i = sub i32 %dws.1.i, %shr68.i
  %add.ptr.i = getelementptr i32, ptr %p.1.i, i32 %shr68.i
  br label %while.cond.preheader.i

while.end.i:                                      ; preds = %cleanup.i.while.end.i_crit_edge, %while.cond.preheader.i.while.end.i_crit_edge
  %chan_num.0.lcssa.i = phi i32 [ %chan_num.0.ph.i, %while.cond.preheader.i.while.end.i_crit_edge ], [ %and.i, %cleanup.i.while.end.i_crit_edge ]
  %87 = ptrtoint ptr %in_bytes_left6.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %in_bytes_left.0.ph.i, ptr %in_bytes_left6.i, align 4
  %leftover_chan_num71.i = getelementptr inbounds %struct.xillyusb_dev, ptr %20, i32 0, i32 13
  %88 = ptrtoint ptr %leftover_chan_num71.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %chan_num.0.lcssa.i, ptr %leftover_chan_num71.i, align 4
  br label %do.body28

do.body28:                                        ; preds = %while.end.i, %do.end65.i, %if.end51.i.do.body28_crit_edge, %do.end50.i, %do.end28.i.i, %do.end5.i.i, %do.end.i.i, %cleanup.thread.i, %do.end.i, %list_del.exit.do.body28_crit_edge
  %tobool.not = phi i1 [ true, %while.end.i ], [ false, %do.end65.i ], [ false, %if.end51.i.do.body28_crit_edge ], [ false, %do.end50.i ], [ false, %do.end28.i.i ], [ false, %do.end5.i.i ], [ false, %do.end.i.i ], [ false, %cleanup.thread.i ], [ false, %do.end.i ], [ true, %list_del.exit.do.body28_crit_edge ]
  %rc.1 = phi i32 [ 0, %while.end.i ], [ -5, %do.end65.i ], [ -5, %if.end51.i.do.body28_crit_edge ], [ -5, %do.end50.i ], [ -5, %do.end28.i.i ], [ -5, %do.end5.i.i ], [ -5, %do.end.i.i ], [ -5, %cleanup.thread.i ], [ -5, %do.end.i ], [ 0, %list_del.exit.do.body28_crit_edge ]
  %call36 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %buffers_lock) #13
  %89 = ptrtoint ptr %prev.i60 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %prev.i60, align 4
  %call.i.i61 = tail call zeroext i1 @__list_add_valid(ptr noundef %6, ptr noundef %90, ptr noundef %buffers) #13
  br i1 %call.i.i61, label %if.end.i.i62, label %do.body28.list_add_tail.exit_crit_edge

do.body28.list_add_tail.exit_crit_edge:           ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_add_tail.exit

if.end.i.i62:                                     ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #15
  %91 = ptrtoint ptr %prev.i60 to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %6, ptr %prev.i60, align 4
  %92 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %buffers, ptr %6, align 4
  %93 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %90, ptr %prev.i, align 4
  %94 = ptrtoint ptr %90 to i32
  call void @__asan_store4_noabort(i32 %94)
  store volatile ptr %6, ptr %90, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i62, %do.body28.list_add_tail.exit_crit_edge
  %95 = ptrtoint ptr %outstanding_urbs to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %outstanding_urbs, align 4
  %dec = add i32 %96, -1
  store i32 %dec, ptr %outstanding_urbs, align 4
  br i1 %tobool.not, label %lor.lhs.false, label %if.then12.critedge
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @try_queue_bulk_in(ptr noundef %ep) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ep, align 4
  %buffer_size = getelementptr inbounds %struct.xillyusb_endpoint, ptr %ep, i32 0, i32 6
  %2 = ptrtoint ptr %buffer_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %buffer_size, align 4
  %ep_mutex = getelementptr inbounds %struct.xillyusb_endpoint, ptr %ep, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %ep_mutex, i32 noundef 0) #13
  %shutting_down = getelementptr inbounds %struct.xillyusb_endpoint, ptr %ep, i32 0, i32 12
  %4 = ptrtoint ptr %shutting_down to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %shutting_down, align 4, !range !169
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.done_crit_edge

entry.done_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %done

lor.lhs.false:                                    ; preds = %entry
  %error = getelementptr inbounds %struct.xillyusb_dev, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool2.not = icmp eq i32 %7, 0
  br i1 %tobool2.not, label %while.cond.preheader, label %lor.lhs.false.done_crit_edge

lor.lhs.false.done_crit_edge:                     ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %done

while.cond.preheader:                             ; preds = %lor.lhs.false
  %buffers_lock = getelementptr inbounds %struct.xillyusb_endpoint, ptr %ep, i32 0, i32 4
  %call4102 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %buffers_lock) #13
  %buffers = getelementptr inbounds %struct.xillyusb_endpoint, ptr %ep, i32 0, i32 2
  %8 = ptrtoint ptr %buffers to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %buffers, align 4
  %cmp.i.not103 = icmp eq ptr %9, %buffers
  br i1 %cmp.i.not103, label %while.cond.preheader.done.sink.split_crit_edge, label %if.end11.lr.ph

while.cond.preheader.done.sink.split_crit_edge:   ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %done.sink.split

if.end11.lr.ph:                                   ; preds = %while.cond.preheader
  %outstanding_urbs = getelementptr inbounds %struct.xillyusb_endpoint, ptr %ep, i32 0, i32 8
  %udev = getelementptr inbounds %struct.xillyusb_dev, ptr %1, i32 0, i32 1
  %ep_num = getelementptr inbounds %struct.xillyusb_endpoint, ptr %ep, i32 0, i32 15
  %anchor = getelementptr inbounds %struct.xillyusb_endpoint, ptr %ep, i32 0, i32 9
  br label %if.end11

if.end11:                                         ; preds = %if.end29.if.end11_crit_edge, %if.end11.lr.ph
  %10 = phi ptr [ %9, %if.end11.lr.ph ], [ %36, %if.end29.if.end11_crit_edge ]
  %call4104 = phi i32 [ %call4102, %if.end11.lr.ph ], [ %call4, %if.end29.if.end11_crit_edge ]
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %10) #13
  br i1 %call.i.i, label %if.end.i.i, label %if.end11.list_del.exit_crit_edge

if.end11.list_del.exit_crit_edge:                 ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prev.i.i, align 4
  %13 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %10, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %12, ptr %prev1.i.i.i, align 4
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %14, ptr %12, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end11.list_del.exit_crit_edge
  %17 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr inttoptr (i32 256 to ptr), ptr %10, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %18 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %19 = ptrtoint ptr %outstanding_urbs to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %outstanding_urbs, align 4
  %inc = add i32 %20, 1
  store i32 %inc, ptr %outstanding_urbs, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %buffers_lock, i32 noundef %call4104) #13
  %call16 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #13
  %tobool17.not = icmp eq ptr %call16, null
  br i1 %tobool17.not, label %if.then18, label %if.end19

if.then18:                                        ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @report_io_error(ptr noundef %1, i32 noundef -12)
  br label %do.body31

if.end19:                                         ; preds = %list_del.exit
  %21 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %udev, align 4
  %23 = ptrtoint ptr %ep_num to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %ep_num, align 1
  %conv21 = zext i8 %24 to i32
  %25 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %22, align 8
  %shl.i = shl i32 %26, 8
  %shl1.i = shl nuw nsw i32 %conv21, 15
  %or.i = or i32 %shl1.i, %shl.i
  %or23 = or i32 %or.i, -1073741696
  %buf = getelementptr inbounds %struct.xillybuffer, ptr %10, i32 0, i32 2
  %27 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %buf, align 4
  %dev1.i = getelementptr inbounds %struct.urb, ptr %call16, i32 0, i32 8
  %29 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %22, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %call16, i32 0, i32 10
  %30 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %or23, ptr %pipe2.i, align 4
  %transfer_buffer3.i = getelementptr inbounds %struct.urb, ptr %call16, i32 0, i32 14
  %31 = ptrtoint ptr %transfer_buffer3.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %28, ptr %transfer_buffer3.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %call16, i32 0, i32 19
  %32 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %3, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %call16, i32 0, i32 28
  %33 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @bulk_in_completer, ptr %complete.i, align 4
  %context4.i = getelementptr inbounds %struct.urb, ptr %call16, i32 0, i32 27
  %34 = ptrtoint ptr %context4.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %10, ptr %context4.i, align 4
  tail call void @usb_anchor_urb(ptr noundef nonnull %call16, ptr noundef %anchor) #13
  %call24 = tail call i32 @usb_submit_urb(ptr noundef nonnull %call16, i32 noundef 3264) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end29, label %if.then26

if.then26:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -12, i32 %call24)
  %cmp27 = icmp eq i32 %call24, -12
  %cond = select i1 %cmp27, i32 -12, i32 -5
  tail call fastcc void @report_io_error(ptr noundef %1, i32 noundef %cond)
  tail call void @usb_unanchor_urb(ptr noundef nonnull %call16) #13
  tail call void @usb_free_urb(ptr noundef nonnull %call16) #13
  br label %do.body31

if.end29:                                         ; preds = %if.end19
  tail call void @usb_free_urb(ptr noundef nonnull %call16) #13
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %buffers_lock) #13
  %35 = ptrtoint ptr %buffers to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile ptr, ptr %buffers, align 4
  %cmp.i.not = icmp eq ptr %36, %buffers
  br i1 %cmp.i.not, label %if.end29.done.sink.split_crit_edge, label %if.end29.if.end11_crit_edge

if.end29.if.end11_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end11

if.end29.done.sink.split_crit_edge:               ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #15
  br label %done.sink.split

do.body31:                                        ; preds = %if.then26, %if.then18
  %call39 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %buffers_lock) #13
  %prev.i81 = getelementptr inbounds %struct.xillyusb_endpoint, ptr %ep, i32 0, i32 2, i32 1
  %37 = ptrtoint ptr %prev.i81 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %prev.i81, align 4
  %call.i.i82 = tail call zeroext i1 @__list_add_valid(ptr noundef %10, ptr noundef %38, ptr noundef %buffers) #13
  br i1 %call.i.i82, label %if.end.i.i83, label %do.body31.list_add_tail.exit_crit_edge

do.body31.list_add_tail.exit_crit_edge:           ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_add_tail.exit

if.end.i.i83:                                     ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i118 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %39 = ptrtoint ptr %prev.i81 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %10, ptr %prev.i81, align 4
  %40 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %buffers, ptr %10, align 4
  %41 = ptrtoint ptr %prev.i118 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %38, ptr %prev.i118, align 4
  %42 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %10, ptr %38, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i83, %do.body31.list_add_tail.exit_crit_edge
  %43 = ptrtoint ptr %outstanding_urbs to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %outstanding_urbs, align 4
  %dec = add i32 %44, -1
  store i32 %dec, ptr %outstanding_urbs, align 4
  br label %done.sink.split

done.sink.split:                                  ; preds = %list_add_tail.exit, %if.end29.done.sink.split_crit_edge, %while.cond.preheader.done.sink.split_crit_edge
  %call39.sink = phi i32 [ %call39, %list_add_tail.exit ], [ %call4102, %while.cond.preheader.done.sink.split_crit_edge ], [ %call4, %if.end29.done.sink.split_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %buffers_lock, i32 noundef %call39.sink) #13
  br label %done

done:                                             ; preds = %done.sink.split, %lor.lhs.false.done_crit_edge, %entry.done_crit_edge
  tail call void @mutex_unlock(ptr noundef %ep_mutex) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @endpoint_dealloc(ptr noundef %ep) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %mem.i = getelementptr inbounds %struct.xillyusb_endpoint, ptr %ep, i32 0, i32 10, i32 11
  %0 = ptrtoint ptr %mem.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mem.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.fifo_mem_release.exit_crit_edge, label %for.cond.preheader.i

entry.fifo_mem_release.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %fifo_mem_release.exit

for.cond.preheader.i:                             ; preds = %entry
  %bufnum.i = getelementptr inbounds %struct.xillyusb_endpoint, ptr %ep, i32 0, i32 10, i32 1
  %2 = ptrtoint ptr %bufnum.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bufnum.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp9.not.i = icmp eq i32 %3, 0
  br i1 %cmp9.not.i, label %for.cond.preheader.i.for.end.i_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %buf_order.i = getelementptr inbounds %struct.xillyusb_endpoint, ptr %ep, i32 0, i32 10, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.010.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %4 = ptrtoint ptr %mem.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mem.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %5, i32 %i.010.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 4
  %8 = ptrtoint ptr %7 to i32
  %9 = ptrtoint ptr %buf_order.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %buf_order.i, align 4
  tail call void @free_pages(i32 noundef %8, i32 noundef %10) #13
  %inc.i = add nuw i32 %i.010.i, 1
  %11 = ptrtoint ptr %bufnum.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %bufnum.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %12
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %13 = ptrtoint ptr %mem.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mem.i, align 4
  tail call void @kfree(ptr noundef %14) #13
  br label %fifo_mem_release.exit

fifo_mem_release.exit:                            ; preds = %for.end.i, %entry.fifo_mem_release.exit_crit_edge
  %filled_buffers = getelementptr inbounds %struct.xillyusb_endpoint, ptr %ep, i32 0, i32 3
  %buffers = getelementptr inbounds %struct.xillyusb_endpoint, ptr %ep, i32 0, i32 2
  %15 = ptrtoint ptr %filled_buffers to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %filled_buffers, align 4
  %cmp.i.not.i = icmp eq ptr %16, %filled_buffers
  br i1 %cmp.i.not.i, label %fifo_mem_release.exit.list_splice.exit_crit_edge, label %if.then.i

fifo_mem_release.exit.list_splice.exit_crit_edge: ; preds = %fifo_mem_release.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_splice.exit

if.then.i:                                        ; preds = %fifo_mem_release.exit
  call void @__sanitizer_cov_trace_pc() #15
  %17 = ptrtoint ptr %buffers to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %buffers, align 4
  %prev2.i.i = getelementptr inbounds %struct.xillyusb_endpoint, ptr %ep, i32 0, i32 3, i32 1
  %19 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %prev2.i.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %21 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %buffers, ptr %prev3.i.i, align 4
  store ptr %16, ptr %buffers, align 4
  %22 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %18, ptr %20, align 4
  %prev6.i.i = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  %23 = ptrtoint ptr %prev6.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %20, ptr %prev6.i.i, align 4
  br label %list_splice.exit

list_splice.exit:                                 ; preds = %if.then.i, %fifo_mem_release.exit.list_splice.exit_crit_edge
  %24 = ptrtoint ptr %buffers to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %buffers, align 4
  %cmp.i16.not17 = icmp eq ptr %25, %buffers
  br i1 %cmp.i16.not17, label %list_splice.exit.for.end_crit_edge, label %for.body.lr.ph

list_splice.exit.for.end_crit_edge:               ; preds = %list_splice.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %list_splice.exit
  %order = getelementptr inbounds %struct.xillyusb_endpoint, ptr %ep, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %this.018 = phi ptr [ %25, %for.body.lr.ph ], [ %next.0, %for.body.for.body_crit_edge ]
  %26 = ptrtoint ptr %this.018 to i32
  call void @__asan_load4_noabort(i32 %26)
  %next.0 = load ptr, ptr %this.018, align 4
  %buf = getelementptr inbounds %struct.xillybuffer, ptr %this.018, i32 0, i32 2
  %27 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %buf, align 4
  %29 = ptrtoint ptr %28 to i32
  %30 = ptrtoint ptr %order to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %order, align 4
  tail call void @free_pages(i32 noundef %29, i32 noundef %31) #13
  tail call void @kfree(ptr noundef %this.018) #13
  %cmp.i16.not = icmp eq ptr %next.0, %buffers
  br i1 %cmp.i16.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %list_splice.exit.for.end_crit_edge
  tail call void @kfree(ptr noundef %ep) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__get_free_pages(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @try_queue_bulk_out(ptr noundef %ep) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %fifo1 = getelementptr inbounds %struct.xillyusb_endpoint, ptr %ep, i32 0, i32 10
  %0 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ep, align 4
  %ep_mutex = getelementptr inbounds %struct.xillyusb_endpoint, ptr %ep, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %ep_mutex, i32 noundef 0) #13
  %shutting_down = getelementptr inbounds %struct.xillyusb_endpoint, ptr %ep, i32 0, i32 12
  %2 = ptrtoint ptr %shutting_down to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %shutting_down, align 4, !range !169
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %lor.lhs.false, label %if.end85.critedge

lor.lhs.false:                                    ; preds = %entry
  %error = getelementptr inbounds %struct.xillyusb_dev, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool3.not = icmp eq i32 %5, 0
  br i1 %tobool3.not, label %do.end, label %if.end85.critedge146

do.end:                                           ; preds = %lor.lhs.false
  %fill4 = getelementptr inbounds %struct.xillyusb_endpoint, ptr %ep, i32 0, i32 10, i32 4
  %6 = ptrtoint ptr %fill4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %fill4, align 4
  %fill_mask = getelementptr inbounds %struct.xillyusb_endpoint, ptr %ep, i32 0, i32 7
  %8 = ptrtoint ptr %fill_mask to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %fill_mask, align 4
  %and = and i32 %9, %7
  %buffers_lock = getelementptr inbounds %struct.xillyusb_endpoint, ptr %ep, i32 0, i32 4
  %call8186 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %buffers_lock) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool13.not187 = icmp eq i32 %and, 0
  br i1 %tobool13.not187, label %do.end.if.then14_crit_edge, label %if.end24.lr.ph

do.end.if.then14_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then14

if.end24.lr.ph:                                   ; preds = %do.end
  %drained25 = getelementptr inbounds %struct.xillyusb_endpoint, ptr %ep, i32 0, i32 13
  %buffer_size = getelementptr inbounds %struct.xillyusb_endpoint, ptr %ep, i32 0, i32 6
  %outstanding_urbs29 = getelementptr inbounds %struct.xillyusb_endpoint, ptr %ep, i32 0, i32 8
  %buffers = getelementptr inbounds %struct.xillyusb_endpoint, ptr %ep, i32 0, i32 2
  %readpos1.i = getelementptr inbounds %struct.xillyusb_endpoint, ptr %ep, i32 0, i32 10, i32 7
  %readbuf2.i = getelementptr inbounds %struct.xillyusb_endpoint, ptr %ep, i32 0, i32 10, i32 8
  %lock.i = getelementptr inbounds %struct.xillyusb_endpoint, ptr %ep, i32 0, i32 10, i32 5
  %mem.i = getelementptr inbounds %struct.xillyusb_endpoint, ptr %ep, i32 0, i32 10, i32 11
  %bufnum.i = getelementptr inbounds %struct.xillyusb_endpoint, ptr %ep, i32 0, i32 10, i32 1
  %udev = getelementptr inbounds %struct.xillyusb_dev, ptr %1, i32 0, i32 1
  %ep_num = getelementptr inbounds %struct.xillyusb_endpoint, ptr %ep, i32 0, i32 15
  %anchor = getelementptr inbounds %struct.xillyusb_endpoint, ptr %ep, i32 0, i32 9
  br label %if.end24

if.then14:                                        ; preds = %cleanup.if.then14_crit_edge, %do.end.if.then14_crit_edge
  %call8.lcssa = phi i32 [ %call8186, %do.end.if.then14_crit_edge ], [ %call8, %cleanup.if.then14_crit_edge ]
  %10 = xor i1 %tobool13.not187, true
  %outstanding_urbs = getelementptr inbounds %struct.xillyusb_endpoint, ptr %ep, i32 0, i32 8
  %11 = ptrtoint ptr %outstanding_urbs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %outstanding_urbs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool15.not = icmp eq i32 %12, 0
  %drained = getelementptr inbounds %struct.xillyusb_endpoint, ptr %ep, i32 0, i32 13
  %frombool = zext i1 %tobool15.not to i8
  %13 = ptrtoint ptr %drained to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %frombool, ptr %drained, align 1
  br i1 %tobool15.not, label %land.lhs.true, label %if.then14.if.end22_crit_edge

if.then14.if.end22_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end22

land.lhs.true:                                    ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #15
  %wake_on_drain = getelementptr inbounds %struct.xillyusb_endpoint, ptr %ep, i32 0, i32 14
  %14 = ptrtoint ptr %wake_on_drain to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %wake_on_drain, align 2, !range !169
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool19.not = icmp ne i8 %15, 0
  %spec.select = or i1 %tobool19.not, %10
  br label %if.end22

if.end22:                                         ; preds = %land.lhs.true, %if.then14.if.end22_crit_edge
  %do_wake.1.off0 = phi i1 [ %10, %if.then14.if.end22_crit_edge ], [ %spec.select, %land.lhs.true ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %buffers_lock, i32 noundef %call8.lcssa) #13
  tail call void @mutex_unlock(ptr noundef %ep_mutex) #13
  br i1 %do_wake.1.off0, label %if.end22.if.then84_crit_edge, label %if.end22.if.end85_crit_edge

if.end22.if.end85_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end85

if.end22.if.then84_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then84

if.end24:                                         ; preds = %cleanup.if.end24_crit_edge, %if.end24.lr.ph
  %call8190 = phi i32 [ %call8186, %if.end24.lr.ph ], [ %call8, %cleanup.if.end24_crit_edge ]
  %fill.0189 = phi i32 [ %and, %if.end24.lr.ph ], [ %sub, %cleanup.if.end24_crit_edge ]
  %do_wake.0.off0188 = phi i1 [ false, %if.end24.lr.ph ], [ true, %cleanup.if.end24_crit_edge ]
  %16 = ptrtoint ptr %drained25 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %drained25, align 1
  %17 = ptrtoint ptr %buffer_size to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %buffer_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %fill.0189, i32 %18)
  %cmp26 = icmp ult i32 %fill.0189, %18
  br i1 %cmp26, label %land.lhs.true28, label %if.end24.lor.lhs.false31_crit_edge

if.end24.lor.lhs.false31_crit_edge:               ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.lhs.false31

land.lhs.true28:                                  ; preds = %if.end24
  %19 = ptrtoint ptr %outstanding_urbs29 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %outstanding_urbs29, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool30.not = icmp eq i32 %20, 0
  br i1 %tobool30.not, label %land.lhs.true28.lor.lhs.false31_crit_edge, label %land.lhs.true28.cleanup.thread_crit_edge

land.lhs.true28.cleanup.thread_crit_edge:         ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.thread

land.lhs.true28.lor.lhs.false31_crit_edge:        ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.lhs.false31

lor.lhs.false31:                                  ; preds = %land.lhs.true28.lor.lhs.false31_crit_edge, %if.end24.lor.lhs.false31_crit_edge
  %21 = ptrtoint ptr %buffers to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile ptr, ptr %buffers, align 4
  %cmp.i.not = icmp eq ptr %22, %buffers
  br i1 %cmp.i.not, label %lor.lhs.false31.cleanup.thread_crit_edge, label %if.end36

lor.lhs.false31.cleanup.thread_crit_edge:         ; preds = %lor.lhs.false31
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.thread

if.end36:                                         ; preds = %lor.lhs.false31
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %22) #13
  br i1 %call.i.i, label %if.end.i.i, label %if.end36.list_del.exit_crit_edge

if.end36.list_del.exit_crit_edge:                 ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %prev.i.i, align 4
  %25 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %22, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %24, ptr %prev1.i.i.i, align 4
  %28 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %26, ptr %24, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end36.list_del.exit_crit_edge
  %29 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr inttoptr (i32 256 to ptr), ptr %22, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  %30 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %31 = ptrtoint ptr %outstanding_urbs29 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %outstanding_urbs29, align 4
  %inc = add i32 %32, 1
  store i32 %inc, ptr %outstanding_urbs29, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %buffers_lock, i32 noundef %call8190) #13
  %33 = ptrtoint ptr %buffer_size to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %buffer_size, align 4
  %35 = tail call i32 @llvm.umin.i32(i32 %fill.0189, i32 %34)
  %buf = getelementptr inbounds %struct.xillybuffer, ptr %22, i32 0, i32 2
  %36 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %buf, align 4
  %38 = ptrtoint ptr %readpos1.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %readpos1.i, align 4
  %40 = ptrtoint ptr %readbuf2.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %readbuf2.i, align 4
  %call4.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #13
  %42 = ptrtoint ptr %fill4 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %fill4, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call4.i) #13
  %44 = tail call i32 @llvm.umin.i32(i32 %35, i32 %43) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %cmp12109.i = icmp eq i32 %44, 0
  br i1 %cmp12109.i, label %list_del.exit.fifo_read.exit_crit_edge, label %list_del.exit.if.end40.i_crit_edge

list_del.exit.if.end40.i_crit_edge:               ; preds = %list_del.exit
  br label %if.end40.i

list_del.exit.fifo_read.exit_crit_edge:           ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %fifo_read.exit

if.end40.i:                                       ; preds = %cleanup.i.if.end40.i_crit_edge, %list_del.exit.if.end40.i_crit_edge
  %45 = phi i32 [ %58, %cleanup.i.if.end40.i_crit_edge ], [ %44, %list_del.exit.if.end40.i_crit_edge ]
  %done.0114.i = phi i32 [ %add.i, %cleanup.i.if.end40.i_crit_edge ], [ 0, %list_del.exit.if.end40.i_crit_edge ]
  %todo.0113.i = phi i32 [ %sub41.i, %cleanup.i.if.end40.i_crit_edge ], [ %35, %list_del.exit.if.end40.i_crit_edge ]
  %readbuf.0112.i = phi i32 [ %readbuf.2.i, %cleanup.i.if.end40.i_crit_edge ], [ %41, %list_del.exit.if.end40.i_crit_edge ]
  %readpos.0111.i = phi i32 [ %readpos.2.i, %cleanup.i.if.end40.i_crit_edge ], [ %39, %list_del.exit.if.end40.i_crit_edge ]
  %fill.0110.i = phi i32 [ %sub43.i, %cleanup.i.if.end40.i_crit_edge ], [ %43, %list_del.exit.if.end40.i_crit_edge ]
  %46 = ptrtoint ptr %fifo1 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %fifo1, align 4
  %sub.i = sub i32 %47, %readpos.0111.i
  %48 = tail call i32 @llvm.umin.i32(i32 %45, i32 %sub.i) #13
  %add.ptr.i = getelementptr i8, ptr %37, i32 %done.0114.i
  %49 = ptrtoint ptr %mem.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %mem.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %50, i32 %readbuf.0112.i
  %51 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr37.i = getelementptr i8, ptr %52, i32 %readpos.0111.i
  %53 = call ptr @memcpy(ptr %add.ptr.i, ptr %add.ptr37.i, i32 %48)
  %add.i = add i32 %48, %done.0114.i
  %sub41.i = sub i32 %todo.0113.i, %48
  %add42.i = add i32 %48, %readpos.0111.i
  %sub43.i = sub i32 %fill.0110.i, %48
  %54 = ptrtoint ptr %fifo1 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %fifo1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add42.i, i32 %55)
  %cmp45.i = icmp eq i32 %add42.i, %55
  br i1 %cmp45.i, label %if.then47.i, label %if.end40.i.cleanup.i_crit_edge

if.end40.i.cleanup.i_crit_edge:                   ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.i

if.then47.i:                                      ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #15
  %inc.i = add i32 %readbuf.0112.i, 1
  %56 = ptrtoint ptr %bufnum.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %bufnum.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %57)
  %cmp48.i = icmp eq i32 %inc.i, %57
  %spec.store.select.i = select i1 %cmp48.i, i32 0, i32 %inc.i
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.then47.i, %if.end40.i.cleanup.i_crit_edge
  %readpos.2.i = phi i32 [ 0, %if.then47.i ], [ %add42.i, %if.end40.i.cleanup.i_crit_edge ]
  %readbuf.2.i = phi i32 [ %spec.store.select.i, %if.then47.i ], [ %readbuf.0112.i, %if.end40.i.cleanup.i_crit_edge ]
  %58 = tail call i32 @llvm.umin.i32(i32 %sub41.i, i32 %sub43.i) #13
  %cmp12.i = icmp eq i32 %58, 0
  br i1 %cmp12.i, label %cleanup.i.fifo_read.exit_crit_edge, label %cleanup.i.if.end40.i_crit_edge

cleanup.i.if.end40.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end40.i

cleanup.i.fifo_read.exit_crit_edge:               ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %fifo_read.exit

fifo_read.exit:                                   ; preds = %cleanup.i.fifo_read.exit_crit_edge, %list_del.exit.fifo_read.exit_crit_edge
  %readpos.0.lcssa.i = phi i32 [ %39, %list_del.exit.fifo_read.exit_crit_edge ], [ %readpos.2.i, %cleanup.i.fifo_read.exit_crit_edge ]
  %readbuf.0.lcssa.i = phi i32 [ %41, %list_del.exit.fifo_read.exit_crit_edge ], [ %readbuf.2.i, %cleanup.i.fifo_read.exit_crit_edge ]
  %done.0.lcssa.i = phi i32 [ 0, %list_del.exit.fifo_read.exit_crit_edge ], [ %add.i, %cleanup.i.fifo_read.exit_crit_edge ]
  %call23.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #13
  %59 = ptrtoint ptr %fill4 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %fill4, align 4
  %sub29.i = sub i32 %60, %done.0.lcssa.i
  store i32 %sub29.i, ptr %fill4, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call23.i) #13
  %61 = ptrtoint ptr %readpos1.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %readpos.0.lcssa.i, ptr %readpos1.i, align 4
  %62 = ptrtoint ptr %readbuf2.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %readbuf.0.lcssa.i, ptr %readbuf2.i, align 4
  %call48 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #13
  %tobool49.not = icmp eq ptr %call48, null
  br i1 %tobool49.not, label %cleanup.thread167, label %if.end51

cleanup.thread167:                                ; preds = %fifo_read.exit
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @report_io_error(ptr noundef %1, i32 noundef -12)
  br label %do.body65

if.end51:                                         ; preds = %fifo_read.exit
  %63 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %udev, align 4
  %65 = ptrtoint ptr %ep_num to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %ep_num, align 1
  %conv53 = zext i8 %66 to i32
  %67 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %64, align 8
  %shl.i = shl i32 %68, 8
  %shl1.i = shl nuw nsw i32 %conv53, 15
  %or.i = or i32 %shl1.i, %shl.i
  %or = or i32 %or.i, -1073741824
  %69 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %buf, align 4
  %dev1.i = getelementptr inbounds %struct.urb, ptr %call48, i32 0, i32 8
  %71 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %64, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %call48, i32 0, i32 10
  %72 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %or, ptr %pipe2.i, align 4
  %transfer_buffer3.i = getelementptr inbounds %struct.urb, ptr %call48, i32 0, i32 14
  %73 = ptrtoint ptr %transfer_buffer3.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %70, ptr %transfer_buffer3.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %call48, i32 0, i32 19
  %74 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %done.0.lcssa.i, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %call48, i32 0, i32 28
  %75 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr @bulk_out_completer, ptr %complete.i, align 4
  %context4.i = getelementptr inbounds %struct.urb, ptr %call48, i32 0, i32 27
  %76 = ptrtoint ptr %context4.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %22, ptr %context4.i, align 4
  tail call void @usb_anchor_urb(ptr noundef nonnull %call48, ptr noundef %anchor) #13
  %call56 = tail call i32 @usb_submit_urb(ptr noundef nonnull %call48, i32 noundef 3264) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %cleanup, label %unanchor

cleanup.thread:                                   ; preds = %lor.lhs.false31.cleanup.thread_crit_edge, %land.lhs.true28.cleanup.thread_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %buffers_lock, i32 noundef %call8190) #13
  tail call void @mutex_unlock(ptr noundef %ep_mutex) #13
  br i1 %do_wake.0.off0188, label %cleanup.thread.if.then84_crit_edge, label %cleanup.thread.if.end85_crit_edge

cleanup.thread.if.end85_crit_edge:                ; preds = %cleanup.thread
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end85

cleanup.thread.if.then84_crit_edge:               ; preds = %cleanup.thread
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then84

cleanup:                                          ; preds = %if.end51
  tail call void @usb_free_urb(ptr noundef nonnull %call48) #13
  %sub = sub i32 %fill.0189, %done.0.lcssa.i
  %call8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %buffers_lock) #13
  %tobool13.not = icmp eq i32 %sub, 0
  br i1 %tobool13.not, label %cleanup.if.then14_crit_edge, label %cleanup.if.end24_crit_edge

cleanup.if.end24_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end24

cleanup.if.then14_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then14

unanchor:                                         ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -12, i32 %call56)
  %cmp59 = icmp eq i32 %call56, -12
  %cond61 = select i1 %cmp59, i32 -12, i32 -5
  tail call fastcc void @report_io_error(ptr noundef %1, i32 noundef %cond61)
  tail call void @usb_unanchor_urb(ptr noundef nonnull %call48) #13
  tail call void @usb_free_urb(ptr noundef nonnull %call48) #13
  br label %do.body65

do.body65:                                        ; preds = %unanchor, %cleanup.thread167
  %call73 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %buffers_lock) #13
  %prev.i147 = getelementptr inbounds %struct.xillyusb_endpoint, ptr %ep, i32 0, i32 2, i32 1
  %77 = ptrtoint ptr %prev.i147 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %prev.i147, align 4
  %call.i.i148 = tail call zeroext i1 @__list_add_valid(ptr noundef %22, ptr noundef %78, ptr noundef %buffers) #13
  br i1 %call.i.i148, label %if.end.i.i149, label %do.body65.done_crit_edge

do.body65.done_crit_edge:                         ; preds = %do.body65
  call void @__sanitizer_cov_trace_pc() #15
  br label %done

if.end.i.i149:                                    ; preds = %do.body65
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i217 = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  %79 = ptrtoint ptr %prev.i147 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %22, ptr %prev.i147, align 4
  %80 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %buffers, ptr %22, align 4
  %81 = ptrtoint ptr %prev.i217 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %78, ptr %prev.i217, align 4
  %82 = ptrtoint ptr %78 to i32
  call void @__asan_store4_noabort(i32 %82)
  store volatile ptr %22, ptr %78, align 4
  br label %done

done:                                             ; preds = %if.end.i.i149, %do.body65.done_crit_edge
  %83 = ptrtoint ptr %outstanding_urbs29 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %outstanding_urbs29, align 4
  %dec = add i32 %84, -1
  store i32 %dec, ptr %outstanding_urbs29, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %buffers_lock, i32 noundef %call73) #13
  tail call void @mutex_unlock(ptr noundef %ep_mutex) #13
  br i1 %do_wake.0.off0188, label %done.if.then84_crit_edge, label %done.if.end85_crit_edge

done.if.end85_crit_edge:                          ; preds = %done
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end85

done.if.then84_crit_edge:                         ; preds = %done
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then84

if.then84:                                        ; preds = %done.if.then84_crit_edge, %cleanup.thread.if.then84_crit_edge, %if.end22.if.then84_crit_edge
  %waitq = getelementptr inbounds %struct.xillyusb_endpoint, ptr %ep, i32 0, i32 10, i32 6
  tail call void @__wake_up(ptr noundef %waitq, i32 noundef 1, i32 noundef 1, ptr noundef null) #13
  br label %if.end85

if.end85.critedge:                                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @mutex_unlock(ptr noundef %ep_mutex) #13
  br label %if.end85

if.end85.critedge146:                             ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @mutex_unlock(ptr noundef %ep_mutex) #13
  br label %if.end85

if.end85:                                         ; preds = %if.end85.critedge146, %if.end85.critedge, %if.then84, %done.if.end85_crit_edge, %cleanup.thread.if.end85_crit_edge, %if.end22.if.end85_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fifo_read(ptr noundef %fifo, ptr noundef %data, i32 noundef %len, ptr nocapture noundef readonly %copier) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %readpos1 = getelementptr inbounds %struct.xillyfifo, ptr %fifo, i32 0, i32 7
  %0 = ptrtoint ptr %readpos1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %readpos1, align 4
  %readbuf2 = getelementptr inbounds %struct.xillyfifo, ptr %fifo, i32 0, i32 8
  %2 = ptrtoint ptr %readbuf2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %readbuf2, align 4
  %lock = getelementptr inbounds %struct.xillyfifo, ptr %fifo, i32 0, i32 5
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #13
  %fill7 = getelementptr inbounds %struct.xillyfifo, ptr %fifo, i32 0, i32 4
  %4 = ptrtoint ptr %fill7 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fill7, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #13
  %6 = tail call i32 @llvm.umin.i32(i32 %len, i32 %5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp12109 = icmp eq i32 %6, 0
  br i1 %cmp12109, label %entry.do.body15_crit_edge, label %if.end.lr.ph

entry.do.body15_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body15

if.end.lr.ph:                                     ; preds = %entry
  %mem = getelementptr inbounds %struct.xillyfifo, ptr %fifo, i32 0, i32 11
  %bufnum = getelementptr inbounds %struct.xillyfifo, ptr %fifo, i32 0, i32 1
  br label %if.end

do.body15:                                        ; preds = %cleanup.do.body15_crit_edge, %entry.do.body15_crit_edge
  %readpos.0.lcssa = phi i32 [ %1, %entry.do.body15_crit_edge ], [ %readpos.2, %cleanup.do.body15_crit_edge ]
  %readbuf.0.lcssa = phi i32 [ %3, %entry.do.body15_crit_edge ], [ %readbuf.2, %cleanup.do.body15_crit_edge ]
  %done.0.lcssa = phi i32 [ 0, %entry.do.body15_crit_edge ], [ %add, %cleanup.do.body15_crit_edge ]
  %call23 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #13
  %7 = ptrtoint ptr %fill7 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %fill7, align 4
  %sub29 = sub i32 %8, %done.0.lcssa
  store i32 %sub29, ptr %fill7, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call23) #13
  %9 = ptrtoint ptr %readpos1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %readpos.0.lcssa, ptr %readpos1, align 4
  %10 = ptrtoint ptr %readbuf2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %readbuf.0.lcssa, ptr %readbuf2, align 4
  br label %cleanup54

if.end:                                           ; preds = %cleanup.if.end_crit_edge, %if.end.lr.ph
  %11 = phi i32 [ %6, %if.end.lr.ph ], [ %23, %cleanup.if.end_crit_edge ]
  %done.0114 = phi i32 [ 0, %if.end.lr.ph ], [ %add, %cleanup.if.end_crit_edge ]
  %todo.0113 = phi i32 [ %len, %if.end.lr.ph ], [ %sub41, %cleanup.if.end_crit_edge ]
  %readbuf.0112 = phi i32 [ %3, %if.end.lr.ph ], [ %readbuf.2, %cleanup.if.end_crit_edge ]
  %readpos.0111 = phi i32 [ %1, %if.end.lr.ph ], [ %readpos.2, %cleanup.if.end_crit_edge ]
  %fill.0110 = phi i32 [ %5, %if.end.lr.ph ], [ %sub43, %cleanup.if.end_crit_edge ]
  %12 = ptrtoint ptr %fifo to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %fifo, align 4
  %sub = sub i32 %13, %readpos.0111
  %14 = tail call i32 @llvm.umin.i32(i32 %11, i32 %sub)
  %add.ptr = getelementptr i8, ptr %data, i32 %done.0114
  %15 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mem, align 4
  %arrayidx = getelementptr ptr, ptr %16, i32 %readbuf.0112
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx, align 4
  %add.ptr37 = getelementptr i8, ptr %18, i32 %readpos.0111
  %call38 = tail call i32 %copier(ptr noundef %add.ptr, ptr noundef %add.ptr37, i32 noundef %14) #13, !callees !176
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool.not = icmp eq i32 %call38, 0
  br i1 %tobool.not, label %if.end40, label %if.end.cleanup54_crit_edge

if.end.cleanup54_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup54

if.end40:                                         ; preds = %if.end
  %add = add i32 %14, %done.0114
  %sub41 = sub i32 %todo.0113, %14
  %add42 = add i32 %14, %readpos.0111
  %sub43 = sub i32 %fill.0110, %14
  %19 = ptrtoint ptr %fifo to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %fifo, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add42, i32 %20)
  %cmp45 = icmp eq i32 %add42, %20
  br i1 %cmp45, label %if.then47, label %if.end40.cleanup_crit_edge

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then47:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #15
  %inc = add i32 %readbuf.0112, 1
  %21 = ptrtoint ptr %bufnum to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %bufnum, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %22)
  %cmp48 = icmp eq i32 %inc, %22
  %spec.store.select = select i1 %cmp48, i32 0, i32 %inc
  br label %cleanup

cleanup:                                          ; preds = %if.then47, %if.end40.cleanup_crit_edge
  %readpos.2 = phi i32 [ 0, %if.then47 ], [ %add42, %if.end40.cleanup_crit_edge ]
  %readbuf.2 = phi i32 [ %spec.store.select, %if.then47 ], [ %readbuf.0112, %if.end40.cleanup_crit_edge ]
  %23 = tail call i32 @llvm.umin.i32(i32 %sub41, i32 %sub43)
  %cmp12 = icmp eq i32 %23, 0
  br i1 %cmp12, label %cleanup.do.body15_crit_edge, label %cleanup.if.end_crit_edge

cleanup.if.end_crit_edge:                         ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

cleanup.do.body15_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body15

cleanup54:                                        ; preds = %if.end.cleanup54_crit_edge, %do.body15
  %retval.1.ph = phi i32 [ %done.0.lcssa, %do.body15 ], [ %call38, %if.end.cleanup54_crit_edge ]
  ret i32 %retval.1.ph
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @xilly_memcpy(ptr nocapture noundef writeonly %dst, ptr nocapture noundef readonly %src, i32 noundef %n) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memcpy(ptr %dst, ptr %src, i32 %n)
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_urb(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @report_io_error(ptr noundef %xdev, i32 noundef %errcode) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %error_lock = getelementptr inbounds %struct.xillyusb_dev, ptr %xdev, i32 0, i32 6
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %error_lock) #13
  %error = getelementptr inbounds %struct.xillyusb_dev, ptr %xdev, i32 0, i32 5
  %0 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.then, label %if.end10.critedge

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %errcode, ptr %error, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %error_lock, i32 noundef %call2) #13
  %kref = getelementptr inbounds %struct.xillyusb_dev, ptr %xdev, i32 0, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #13
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #13, !srcloc !177
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !174

if.then.if.end15.sink.split.i.i.i.i_crit_edge:    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %4 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %4)
  %.not.i.i.i.i = icmp sgt i32 %4, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.kref_get.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !172

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.kref_get.exit_crit_edge:          ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %kref_get.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef %.sink.i.i.i.i) #13
  br label %kref_get.exit

kref_get.exit:                                    ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.kref_get.exit_crit_edge
  %workq = getelementptr inbounds %struct.xillyusb_dev, ptr %xdev, i32 0, i32 4
  %5 = ptrtoint ptr %workq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %workq, align 4
  %wakeup_workitem = getelementptr inbounds %struct.xillyusb_dev, ptr %xdev, i32 0, i32 7
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %6, ptr noundef %wakeup_workitem) #13
  br label %if.end10

if.end10.critedge:                                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %error_lock, i32 noundef %call2) #13
  br label %if.end10

if.end10:                                         ; preds = %if.end10.critedge, %kref_get.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bulk_out_completer(ptr nocapture noundef readonly %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %ep1 = getelementptr inbounds %struct.xillybuffer, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ep1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ep1, align 4
  %status = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %4 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %status, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.79)
  switch i32 %5, label %if.then [
    i32 0, label %entry.do.body8_crit_edge
    i32 -2, label %entry.do.body8_crit_edge32
    i32 -104, label %entry.do.body8_crit_edge33
    i32 -108, label %entry.do.body8_crit_edge34
  ]

entry.do.body8_crit_edge34:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body8

entry.do.body8_crit_edge33:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body8

entry.do.body8_crit_edge32:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body8

entry.do.body8_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body8

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %3, align 4
  tail call fastcc void @report_io_error(ptr noundef %8, i32 noundef -5)
  br label %do.body8

do.body8:                                         ; preds = %if.then, %entry.do.body8_crit_edge, %entry.do.body8_crit_edge32, %entry.do.body8_crit_edge33, %entry.do.body8_crit_edge34
  %buffers_lock = getelementptr inbounds %struct.xillyusb_endpoint, ptr %3, i32 0, i32 4
  %call10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %buffers_lock) #13
  %buffers = getelementptr inbounds %struct.xillyusb_endpoint, ptr %3, i32 0, i32 2
  %prev.i = getelementptr inbounds %struct.xillyusb_endpoint, ptr %3, i32 0, i32 2, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %1, ptr noundef %10, ptr noundef %buffers) #13
  br i1 %call.i.i, label %if.end.i.i, label %do.body8.list_add_tail.exit_crit_edge

do.body8.list_add_tail.exit_crit_edge:            ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #15
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %1, ptr %prev.i, align 4
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %buffers, ptr %1, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %13 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev3.i.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %1, ptr %10, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %do.body8.list_add_tail.exit_crit_edge
  %outstanding_urbs = getelementptr inbounds %struct.xillyusb_endpoint, ptr %3, i32 0, i32 8
  %15 = ptrtoint ptr %outstanding_urbs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %outstanding_urbs, align 4
  %dec = add i32 %16, -1
  store i32 %dec, ptr %outstanding_urbs, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %buffers_lock, i32 noundef %call10) #13
  %shutting_down = getelementptr inbounds %struct.xillyusb_endpoint, ptr %3, i32 0, i32 12
  %17 = ptrtoint ptr %shutting_down to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %shutting_down, align 4, !range !169
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool15.not = icmp eq i8 %18, 0
  br i1 %tobool15.not, label %if.then16, label %list_add_tail.exit.if.end19_crit_edge

list_add_tail.exit.if.end19_crit_edge:            ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end19

if.then16:                                        ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #15
  %19 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %3, align 4
  %workq = getelementptr inbounds %struct.xillyusb_dev, ptr %20, i32 0, i32 4
  %21 = ptrtoint ptr %workq to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %workq, align 4
  %workitem = getelementptr inbounds %struct.xillyusb_endpoint, ptr %3, i32 0, i32 11
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %22, ptr noundef %workitem) #13
  br label %if.end19

if.end19:                                         ; preds = %if.then16, %list_add_tail.exit.if.end19_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_anchor_urb(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_unanchor_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #10

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bulk_in_completer(ptr nocapture noundef readonly %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %ep1 = getelementptr inbounds %struct.xillybuffer, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ep1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ep1, align 4
  %status = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %4 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %status, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.80)
  switch i32 %5, label %if.then8 [
    i32 0, label %if.end16
    i32 -2, label %entry.do.body9_crit_edge
    i32 -104, label %entry.do.body9_crit_edge64
    i32 -108, label %entry.do.body9_crit_edge65
  ]

entry.do.body9_crit_edge65:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body9

entry.do.body9_crit_edge64:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body9

entry.do.body9_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body9

if.then8:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %3, align 4
  tail call fastcc void @report_io_error(ptr noundef %8, i32 noundef -5)
  br label %do.body9

do.body9:                                         ; preds = %if.then8, %entry.do.body9_crit_edge, %entry.do.body9_crit_edge64, %entry.do.body9_crit_edge65
  %buffers_lock = getelementptr inbounds %struct.xillyusb_endpoint, ptr %3, i32 0, i32 4
  %call11 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %buffers_lock) #13
  %buffers = getelementptr inbounds %struct.xillyusb_endpoint, ptr %3, i32 0, i32 2
  %prev.i = getelementptr inbounds %struct.xillyusb_endpoint, ptr %3, i32 0, i32 2, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %1, ptr noundef %10, ptr noundef %buffers) #13
  br i1 %call.i.i, label %if.end.i.i, label %do.body9.list_add_tail.exit_crit_edge

do.body9.list_add_tail.exit_crit_edge:            ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #15
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %1, ptr %prev.i, align 4
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %buffers, ptr %1, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %13 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev3.i.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %1, ptr %10, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %do.body9.list_add_tail.exit_crit_edge
  %outstanding_urbs = getelementptr inbounds %struct.xillyusb_endpoint, ptr %3, i32 0, i32 8
  %15 = ptrtoint ptr %outstanding_urbs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %outstanding_urbs, align 4
  %dec = add i32 %16, -1
  store i32 %dec, ptr %outstanding_urbs, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %buffers_lock, i32 noundef %call11) #13
  br label %cleanup

if.end16:                                         ; preds = %entry
  %actual_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %17 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %actual_length, align 4
  %len = getelementptr inbounds %struct.xillybuffer, ptr %1, i32 0, i32 3
  %19 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %len, align 4
  %buffers_lock24 = getelementptr inbounds %struct.xillyusb_endpoint, ptr %3, i32 0, i32 4
  %call26 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %buffers_lock24) #13
  %filled_buffers = getelementptr inbounds %struct.xillyusb_endpoint, ptr %3, i32 0, i32 3
  %prev.i59 = getelementptr inbounds %struct.xillyusb_endpoint, ptr %3, i32 0, i32 3, i32 1
  %20 = ptrtoint ptr %prev.i59 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %prev.i59, align 4
  %call.i.i60 = tail call zeroext i1 @__list_add_valid(ptr noundef %1, ptr noundef %21, ptr noundef %filled_buffers) #13
  br i1 %call.i.i60, label %if.end.i.i62, label %if.end16.list_add_tail.exit63_crit_edge

if.end16.list_add_tail.exit63_crit_edge:          ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_add_tail.exit63

if.end.i.i62:                                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  %22 = ptrtoint ptr %prev.i59 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %1, ptr %prev.i59, align 4
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %filled_buffers, ptr %1, align 4
  %prev3.i.i61 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %24 = ptrtoint ptr %prev3.i.i61 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %21, ptr %prev3.i.i61, align 4
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %1, ptr %21, align 4
  br label %list_add_tail.exit63

list_add_tail.exit63:                             ; preds = %if.end.i.i62, %if.end16.list_add_tail.exit63_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %buffers_lock24, i32 noundef %call26) #13
  %shutting_down = getelementptr inbounds %struct.xillyusb_endpoint, ptr %3, i32 0, i32 12
  %26 = ptrtoint ptr %shutting_down to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %shutting_down, align 4, !range !169
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool33.not = icmp eq i8 %27, 0
  br i1 %tobool33.not, label %if.then34, label %list_add_tail.exit63.cleanup_crit_edge

list_add_tail.exit63.cleanup_crit_edge:           ; preds = %list_add_tail.exit63
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then34:                                        ; preds = %list_add_tail.exit63
  call void @__sanitizer_cov_trace_pc() #15
  %28 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %3, align 4
  %workq = getelementptr inbounds %struct.xillyusb_dev, ptr %29, i32 0, i32 4
  %30 = ptrtoint ptr %workq to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %workq, align 4
  %workitem = getelementptr inbounds %struct.xillyusb_endpoint, ptr %3, i32 0, i32 11
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %31, ptr noundef %workitem) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then34, %list_add_tail.exit63.cleanup_crit_edge, %list_add_tail.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @fifo_mem_release(ptr nocapture noundef readonly %fifo) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %mem = getelementptr inbounds %struct.xillyfifo, ptr %fifo, i32 0, i32 11
  %0 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mem, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %bufnum = getelementptr inbounds %struct.xillyfifo, ptr %fifo, i32 0, i32 1
  %2 = ptrtoint ptr %bufnum to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bufnum, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp9.not = icmp eq i32 %3, 0
  br i1 %cmp9.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %buf_order = getelementptr inbounds %struct.xillyfifo, ptr %fifo, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.010 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %4 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mem, align 4
  %arrayidx = getelementptr ptr, ptr %5, i32 %i.010
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %8 = ptrtoint ptr %7 to i32
  %9 = ptrtoint ptr %buf_order to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %buf_order, align 4
  tail call void @free_pages(i32 noundef %8, i32 noundef %10) #13
  %inc = add nuw i32 %i.010, 1
  %11 = ptrtoint ptr %bufnum to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %bufnum, align 4
  %cmp = icmp ult i32 %inc, %12
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %13 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mem, align 4
  tail call void @kfree(ptr noundef %14) #13
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xillyusb_send_opcode(ptr noundef %xdev, i32 noundef %chan_num, i8 noundef zeroext %opcode, i32 noundef %data) unnamed_addr #2 align 64 {
entry:
  %msg = alloca [2 x i32], align 4
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_ep = getelementptr inbounds %struct.xillyusb_dev, ptr %xdev, i32 0, i32 9
  %0 = ptrtoint ptr %msg_ep to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %msg_ep, align 4
  %fifo1 = getelementptr inbounds %struct.xillyusb_endpoint, ptr %1, i32 0, i32 10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %msg) #13
  %2 = getelementptr inbounds [2 x i32], ptr %msg, i32 0, i32 1
  %and = and i32 %chan_num, 4095
  %3 = and i8 %opcode, 15
  %and2 = zext i8 %3 to i32
  %shl = shl nuw nsw i32 %and2, 24
  %or = or i32 %shl, %and
  %4 = tail call i32 @llvm.bswap.i32(i32 %or)
  %5 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %msg, align 4
  %6 = tail call i32 @llvm.bswap.i32(i32 %data)
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %2, align 4
  %msg_mutex = getelementptr inbounds %struct.xillyusb_dev, ptr %xdev, i32 0, i32 11
  tail call void @mutex_lock_nested(ptr noundef %msg_mutex, i32 noundef 0) #13
  call void @__might_sleep(ptr noundef nonnull @.str.7, i32 noundef 1087) #13
  %fill = getelementptr inbounds %struct.xillyusb_endpoint, ptr %1, i32 0, i32 10, i32 4
  %8 = ptrtoint ptr %fill to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %fill, align 4
  %size = getelementptr inbounds %struct.xillyusb_endpoint, ptr %1, i32 0, i32 10, i32 2
  %10 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %size, align 4
  %sub69 = add i32 %11, -8
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %sub69)
  %cmp.not70 = icmp ugt i32 %9, %sub69
  br i1 %cmp.not70, label %lor.lhs.false.lr.ph, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

lor.lhs.false.lr.ph:                              ; preds = %entry
  %error = getelementptr inbounds %struct.xillyusb_dev, ptr %xdev, i32 0, i32 5
  %waitq = getelementptr inbounds %struct.xillyusb_endpoint, ptr %1, i32 0, i32 10, i32 6
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end22.lor.lhs.false_crit_edge, %lor.lhs.false.lr.ph
  %12 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not = icmp eq i32 %13, 0
  br i1 %tobool.not, label %if.then, label %lor.lhs.false.while.end_crit_edge

lor.lhs.false.while.end_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

if.then:                                          ; preds = %lor.lhs.false
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #13
  %14 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #13
  %call63 = call i32 @prepare_to_wait_event(ptr noundef %waitq, ptr noundef nonnull %__wq_entry, i32 noundef 1) #13
  %15 = ptrtoint ptr %fill to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %fill, align 4
  %17 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %size, align 4
  %sub1164 = add i32 %18, -8
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %sub1164)
  %cmp12.not65 = icmp ugt i32 %16, %sub1164
  br i1 %cmp12.not65, label %if.then.lor.lhs.false14_crit_edge, label %if.then.if.end22.thread59_crit_edge

if.then.if.end22.thread59_crit_edge:              ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end22.thread59

if.then.lor.lhs.false14_crit_edge:                ; preds = %if.then
  br label %lor.lhs.false14

lor.lhs.false14:                                  ; preds = %cleanup.lor.lhs.false14_crit_edge, %if.then.lor.lhs.false14_crit_edge
  %call66 = phi i32 [ %call, %cleanup.lor.lhs.false14_crit_edge ], [ %call63, %if.then.lor.lhs.false14_crit_edge ]
  %19 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool16.not = icmp eq i32 %20, 0
  br i1 %tobool16.not, label %if.end, label %lor.lhs.false14.if.end22.thread59_crit_edge

lor.lhs.false14.if.end22.thread59_crit_edge:      ; preds = %lor.lhs.false14
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end22.thread59

if.end:                                           ; preds = %lor.lhs.false14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %tobool18.not = icmp eq i32 %call66, 0
  br i1 %tobool18.not, label %cleanup, label %if.end22

cleanup:                                          ; preds = %if.end
  call void @schedule() #13
  %call = call i32 @prepare_to_wait_event(ptr noundef %waitq, ptr noundef nonnull %__wq_entry, i32 noundef 1) #13
  %21 = ptrtoint ptr %fill to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %fill, align 4
  %23 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %size, align 4
  %sub11 = add i32 %24, -8
  %cmp12.not = icmp ugt i32 %22, %sub11
  br i1 %cmp12.not, label %cleanup.lor.lhs.false14_crit_edge, label %cleanup.if.end22.thread59_crit_edge

cleanup.if.end22.thread59_crit_edge:              ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end22.thread59

cleanup.lor.lhs.false14_crit_edge:                ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.lhs.false14

if.end22.thread59:                                ; preds = %cleanup.if.end22.thread59_crit_edge, %lor.lhs.false14.if.end22.thread59_crit_edge, %if.then.if.end22.thread59_crit_edge
  call void @finish_wait(ptr noundef %waitq, ptr noundef nonnull %__wq_entry) #13
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #13
  br label %while.end

if.end22:                                         ; preds = %if.end
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #13
  call void @__might_sleep(ptr noundef nonnull @.str.7, i32 noundef 1087) #13
  %25 = ptrtoint ptr %fill to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %fill, align 4
  %27 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %size, align 4
  %sub = add i32 %28, -8
  %cmp.not = icmp ugt i32 %26, %sub
  br i1 %cmp.not, label %if.end22.lor.lhs.false_crit_edge, label %if.end22.while.end_crit_edge

if.end22.while.end_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

if.end22.lor.lhs.false_crit_edge:                 ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.lhs.false

while.end:                                        ; preds = %if.end22.while.end_crit_edge, %if.end22.thread59, %lor.lhs.false.while.end_crit_edge, %entry.while.end_crit_edge
  %error25 = getelementptr inbounds %struct.xillyusb_dev, ptr %xdev, i32 0, i32 5
  %29 = ptrtoint ptr %error25 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %error25, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool26.not = icmp eq i32 %30, 0
  br i1 %tobool26.not, label %if.end29, label %while.end.unlock_done_crit_edge

while.end.unlock_done_crit_edge:                  ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %unlock_done

if.end29:                                         ; preds = %while.end
  %writepos1.i = getelementptr inbounds %struct.xillyusb_endpoint, ptr %1, i32 0, i32 10, i32 9
  %31 = ptrtoint ptr %writepos1.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %writepos1.i, align 4
  %writebuf2.i = getelementptr inbounds %struct.xillyusb_endpoint, ptr %1, i32 0, i32 10, i32 10
  %33 = ptrtoint ptr %writebuf2.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %writebuf2.i, align 4
  %35 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %size, align 4
  %37 = ptrtoint ptr %fill to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %fill, align 4
  %sub.i = sub i32 %36, %38
  %39 = call i32 @llvm.umin.i32(i32 %sub.i, i32 8) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp594.i = icmp eq i32 %39, 0
  br i1 %cmp594.i, label %if.end29.fifo_write.exit_crit_edge, label %if.end.lr.ph.i

if.end29.fifo_write.exit_crit_edge:               ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #15
  br label %fifo_write.exit

if.end.lr.ph.i:                                   ; preds = %if.end29
  %mem.i = getelementptr inbounds %struct.xillyusb_endpoint, ptr %1, i32 0, i32 10, i32 11
  %bufnum.i = getelementptr inbounds %struct.xillyusb_endpoint, ptr %1, i32 0, i32 10, i32 1
  br label %if.end26.i

if.end26.i:                                       ; preds = %cleanup.i.if.end26.i_crit_edge, %if.end.lr.ph.i
  %40 = phi i32 [ %39, %if.end.lr.ph.i ], [ %53, %cleanup.i.if.end26.i_crit_edge ]
  %done.099.i = phi i32 [ 0, %if.end.lr.ph.i ], [ %add27.i, %cleanup.i.if.end26.i_crit_edge ]
  %todo.098.i = phi i32 [ 8, %if.end.lr.ph.i ], [ %sub28.i, %cleanup.i.if.end26.i_crit_edge ]
  %writebuf.097.i = phi i32 [ %34, %if.end.lr.ph.i ], [ %writebuf.2.i, %cleanup.i.if.end26.i_crit_edge ]
  %writepos.096.i = phi i32 [ %32, %if.end.lr.ph.i ], [ %writepos.2.i, %cleanup.i.if.end26.i_crit_edge ]
  %nmax.095.i = phi i32 [ %sub.i, %if.end.lr.ph.i ], [ %sub30.i, %cleanup.i.if.end26.i_crit_edge ]
  %41 = ptrtoint ptr %fifo1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %fifo1, align 4
  %sub3.i = sub i32 %42, %writepos.096.i
  %43 = call i32 @llvm.umin.i32(i32 %40, i32 %sub3.i) #13
  %44 = ptrtoint ptr %mem.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %mem.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %45, i32 %writebuf.097.i
  %46 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i = getelementptr i8, ptr %47, i32 %writepos.096.i
  %add.ptr23.i = getelementptr i8, ptr %msg, i32 %done.099.i
  %48 = call ptr @memcpy(ptr %add.ptr.i, ptr %add.ptr23.i, i32 %43)
  %add27.i = add i32 %43, %done.099.i
  %sub28.i = sub i32 %todo.098.i, %43
  %add29.i = add i32 %43, %writepos.096.i
  %sub30.i = sub i32 %nmax.095.i, %43
  %49 = ptrtoint ptr %fifo1 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %fifo1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add29.i, i32 %50)
  %cmp32.i = icmp eq i32 %add29.i, %50
  br i1 %cmp32.i, label %if.then34.i, label %if.end26.i.cleanup.i_crit_edge

if.end26.i.cleanup.i_crit_edge:                   ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.i

if.then34.i:                                      ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #15
  %inc.i = add i32 %writebuf.097.i, 1
  %51 = ptrtoint ptr %bufnum.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %bufnum.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %52)
  %cmp35.i = icmp eq i32 %inc.i, %52
  %spec.store.select.i = select i1 %cmp35.i, i32 0, i32 %inc.i
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.then34.i, %if.end26.i.cleanup.i_crit_edge
  %writepos.2.i = phi i32 [ 0, %if.then34.i ], [ %add29.i, %if.end26.i.cleanup.i_crit_edge ]
  %writebuf.2.i = phi i32 [ %spec.store.select.i, %if.then34.i ], [ %writebuf.097.i, %if.end26.i.cleanup.i_crit_edge ]
  %53 = call i32 @llvm.umin.i32(i32 %sub28.i, i32 %sub30.i) #13
  %cmp5.i = icmp eq i32 %53, 0
  br i1 %cmp5.i, label %cleanup.i.fifo_write.exit_crit_edge, label %cleanup.i.if.end26.i_crit_edge

cleanup.i.if.end26.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end26.i

cleanup.i.fifo_write.exit_crit_edge:              ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %fifo_write.exit

fifo_write.exit:                                  ; preds = %cleanup.i.fifo_write.exit_crit_edge, %if.end29.fifo_write.exit_crit_edge
  %writepos.0.lcssa.i = phi i32 [ %32, %if.end29.fifo_write.exit_crit_edge ], [ %writepos.2.i, %cleanup.i.fifo_write.exit_crit_edge ]
  %writebuf.0.lcssa.i = phi i32 [ %34, %if.end29.fifo_write.exit_crit_edge ], [ %writebuf.2.i, %cleanup.i.fifo_write.exit_crit_edge ]
  %done.0.lcssa.i = phi i32 [ 0, %if.end29.fifo_write.exit_crit_edge ], [ %add27.i, %cleanup.i.fifo_write.exit_crit_edge ]
  %lock.i = getelementptr inbounds %struct.xillyusb_endpoint, ptr %1, i32 0, i32 10, i32 5
  %call10.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #13
  %54 = ptrtoint ptr %fill to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %fill, align 4
  %add.i = add i32 %55, %done.0.lcssa.i
  store i32 %add.i, ptr %fill, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call10.i) #13
  %56 = ptrtoint ptr %writepos1.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %writepos.0.lcssa.i, ptr %writepos1.i, align 4
  %57 = ptrtoint ptr %writebuf2.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %writebuf.0.lcssa.i, ptr %writebuf2.i, align 4
  call fastcc void @try_queue_bulk_out(ptr noundef %1)
  br label %unlock_done

unlock_done:                                      ; preds = %fifo_write.exit, %while.end.unlock_done_crit_edge
  %rc.0 = phi i32 [ 0, %fifo_write.exit ], [ %30, %while.end.unlock_done_crit_edge ]
  call void @mutex_unlock(ptr noundef %msg_mutex) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %msg) #13
  ret i32 %rc.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @setup_channels(ptr noundef %xdev, ptr nocapture noundef readonly %chandesc, i32 noundef %num_channels) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %num_channels, i32 396) #13
  %1 = extractvalue { i32, i1 } %0, 1
  br i1 %1, label %entry.cleanup_crit_edge, label %if.end7.i.i, !prof !174

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end7.i.i:                                      ; preds = %entry
  %2 = extractvalue { i32, i1 } %0, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %2, i32 noundef 3520) #18
  %tobool.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool.not, label %if.end7.i.i.cleanup_crit_edge, label %if.end

if.end7.i.i.cleanup_crit_edge:                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %if.end7.i.i
  %3 = ptrtoint ptr %xdev to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call8.i.i, ptr %xdev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_channels)
  %cmp112.not = icmp eq i32 %num_channels, 0
  br i1 %cmp112.not, label %if.end.cleanup_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body:                                         ; preds = %if.end71.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.0115 = phi i32 [ %inc, %if.end71.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %chan.0114 = phi ptr [ %incdec.ptr72, %if.end71.for.body_crit_edge ], [ %call8.i.i, %if.end.for.body_crit_edge ]
  %chandesc.addr.0113 = phi ptr [ %incdec.ptr1, %if.end71.for.body_crit_edge ], [ %chandesc, %if.end.for.body_crit_edge ]
  %incdec.ptr = getelementptr i16, ptr %chandesc.addr.0113, i32 1
  %4 = ptrtoint ptr %chandesc.addr.0113 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %chandesc.addr.0113, align 2
  %6 = tail call i16 @llvm.bswap.i16(i16 %5)
  %conv = zext i16 %6 to i32
  %incdec.ptr1 = getelementptr i16, ptr %chandesc.addr.0113, i32 2
  %7 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %incdec.ptr, align 2
  %9 = tail call i16 @llvm.bswap.i16(i16 %8)
  %conv2 = zext i16 %9 to i32
  %10 = ptrtoint ptr %chan.0114 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %xdev, ptr %chan.0114, align 4
  %in_mutex = getelementptr inbounds %struct.xillyusb_channel, ptr %chan.0114, i32 0, i32 4
  tail call void @__mutex_init(ptr noundef %in_mutex, ptr noundef nonnull @.str.58, ptr noundef nonnull @setup_channels.__key) #13
  %out_mutex = getelementptr inbounds %struct.xillyusb_channel, ptr %chan.0114, i32 0, i32 5
  tail call void @__mutex_init(ptr noundef %out_mutex, ptr noundef nonnull @.str.60, ptr noundef nonnull @setup_channels.__key.59) #13
  %lock = getelementptr inbounds %struct.xillyusb_channel, ptr %chan.0114, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.62, ptr noundef nonnull @setup_channels.__key.61) #13
  %flushq = getelementptr inbounds %struct.xillyusb_channel, ptr %chan.0114, i32 0, i32 6
  tail call void @__init_waitqueue_head(ptr noundef %flushq, ptr noundef nonnull @.str.64, ptr noundef nonnull @setup_channels.__key.63) #13
  %chan_idx = getelementptr inbounds %struct.xillyusb_channel, ptr %chan.0114, i32 0, i32 7
  %11 = ptrtoint ptr %chan_idx to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %i.0115, ptr %chan_idx, align 4
  %and = and i32 %conv, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool13.not = icmp eq i32 %and, 0
  br i1 %tobool13.not, label %for.body.if.end35_crit_edge, label %if.then14

for.body.if.end35_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end35

if.then14:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %readable = getelementptr inbounds %struct.xillyusb_channel, ptr %chan.0114, i32 0, i32 20
  %12 = ptrtoint ptr %readable to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load = load i8, ptr %readable, align 4
  %13 = trunc i16 %6 to i8
  %14 = lshr i8 %13, 3
  %bf.shl = and i8 %14, 8
  %bf.set = and i8 %bf.load, 117
  %15 = lshr i8 %13, 4
  %bf.shl29 = and i8 %15, 2
  %bf.clear19 = or i8 %bf.shl, %bf.shl29
  %bf.set20 = or i8 %bf.clear19, %bf.set
  %bf.set31 = or i8 %bf.set20, -128
  store i8 %bf.set31, ptr %readable, align 4
  %and33 = and i32 %conv, 15
  %in_log2_element_size = getelementptr inbounds %struct.xillyusb_channel, ptr %chan.0114, i32 0, i32 11
  %16 = ptrtoint ptr %in_log2_element_size to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %and33, ptr %in_log2_element_size, align 4
  %shr = lshr i32 %conv, 8
  %and34 = and i32 %shr, 31
  %add = add nuw nsw i32 %and34, 16
  %in_log2_fifo_size = getelementptr inbounds %struct.xillyusb_channel, ptr %chan.0114, i32 0, i32 13
  %17 = ptrtoint ptr %in_log2_fifo_size to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %add, ptr %in_log2_fifo_size, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.then14, %for.body.if.end35_crit_edge
  %and36 = and i32 %conv2, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp ne i32 %and36, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %i.0115)
  %cmp38 = icmp ult i32 %i.0115, 14
  %or.cond = select i1 %tobool37.not, i1 %cmp38, i1 false
  br i1 %or.cond, label %if.then40, label %if.end35.if.end71_crit_edge

if.end35.if.end71_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end71

if.then40:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #15
  %writable = getelementptr inbounds %struct.xillyusb_channel, ptr %chan.0114, i32 0, i32 20
  %18 = ptrtoint ptr %writable to i32
  call void @__asan_load1_noabort(i32 %18)
  %bf.load41 = load i8, ptr %writable, align 4
  %19 = trunc i16 %9 to i8
  %20 = lshr i8 %19, 4
  %bf.shl52 = and i8 %20, 4
  %bf.set43 = and i8 %bf.load41, -70
  %21 = lshr i8 %19, 5
  %22 = and i8 %21, 1
  %bf.clear53 = or i8 %bf.shl52, %22
  %bf.set54 = or i8 %bf.clear53, %bf.set43
  %bf.set65 = or i8 %bf.set54, 64
  store i8 %bf.set65, ptr %writable, align 4
  %and67 = and i32 %conv2, 15
  %out_log2_element_size = getelementptr inbounds %struct.xillyusb_channel, ptr %chan.0114, i32 0, i32 12
  %23 = ptrtoint ptr %out_log2_element_size to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %and67, ptr %out_log2_element_size, align 4
  %shr68 = lshr i32 %conv2, 8
  %and69 = and i32 %shr68, 31
  %add70 = add nuw nsw i32 %and69, 16
  %out_log2_fifo_size = getelementptr inbounds %struct.xillyusb_channel, ptr %chan.0114, i32 0, i32 14
  %24 = ptrtoint ptr %out_log2_fifo_size to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %add70, ptr %out_log2_fifo_size, align 4
  br label %if.end71

if.end71:                                         ; preds = %if.then40, %if.end35.if.end71_crit_edge
  %inc = add nuw nsw i32 %i.0115, 1
  %incdec.ptr72 = getelementptr %struct.xillyusb_channel, ptr %chan.0114, i32 1
  %exitcond.not = icmp eq i32 %inc, %num_channels
  br i1 %exitcond.not, label %if.end71.cleanup_crit_edge, label %if.end71.for.body_crit_edge

if.end71.for.body_crit_edge:                      ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

if.end71.cleanup_crit_edge:                       ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cleanup:                                          ; preds = %if.end71.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.end7.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.end7.i.i.cleanup_crit_edge ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.end71.cleanup_crit_edge ]
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

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_workqueue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xillybus_init_chrdev(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @safely_assign_in_fifo(ptr noundef %chan) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.xillyusb_channel, ptr %chan, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #13
  %in_fifo = getelementptr inbounds %struct.xillyusb_channel, ptr %chan, i32 0, i32 1
  %0 = ptrtoint ptr %in_fifo to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %in_fifo, align 4
  tail call void @mutex_unlock(ptr noundef %lock) #13
  %1 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %chan, align 4
  %in_ep = getelementptr inbounds %struct.xillyusb_dev, ptr %2, i32 0, i32 10
  %3 = ptrtoint ptr %in_ep to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %in_ep, align 4
  %workitem = getelementptr inbounds %struct.xillyusb_endpoint, ptr %4, i32 0, i32 11
  %call = tail call zeroext i1 @flush_work(ptr noundef %workitem) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @xillyusb_llseek(ptr nocapture noundef %filp, i64 noundef %offset, i32 noundef %whence) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %f_pos = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 10
  %4 = ptrtoint ptr %f_pos to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %f_pos, align 8
  %readable = getelementptr inbounds %struct.xillyusb_channel, ptr %1, i32 0, i32 20
  %6 = ptrtoint ptr %readable to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %readable, align 4
  %in_log2_element_size = getelementptr inbounds %struct.xillyusb_channel, ptr %1, i32 0, i32 11
  %out_log2_element_size = getelementptr inbounds %struct.xillyusb_channel, ptr %1, i32 0, i32 12
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load)
  %tobool.not50 = icmp slt i8 %bf.load, 0
  %cond.in = select i1 %tobool.not50, ptr %in_log2_element_size, ptr %out_log2_element_size
  %7 = ptrtoint ptr %cond.in to i32
  call void @__asan_load4_noabort(i32 %7)
  %cond = load i32, ptr %cond.in, align 4
  %out_mutex = getelementptr inbounds %struct.xillyusb_channel, ptr %1, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %out_mutex, i32 noundef 0) #13
  %in_mutex = getelementptr inbounds %struct.xillyusb_channel, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %in_mutex, i32 noundef 0) #13
  %8 = zext i32 %whence to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.81)
  switch i32 %whence, label %entry.end_crit_edge [
    i32 0, label %entry.sw.epilog_crit_edge
    i32 1, label %sw.bb2
    i32 2, label %entry.sw.epilog_crit_edge51
  ]

entry.sw.epilog_crit_edge51:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

entry.end_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %end

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %add = add i64 %5, %offset
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb2, %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge51
  %pos.0 = phi i64 [ %add, %sw.bb2 ], [ %offset, %entry.sw.epilog_crit_edge ], [ %offset, %entry.sw.epilog_crit_edge51 ]
  %notmask = shl nsw i32 -1, %cond
  %sub = xor i32 %notmask, -1
  %conv = sext i32 %sub to i64
  %and = and i64 %pos.0, %conv
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool4.not = icmp eq i64 %and, 0
  br i1 %tobool4.not, label %if.end, label %sw.epilog.end_crit_edge

sw.epilog.end_crit_edge:                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  br label %end

if.end:                                           ; preds = %sw.epilog
  %chan_idx = getelementptr inbounds %struct.xillyusb_channel, ptr %1, i32 0, i32 7
  %9 = ptrtoint ptr %chan_idx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %chan_idx, align 4
  %shl5 = shl i32 %10, 1
  %sh_prom = zext i32 %cond to i64
  %shr = ashr i64 %pos.0, %sh_prom
  %conv6 = trunc i64 %shr to i32
  %call = tail call fastcc i32 @xillyusb_send_opcode(ptr noundef %3, i32 noundef %shl5, i8 noundef zeroext 7, i32 noundef %conv6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool7.not = icmp eq i32 %call, 0
  br i1 %tobool7.not, label %if.end9, label %if.end.end_crit_edge

if.end.end_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %end

if.end9:                                          ; preds = %if.end
  %11 = ptrtoint ptr %readable to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load10 = load i8, ptr %readable, align 4
  %12 = and i8 %bf.load10, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool13.not = icmp eq i8 %12, 0
  br i1 %tobool13.not, label %if.end9.end_crit_edge, label %if.then14

if.end9.end_crit_edge:                            ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  br label %end

if.then14:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  %flushed = getelementptr inbounds %struct.xillyusb_channel, ptr %1, i32 0, i32 18
  %13 = ptrtoint ptr %flushed to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %flushed, align 4
  %call15 = tail call fastcc i32 @flush_downstream(ptr noundef %1, i32 noundef 100, i1 noundef zeroext false)
  br label %end

end:                                              ; preds = %if.then14, %if.end9.end_crit_edge, %if.end.end_crit_edge, %sw.epilog.end_crit_edge, %entry.end_crit_edge
  %pos.1 = phi i64 [ %pos.0, %if.end.end_crit_edge ], [ %pos.0, %if.then14 ], [ %pos.0, %if.end9.end_crit_edge ], [ %5, %entry.end_crit_edge ], [ %pos.0, %sw.epilog.end_crit_edge ]
  %rc.0 = phi i32 [ %call, %if.end.end_crit_edge ], [ %call15, %if.then14 ], [ 0, %if.end9.end_crit_edge ], [ -22, %entry.end_crit_edge ], [ -22, %sw.epilog.end_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %out_mutex) #13
  tail call void @mutex_unlock(ptr noundef %in_mutex) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.0)
  %tobool19.not = icmp eq i32 %rc.0, 0
  br i1 %tobool19.not, label %if.end22, label %if.then20

if.then20:                                        ; preds = %end
  call void @__sanitizer_cov_trace_pc() #15
  %conv21 = sext i32 %rc.0 to i64
  br label %cleanup

if.end22:                                         ; preds = %end
  call void @__sanitizer_cov_trace_pc() #15
  %14 = ptrtoint ptr %f_pos to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %pos.1, ptr %f_pos, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %if.then20
  %retval.0 = phi i64 [ %conv21, %if.then20 ], [ %pos.1, %if.end22 ]
  ret i64 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xillyusb_read(ptr nocapture noundef readonly %filp, ptr noundef %userbuf, i32 noundef %count, ptr nocapture noundef readnone %f_pos) #2 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  %__wq_entry157 = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %in_fifo = getelementptr inbounds %struct.xillyusb_channel, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %in_fifo to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %in_fifo, align 4
  %chan_idx = getelementptr inbounds %struct.xillyusb_channel, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %chan_idx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %chan_idx, align 4
  %shl = shl i32 %7, 1
  %or = or i32 %shl, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %8 = load volatile i32, ptr @jiffies, align 128
  %add2 = add i32 %8, 2
  %in_mutex = getelementptr inbounds %struct.xillyusb_channel, ptr %1, i32 0, i32 4
  %call = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %in_mutex, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %while.cond.preheader, label %entry.cleanup216_crit_edge

entry.cleanup216_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup216

while.cond.preheader:                             ; preds = %entry
  %error = getelementptr inbounds %struct.xillyusb_dev, ptr %3, i32 0, i32 5
  %f_flags = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 7
  %in_log2_element_size = getelementptr inbounds %struct.xillyusb_channel, ptr %1, i32 0, i32 11
  %in_consumed_bytes = getelementptr inbounds %struct.xillyusb_channel, ptr %1, i32 0, i32 8
  %size = getelementptr inbounds %struct.xillyfifo, ptr %5, i32 0, i32 2
  %add12 = add i32 %count, -1
  %in_synchronous = getelementptr inbounds %struct.xillyusb_channel, ptr %1, i32 0, i32 20
  %in_current_checkpoint = getelementptr inbounds %struct.xillyusb_channel, ptr %1, i32 0, i32 9
  %read_data_ok = getelementptr inbounds %struct.xillyusb_channel, ptr %1, i32 0, i32 15
  %fill151 = getelementptr inbounds %struct.xillyfifo, ptr %5, i32 0, i32 4
  %waitq161 = getelementptr inbounds %struct.xillyfifo, ptr %5, i32 0, i32 6
  %9 = ptrtoint ptr %in_log2_element_size to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %in_log2_element_size, align 4
  %call3410 = call fastcc i32 @fifo_read(ptr noundef %5, ptr noundef %userbuf, i32 noundef %count, ptr noundef nonnull @xilly_copy_to_user)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3410)
  %cmp411 = icmp slt i32 %call3410, 0
  br i1 %cmp411, label %while.cond.preheader.while.end_crit_edge, label %while.cond.preheader.if.end5_crit_edge

while.cond.preheader.if.end5_crit_edge:           ; preds = %while.cond.preheader
  br label %if.end5

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

if.end5:                                          ; preds = %cleanup186.if.end5_crit_edge, %while.cond.preheader.if.end5_crit_edge
  %call3414 = phi i32 [ %call3, %cleanup186.if.end5_crit_edge ], [ %call3410, %while.cond.preheader.if.end5_crit_edge ]
  %11 = phi i32 [ %64, %cleanup186.if.end5_crit_edge ], [ %10, %while.cond.preheader.if.end5_crit_edge ]
  %bytes_done.0413 = phi i32 [ %add6, %cleanup186.if.end5_crit_edge ], [ 0, %while.cond.preheader.if.end5_crit_edge ]
  %sent_set_push.0.off0412 = phi i1 [ %sent_set_push.2.off0, %cleanup186.if.end5_crit_edge ], [ false, %while.cond.preheader.if.end5_crit_edge ]
  %add6 = add i32 %call3414, %bytes_done.0413
  %12 = ptrtoint ptr %in_consumed_bytes to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %in_consumed_bytes, align 4
  %add7 = add i32 %13, %call3414
  store i32 %add7, ptr %in_consumed_bytes, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %14 = load volatile i32, ptr @jiffies, align 128
  %sub8 = sub i32 %add2, %14
  %15 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %size, align 4
  %add10 = add i32 %16, %add7
  %shr = lshr i32 %add10, %11
  %shl14 = shl nuw i32 1, %11
  %sub13 = add i32 %add12, %shl14
  %add15 = sub i32 %sub13, %add6
  %sub16 = add i32 %add15, %add7
  %shr17 = lshr i32 %sub16, %11
  %17 = ptrtoint ptr %in_synchronous to i32
  call void @__asan_load1_noabort(i32 %17)
  %bf.load = load i8, ptr %in_synchronous, align 4
  %18 = and i8 %bf.load, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool20.not = icmp eq i8 %18, 0
  br i1 %tobool20.not, label %if.end5.if.else_crit_edge, label %land.lhs.true

if.end5.if.else_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

land.lhs.true:                                    ; preds = %if.end5
  %sub18 = sub i32 %shr, %shr17
  %shl19 = shl i32 %sub18, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %shl19)
  %cmp21 = icmp sgt i32 %shl19, -1
  br i1 %cmp21, label %land.lhs.true.if.end23_crit_edge, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

land.lhs.true.if.end23_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end23

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end5.if.else_crit_edge
  br label %if.end23

if.end23:                                         ; preds = %if.else, %land.lhs.true.if.end23_crit_edge
  %checkpoint.0 = phi i32 [ %shr, %if.else ], [ %shr17, %land.lhs.true.if.end23_crit_edge ]
  %checkpoint_for_complete.0.off0 = phi i1 [ false, %if.else ], [ true, %land.lhs.true.if.end23_crit_edge ]
  %19 = ptrtoint ptr %read_data_ok to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %read_data_ok, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool26.not = icmp eq i32 %20, 0
  br i1 %tobool26.not, label %if.end23.if.end40_crit_edge, label %land.lhs.true27

if.end23.if.end40_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end40

land.lhs.true27:                                  ; preds = %if.end23
  %21 = ptrtoint ptr %in_current_checkpoint to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %in_current_checkpoint, align 4
  %sub24 = sub i32 %checkpoint.0, %22
  %shl25 = shl i32 %sub24, %11
  %shr29 = lshr i32 %16, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %shl25, i32 %shr29)
  %cmp30 = icmp ugt i32 %shl25, %shr29
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shl25)
  %cmp33 = icmp sgt i32 %shl25, 0
  %or.cond = select i1 %checkpoint_for_complete.0.off0, i1 %cmp33, i1 false
  %or.cond320 = or i1 %cmp30, %or.cond
  br i1 %or.cond320, label %if.then34, label %land.lhs.true27.if.end40_crit_edge

land.lhs.true27.if.end40_crit_edge:               ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end40

if.then34:                                        ; preds = %land.lhs.true27
  %23 = ptrtoint ptr %in_current_checkpoint to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %checkpoint.0, ptr %in_current_checkpoint, align 4
  %call36 = call fastcc i32 @xillyusb_send_opcode(ptr noundef %3, i32 noundef %or, i8 noundef zeroext 2, i32 noundef %checkpoint.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.then34.if.end40_crit_edge, label %if.then34.while.end_crit_edge

if.then34.while.end_crit_edge:                    ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

if.then34.if.end40_crit_edge:                     ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end40

if.end40:                                         ; preds = %if.then34.if.end40_crit_edge, %land.lhs.true27.if.end40_crit_edge, %if.end23.if.end40_crit_edge
  %rc.0 = phi i32 [ 0, %if.then34.if.end40_crit_edge ], [ %call3414, %if.end23.if.end40_crit_edge ], [ %call3414, %land.lhs.true27.if.end40_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %add6, i32 %count)
  %cmp41 = icmp eq i32 %add6, %count
  br i1 %cmp41, label %if.end40.while.end_crit_edge, label %lor.lhs.false42

if.end40.while.end_crit_edge:                     ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

lor.lhs.false42:                                  ; preds = %if.end40
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub8)
  %cmp43 = icmp sgt i32 %sub8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add6)
  %tobool45.not = icmp eq i32 %add6, 0
  %or.cond318 = select i1 %cmp43, i1 true, i1 %tobool45.not
  br i1 %or.cond318, label %do.end, label %lor.lhs.false42.while.end_crit_edge

lor.lhs.false42.while.end_crit_edge:              ; preds = %lor.lhs.false42
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

do.end:                                           ; preds = %lor.lhs.false42
  %24 = ptrtoint ptr %read_data_ok to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %read_data_ok, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool49.not = icmp eq i32 %25, 0
  br i1 %tobool49.not, label %do.end54, label %if.end64

do.end54:                                         ; preds = %do.end
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !178
  %26 = ptrtoint ptr %fill151 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %fill151, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool61.not = icmp eq i32 %27, 0
  br i1 %tobool61.not, label %do.end54.while.end_crit_edge, label %do.end54.cleanup186_crit_edge

do.end54.cleanup186_crit_edge:                    ; preds = %do.end54
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup186

do.end54.while.end_crit_edge:                     ; preds = %do.end54
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

if.end64:                                         ; preds = %do.end
  %28 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool65.not = icmp eq i32 %29, 0
  br i1 %tobool65.not, label %if.end68, label %if.end64.while.end_crit_edge

if.end64.while.end_crit_edge:                     ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

if.end68:                                         ; preds = %if.end64
  %30 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %f_flags, align 4
  %and = and i32 %31, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool69.not = icmp eq i32 %and, 0
  br i1 %tobool69.not, label %if.end71, label %if.end68.while.end_crit_edge

if.end68.while.end_crit_edge:                     ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

if.end71:                                         ; preds = %if.end68
  br i1 %sent_set_push.0.off0412, label %if.end71.if.end78_crit_edge, label %if.then73

if.end71.if.end78_crit_edge:                      ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end78

if.then73:                                        ; preds = %if.end71
  %call74 = call fastcc i32 @xillyusb_send_opcode(ptr noundef %3, i32 noundef %or, i8 noundef zeroext 4, i32 noundef %shr17)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %if.then73.if.end78_crit_edge, label %if.then73.while.end_crit_edge

if.then73.while.end_crit_edge:                    ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

if.then73.if.end78_crit_edge:                     ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end78

if.end78:                                         ; preds = %if.then73.if.end78_crit_edge, %if.end71.if.end78_crit_edge
  br i1 %cmp43, label %if.then80, label %if.else139

if.then80:                                        ; preds = %if.end78
  call void @__might_sleep(ptr noundef nonnull @.str.7, i32 noundef 1563) #13
  %32 = ptrtoint ptr %fill151 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %fill151, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool88.not = icmp eq i32 %33, 0
  br i1 %tobool88.not, label %lor.rhs, label %if.then80.cleanup186_crit_edge

if.then80.cleanup186_crit_edge:                   ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup186

lor.rhs:                                          ; preds = %if.then80
  %34 = ptrtoint ptr %read_data_ok to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %read_data_ok, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool90.not = icmp eq i32 %35, 0
  br i1 %tobool90.not, label %lor.rhs.cleanup186_crit_edge, label %if.then103

lor.rhs.cleanup186_crit_edge:                     ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup186

if.then103:                                       ; preds = %lor.rhs
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #13
  %36 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #13
  %call105375 = call i32 @prepare_to_wait_event(ptr noundef %waitq161, ptr noundef nonnull %__wq_entry, i32 noundef 1) #13
  %37 = ptrtoint ptr %fill151 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %fill151, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool108.not376 = icmp eq i32 %38, 0
  br i1 %tobool108.not376, label %if.then103.lor.end113_crit_edge, label %if.then103.lor.end113.thread_crit_edge

if.then103.lor.end113.thread_crit_edge:           ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.end113.thread

if.then103.lor.end113_crit_edge:                  ; preds = %if.then103
  br label %lor.end113

lor.end113.thread:                                ; preds = %cleanup.lor.end113.thread_crit_edge, %if.then103.lor.end113.thread_crit_edge
  %__ret104.0.lcssa = phi i32 [ %sub8, %if.then103.lor.end113.thread_crit_edge ], [ %call134, %cleanup.lor.end113.thread_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret104.0.lcssa)
  %tobool118.not331 = icmp eq i32 %__ret104.0.lcssa, 0
  %spec.store.select225332 = select i1 %tobool118.not331, i32 1, i32 %__ret104.0.lcssa
  br label %for.end

lor.end113:                                       ; preds = %cleanup.lor.end113_crit_edge, %if.then103.lor.end113_crit_edge
  %call105378 = phi i32 [ %call105, %cleanup.lor.end113_crit_edge ], [ %call105375, %if.then103.lor.end113_crit_edge ]
  %__ret104.0377 = phi i32 [ %call134, %cleanup.lor.end113_crit_edge ], [ %sub8, %if.then103.lor.end113_crit_edge ]
  %39 = ptrtoint ptr %read_data_ok to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %read_data_ok, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool111.not = icmp eq i32 %40, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret104.0377)
  %tobool118.not.le = icmp eq i32 %__ret104.0377, 0
  br i1 %tobool111.not, label %for.end.loopexit.split.loop.exit370, label %41

41:                                               ; preds = %lor.end113
  br i1 %tobool118.not.le, label %.for.end_crit_edge, label %if.end130

.for.end_crit_edge:                               ; preds = %41
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

if.end130:                                        ; preds = %41
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call105378)
  %tobool131.not = icmp eq i32 %call105378, 0
  br i1 %tobool131.not, label %cleanup, label %if.end130.__out_crit_edge

if.end130.__out_crit_edge:                        ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #15
  br label %__out

cleanup:                                          ; preds = %if.end130
  %call134 = call i32 @schedule_timeout(i32 noundef %__ret104.0377) #13
  %call105 = call i32 @prepare_to_wait_event(ptr noundef %waitq161, ptr noundef nonnull %__wq_entry, i32 noundef 1) #13
  %42 = ptrtoint ptr %fill151 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %fill151, align 4
  %tobool108.not = icmp eq i32 %43, 0
  br i1 %tobool108.not, label %cleanup.lor.end113_crit_edge, label %cleanup.lor.end113.thread_crit_edge

cleanup.lor.end113.thread_crit_edge:              ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.end113.thread

cleanup.lor.end113_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.end113

for.end.loopexit.split.loop.exit370:              ; preds = %lor.end113
  call void @__sanitizer_cov_trace_pc() #15
  %spec.store.select225.le = select i1 %tobool118.not.le, i32 1, i32 %__ret104.0377
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit.split.loop.exit370, %.for.end_crit_edge, %lor.end113.thread
  %__ret104.2.ph = phi i32 [ %spec.store.select225332, %lor.end113.thread ], [ %spec.store.select225.le, %for.end.loopexit.split.loop.exit370 ], [ 0, %.for.end_crit_edge ]
  call void @finish_wait(ptr noundef %waitq161, ptr noundef nonnull %__wq_entry) #13
  br label %__out

__out:                                            ; preds = %for.end, %if.end130.__out_crit_edge
  %__ret104.2337 = phi i32 [ %__ret104.2.ph, %for.end ], [ %call105378, %if.end130.__out_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #13
  br label %if.end182

if.else139:                                       ; preds = %if.end78
  %44 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %1, align 4
  %46 = ptrtoint ptr %in_log2_element_size to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %in_log2_element_size, align 4
  %48 = ptrtoint ptr %chan_idx to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %chan_idx, align 4
  %shl.i = shl i32 %49, 1
  %or.i = or i32 %shl.i, 1
  %50 = ptrtoint ptr %in_consumed_bytes to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %in_consumed_bytes, align 4
  %shl2.i = shl i32 2, %47
  %add.i = add i32 %shl2.i, -1
  %sub.i = add i32 %add.i, %51
  %shr.i = lshr i32 %sub.i, %47
  %call.i = call fastcc i32 @xillyusb_send_opcode(ptr noundef %45, i32 noundef %or.i, i8 noundef zeroext 5, i32 noundef %shr.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool141.not = icmp eq i32 %call.i, 0
  br i1 %tobool141.not, label %if.end143, label %if.else139.while.end_crit_edge

if.else139.while.end_crit_edge:                   ; preds = %if.else139
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

if.end143:                                        ; preds = %if.else139
  call void @__might_sleep(ptr noundef nonnull @.str.7, i32 noundef 1573) #13
  %52 = ptrtoint ptr %fill151 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %fill151, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool152.not = icmp eq i32 %53, 0
  br i1 %tobool152.not, label %lor.lhs.false153, label %if.end143.cleanup186_crit_edge

if.end143.cleanup186_crit_edge:                   ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup186

lor.lhs.false153:                                 ; preds = %if.end143
  %54 = ptrtoint ptr %read_data_ok to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %read_data_ok, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool155.not = icmp eq i32 %55, 0
  br i1 %tobool155.not, label %lor.lhs.false153.cleanup186_crit_edge, label %if.then156

lor.lhs.false153.cleanup186_crit_edge:            ; preds = %lor.lhs.false153
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup186

if.then156:                                       ; preds = %lor.lhs.false153
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry157) #13
  %56 = call ptr @memset(ptr %__wq_entry157, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry157, i32 noundef 0) #13
  %call162366 = call i32 @prepare_to_wait_event(ptr noundef %waitq161, ptr noundef nonnull %__wq_entry157, i32 noundef 1) #13
  %57 = ptrtoint ptr %fill151 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %fill151, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool164.not367 = icmp eq i32 %58, 0
  br i1 %tobool164.not367, label %if.then156.lor.lhs.false165_crit_edge, label %if.then156.for.end176_crit_edge

if.then156.for.end176_crit_edge:                  ; preds = %if.then156
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end176

if.then156.lor.lhs.false165_crit_edge:            ; preds = %if.then156
  br label %lor.lhs.false165

lor.lhs.false165:                                 ; preds = %cleanup173.lor.lhs.false165_crit_edge, %if.then156.lor.lhs.false165_crit_edge
  %call162368 = phi i32 [ %call162, %cleanup173.lor.lhs.false165_crit_edge ], [ %call162366, %if.then156.lor.lhs.false165_crit_edge ]
  %59 = ptrtoint ptr %read_data_ok to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %read_data_ok, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool167.not = icmp eq i32 %60, 0
  br i1 %tobool167.not, label %lor.lhs.false165.for.end176_crit_edge, label %if.end169

lor.lhs.false165.for.end176_crit_edge:            ; preds = %lor.lhs.false165
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end176

if.end169:                                        ; preds = %lor.lhs.false165
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call162368)
  %tobool170.not = icmp eq i32 %call162368, 0
  br i1 %tobool170.not, label %cleanup173, label %if.end169.__out178_crit_edge

if.end169.__out178_crit_edge:                     ; preds = %if.end169
  call void @__sanitizer_cov_trace_pc() #15
  br label %__out178

cleanup173:                                       ; preds = %if.end169
  call void @schedule() #13
  %call162 = call i32 @prepare_to_wait_event(ptr noundef %waitq161, ptr noundef nonnull %__wq_entry157, i32 noundef 1) #13
  %61 = ptrtoint ptr %fill151 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %fill151, align 4
  %tobool164.not = icmp eq i32 %62, 0
  br i1 %tobool164.not, label %cleanup173.lor.lhs.false165_crit_edge, label %cleanup173.for.end176_crit_edge

cleanup173.for.end176_crit_edge:                  ; preds = %cleanup173
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end176

cleanup173.lor.lhs.false165_crit_edge:            ; preds = %cleanup173
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.lhs.false165

for.end176:                                       ; preds = %cleanup173.for.end176_crit_edge, %lor.lhs.false165.for.end176_crit_edge, %if.then156.for.end176_crit_edge
  call void @finish_wait(ptr noundef %waitq161, ptr noundef nonnull %__wq_entry157) #13
  br label %__out178

__out178:                                         ; preds = %for.end176, %if.end169.__out178_crit_edge
  %__ret158.1344 = phi i32 [ 0, %for.end176 ], [ %call162368, %if.end169.__out178_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry157) #13
  br label %if.end182

if.end182:                                        ; preds = %__out178, %__out
  %rc.1 = phi i32 [ %__ret104.2337, %__out ], [ %__ret158.1344, %__out178 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.1)
  %cmp183 = icmp slt i32 %rc.1, 0
  br i1 %cmp183, label %if.end182.while.end_crit_edge, label %if.end182.cleanup186_crit_edge

if.end182.cleanup186_crit_edge:                   ; preds = %if.end182
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup186

if.end182.while.end_crit_edge:                    ; preds = %if.end182
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

cleanup186:                                       ; preds = %if.end182.cleanup186_crit_edge, %lor.lhs.false153.cleanup186_crit_edge, %if.end143.cleanup186_crit_edge, %lor.rhs.cleanup186_crit_edge, %if.then80.cleanup186_crit_edge, %do.end54.cleanup186_crit_edge
  %sent_set_push.2.off0 = phi i1 [ %sent_set_push.0.off0412, %do.end54.cleanup186_crit_edge ], [ true, %if.end182.cleanup186_crit_edge ], [ true, %if.then80.cleanup186_crit_edge ], [ true, %lor.lhs.false153.cleanup186_crit_edge ], [ true, %if.end143.cleanup186_crit_edge ], [ true, %lor.rhs.cleanup186_crit_edge ]
  %63 = ptrtoint ptr %in_log2_element_size to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %in_log2_element_size, align 4
  %add.ptr = getelementptr i8, ptr %userbuf, i32 %add6
  %sub = sub i32 %count, %add6
  %call3 = call fastcc i32 @fifo_read(ptr noundef %5, ptr noundef %add.ptr, i32 noundef %sub, ptr noundef nonnull @xilly_copy_to_user)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %cleanup186.while.end_crit_edge, label %cleanup186.if.end5_crit_edge

cleanup186.if.end5_crit_edge:                     ; preds = %cleanup186
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end5

cleanup186.while.end_crit_edge:                   ; preds = %cleanup186
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.end:                                        ; preds = %cleanup186.while.end_crit_edge, %if.end182.while.end_crit_edge, %if.else139.while.end_crit_edge, %if.then73.while.end_crit_edge, %if.end68.while.end_crit_edge, %if.end64.while.end_crit_edge, %do.end54.while.end_crit_edge, %lor.lhs.false42.while.end_crit_edge, %if.end40.while.end_crit_edge, %if.then34.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %bytes_done.1356 = phi i32 [ 0, %while.cond.preheader.while.end_crit_edge ], [ %add6, %cleanup186.while.end_crit_edge ], [ %add6, %if.then34.while.end_crit_edge ], [ %add6, %lor.lhs.false42.while.end_crit_edge ], [ %count, %if.end40.while.end_crit_edge ], [ %add6, %if.end64.while.end_crit_edge ], [ %add6, %if.end68.while.end_crit_edge ], [ %add6, %if.then73.while.end_crit_edge ], [ %add6, %if.else139.while.end_crit_edge ], [ %add6, %do.end54.while.end_crit_edge ], [ %add6, %if.end182.while.end_crit_edge ]
  %rc.2355 = phi i32 [ %call3410, %while.cond.preheader.while.end_crit_edge ], [ %call3, %cleanup186.while.end_crit_edge ], [ %call36, %if.then34.while.end_crit_edge ], [ %rc.0, %lor.lhs.false42.while.end_crit_edge ], [ %rc.0, %if.end40.while.end_crit_edge ], [ %29, %if.end64.while.end_crit_edge ], [ -11, %if.end68.while.end_crit_edge ], [ %call74, %if.then73.while.end_crit_edge ], [ %call.i, %if.else139.while.end_crit_edge ], [ 0, %do.end54.while.end_crit_edge ], [ -4, %if.end182.while.end_crit_edge ]
  %65 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %f_flags, align 4
  %and198 = and i32 %66, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and198)
  %tobool199.not = icmp eq i32 %and198, 0
  br i1 %tobool199.not, label %lor.lhs.false200, label %while.end.do.end205_crit_edge

while.end.do.end205_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end205

lor.lhs.false200:                                 ; preds = %while.end
  %poll_used = getelementptr inbounds %struct.xillyusb_channel, ptr %1, i32 0, i32 16
  %67 = ptrtoint ptr %poll_used to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %poll_used, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %tobool201.not = icmp eq i32 %68, 0
  br i1 %tobool201.not, label %lor.lhs.false200.if.end211_crit_edge, label %lor.lhs.false200.do.end205_crit_edge

lor.lhs.false200.do.end205_crit_edge:             ; preds = %lor.lhs.false200
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end205

lor.lhs.false200.if.end211_crit_edge:             ; preds = %lor.lhs.false200
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end211

do.end205:                                        ; preds = %lor.lhs.false200.do.end205_crit_edge, %while.end.do.end205_crit_edge
  %69 = ptrtoint ptr %fill151 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load volatile i32, ptr %fill151, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %tobool208.not = icmp eq i32 %70, 0
  br i1 %tobool208.not, label %if.then209, label %do.end205.if.end211_crit_edge

do.end205.if.end211_crit_edge:                    ; preds = %do.end205
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end211

if.then209:                                       ; preds = %do.end205
  call void @__sanitizer_cov_trace_pc() #15
  %71 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %1, align 4
  %73 = ptrtoint ptr %in_log2_element_size to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %in_log2_element_size, align 4
  %75 = ptrtoint ptr %chan_idx to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %chan_idx, align 4
  %shl.i323 = shl i32 %76, 1
  %or.i324 = or i32 %shl.i323, 1
  %77 = ptrtoint ptr %in_consumed_bytes to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %in_consumed_bytes, align 4
  %shl2.i326 = shl i32 2, %74
  %add.i327 = add i32 %shl2.i326, -1
  %sub.i328 = add i32 %add.i327, %78
  %shr.i329 = lshr i32 %sub.i328, %74
  %call.i330 = call fastcc i32 @xillyusb_send_opcode(ptr noundef %72, i32 noundef %or.i324, i8 noundef zeroext 4, i32 noundef %shr.i329) #13
  br label %if.end211

if.end211:                                        ; preds = %if.then209, %do.end205.if.end211_crit_edge, %lor.lhs.false200.if.end211_crit_edge
  call void @mutex_unlock(ptr noundef %in_mutex) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bytes_done.1356)
  %tobool213.not = icmp eq i32 %bytes_done.1356, 0
  %rc.2.bytes_done.1 = select i1 %tobool213.not, i32 %rc.2355, i32 %bytes_done.1356
  br label %cleanup216

cleanup216:                                       ; preds = %if.end211, %entry.cleanup216_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup216_crit_edge ], [ %rc.2.bytes_done.1, %if.end211 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xillyusb_write(ptr nocapture noundef readonly %filp, ptr noundef %userbuf, i32 noundef %count, ptr nocapture noundef readnone %f_pos) #2 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %out_ep = getelementptr inbounds %struct.xillyusb_channel, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %out_ep to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %out_ep, align 4
  %fifo2 = getelementptr inbounds %struct.xillyusb_endpoint, ptr %5, i32 0, i32 10
  %out_mutex = getelementptr inbounds %struct.xillyusb_channel, ptr %1, i32 0, i32 5
  %call = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %out_mutex, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %while.cond.preheader, label %entry.cleanup58_crit_edge

entry.cleanup58_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup58

while.cond.preheader:                             ; preds = %entry
  %error = getelementptr inbounds %struct.xillyusb_dev, ptr %3, i32 0, i32 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp = icmp eq i32 %count, 0
  %writepos1.i = getelementptr inbounds %struct.xillyusb_endpoint, ptr %5, i32 0, i32 10, i32 9
  %writebuf2.i = getelementptr inbounds %struct.xillyusb_endpoint, ptr %5, i32 0, i32 10, i32 10
  %size.i = getelementptr inbounds %struct.xillyusb_endpoint, ptr %5, i32 0, i32 10, i32 2
  %fill.i = getelementptr inbounds %struct.xillyusb_endpoint, ptr %5, i32 0, i32 10, i32 4
  %mem.i = getelementptr inbounds %struct.xillyusb_endpoint, ptr %5, i32 0, i32 10, i32 11
  %bufnum.i = getelementptr inbounds %struct.xillyusb_endpoint, ptr %5, i32 0, i32 10, i32 1
  %lock.i = getelementptr inbounds %struct.xillyusb_endpoint, ptr %5, i32 0, i32 10, i32 5
  %f_flags = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 7
  %waitq = getelementptr inbounds %struct.xillyusb_endpoint, ptr %5, i32 0, i32 10, i32 6
  br label %while.cond

while.cond:                                       ; preds = %if.end37.while.cond_crit_edge, %while.cond.preheader
  %6 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool3.not = icmp eq i32 %7, 0
  br i1 %tobool3.not, label %if.end6, label %while.cond.while.end_crit_edge

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

if.end6:                                          ; preds = %while.cond
  br i1 %cmp, label %if.end6.if.end48_crit_edge, label %if.end8

if.end6.if.end48_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end48

if.end8:                                          ; preds = %if.end6
  %8 = ptrtoint ptr %writepos1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %writepos1.i, align 4
  %10 = ptrtoint ptr %writebuf2.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %writebuf2.i, align 4
  %12 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %size.i, align 4
  %14 = ptrtoint ptr %fill.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %fill.i, align 4
  %sub.i = sub i32 %13, %15
  %16 = call i32 @llvm.umin.i32(i32 %count, i32 %sub.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp594.i = icmp eq i32 %16, 0
  br i1 %cmp594.i, label %if.end8.fifo_write.exit_crit_edge, label %if.end8.if.end.i_crit_edge

if.end8.if.end.i_crit_edge:                       ; preds = %if.end8
  br label %if.end.i

if.end8.fifo_write.exit_crit_edge:                ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  br label %fifo_write.exit

if.end.i:                                         ; preds = %cleanup.i.if.end.i_crit_edge, %if.end8.if.end.i_crit_edge
  %17 = phi i32 [ %34, %cleanup.i.if.end.i_crit_edge ], [ %16, %if.end8.if.end.i_crit_edge ]
  %done.099.i = phi i32 [ %add27.i, %cleanup.i.if.end.i_crit_edge ], [ 0, %if.end8.if.end.i_crit_edge ]
  %todo.098.i = phi i32 [ %sub28.i, %cleanup.i.if.end.i_crit_edge ], [ %count, %if.end8.if.end.i_crit_edge ]
  %writebuf.097.i = phi i32 [ %writebuf.2.i, %cleanup.i.if.end.i_crit_edge ], [ %11, %if.end8.if.end.i_crit_edge ]
  %writepos.096.i = phi i32 [ %writepos.2.i, %cleanup.i.if.end.i_crit_edge ], [ %9, %if.end8.if.end.i_crit_edge ]
  %nmax.095.i = phi i32 [ %sub30.i, %cleanup.i.if.end.i_crit_edge ], [ %sub.i, %if.end8.if.end.i_crit_edge ]
  %18 = ptrtoint ptr %fifo2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %fifo2, align 4
  %sub3.i = sub i32 %19, %writepos.096.i
  %20 = call i32 @llvm.umin.i32(i32 %17, i32 %sub3.i) #13
  %21 = ptrtoint ptr %mem.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mem.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %22, i32 %writebuf.097.i
  %23 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i = getelementptr i8, ptr %24, i32 %writepos.096.i
  %add.ptr23.i = getelementptr i8, ptr %userbuf, i32 %done.099.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp9.i.i.i = icmp slt i32 %20, 0
  br i1 %cmp9.i.i.i, label %land.rhs16.i.i.i, label %if.then.i.i.i.i

land.rhs16.i.i.i:                                 ; preds = %if.end.i
  %.b71.i.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i.i, label %land.rhs16.i.i.i.done_crit_edge, label %if.then27.i.i.i, !prof !172

land.rhs16.i.i.i.done_crit_edge:                  ; preds = %land.rhs16.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %done

if.then27.i.i.i:                                  ; preds = %land.rhs16.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.65, i32 noundef 230, i32 noundef 9, ptr noundef null) #13
  br label %done

if.then.i.i.i.i:                                  ; preds = %if.end.i
  call void @__check_object_size(ptr noundef %add.ptr.i, i32 noundef %20, i1 noundef zeroext false) #13
  call void @__might_fault(ptr noundef nonnull @.str.67, i32 noundef 156) #13
  %call.i.i.i = call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i.i, label %if.then.i.i.i.i.if.end.i.i.i_crit_edge, label %land.lhs.true.i.i.i

if.then.i.i.i.i.if.end.i.i.i_crit_edge:           ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.then.i.i.i.i
  %25 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %add.ptr23.i, i32 %20, i32 -1226833920) #20, !srcloc !179
  %asmresult.i.i.i = extractvalue { i32, i32 } %25, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %if.then.i7.i.i, label %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge, !prof !172

land.lhs.true.i.i.i.if.end.i.i.i_crit_edge:       ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i.i

if.then.i7.i.i:                                   ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %add.ptr.i, i32 noundef %20) #13
  %26 = call i32 @llvm.read_register.i32(metadata !159) #13
  %and.i.i.i.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 4
  %28 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i) #12, !srcloc !180
  %and.i.i.i.i.i = and i32 %28, -13
  %or.i.i.i.i.i = or i32 %and.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i) #13, !srcloc !181
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !182
  %call1.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef %add.ptr.i, ptr noundef %add.ptr23.i, i32 noundef %20) #13
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %28) #13, !srcloc !181
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !182
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.then.i7.i.i, %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge, %if.then.i.i.i.i.if.end.i.i.i_crit_edge
  %res.0.i.i.i = phi i32 [ %20, %if.then.i.i.i.i.if.end.i.i.i_crit_edge ], [ %call1.i.i.i.i, %if.then.i7.i.i ], [ %20, %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %res.0.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end26.i, label %if.then11.i.i.i, !prof !172

if.then11.i.i.i:                                  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i.i.i = sub i32 %20, %res.0.i.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %add.ptr.i, i32 %sub.i.i.i
  %29 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 %res.0.i.i.i)
  br label %done

if.end26.i:                                       ; preds = %if.end.i.i.i
  %add27.i = add i32 %20, %done.099.i
  %sub28.i = sub i32 %todo.098.i, %20
  %add29.i = add i32 %20, %writepos.096.i
  %sub30.i = sub i32 %nmax.095.i, %20
  %30 = ptrtoint ptr %fifo2 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %fifo2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add29.i, i32 %31)
  %cmp32.i = icmp eq i32 %add29.i, %31
  br i1 %cmp32.i, label %if.then34.i, label %if.end26.i.cleanup.i_crit_edge

if.end26.i.cleanup.i_crit_edge:                   ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.i

if.then34.i:                                      ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #15
  %inc.i = add i32 %writebuf.097.i, 1
  %32 = ptrtoint ptr %bufnum.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %bufnum.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %33)
  %cmp35.i = icmp eq i32 %inc.i, %33
  %spec.store.select.i = select i1 %cmp35.i, i32 0, i32 %inc.i
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.then34.i, %if.end26.i.cleanup.i_crit_edge
  %writepos.2.i = phi i32 [ 0, %if.then34.i ], [ %add29.i, %if.end26.i.cleanup.i_crit_edge ]
  %writebuf.2.i = phi i32 [ %spec.store.select.i, %if.then34.i ], [ %writebuf.097.i, %if.end26.i.cleanup.i_crit_edge ]
  %34 = call i32 @llvm.umin.i32(i32 %sub28.i, i32 %sub30.i) #13
  %cmp5.i = icmp eq i32 %34, 0
  br i1 %cmp5.i, label %cleanup.i.fifo_write.exit_crit_edge, label %cleanup.i.if.end.i_crit_edge

cleanup.i.if.end.i_crit_edge:                     ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

cleanup.i.fifo_write.exit_crit_edge:              ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %fifo_write.exit

fifo_write.exit:                                  ; preds = %cleanup.i.fifo_write.exit_crit_edge, %if.end8.fifo_write.exit_crit_edge
  %writepos.0.lcssa.i = phi i32 [ %9, %if.end8.fifo_write.exit_crit_edge ], [ %writepos.2.i, %cleanup.i.fifo_write.exit_crit_edge ]
  %writebuf.0.lcssa.i = phi i32 [ %11, %if.end8.fifo_write.exit_crit_edge ], [ %writebuf.2.i, %cleanup.i.fifo_write.exit_crit_edge ]
  %done.0.lcssa.i = phi i32 [ 0, %if.end8.fifo_write.exit_crit_edge ], [ %add27.i, %cleanup.i.fifo_write.exit_crit_edge ]
  %call10.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #13
  %35 = ptrtoint ptr %fill.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %fill.i, align 4
  %add.i = add i32 %36, %done.0.lcssa.i
  store i32 %add.i, ptr %fill.i, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call10.i) #13
  %37 = ptrtoint ptr %writepos1.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %writepos.0.lcssa.i, ptr %writepos1.i, align 4
  %38 = ptrtoint ptr %writebuf2.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %writebuf.0.lcssa.i, ptr %writebuf2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %done.0.lcssa.i)
  %cmp10.not = icmp eq i32 %done.0.lcssa.i, 0
  br i1 %cmp10.not, label %if.end12, label %fifo_write.exit.while.end_crit_edge

fifo_write.exit.while.end_crit_edge:              ; preds = %fifo_write.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

if.end12:                                         ; preds = %fifo_write.exit
  %39 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %f_flags, align 4
  %and = and i32 %40, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool13.not = icmp eq i32 %and, 0
  br i1 %tobool13.not, label %if.end15, label %if.end12.done_crit_edge

if.end12.done_crit_edge:                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #15
  br label %done

if.end15:                                         ; preds = %if.end12
  call void @__might_sleep(ptr noundef nonnull @.str.7, i32 noundef 1665) #13
  %41 = ptrtoint ptr %fill.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %fill.i, align 4
  %43 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %42, i32 %44)
  %cmp19.not = icmp eq i32 %42, %44
  br i1 %cmp19.not, label %lor.lhs.false, label %if.end15.if.end37_crit_edge

if.end15.if.end37_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end37

lor.lhs.false:                                    ; preds = %if.end15
  %45 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool21.not = icmp eq i32 %46, 0
  br i1 %tobool21.not, label %if.then22, label %lor.lhs.false.if.end37_crit_edge

lor.lhs.false.if.end37_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end37

if.then22:                                        ; preds = %lor.lhs.false
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #13
  %47 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #13
  %call24126 = call i32 @prepare_to_wait_event(ptr noundef %waitq, ptr noundef nonnull %__wq_entry, i32 noundef 1) #13
  %48 = ptrtoint ptr %fill.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %fill.i, align 4
  %50 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %49, i32 %51)
  %cmp27.not127 = icmp eq i32 %49, %51
  br i1 %cmp27.not127, label %if.then22.lor.lhs.false28_crit_edge, label %if.then22.for.end_crit_edge

if.then22.for.end_crit_edge:                      ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

if.then22.lor.lhs.false28_crit_edge:              ; preds = %if.then22
  br label %lor.lhs.false28

lor.lhs.false28:                                  ; preds = %cleanup.lor.lhs.false28_crit_edge, %if.then22.lor.lhs.false28_crit_edge
  %call24128 = phi i32 [ %call24, %cleanup.lor.lhs.false28_crit_edge ], [ %call24126, %if.then22.lor.lhs.false28_crit_edge ]
  %52 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool30.not = icmp eq i32 %53, 0
  br i1 %tobool30.not, label %if.end32, label %lor.lhs.false28.for.end_crit_edge

lor.lhs.false28.for.end_crit_edge:                ; preds = %lor.lhs.false28
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

if.end32:                                         ; preds = %lor.lhs.false28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24128)
  %tobool33.not = icmp eq i32 %call24128, 0
  br i1 %tobool33.not, label %cleanup, label %if.end32.__out_crit_edge

if.end32.__out_crit_edge:                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #15
  br label %__out

cleanup:                                          ; preds = %if.end32
  call void @schedule() #13
  %call24 = call i32 @prepare_to_wait_event(ptr noundef %waitq, ptr noundef nonnull %__wq_entry, i32 noundef 1) #13
  %54 = ptrtoint ptr %fill.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %fill.i, align 4
  %56 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %size.i, align 4
  %cmp27.not = icmp eq i32 %55, %57
  br i1 %cmp27.not, label %cleanup.lor.lhs.false28_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

cleanup.lor.lhs.false28_crit_edge:                ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.lhs.false28

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %lor.lhs.false28.for.end_crit_edge, %if.then22.for.end_crit_edge
  call void @finish_wait(ptr noundef %waitq, ptr noundef nonnull %__wq_entry) #13
  br label %__out

__out:                                            ; preds = %for.end, %if.end32.__out_crit_edge
  %__ret23.196 = phi i32 [ 0, %for.end ], [ %call24128, %if.end32.__out_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #13
  br label %if.end37

if.end37:                                         ; preds = %__out, %lor.lhs.false.if.end37_crit_edge, %if.end15.if.end37_crit_edge
  %__ret.0 = phi i32 [ 0, %if.end15.if.end37_crit_edge ], [ 0, %lor.lhs.false.if.end37_crit_edge ], [ %__ret23.196, %__out ]
  %tobool39.not = icmp eq i32 %__ret.0, 0
  br i1 %tobool39.not, label %if.end37.while.cond_crit_edge, label %if.end37.done_crit_edge

if.end37.done_crit_edge:                          ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #15
  br label %done

if.end37.while.cond_crit_edge:                    ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond

while.end:                                        ; preds = %fifo_write.exit.while.end_crit_edge, %while.cond.while.end_crit_edge
  %rc.1 = phi i32 [ %done.0.lcssa.i, %fifo_write.exit.while.end_crit_edge ], [ %7, %while.cond.while.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.1)
  %cmp42 = icmp slt i32 %rc.1, 0
  br i1 %cmp42, label %while.end.done_crit_edge, label %if.then46

while.end.done_crit_edge:                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %done

if.then46:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #15
  %out_bytes = getelementptr inbounds %struct.xillyusb_channel, ptr %1, i32 0, i32 10
  %58 = ptrtoint ptr %out_bytes to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %out_bytes, align 4
  %add = add i32 %59, %rc.1
  store i32 %add, ptr %out_bytes, align 4
  %60 = ptrtoint ptr %out_ep to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %out_ep, align 4
  call fastcc void @try_queue_bulk_out(ptr noundef %61)
  %flushed = getelementptr inbounds %struct.xillyusb_channel, ptr %1, i32 0, i32 18
  %62 = ptrtoint ptr %flushed to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 0, ptr %flushed, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.then46, %if.end6.if.end48_crit_edge
  %tobool45.not112 = phi i1 [ false, %if.then46 ], [ true, %if.end6.if.end48_crit_edge ]
  %rc.1106111 = phi i32 [ %rc.1, %if.then46 ], [ 0, %if.end6.if.end48_crit_edge ]
  %out_synchronous = getelementptr inbounds %struct.xillyusb_channel, ptr %1, i32 0, i32 20
  %63 = ptrtoint ptr %out_synchronous to i32
  call void @__asan_load1_noabort(i32 %63)
  %bf.load = load i8, ptr %out_synchronous, align 4
  %64 = and i8 %bf.load, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %tobool49.not = icmp eq i8 %64, 0
  br i1 %tobool49.not, label %if.end48.done_crit_edge, label %if.then50

if.end48.done_crit_edge:                          ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #15
  br label %done

if.then50:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #15
  %call51 = call fastcc i32 @flush_downstream(ptr noundef %1, i32 noundef 0, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  %spec.select = select i1 %tobool45.not112, i32 %call51, i32 %rc.1106111
  %spec.select90 = select i1 %tobool52.not, i32 %rc.1106111, i32 %spec.select
  br label %done

done:                                             ; preds = %if.then50, %if.end48.done_crit_edge, %while.end.done_crit_edge, %if.end37.done_crit_edge, %if.end12.done_crit_edge, %if.then11.i.i.i, %if.then27.i.i.i, %land.rhs16.i.i.i.done_crit_edge
  %rc.3 = phi i32 [ %rc.1, %while.end.done_crit_edge ], [ %rc.1106111, %if.end48.done_crit_edge ], [ %spec.select90, %if.then50 ], [ -14, %land.rhs16.i.i.i.done_crit_edge ], [ -14, %if.then27.i.i.i ], [ -14, %if.then11.i.i.i ], [ -11, %if.end12.done_crit_edge ], [ -4, %if.end37.done_crit_edge ]
  call void @mutex_unlock(ptr noundef %out_mutex) #13
  br label %cleanup58

cleanup58:                                        ; preds = %done, %entry.cleanup58_crit_edge
  %retval.0 = phi i32 [ %rc.3, %done ], [ %call, %entry.cleanup58_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xillyusb_poll(ptr noundef %filp, ptr noundef %wait) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %in_fifo = getelementptr inbounds %struct.xillyusb_channel, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %in_fifo to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %in_fifo, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  %waitq = getelementptr inbounds %struct.xillyfifo, ptr %3, i32 0, i32 6
  %tobool.not.i = icmp eq ptr %wait, null
  br i1 %tobool.not.i, label %if.end.thread, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.then
  %4 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wait, align 4
  %tobool1.not.i = icmp eq ptr %5, null
  %tobool3.not.i = icmp eq ptr %waitq, null
  %or.cond.i = or i1 %tobool3.not.i, %tobool1.not.i
  br i1 %or.cond.i, label %land.lhs.true.i.if.end_crit_edge, label %if.then.i

land.lhs.true.i.if.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void %5(ptr noundef %filp, ptr noundef nonnull %waitq, ptr noundef nonnull %wait) #13
  br label %if.end

if.end:                                           ; preds = %if.then.i, %land.lhs.true.i.if.end_crit_edge, %entry.if.end_crit_edge
  %out_ep = getelementptr inbounds %struct.xillyusb_channel, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %out_ep to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %out_ep, align 4
  %tobool2.not = icmp eq ptr %7, null
  br i1 %tobool2.not, label %if.end.if.end6_crit_edge, label %if.then3

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end6

if.end.thread:                                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %out_ep74 = getelementptr inbounds %struct.xillyusb_channel, ptr %1, i32 0, i32 2
  br label %if.end6

if.then3:                                         ; preds = %if.end
  %waitq5 = getelementptr inbounds %struct.xillyusb_endpoint, ptr %7, i32 0, i32 10, i32 6
  %tobool.not.i67 = icmp eq ptr %wait, null
  br i1 %tobool.not.i67, label %if.then3.if.end6_crit_edge, label %land.lhs.true.i71

if.then3.if.end6_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end6

land.lhs.true.i71:                                ; preds = %if.then3
  %8 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %wait, align 4
  %tobool1.not.i68 = icmp eq ptr %9, null
  %tobool3.not.i69 = icmp eq ptr %waitq5, null
  %or.cond.i70 = or i1 %tobool3.not.i69, %tobool1.not.i68
  br i1 %or.cond.i70, label %land.lhs.true.i71.if.end6_crit_edge, label %if.then.i72

land.lhs.true.i71.if.end6_crit_edge:              ; preds = %land.lhs.true.i71
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end6

if.then.i72:                                      ; preds = %land.lhs.true.i71
  call void @__sanitizer_cov_trace_pc() #15
  tail call void %9(ptr noundef %filp, ptr noundef nonnull %waitq5, ptr noundef nonnull %wait) #13
  br label %if.end6

if.end6:                                          ; preds = %if.then.i72, %land.lhs.true.i71.if.end6_crit_edge, %if.then3.if.end6_crit_edge, %if.end.thread, %if.end.if.end6_crit_edge
  %out_ep77 = phi ptr [ %out_ep, %if.end.if.end6_crit_edge ], [ %out_ep, %if.then3.if.end6_crit_edge ], [ %out_ep, %land.lhs.true.i71.if.end6_crit_edge ], [ %out_ep, %if.then.i72 ], [ %out_ep74, %if.end.thread ]
  %poll_used = getelementptr inbounds %struct.xillyusb_channel, ptr %1, i32 0, i32 16
  %10 = ptrtoint ptr %poll_used to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %poll_used, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool7.not = icmp eq i32 %11, 0
  br i1 %tobool7.not, label %land.lhs.true, label %if.end6.if.end12_crit_edge

if.end6.if.end12_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end12

land.lhs.true:                                    ; preds = %if.end6
  %12 = ptrtoint ptr %in_fifo to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %in_fifo, align 4
  %tobool9.not = icmp eq ptr %13, null
  br i1 %tobool9.not, label %land.lhs.true.if.end22_crit_edge, label %if.then10

land.lhs.true.if.end22_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end22

if.then10:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %14 = ptrtoint ptr %poll_used to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %poll_used, align 4
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 4
  %in_log2_element_size.i = getelementptr inbounds %struct.xillyusb_channel, ptr %1, i32 0, i32 11
  %17 = ptrtoint ptr %in_log2_element_size.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %in_log2_element_size.i, align 4
  %chan_idx.i = getelementptr inbounds %struct.xillyusb_channel, ptr %1, i32 0, i32 7
  %19 = ptrtoint ptr %chan_idx.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %chan_idx.i, align 4
  %shl.i = shl i32 %20, 1
  %or.i = or i32 %shl.i, 1
  %in_consumed_bytes.i = getelementptr inbounds %struct.xillyusb_channel, ptr %1, i32 0, i32 8
  %21 = ptrtoint ptr %in_consumed_bytes.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %in_consumed_bytes.i, align 4
  %shl2.i = shl i32 2, %18
  %add.i = add i32 %shl2.i, -1
  %sub.i = add i32 %add.i, %22
  %shr.i = lshr i32 %sub.i, %18
  %call.i = tail call fastcc i32 @xillyusb_send_opcode(ptr noundef %16, i32 noundef %or.i, i8 noundef zeroext 4, i32 noundef %shr.i) #13
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.end6.if.end12_crit_edge
  %23 = ptrtoint ptr %in_fifo to i32
  call void @__asan_load4_noabort(i32 %23)
  %.pr = load ptr, ptr %in_fifo, align 4
  %tobool14.not = icmp eq ptr %.pr, null
  br i1 %tobool14.not, label %if.end12.if.end22_crit_edge, label %land.lhs.true15

if.end12.if.end22_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end22

land.lhs.true15:                                  ; preds = %if.end12
  %in_synchronous = getelementptr inbounds %struct.xillyusb_channel, ptr %1, i32 0, i32 20
  %24 = ptrtoint ptr %in_synchronous to i32
  call void @__asan_load1_noabort(i32 %24)
  %bf.load = load i8, ptr %in_synchronous, align 4
  %25 = and i8 %bf.load, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool16.not = icmp eq i8 %25, 0
  br i1 %tobool16.not, label %do.end, label %land.lhs.true15.if.end22_crit_edge

land.lhs.true15.if.end22_crit_edge:               ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end22

do.end:                                           ; preds = %land.lhs.true15
  %fill = getelementptr inbounds %struct.xillyfifo, ptr %.pr, i32 0, i32 4
  %26 = ptrtoint ptr %fill to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %fill, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool19.not = icmp eq i32 %27, 0
  br i1 %tobool19.not, label %lor.lhs.false, label %do.end.if.then21_crit_edge

do.end.if.then21_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then21

lor.lhs.false:                                    ; preds = %do.end
  %read_data_ok = getelementptr inbounds %struct.xillyusb_channel, ptr %1, i32 0, i32 15
  %28 = ptrtoint ptr %read_data_ok to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %read_data_ok, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool20.not = icmp eq i32 %29, 0
  br i1 %tobool20.not, label %lor.lhs.false.if.then21_crit_edge, label %lor.lhs.false.if.end22_crit_edge

lor.lhs.false.if.end22_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end22

lor.lhs.false.if.then21_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then21

if.then21:                                        ; preds = %lor.lhs.false.if.then21_crit_edge, %do.end.if.then21_crit_edge
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %lor.lhs.false.if.end22_crit_edge, %land.lhs.true15.if.end22_crit_edge, %if.end12.if.end22_crit_edge, %land.lhs.true.if.end22_crit_edge
  %mask.0 = phi i32 [ 0, %land.lhs.true15.if.end22_crit_edge ], [ 65, %if.then21 ], [ 0, %lor.lhs.false.if.end22_crit_edge ], [ 0, %if.end12.if.end22_crit_edge ], [ 0, %land.lhs.true.if.end22_crit_edge ]
  %30 = ptrtoint ptr %out_ep77 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %out_ep77, align 4
  %tobool24.not = icmp eq ptr %31, null
  br i1 %tobool24.not, label %if.end22.if.end37_crit_edge, label %do.end28

if.end22.if.end37_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end37

do.end28:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #15
  %fill32 = getelementptr inbounds %struct.xillyusb_endpoint, ptr %31, i32 0, i32 10, i32 4
  %32 = ptrtoint ptr %fill32 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %fill32, align 4
  %size = getelementptr inbounds %struct.xillyusb_endpoint, ptr %31, i32 0, i32 10, i32 2
  %34 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %35)
  %cmp.not = icmp eq i32 %33, %35
  %or36 = or i32 %mask.0, 260
  %spec.select = select i1 %cmp.not, i32 %mask.0, i32 %or36
  br label %if.end37

if.end37:                                         ; preds = %do.end28, %if.end22.if.end37_crit_edge
  %mask.1 = phi i32 [ %mask.0, %if.end22.if.end37_crit_edge ], [ %spec.select, %do.end28 ]
  %36 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %1, align 4
  %error = getelementptr inbounds %struct.xillyusb_dev, ptr %37, i32 0, i32 5
  %38 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool38.not = icmp eq i32 %39, 0
  %or40 = or i32 %mask.1, 8
  %spec.select66 = select i1 %tobool38.not, i32 %mask.1, i32 %or40
  ret i32 %spec.select66
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xillyusb_open(ptr noundef %inode, ptr nocapture noundef %filp) #2 align 64 {
entry:
  %xdev = alloca ptr, align 4
  %index = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %xdev) #13
  %0 = ptrtoint ptr %xdev to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %xdev, align 4, !annotation !183
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %index) #13
  %1 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %index, align 4, !annotation !183
  %call = call i32 @xillybus_find_inode(ptr noundef %inode, ptr noundef nonnull %xdev, ptr noundef nonnull %index) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup188_crit_edge

entry.cleanup188_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup188

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %xdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %xdev, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %6 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.xillyusb_channel, ptr %5, i32 %7
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %8 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %arrayidx, ptr %private_data, align 4
  %lock = getelementptr %struct.xillyusb_channel, ptr %5, i32 %7, i32 3
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #13
  %9 = ptrtoint ptr %xdev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %xdev, align 4
  %error = getelementptr inbounds %struct.xillyusb_dev, ptr %10, i32 0, i32 5
  %11 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool1.not = icmp eq i32 %12, 0
  br i1 %tobool1.not, label %if.end3, label %if.end.unmutex_fail_crit_edge

if.end.unmutex_fail_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %unmutex_fail

if.end3:                                          ; preds = %if.end
  %f_mode = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 8
  %13 = ptrtoint ptr %f_mode to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %f_mode, align 8
  %and = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %if.end3.lor.lhs.false_crit_edge, label %land.lhs.true

if.end3.lor.lhs.false_crit_edge:                  ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.lhs.false

land.lhs.true:                                    ; preds = %if.end3
  %readable = getelementptr %struct.xillyusb_channel, ptr %5, i32 %7, i32 20
  %15 = ptrtoint ptr %readable to i32
  call void @__asan_load1_noabort(i32 %15)
  %bf.load = load i8, ptr %readable, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool5.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool5.not, label %land.lhs.true.unmutex_fail_crit_edge, label %land.lhs.true.lor.lhs.false_crit_edge

land.lhs.true.lor.lhs.false_crit_edge:            ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.lhs.false

land.lhs.true.unmutex_fail_crit_edge:             ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %unmutex_fail

lor.lhs.false:                                    ; preds = %land.lhs.true.lor.lhs.false_crit_edge, %if.end3.lor.lhs.false_crit_edge
  %and7 = and i32 %14, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %lor.lhs.false.if.end15_crit_edge, label %land.lhs.true9

lor.lhs.false.if.end15_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15

land.lhs.true9:                                   ; preds = %lor.lhs.false
  %writable = getelementptr %struct.xillyusb_channel, ptr %5, i32 %7, i32 20
  %16 = ptrtoint ptr %writable to i32
  call void @__asan_load1_noabort(i32 %16)
  %bf.load10 = load i8, ptr %writable, align 4
  %17 = and i8 %bf.load10, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool13.not = icmp eq i8 %17, 0
  br i1 %tobool13.not, label %land.lhs.true9.unmutex_fail_crit_edge, label %land.lhs.true9.if.end15_crit_edge

land.lhs.true9.if.end15_crit_edge:                ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15

land.lhs.true9.unmutex_fail_crit_edge:            ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #15
  br label %unmutex_fail

if.end15:                                         ; preds = %land.lhs.true9.if.end15_crit_edge, %lor.lhs.false.if.end15_crit_edge
  %f_flags = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 7
  %18 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %f_flags, align 4
  %and16 = and i32 %19, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.end15.if.end48_crit_edge, label %land.lhs.true18

if.end15.if.end48_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end48

land.lhs.true18:                                  ; preds = %if.end15
  br i1 %tobool4.not, label %land.lhs.true18.land.lhs.true33_crit_edge, label %land.lhs.true22

land.lhs.true18.land.lhs.true33_crit_edge:        ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true33

land.lhs.true22:                                  ; preds = %land.lhs.true18
  %in_synchronous = getelementptr %struct.xillyusb_channel, ptr %5, i32 %7, i32 20
  %20 = ptrtoint ptr %in_synchronous to i32
  call void @__asan_load1_noabort(i32 %20)
  %bf.load23 = load i8, ptr %in_synchronous, align 4
  %21 = and i8 %bf.load23, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool27.not = icmp eq i8 %21, 0
  br i1 %tobool27.not, label %land.lhs.true22.land.lhs.true33_crit_edge, label %land.lhs.true22.unmutex_fail.sink.split_crit_edge

land.lhs.true22.unmutex_fail.sink.split_crit_edge: ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #15
  br label %unmutex_fail.sink.split

land.lhs.true22.land.lhs.true33_crit_edge:        ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true33

land.lhs.true33:                                  ; preds = %land.lhs.true22.land.lhs.true33_crit_edge, %land.lhs.true18.land.lhs.true33_crit_edge
  br i1 %tobool8.not, label %land.lhs.true33.if.end48_crit_edge, label %land.lhs.true37

land.lhs.true33.if.end48_crit_edge:               ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end48

land.lhs.true37:                                  ; preds = %land.lhs.true33
  %out_synchronous = getelementptr %struct.xillyusb_channel, ptr %5, i32 %7, i32 20
  %22 = ptrtoint ptr %out_synchronous to i32
  call void @__asan_load1_noabort(i32 %22)
  %bf.load38 = load i8, ptr %out_synchronous, align 4
  %23 = and i8 %bf.load38, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool42.not = icmp eq i8 %23, 0
  br i1 %tobool42.not, label %land.lhs.true37.if.end48_crit_edge, label %land.lhs.true37.unmutex_fail.sink.split_crit_edge

land.lhs.true37.unmutex_fail.sink.split_crit_edge: ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #15
  br label %unmutex_fail.sink.split

land.lhs.true37.if.end48_crit_edge:               ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end48

if.end48:                                         ; preds = %land.lhs.true37.if.end48_crit_edge, %land.lhs.true33.if.end48_crit_edge, %if.end15.if.end48_crit_edge
  br i1 %tobool4.not, label %if.end48.lor.lhs.false58_crit_edge, label %land.lhs.true52

if.end48.lor.lhs.false58_crit_edge:               ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.lhs.false58

land.lhs.true52:                                  ; preds = %if.end48
  %open_for_read = getelementptr %struct.xillyusb_channel, ptr %5, i32 %7, i32 20
  %24 = ptrtoint ptr %open_for_read to i32
  call void @__asan_load1_noabort(i32 %24)
  %bf.load53 = load i8, ptr %open_for_read, align 4
  %25 = and i8 %bf.load53, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool57.not = icmp eq i8 %25, 0
  br i1 %tobool57.not, label %land.lhs.true52.lor.lhs.false58_crit_edge, label %land.lhs.true52.unmutex_fail_crit_edge

land.lhs.true52.unmutex_fail_crit_edge:           ; preds = %land.lhs.true52
  call void @__sanitizer_cov_trace_pc() #15
  br label %unmutex_fail

land.lhs.true52.lor.lhs.false58_crit_edge:        ; preds = %land.lhs.true52
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.lhs.false58

lor.lhs.false58:                                  ; preds = %land.lhs.true52.lor.lhs.false58_crit_edge, %if.end48.lor.lhs.false58_crit_edge
  br i1 %tobool8.not, label %lor.lhs.false58.if.end69_crit_edge, label %land.lhs.true62

lor.lhs.false58.if.end69_crit_edge:               ; preds = %lor.lhs.false58
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

land.lhs.true62:                                  ; preds = %lor.lhs.false58
  %open_for_write = getelementptr %struct.xillyusb_channel, ptr %5, i32 %7, i32 20
  %26 = ptrtoint ptr %open_for_write to i32
  call void @__asan_load1_noabort(i32 %26)
  %bf.load63 = load i8, ptr %open_for_write, align 4
  %27 = and i8 %bf.load63, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool67.not = icmp eq i8 %27, 0
  br i1 %tobool67.not, label %land.lhs.true62.if.end69_crit_edge, label %land.lhs.true62.unmutex_fail_crit_edge

land.lhs.true62.unmutex_fail_crit_edge:           ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  br label %unmutex_fail

land.lhs.true62.if.end69_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

if.end69:                                         ; preds = %land.lhs.true62.if.end69_crit_edge, %lor.lhs.false58.if.end69_crit_edge
  %kref = getelementptr inbounds %struct.xillyusb_dev, ptr %10, i32 0, i32 3
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #13
  call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #13
  %28 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #13, !srcloc !177
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %28, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end69.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !174

if.end69.if.end15.sink.split.i.i.i.i_crit_edge:   ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end69
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %29 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %29)
  %.not.i.i.i.i = icmp sgt i32 %29, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.kref_get.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !172

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.kref_get.exit_crit_edge:          ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %kref_get.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.end69.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.end69.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef %.sink.i.i.i.i) #13
  br label %kref_get.exit

kref_get.exit:                                    ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.kref_get.exit_crit_edge
  %30 = ptrtoint ptr %f_mode to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %f_mode, align 8
  %and71 = and i32 %31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and71)
  %tobool72.not = icmp eq i32 %and71, 0
  br i1 %tobool72.not, label %kref_get.exit.if.end77_crit_edge, label %if.then73

kref_get.exit.if.end77_crit_edge:                 ; preds = %kref_get.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end77

if.then73:                                        ; preds = %kref_get.exit
  call void @__sanitizer_cov_trace_pc() #15
  %open_for_read74 = getelementptr %struct.xillyusb_channel, ptr %5, i32 %7, i32 20
  %32 = ptrtoint ptr %open_for_read74 to i32
  call void @__asan_load1_noabort(i32 %32)
  %bf.load75 = load i8, ptr %open_for_read74, align 4
  %bf.set = or i8 %bf.load75, 32
  store i8 %bf.set, ptr %open_for_read74, align 4
  br label %if.end77

if.end77:                                         ; preds = %if.then73, %kref_get.exit.if.end77_crit_edge
  %33 = ptrtoint ptr %f_mode to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %f_mode, align 8
  %and79 = and i32 %34, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and79)
  %tobool80.not = icmp eq i32 %and79, 0
  br i1 %tobool80.not, label %if.end77.if.end86_crit_edge, label %if.then81

if.end77.if.end86_crit_edge:                      ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end86

if.then81:                                        ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #15
  %open_for_write82 = getelementptr %struct.xillyusb_channel, ptr %5, i32 %7, i32 20
  %35 = ptrtoint ptr %open_for_write82 to i32
  call void @__asan_load1_noabort(i32 %35)
  %bf.load83 = load i8, ptr %open_for_write82, align 4
  %bf.set85 = or i8 %bf.load83, 16
  store i8 %bf.set85, ptr %open_for_write82, align 4
  br label %if.end86

if.end86:                                         ; preds = %if.then81, %if.end77.if.end86_crit_edge
  call void @mutex_unlock(ptr noundef %lock) #13
  %36 = ptrtoint ptr %f_mode to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %f_mode, align 8
  %and89 = and i32 %37, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and89)
  %tobool90.not = icmp eq i32 %and89, 0
  br i1 %tobool90.not, label %if.end86.if.end107_crit_edge, label %if.then91

if.end86.if.end107_crit_edge:                     ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end107

if.then91:                                        ; preds = %if.end86
  %38 = ptrtoint ptr %xdev to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %xdev, align 4
  %chan_idx = getelementptr %struct.xillyusb_channel, ptr %5, i32 %7, i32 7
  %40 = ptrtoint ptr %chan_idx to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %chan_idx, align 4
  %42 = trunc i32 %41 to i8
  %conv = add i8 %42, 2
  %call92 = call fastcc ptr @endpoint_alloc(ptr noundef %39, i8 noundef zeroext %conv, ptr noundef nonnull @bulk_out_work, i32 noundef 4, i32 noundef 8)
  %tobool93.not = icmp eq ptr %call92, null
  br i1 %tobool93.not, label %if.then91.unopen_crit_edge, label %if.end95

if.then91.unopen_crit_edge:                       ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #15
  br label %unopen

if.end95:                                         ; preds = %if.then91
  %fifo = getelementptr inbounds %struct.xillyusb_endpoint, ptr %call92, i32 0, i32 10
  %out_log2_fifo_size = getelementptr %struct.xillyusb_channel, ptr %5, i32 %7, i32 14
  %43 = ptrtoint ptr %out_log2_fifo_size to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %out_log2_fifo_size, align 4
  %call96 = call fastcc i32 @fifo_init(ptr noundef %fifo, i32 noundef %44)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call96)
  %tobool97.not = icmp eq i32 %call96, 0
  br i1 %tobool97.not, label %if.end99, label %if.end95.if.then163_crit_edge

if.end95.if.then163_crit_edge:                    ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then163

if.end99:                                         ; preds = %if.end95
  %out_log2_element_size = getelementptr %struct.xillyusb_channel, ptr %5, i32 %7, i32 12
  %45 = ptrtoint ptr %out_log2_element_size to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %out_log2_element_size, align 4
  %shl.neg = shl nsw i32 -1, %46
  %fill_mask = getelementptr inbounds %struct.xillyusb_endpoint, ptr %call92, i32 0, i32 7
  %47 = ptrtoint ptr %fill_mask to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %shl.neg, ptr %fill_mask, align 4
  %out_bytes = getelementptr %struct.xillyusb_channel, ptr %5, i32 %7, i32 10
  %48 = ptrtoint ptr %out_bytes to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %out_bytes, align 4
  %flushed = getelementptr %struct.xillyusb_channel, ptr %5, i32 %7, i32 18
  %49 = ptrtoint ptr %flushed to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %flushed, align 4
  %call100 = call fastcc i32 @flush_downstream(ptr noundef %arrayidx, i32 noundef 50, i1 noundef zeroext false)
  %50 = zext i32 %call100 to i64
  call void @__sanitizer_cov_trace_switch(i64 %50, ptr @__sancov_gen_cov_switch_values.82)
  switch i32 %call100, label %if.end99.if.then163_crit_edge [
    i32 -110, label %if.end103.thread
    i32 0, label %if.end99.if.end107_crit_edge
  ]

if.end99.if.end107_crit_edge:                     ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end107

if.end99.if.then163_crit_edge:                    ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then163

if.end103.thread:                                 ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #15
  %51 = ptrtoint ptr %xdev to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %xdev, align 4
  call fastcc void @report_io_error(ptr noundef %52, i32 noundef -5)
  br label %if.then163

if.end107:                                        ; preds = %if.end99.if.end107_crit_edge, %if.end86.if.end107_crit_edge
  %out_ep.0 = phi ptr [ null, %if.end86.if.end107_crit_edge ], [ %call92, %if.end99.if.end107_crit_edge ]
  %53 = ptrtoint ptr %f_mode to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %f_mode, align 8
  %and109 = and i32 %54, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and109)
  %tobool110.not = icmp eq i32 %and109, 0
  br i1 %tobool110.not, label %if.end120.thread, label %if.then111

if.end120.thread:                                 ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #15
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #13
  br label %if.end125

if.then111:                                       ; preds = %if.end107
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %55 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %55, i32 noundef 3520, i32 noundef 136) #16
  %tobool113.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool113.not, label %if.then111.late_unopen_crit_edge, label %if.end115

if.then111.late_unopen_crit_edge:                 ; preds = %if.then111
  call void @__sanitizer_cov_trace_pc() #15
  br label %late_unopen

if.end115:                                        ; preds = %if.then111
  %in_log2_fifo_size = getelementptr %struct.xillyusb_channel, ptr %5, i32 %7, i32 13
  %56 = ptrtoint ptr %in_log2_fifo_size to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %in_log2_fifo_size, align 4
  %call116 = call fastcc i32 @fifo_init(ptr noundef nonnull %call7.i.i, i32 noundef %57)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call116)
  %tobool117.not = icmp eq i32 %call116, 0
  br i1 %tobool117.not, label %if.then123, label %if.then118

if.then118:                                       ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #15
  call void @kfree(ptr noundef nonnull %call7.i.i) #13
  br label %late_unopen

if.then123:                                       ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #15
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #13
  %in_fifo124 = getelementptr %struct.xillyusb_channel, ptr %5, i32 %7, i32 1
  %58 = ptrtoint ptr %in_fifo124 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %call7.i.i, ptr %in_fifo124, align 4
  %read_data_ok = getelementptr %struct.xillyusb_channel, ptr %5, i32 %7, i32 15
  %59 = ptrtoint ptr %read_data_ok to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 1, ptr %read_data_ok, align 4
  br label %if.end125

if.end125:                                        ; preds = %if.then123, %if.end120.thread
  %in_fifo.0277 = phi ptr [ null, %if.end120.thread ], [ %call7.i.i, %if.then123 ]
  %tobool126.not = icmp eq ptr %out_ep.0, null
  br i1 %tobool126.not, label %if.end125.if.end129_crit_edge, label %if.then127

if.end125.if.end129_crit_edge:                    ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end129

if.then127:                                       ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #15
  %out_ep128 = getelementptr %struct.xillyusb_channel, ptr %5, i32 %7, i32 2
  %60 = ptrtoint ptr %out_ep128 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %out_ep.0, ptr %out_ep128, align 4
  br label %if.end129

if.end129:                                        ; preds = %if.then127, %if.end125.if.end129_crit_edge
  call void @mutex_unlock(ptr noundef %lock) #13
  br i1 %tobool110.not, label %if.end129.cleanup188_crit_edge, label %if.then132

if.end129.cleanup188_crit_edge:                   ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup188

if.then132:                                       ; preds = %if.end129
  %in_synchronous133 = getelementptr %struct.xillyusb_channel, ptr %5, i32 %7, i32 20
  %61 = ptrtoint ptr %in_synchronous133 to i32
  call void @__asan_load1_noabort(i32 %61)
  %bf.load134 = load i8, ptr %in_synchronous133, align 4
  %62 = and i8 %bf.load134, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool138.not = icmp eq i8 %62, 0
  br i1 %tobool138.not, label %if.then139, label %if.then132.if.end140_crit_edge

if.then132.if.end140_crit_edge:                   ; preds = %if.then132
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end140

if.then139:                                       ; preds = %if.then132
  call void @__sanitizer_cov_trace_pc() #15
  %size = getelementptr inbounds %struct.xillyfifo, ptr %in_fifo.0277, i32 0, i32 2
  %63 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %size, align 8
  %in_log2_element_size = getelementptr %struct.xillyusb_channel, ptr %5, i32 %7, i32 11
  %65 = ptrtoint ptr %in_log2_element_size to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %in_log2_element_size, align 4
  %shr = lshr i32 %64, %66
  br label %if.end140

if.end140:                                        ; preds = %if.then139, %if.then132.if.end140_crit_edge
  %in_checkpoint.0 = phi i32 [ 0, %if.then132.if.end140_crit_edge ], [ %shr, %if.then139 ]
  %in_consumed_bytes = getelementptr %struct.xillyusb_channel, ptr %5, i32 %7, i32 8
  %67 = ptrtoint ptr %in_consumed_bytes to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 0, ptr %in_consumed_bytes, align 4
  %poll_used = getelementptr %struct.xillyusb_channel, ptr %5, i32 %7, i32 16
  %68 = ptrtoint ptr %poll_used to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 0, ptr %poll_used, align 4
  %in_current_checkpoint = getelementptr %struct.xillyusb_channel, ptr %5, i32 %7, i32 9
  %69 = ptrtoint ptr %in_current_checkpoint to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %in_checkpoint.0, ptr %in_current_checkpoint, align 4
  %70 = ptrtoint ptr %xdev to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %xdev, align 4
  %chan_idx141 = getelementptr %struct.xillyusb_channel, ptr %5, i32 %7, i32 7
  %72 = ptrtoint ptr %chan_idx141 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %chan_idx141, align 4
  %shl142 = shl i32 %73, 1
  %or143 = or i32 %shl142, 1
  %call144 = call fastcc i32 @xillyusb_send_opcode(ptr noundef %71, i32 noundef %or143, i8 noundef zeroext 2, i32 noundef %in_checkpoint.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call144)
  %tobool145.not = icmp eq i32 %call144, 0
  br i1 %tobool145.not, label %if.end147, label %unfifo

if.end147:                                        ; preds = %if.end140
  %74 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %f_flags, align 4
  %and149 = and i32 %75, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and149)
  %tobool150.not = icmp eq i32 %and149, 0
  br i1 %tobool150.not, label %if.end147.cleanup188_crit_edge, label %if.then151

if.end147.cleanup188_crit_edge:                   ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup188

if.then151:                                       ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #15
  %call152 = call fastcc i32 @request_read_anything(ptr noundef %arrayidx, i8 noundef zeroext 4)
  br label %cleanup188

unfifo:                                           ; preds = %if.end140
  %read_data_ok155 = getelementptr %struct.xillyusb_channel, ptr %5, i32 %7, i32 15
  %76 = ptrtoint ptr %read_data_ok155 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 0, ptr %read_data_ok155, align 4
  call fastcc void @safely_assign_in_fifo(ptr noundef %arrayidx)
  call fastcc void @fifo_mem_release(ptr noundef nonnull %in_fifo.0277)
  call void @kfree(ptr noundef nonnull %in_fifo.0277) #13
  br i1 %tobool126.not, label %unfifo.unopen_crit_edge, label %if.then157

unfifo.unopen_crit_edge:                          ; preds = %unfifo
  call void @__sanitizer_cov_trace_pc() #15
  br label %unopen

if.then157:                                       ; preds = %unfifo
  call void @__sanitizer_cov_trace_pc() #15
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #13
  %out_ep159 = getelementptr %struct.xillyusb_channel, ptr %5, i32 %7, i32 2
  %77 = ptrtoint ptr %out_ep159 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr null, ptr %out_ep159, align 4
  call void @mutex_unlock(ptr noundef %lock) #13
  br label %if.then163

late_unopen:                                      ; preds = %if.then118, %if.then111.late_unopen_crit_edge
  %rc.1 = phi i32 [ %call116, %if.then118 ], [ -12, %if.then111.late_unopen_crit_edge ]
  %tobool162.not = icmp eq ptr %out_ep.0, null
  br i1 %tobool162.not, label %late_unopen.unopen_crit_edge, label %late_unopen.if.then163_crit_edge

late_unopen.if.then163_crit_edge:                 ; preds = %late_unopen
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then163

late_unopen.unopen_crit_edge:                     ; preds = %late_unopen
  call void @__sanitizer_cov_trace_pc() #15
  br label %unopen

if.then163:                                       ; preds = %late_unopen.if.then163_crit_edge, %if.then157, %if.end103.thread, %if.end99.if.then163_crit_edge, %if.end95.if.then163_crit_edge
  %rc.1286 = phi i32 [ %rc.1, %late_unopen.if.then163_crit_edge ], [ -5, %if.end103.thread ], [ %call144, %if.then157 ], [ %call96, %if.end95.if.then163_crit_edge ], [ %call100, %if.end99.if.then163_crit_edge ]
  %out_ep.1285 = phi ptr [ %out_ep.0, %late_unopen.if.then163_crit_edge ], [ %call92, %if.end103.thread ], [ %out_ep.0, %if.then157 ], [ %call92, %if.end95.if.then163_crit_edge ], [ %call92, %if.end99.if.then163_crit_edge ]
  call fastcc void @endpoint_dealloc(ptr noundef nonnull %out_ep.1285)
  br label %unopen

unopen:                                           ; preds = %if.then163, %late_unopen.unopen_crit_edge, %unfifo.unopen_crit_edge, %if.then91.unopen_crit_edge
  %rc.2 = phi i32 [ %rc.1286, %if.then163 ], [ %rc.1, %late_unopen.unopen_crit_edge ], [ -12, %if.then91.unopen_crit_edge ], [ %call144, %unfifo.unopen_crit_edge ]
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #13
  %78 = ptrtoint ptr %f_mode to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %f_mode, align 8
  %and167 = and i32 %79, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and167)
  %tobool168.not = icmp eq i32 %and167, 0
  br i1 %tobool168.not, label %unopen.if.end174_crit_edge, label %if.then169

unopen.if.end174_crit_edge:                       ; preds = %unopen
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end174

if.then169:                                       ; preds = %unopen
  call void @__sanitizer_cov_trace_pc() #15
  %open_for_read170 = getelementptr %struct.xillyusb_channel, ptr %5, i32 %7, i32 20
  %80 = ptrtoint ptr %open_for_read170 to i32
  call void @__asan_load1_noabort(i32 %80)
  %bf.load171 = load i8, ptr %open_for_read170, align 4
  %bf.clear172 = and i8 %bf.load171, -33
  store i8 %bf.clear172, ptr %open_for_read170, align 4
  br label %if.end174

if.end174:                                        ; preds = %if.then169, %unopen.if.end174_crit_edge
  %81 = ptrtoint ptr %f_mode to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %f_mode, align 8
  %and176 = and i32 %82, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and176)
  %tobool177.not = icmp eq i32 %and176, 0
  br i1 %tobool177.not, label %if.end174.if.end183_crit_edge, label %if.then178

if.end174.if.end183_crit_edge:                    ; preds = %if.end174
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end183

if.then178:                                       ; preds = %if.end174
  call void @__sanitizer_cov_trace_pc() #15
  %open_for_write179 = getelementptr %struct.xillyusb_channel, ptr %5, i32 %7, i32 20
  %83 = ptrtoint ptr %open_for_write179 to i32
  call void @__asan_load1_noabort(i32 %83)
  %bf.load180 = load i8, ptr %open_for_write179, align 4
  %bf.clear181 = and i8 %bf.load180, -17
  store i8 %bf.clear181, ptr %open_for_write179, align 4
  br label %if.end183

if.end183:                                        ; preds = %if.then178, %if.end174.if.end183_crit_edge
  call void @mutex_unlock(ptr noundef %lock) #13
  %84 = ptrtoint ptr %xdev to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %xdev, align 4
  %kref185 = getelementptr inbounds %struct.xillyusb_dev, ptr %85, i32 0, i32 3
  call fastcc void @kref_put(ptr noundef %kref185)
  br label %cleanup188

unmutex_fail.sink.split:                          ; preds = %land.lhs.true37.unmutex_fail.sink.split_crit_edge, %land.lhs.true22.unmutex_fail.sink.split_crit_edge
  %.str.71.sink = phi ptr [ @.str.68, %land.lhs.true22.unmutex_fail.sink.split_crit_edge ], [ @.str.71, %land.lhs.true37.unmutex_fail.sink.split_crit_edge ]
  %dev47 = getelementptr inbounds %struct.xillyusb_dev, ptr %10, i32 0, i32 2
  %86 = ptrtoint ptr %dev47 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %dev47, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %87, ptr noundef nonnull %.str.71.sink) #17
  br label %unmutex_fail

unmutex_fail:                                     ; preds = %unmutex_fail.sink.split, %land.lhs.true62.unmutex_fail_crit_edge, %land.lhs.true52.unmutex_fail_crit_edge, %land.lhs.true9.unmutex_fail_crit_edge, %land.lhs.true.unmutex_fail_crit_edge, %if.end.unmutex_fail_crit_edge
  %rc.3 = phi i32 [ -19, %if.end.unmutex_fail_crit_edge ], [ -16, %land.lhs.true52.unmutex_fail_crit_edge ], [ -16, %land.lhs.true62.unmutex_fail_crit_edge ], [ -19, %land.lhs.true9.unmutex_fail_crit_edge ], [ -19, %land.lhs.true.unmutex_fail_crit_edge ], [ -19, %unmutex_fail.sink.split ]
  call void @mutex_unlock(ptr noundef %lock) #13
  br label %cleanup188

cleanup188:                                       ; preds = %unmutex_fail, %if.end183, %if.then151, %if.end147.cleanup188_crit_edge, %if.end129.cleanup188_crit_edge, %entry.cleanup188_crit_edge
  %retval.0 = phi i32 [ %rc.3, %unmutex_fail ], [ %rc.2, %if.end183 ], [ %call, %entry.cleanup188_crit_edge ], [ 0, %if.end129.cleanup188_crit_edge ], [ 0, %if.then151 ], [ 0, %if.end147.cleanup188_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %index) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %xdev) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xillyusb_flush(ptr nocapture noundef readonly %filp, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %f_mode = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 8
  %2 = ptrtoint ptr %f_mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %f_mode, align 8
  %and = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %out_mutex = getelementptr inbounds %struct.xillyusb_channel, ptr %1, i32 0, i32 5
  %call = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %out_mutex, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %call4 = tail call fastcc i32 @flush_downstream(ptr noundef %1, i32 noundef 100, i1 noundef zeroext false)
  tail call void @mutex_unlock(ptr noundef %out_mutex) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -110, i32 %call4)
  %cmp = icmp eq i32 %call4, -110
  br i1 %cmp, label %if.then6, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then6:                                         ; preds = %if.end3
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %lock = getelementptr inbounds %struct.xillyusb_channel, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #13
  %error = getelementptr inbounds %struct.xillyusb_dev, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool8.not = icmp eq i32 %7, 0
  br i1 %tobool8.not, label %do.end, label %if.then6.if.end10_crit_edge

if.then6.if.end10_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10

do.end:                                           ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #15
  %dev = getelementptr inbounds %struct.xillyusb_dev, ptr %5, i32 0, i32 2
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %9, ptr noundef nonnull @.str.73) #17
  br label %if.end10

if.end10:                                         ; preds = %do.end, %if.then6.if.end10_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ], [ -110, %if.end10 ], [ %call4, %if.end3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xillyusb_release(ptr nocapture noundef readnone %inode, ptr nocapture noundef readonly %filp) #2 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %f_mode = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 8
  %4 = ptrtoint ptr %f_mode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %f_mode, align 8
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end21_crit_edge, label %if.then

entry.if.end21_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end21

if.then:                                          ; preds = %entry
  %in_fifo2 = getelementptr inbounds %struct.xillyusb_channel, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %in_fifo2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %in_fifo2, align 4
  %chan_idx = getelementptr inbounds %struct.xillyusb_channel, ptr %1, i32 0, i32 7
  %8 = ptrtoint ptr %chan_idx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %chan_idx, align 4
  %shl = shl i32 %9, 1
  %or = or i32 %shl, 1
  %call = tail call fastcc i32 @xillyusb_send_opcode(ptr noundef %3, i32 noundef %or, i8 noundef zeroext 3, i32 noundef 0)
  call void @__might_sleep(ptr noundef nonnull @.str.7, i32 noundef 1719) #13
  %read_data_ok = getelementptr inbounds %struct.xillyusb_channel, ptr %1, i32 0, i32 15
  %10 = ptrtoint ptr %read_data_ok to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %read_data_ok, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool6.not89 = icmp eq i32 %11, 0
  br i1 %tobool6.not89, label %if.then.while.end_crit_edge, label %if.then7.lr.ph

if.then.while.end_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

if.then7.lr.ph:                                   ; preds = %if.then
  %waitq = getelementptr inbounds %struct.xillyfifo, ptr %7, i32 0, i32 6
  br label %if.then7

if.then7:                                         ; preds = %if.end17.if.then7_crit_edge, %if.then7.lr.ph
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #13
  %12 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #13
  %call985 = call i32 @prepare_to_wait_event(ptr noundef %waitq, ptr noundef nonnull %__wq_entry, i32 noundef 1) #13
  %13 = ptrtoint ptr %read_data_ok to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %read_data_ok, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool11.not86 = icmp eq i32 %14, 0
  br i1 %tobool11.not86, label %if.then7.if.end17.thread81_crit_edge, label %if.then7.if.end_crit_edge

if.then7.if.end_crit_edge:                        ; preds = %if.then7
  br label %if.end

if.then7.if.end17.thread81_crit_edge:             ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end17.thread81

if.end:                                           ; preds = %cleanup.if.end_crit_edge, %if.then7.if.end_crit_edge
  %call987 = phi i32 [ %call9, %cleanup.if.end_crit_edge ], [ %call985, %if.then7.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call987)
  %tobool13.not = icmp eq i32 %call987, 0
  br i1 %tobool13.not, label %cleanup, label %if.end17

cleanup:                                          ; preds = %if.end
  call void @schedule() #13
  %call9 = call i32 @prepare_to_wait_event(ptr noundef %waitq, ptr noundef nonnull %__wq_entry, i32 noundef 1) #13
  %15 = ptrtoint ptr %read_data_ok to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %read_data_ok, align 4
  %tobool11.not = icmp eq i32 %16, 0
  br i1 %tobool11.not, label %cleanup.if.end17.thread81_crit_edge, label %cleanup.if.end_crit_edge

cleanup.if.end_crit_edge:                         ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

cleanup.if.end17.thread81_crit_edge:              ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end17.thread81

if.end17.thread81:                                ; preds = %cleanup.if.end17.thread81_crit_edge, %if.then7.if.end17.thread81_crit_edge
  call void @finish_wait(ptr noundef %waitq, ptr noundef nonnull %__wq_entry) #13
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #13
  br label %while.end

if.end17:                                         ; preds = %if.end
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #13
  call void @__might_sleep(ptr noundef nonnull @.str.7, i32 noundef 1719) #13
  %17 = ptrtoint ptr %read_data_ok to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %read_data_ok, align 4
  %tobool6.not = icmp eq i32 %18, 0
  br i1 %tobool6.not, label %if.end17.while.end_crit_edge, label %if.end17.if.then7_crit_edge

if.end17.if.then7_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then7

if.end17.while.end_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.end:                                        ; preds = %if.end17.while.end_crit_edge, %if.end17.thread81, %if.then.while.end_crit_edge
  %lock.i = getelementptr inbounds %struct.xillyusb_channel, ptr %1, i32 0, i32 3
  call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #13
  %19 = ptrtoint ptr %in_fifo2 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %in_fifo2, align 4
  call void @mutex_unlock(ptr noundef %lock.i) #13
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 4
  %in_ep.i = getelementptr inbounds %struct.xillyusb_dev, ptr %21, i32 0, i32 10
  %22 = ptrtoint ptr %in_ep.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %in_ep.i, align 4
  %workitem.i = getelementptr inbounds %struct.xillyusb_endpoint, ptr %23, i32 0, i32 11
  %call.i = call zeroext i1 @flush_work(ptr noundef %workitem.i) #13
  %mem.i = getelementptr inbounds %struct.xillyfifo, ptr %7, i32 0, i32 11
  %24 = ptrtoint ptr %mem.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mem.i, align 4
  %tobool.not.i = icmp eq ptr %25, null
  br i1 %tobool.not.i, label %while.end.fifo_mem_release.exit_crit_edge, label %for.cond.preheader.i

while.end.fifo_mem_release.exit_crit_edge:        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %fifo_mem_release.exit

for.cond.preheader.i:                             ; preds = %while.end
  %bufnum.i = getelementptr inbounds %struct.xillyfifo, ptr %7, i32 0, i32 1
  %26 = ptrtoint ptr %bufnum.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %bufnum.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp9.not.i = icmp eq i32 %27, 0
  br i1 %cmp9.not.i, label %for.cond.preheader.i.for.end.i_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %buf_order.i = getelementptr inbounds %struct.xillyfifo, ptr %7, i32 0, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.010.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %28 = ptrtoint ptr %mem.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %mem.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %29, i32 %i.010.i
  %30 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx.i, align 4
  %32 = ptrtoint ptr %31 to i32
  %33 = ptrtoint ptr %buf_order.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %buf_order.i, align 4
  call void @free_pages(i32 noundef %32, i32 noundef %34) #13
  %inc.i = add nuw i32 %i.010.i, 1
  %35 = ptrtoint ptr %bufnum.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %bufnum.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %36
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %37 = ptrtoint ptr %mem.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %mem.i, align 4
  call void @kfree(ptr noundef %38) #13
  br label %fifo_mem_release.exit

fifo_mem_release.exit:                            ; preds = %for.end.i, %while.end.fifo_mem_release.exit_crit_edge
  call void @kfree(ptr noundef %7) #13
  call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #13
  %open_for_read = getelementptr inbounds %struct.xillyusb_channel, ptr %1, i32 0, i32 20
  %39 = ptrtoint ptr %open_for_read to i32
  call void @__asan_load1_noabort(i32 %39)
  %bf.load = load i8, ptr %open_for_read, align 4
  %bf.clear = and i8 %bf.load, -33
  store i8 %bf.clear, ptr %open_for_read, align 4
  call void @mutex_unlock(ptr noundef %lock.i) #13
  br label %if.end21

if.end21:                                         ; preds = %fifo_mem_release.exit, %entry.if.end21_crit_edge
  %rc_read.0 = phi i32 [ %call, %fifo_mem_release.exit ], [ 0, %entry.if.end21_crit_edge ]
  %40 = ptrtoint ptr %f_mode to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %f_mode, align 8
  %and23 = and i32 %41, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %if.end21.if.end37_crit_edge, label %if.then25

if.end21.if.end37_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end37

if.then25:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #15
  %out_ep = getelementptr inbounds %struct.xillyusb_channel, ptr %1, i32 0, i32 2
  %42 = ptrtoint ptr %out_ep to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %out_ep, align 4
  %lock26 = getelementptr inbounds %struct.xillyusb_channel, ptr %1, i32 0, i32 3
  call void @mutex_lock_nested(ptr noundef %lock26, i32 noundef 0) #13
  %44 = ptrtoint ptr %out_ep to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr null, ptr %out_ep, align 4
  call void @mutex_unlock(ptr noundef %lock26) #13
  %ep_mutex.i = getelementptr inbounds %struct.xillyusb_endpoint, ptr %43, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %ep_mutex.i, i32 noundef 0) #13
  %shutting_down.i = getelementptr inbounds %struct.xillyusb_endpoint, ptr %43, i32 0, i32 12
  %45 = ptrtoint ptr %shutting_down.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 1, ptr %shutting_down.i, align 4
  call void @mutex_unlock(ptr noundef %ep_mutex.i) #13
  %anchor.i = getelementptr inbounds %struct.xillyusb_endpoint, ptr %43, i32 0, i32 9
  call void @usb_kill_anchored_urbs(ptr noundef %anchor.i) #13
  %workitem.i70 = getelementptr inbounds %struct.xillyusb_endpoint, ptr %43, i32 0, i32 11
  %call.i71 = call zeroext i1 @cancel_work_sync(ptr noundef %workitem.i70) #13
  call fastcc void @endpoint_dealloc(ptr noundef %43)
  %chan_idx29 = getelementptr inbounds %struct.xillyusb_channel, ptr %1, i32 0, i32 7
  %46 = ptrtoint ptr %chan_idx29 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %chan_idx29, align 4
  %shl30 = shl i32 %47, 1
  %call31 = call fastcc i32 @xillyusb_send_opcode(ptr noundef %3, i32 noundef %shl30, i8 noundef zeroext 3, i32 noundef 0)
  call void @mutex_lock_nested(ptr noundef %lock26, i32 noundef 0) #13
  %open_for_write = getelementptr inbounds %struct.xillyusb_channel, ptr %1, i32 0, i32 20
  %48 = ptrtoint ptr %open_for_write to i32
  call void @__asan_load1_noabort(i32 %48)
  %bf.load33 = load i8, ptr %open_for_write, align 4
  %bf.clear34 = and i8 %bf.load33, -17
  store i8 %bf.clear34, ptr %open_for_write, align 4
  call void @mutex_unlock(ptr noundef %lock26) #13
  br label %if.end37

if.end37:                                         ; preds = %if.then25, %if.end21.if.end37_crit_edge
  %rc_write.0 = phi i32 [ %call31, %if.then25 ], [ 0, %if.end21.if.end37_crit_edge ]
  %kref = getelementptr inbounds %struct.xillyusb_dev, ptr %3, i32 0, i32 3
  call fastcc void @kref_put(ptr noundef %kref)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc_read.0)
  %tobool39.not = icmp eq i32 %rc_read.0, 0
  %rc_write.0.rc_read.0 = select i1 %tobool39.not, i32 %rc_write.0, i32 %rc_read.0
  ret i32 %rc_write.0.rc_read.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @flush_downstream(ptr noundef %chan, i32 noundef %timeout, i1 noundef zeroext %interruptible) unnamed_addr #2 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  %__wq_entry98 = alloca %struct.wait_queue_entry, align 4
  %__wq_entry173 = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan, align 4
  %chan_idx = getelementptr inbounds %struct.xillyusb_channel, ptr %chan, i32 0, i32 7
  %2 = ptrtoint ptr %chan_idx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chan_idx, align 4
  %shl = shl i32 %3, 1
  %flushed = getelementptr inbounds %struct.xillyusb_channel, ptr %chan, i32 0, i32 18
  %4 = ptrtoint ptr %flushed to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flushed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup228_crit_edge

entry.cleanup228_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup228

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %6 = load volatile i32, ptr @jiffies, align 128
  %flushing = getelementptr inbounds %struct.xillyusb_channel, ptr %chan, i32 0, i32 17
  %7 = ptrtoint ptr %flushing to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flushing, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool3.not = icmp eq i32 %8, 0
  br i1 %tobool3.not, label %if.end.if.end74_crit_edge, label %if.then4

if.end.if.end74_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end74

if.then4:                                         ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %9 = load volatile i32, ptr @jiffies, align 128
  %add6 = add i32 %9, 51
  %canceled = getelementptr inbounds %struct.xillyusb_channel, ptr %chan, i32 0, i32 19
  %10 = ptrtoint ptr %canceled to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %canceled, align 4
  %call = tail call fastcc i32 @xillyusb_send_opcode(ptr noundef %1, i32 noundef %shl, i8 noundef zeroext 6, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool7.not = icmp eq i32 %call, 0
  br i1 %tobool7.not, label %while.cond.preheader, label %if.then4.cleanup228_crit_edge

if.then4.cleanup228_crit_edge:                    ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup228

while.cond.preheader:                             ; preds = %if.then4
  %error = getelementptr inbounds %struct.xillyusb_dev, ptr %1, i32 0, i32 5
  %flushq = getelementptr inbounds %struct.xillyusb_channel, ptr %chan, i32 0, i32 6
  br label %while.cond

while.cond:                                       ; preds = %if.end64.while.cond_crit_edge, %while.cond.preheader
  %11 = ptrtoint ptr %canceled to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %canceled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool11.not = icmp eq i32 %12, 0
  br i1 %tobool11.not, label %while.body, label %while.cond.if.end74_crit_edge

while.cond.if.end74_crit_edge:                    ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end74

while.body:                                       ; preds = %while.cond
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %13 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add6, %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub)
  %cmp = icmp slt i32 %sub, 1
  br i1 %cmp, label %if.then12, label %if.end13

if.then12:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  call fastcc void @report_io_error(ptr noundef %1, i32 noundef -5)
  br label %cleanup228

if.end13:                                         ; preds = %while.body
  call void @__might_sleep(ptr noundef nonnull @.str.7, i32 noundef 1156) #13
  %14 = ptrtoint ptr %canceled to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %canceled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool18.not = icmp eq i32 %15, 0
  br i1 %tobool18.not, label %lor.rhs, label %if.end13.if.end64_crit_edge

if.end13.if.end64_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end64

lor.rhs:                                          ; preds = %if.end13
  %16 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool19.not = icmp eq i32 %17, 0
  br i1 %tobool19.not, label %if.then31, label %lor.rhs.cleanup228_crit_edge

lor.rhs.cleanup228_crit_edge:                     ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup228

if.then31:                                        ; preds = %lor.rhs
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #13
  %18 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #13
  %call33355 = call i32 @prepare_to_wait_event(ptr noundef %flushq, ptr noundef nonnull %__wq_entry, i32 noundef 1) #13
  %19 = ptrtoint ptr %canceled to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %canceled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool36.not356 = icmp eq i32 %20, 0
  br i1 %tobool36.not356, label %if.then31.lor.end40_crit_edge, label %if.then31.for.end_crit_edge

if.then31.for.end_crit_edge:                      ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

if.then31.lor.end40_crit_edge:                    ; preds = %if.then31
  br label %lor.end40

lor.end40:                                        ; preds = %cleanup.lor.end40_crit_edge, %if.then31.lor.end40_crit_edge
  %call33358 = phi i32 [ %call33, %cleanup.lor.end40_crit_edge ], [ %call33355, %if.then31.lor.end40_crit_edge ]
  %__ret32.0357 = phi i32 [ %call61, %cleanup.lor.end40_crit_edge ], [ %sub, %if.then31.lor.end40_crit_edge ]
  %21 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool39 = icmp ne i32 %22, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret32.0357)
  %tobool51.not = icmp eq i32 %__ret32.0357, 0
  %or.cond339 = select i1 %tobool39, i1 true, i1 %tobool51.not
  br i1 %or.cond339, label %lor.end40.for.end_crit_edge, label %if.end57

lor.end40.for.end_crit_edge:                      ; preds = %lor.end40
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

if.end57:                                         ; preds = %lor.end40
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33358)
  %tobool58.not = icmp eq i32 %call33358, 0
  br i1 %tobool58.not, label %cleanup, label %if.end57.__out_crit_edge

if.end57.__out_crit_edge:                         ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #15
  br label %__out

cleanup:                                          ; preds = %if.end57
  %call61 = call i32 @schedule_timeout(i32 noundef %__ret32.0357) #13
  %call33 = call i32 @prepare_to_wait_event(ptr noundef %flushq, ptr noundef nonnull %__wq_entry, i32 noundef 1) #13
  %23 = ptrtoint ptr %canceled to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %canceled, align 4
  %tobool36.not = icmp eq i32 %24, 0
  br i1 %tobool36.not, label %cleanup.lor.end40_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

cleanup.lor.end40_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.end40

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %lor.end40.for.end_crit_edge, %if.then31.for.end_crit_edge
  call void @finish_wait(ptr noundef %flushq, ptr noundef nonnull %__wq_entry) #13
  br label %__out

__out:                                            ; preds = %for.end, %if.end57.__out_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #13
  br label %if.end64

if.end64:                                         ; preds = %__out, %if.end13.if.end64_crit_edge
  %25 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %25)
  %.pr = load i32, ptr %error, align 4
  %tobool67.not = icmp eq i32 %.pr, 0
  br i1 %tobool67.not, label %if.end64.while.cond_crit_edge, label %if.end64.cleanup228_crit_edge

if.end64.cleanup228_crit_edge:                    ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup228

if.end64.while.cond_crit_edge:                    ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond

if.end74:                                         ; preds = %while.cond.if.end74_crit_edge, %if.end.if.end74_crit_edge
  %26 = ptrtoint ptr %flushing to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 1, ptr %flushing, align 4
  %out_bytes = getelementptr inbounds %struct.xillyusb_channel, ptr %chan, i32 0, i32 10
  %27 = ptrtoint ptr %out_bytes to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %out_bytes, align 4
  %out_log2_element_size = getelementptr inbounds %struct.xillyusb_channel, ptr %chan, i32 0, i32 12
  %29 = ptrtoint ptr %out_log2_element_size to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %out_log2_element_size, align 4
  %shr = lshr i32 %28, %30
  %call76 = call fastcc i32 @xillyusb_send_opcode(ptr noundef %1, i32 noundef %shl, i8 noundef zeroext 2, i32 noundef %shr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76)
  %tobool77.not = icmp eq i32 %call76, 0
  br i1 %tobool77.not, label %if.end79, label %if.end74.cleanup228_crit_edge

if.end74.cleanup228_crit_edge:                    ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup228

if.end79:                                         ; preds = %if.end74
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout)
  %tobool80.not = icmp eq i32 %timeout, 0
  br i1 %tobool80.not, label %while.cond82.preheader, label %while.cond135.preheader

while.cond135.preheader:                          ; preds = %if.end79
  %add = add i32 %timeout, 1
  %add2 = add i32 %add, %6
  %error154 = getelementptr inbounds %struct.xillyusb_dev, ptr %1, i32 0, i32 5
  %flushq177 = getelementptr inbounds %struct.xillyusb_channel, ptr %chan, i32 0, i32 6
  br label %while.cond135

while.cond82.preheader:                           ; preds = %if.end79
  %error95 = getelementptr inbounds %struct.xillyusb_dev, ptr %1, i32 0, i32 5
  %flushq102 = getelementptr inbounds %struct.xillyusb_channel, ptr %chan, i32 0, i32 6
  %interruptible.not = xor i1 %interruptible, true
  br label %while.cond82

while.cond82:                                     ; preds = %if.end127.while.cond82_crit_edge, %while.cond82.preheader
  %31 = ptrtoint ptr %flushing to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %flushing, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool84.not = icmp eq i32 %32, 0
  br i1 %tobool84.not, label %while.cond82.done_crit_edge, label %while.body85

while.cond82.done_crit_edge:                      ; preds = %while.cond82
  call void @__sanitizer_cov_trace_pc() #15
  br label %done

while.body85:                                     ; preds = %while.cond82
  call void @__might_sleep(ptr noundef nonnull @.str.7, i32 noundef 1184) #13
  %33 = ptrtoint ptr %flushing to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %flushing, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool94.not = icmp eq i32 %34, 0
  br i1 %tobool94.not, label %while.body85.if.end121_crit_edge, label %lor.lhs.false

while.body85.if.end121_crit_edge:                 ; preds = %while.body85
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end121

lor.lhs.false:                                    ; preds = %while.body85
  %35 = ptrtoint ptr %error95 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %error95, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool96.not = icmp eq i32 %36, 0
  br i1 %tobool96.not, label %if.then97, label %lor.lhs.false.cleanup228_crit_edge

lor.lhs.false.cleanup228_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup228

if.then97:                                        ; preds = %lor.lhs.false
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry98) #13
  %37 = call ptr @memset(ptr %__wq_entry98, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry98, i32 noundef 0) #13
  %call103370 = call i32 @prepare_to_wait_event(ptr noundef %flushq102, ptr noundef nonnull %__wq_entry98, i32 noundef 1) #13
  %38 = ptrtoint ptr %flushing to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %flushing, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool105.not371 = icmp eq i32 %39, 0
  br i1 %tobool105.not371, label %if.then97.for.end117_crit_edge, label %if.then97.lor.lhs.false106_crit_edge

if.then97.lor.lhs.false106_crit_edge:             ; preds = %if.then97
  br label %lor.lhs.false106

if.then97.for.end117_crit_edge:                   ; preds = %if.then97
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end117

lor.lhs.false106:                                 ; preds = %cleanup114.lor.lhs.false106_crit_edge, %if.then97.lor.lhs.false106_crit_edge
  %call103372 = phi i32 [ %call103, %cleanup114.lor.lhs.false106_crit_edge ], [ %call103370, %if.then97.lor.lhs.false106_crit_edge ]
  %40 = ptrtoint ptr %error95 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %error95, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool108.not = icmp eq i32 %41, 0
  br i1 %tobool108.not, label %if.end110, label %lor.lhs.false106.for.end117_crit_edge

lor.lhs.false106.for.end117_crit_edge:            ; preds = %lor.lhs.false106
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end117

if.end110:                                        ; preds = %lor.lhs.false106
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call103372)
  %tobool111.not = icmp eq i32 %call103372, 0
  br i1 %tobool111.not, label %cleanup114, label %if.end110.__out119_crit_edge

if.end110.__out119_crit_edge:                     ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #15
  br label %__out119

cleanup114:                                       ; preds = %if.end110
  call void @schedule() #13
  %call103 = call i32 @prepare_to_wait_event(ptr noundef %flushq102, ptr noundef nonnull %__wq_entry98, i32 noundef 1) #13
  %42 = ptrtoint ptr %flushing to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %flushing, align 4
  %tobool105.not = icmp eq i32 %43, 0
  br i1 %tobool105.not, label %cleanup114.for.end117_crit_edge, label %cleanup114.lor.lhs.false106_crit_edge

cleanup114.lor.lhs.false106_crit_edge:            ; preds = %cleanup114
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.lhs.false106

cleanup114.for.end117_crit_edge:                  ; preds = %cleanup114
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end117

for.end117:                                       ; preds = %cleanup114.for.end117_crit_edge, %lor.lhs.false106.for.end117_crit_edge, %if.then97.for.end117_crit_edge
  call void @finish_wait(ptr noundef %flushq102, ptr noundef nonnull %__wq_entry98) #13
  br label %__out119

__out119:                                         ; preds = %for.end117, %if.end110.__out119_crit_edge
  %__ret99.1322 = phi i32 [ 0, %for.end117 ], [ %call103372, %if.end110.__out119_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry98) #13
  br label %if.end121

if.end121:                                        ; preds = %__out119, %while.body85.if.end121_crit_edge
  %__ret86.0.ph = phi i32 [ 0, %while.body85.if.end121_crit_edge ], [ %__ret99.1322, %__out119 ]
  %44 = ptrtoint ptr %error95 to i32
  call void @__asan_load4_noabort(i32 %44)
  %.pr387 = load i32, ptr %error95, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr387)
  %tobool124.not = icmp eq i32 %.pr387, 0
  br i1 %tobool124.not, label %if.end127, label %if.end121.cleanup228_crit_edge

if.end121.cleanup228_crit_edge:                   ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup228

if.end127:                                        ; preds = %if.end121
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret86.0.ph)
  %tobool130.not = icmp eq i32 %__ret86.0.ph, 0
  %or.cond = select i1 %interruptible.not, i1 true, i1 %tobool130.not
  br i1 %or.cond, label %if.end127.while.cond82_crit_edge, label %if.end127.cleanup228_crit_edge

if.end127.cleanup228_crit_edge:                   ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup228

if.end127.while.cond82_crit_edge:                 ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond82

while.cond135:                                    ; preds = %if.end220.while.cond135_crit_edge, %while.cond135.preheader
  %45 = ptrtoint ptr %flushing to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %flushing, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool137.not = icmp eq i32 %46, 0
  br i1 %tobool137.not, label %while.cond135.done_crit_edge, label %while.body138

while.cond135.done_crit_edge:                     ; preds = %while.cond135
  call void @__sanitizer_cov_trace_pc() #15
  br label %done

while.body138:                                    ; preds = %while.cond135
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %47 = load volatile i32, ptr @jiffies, align 128
  %sub139 = sub i32 %add2, %47
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub139)
  %cmp140 = icmp slt i32 %sub139, 1
  br i1 %cmp140, label %while.body138.cleanup228_crit_edge, label %if.end142

while.body138.cleanup228_crit_edge:               ; preds = %while.body138
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup228

if.end142:                                        ; preds = %while.body138
  call void @__might_sleep(ptr noundef nonnull @.str.7, i32 noundef 1204) #13
  %48 = ptrtoint ptr %flushing to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %flushing, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool152.not = icmp eq i32 %49, 0
  br i1 %tobool152.not, label %if.end142.if.end214_crit_edge, label %lor.rhs153

if.end142.if.end214_crit_edge:                    ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end214

lor.rhs153:                                       ; preds = %if.end142
  %50 = ptrtoint ptr %error154 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %error154, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool155.not = icmp eq i32 %51, 0
  br i1 %tobool155.not, label %if.then172, label %lor.rhs153.cleanup228_crit_edge

lor.rhs153.cleanup228_crit_edge:                  ; preds = %lor.rhs153
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup228

if.then172:                                       ; preds = %lor.rhs153
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry173) #13
  %52 = call ptr @memset(ptr %__wq_entry173, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry173, i32 noundef 0) #13
  %call178365 = call i32 @prepare_to_wait_event(ptr noundef %flushq177, ptr noundef nonnull %__wq_entry173, i32 noundef 1) #13
  %53 = ptrtoint ptr %flushing to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %flushing, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool181.not366 = icmp eq i32 %54, 0
  br i1 %tobool181.not366, label %if.then172.lor.end185.thread_crit_edge, label %if.then172.lor.end185_crit_edge

if.then172.lor.end185_crit_edge:                  ; preds = %if.then172
  br label %lor.end185

if.then172.lor.end185.thread_crit_edge:           ; preds = %if.then172
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.end185.thread

lor.end185.thread:                                ; preds = %cleanup207.lor.end185.thread_crit_edge, %if.then172.lor.end185.thread_crit_edge
  %__ret174.0.lcssa = phi i32 [ %sub139, %if.then172.lor.end185.thread_crit_edge ], [ %call206, %cleanup207.lor.end185.thread_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret174.0.lcssa)
  %tobool190.not327 = icmp eq i32 %__ret174.0.lcssa, 0
  %spec.store.select235328 = select i1 %tobool190.not327, i32 1, i32 %__ret174.0.lcssa
  br label %for.end210

lor.end185:                                       ; preds = %cleanup207.lor.end185_crit_edge, %if.then172.lor.end185_crit_edge
  %call178368 = phi i32 [ %call178, %cleanup207.lor.end185_crit_edge ], [ %call178365, %if.then172.lor.end185_crit_edge ]
  %__ret174.0367 = phi i32 [ %call206, %cleanup207.lor.end185_crit_edge ], [ %sub139, %if.then172.lor.end185_crit_edge ]
  %55 = ptrtoint ptr %error154 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %error154, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool184.not = icmp eq i32 %56, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret174.0367)
  %tobool196.not = icmp eq i32 %__ret174.0367, 0
  br i1 %tobool184.not, label %57, label %for.end210.loopexit.split.loop.exit360

57:                                               ; preds = %lor.end185
  br i1 %tobool196.not, label %.for.end210_crit_edge, label %if.end202

.for.end210_crit_edge:                            ; preds = %57
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end210

if.end202:                                        ; preds = %57
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call178368)
  %tobool203.not = icmp eq i32 %call178368, 0
  br i1 %tobool203.not, label %cleanup207, label %if.end202.__out212_crit_edge

if.end202.__out212_crit_edge:                     ; preds = %if.end202
  call void @__sanitizer_cov_trace_pc() #15
  br label %__out212

cleanup207:                                       ; preds = %if.end202
  %call206 = call i32 @schedule_timeout(i32 noundef %__ret174.0367) #13
  %call178 = call i32 @prepare_to_wait_event(ptr noundef %flushq177, ptr noundef nonnull %__wq_entry173, i32 noundef 1) #13
  %58 = ptrtoint ptr %flushing to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %flushing, align 4
  %tobool181.not = icmp eq i32 %59, 0
  br i1 %tobool181.not, label %cleanup207.lor.end185.thread_crit_edge, label %cleanup207.lor.end185_crit_edge

cleanup207.lor.end185_crit_edge:                  ; preds = %cleanup207
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.end185

cleanup207.lor.end185.thread_crit_edge:           ; preds = %cleanup207
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.end185.thread

for.end210.loopexit.split.loop.exit360:           ; preds = %lor.end185
  call void @__sanitizer_cov_trace_pc() #15
  %spec.store.select235.le = select i1 %tobool196.not, i32 1, i32 %__ret174.0367
  br label %for.end210

for.end210:                                       ; preds = %for.end210.loopexit.split.loop.exit360, %.for.end210_crit_edge, %lor.end185.thread
  %__ret174.2.ph = phi i32 [ %spec.store.select235328, %lor.end185.thread ], [ %spec.store.select235.le, %for.end210.loopexit.split.loop.exit360 ], [ 0, %.for.end210_crit_edge ]
  call void @finish_wait(ptr noundef %flushq177, ptr noundef nonnull %__wq_entry173) #13
  br label %__out212

__out212:                                         ; preds = %for.end210, %if.end202.__out212_crit_edge
  %__ret174.2334 = phi i32 [ %__ret174.2.ph, %for.end210 ], [ %call178368, %if.end202.__out212_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry173) #13
  br label %if.end214

if.end214:                                        ; preds = %__out212, %if.end142.if.end214_crit_edge
  %__ret143.1.ph = phi i32 [ %sub139, %if.end142.if.end214_crit_edge ], [ %__ret174.2334, %__out212 ]
  %60 = ptrtoint ptr %error154 to i32
  call void @__asan_load4_noabort(i32 %60)
  %.pr390 = load i32, ptr %error154, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr390)
  %tobool217.not = icmp eq i32 %.pr390, 0
  br i1 %tobool217.not, label %if.end220, label %if.end214.cleanup228_crit_edge

if.end214.cleanup228_crit_edge:                   ; preds = %if.end214
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup228

if.end220:                                        ; preds = %if.end214
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret143.1.ph)
  %cmp223 = icmp slt i32 %__ret143.1.ph, 0
  %or.cond308 = select i1 %interruptible, i1 %cmp223, i1 false
  br i1 %or.cond308, label %if.end220.cleanup228_crit_edge, label %if.end220.while.cond135_crit_edge

if.end220.while.cond135_crit_edge:                ; preds = %if.end220
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond135

if.end220.cleanup228_crit_edge:                   ; preds = %if.end220
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup228

done:                                             ; preds = %while.cond135.done_crit_edge, %while.cond82.done_crit_edge
  %61 = ptrtoint ptr %flushed to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 1, ptr %flushed, align 4
  br label %cleanup228

cleanup228:                                       ; preds = %done, %if.end220.cleanup228_crit_edge, %if.end214.cleanup228_crit_edge, %lor.rhs153.cleanup228_crit_edge, %while.body138.cleanup228_crit_edge, %if.end127.cleanup228_crit_edge, %if.end121.cleanup228_crit_edge, %lor.lhs.false.cleanup228_crit_edge, %if.end74.cleanup228_crit_edge, %if.end64.cleanup228_crit_edge, %lor.rhs.cleanup228_crit_edge, %if.then12, %if.then4.cleanup228_crit_edge, %entry.cleanup228_crit_edge
  %retval.1 = phi i32 [ 0, %done ], [ 0, %entry.cleanup228_crit_edge ], [ %call76, %if.end74.cleanup228_crit_edge ], [ %call, %if.then4.cleanup228_crit_edge ], [ -5, %if.then12 ], [ %36, %lor.lhs.false.cleanup228_crit_edge ], [ -4, %if.end127.cleanup228_crit_edge ], [ %.pr387, %if.end121.cleanup228_crit_edge ], [ %51, %lor.rhs153.cleanup228_crit_edge ], [ -4, %if.end220.cleanup228_crit_edge ], [ %.pr390, %if.end214.cleanup228_crit_edge ], [ -110, %while.body138.cleanup228_crit_edge ], [ %17, %lor.rhs.cleanup228_crit_edge ], [ %.pr, %if.end64.cleanup228_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xilly_copy_to_user(ptr noundef %dst, ptr noundef %src, i32 noundef %n) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n)
  %cmp9.i.i = icmp slt i32 %n, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %entry
  %.b71.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i, label %land.rhs16.i.i.copy_to_user.exit.thread_crit_edge, label %if.then27.i.i, !prof !172

land.rhs16.i.i.copy_to_user.exit.thread_crit_edge: ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %copy_to_user.exit.thread

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.65, i32 noundef 230, i32 noundef 9, ptr noundef null) #13
  br label %copy_to_user.exit.thread

if.then.i.i.i:                                    ; preds = %entry
  tail call void @__check_object_size(ptr noundef %src, i32 noundef %n, i1 noundef zeroext true) #13
  tail call void @__might_fault(ptr noundef nonnull @.str.67, i32 noundef 174) #13
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i, label %if.then.i.i.i.copy_to_user.exit_crit_edge, label %if.end.i.i

if.then.i.i.i.copy_to_user.exit_crit_edge:        ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %copy_to_user.exit

if.end.i.i:                                       ; preds = %if.then.i.i.i
  %0 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %dst, i32 %n, i32 -1226833920) #20, !srcloc !184
  %asmresult.i.i = extractvalue { i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i.copy_to_user.exit_crit_edge

if.end.i.i.copy_to_user.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %src, i32 noundef %n) #13
  %call.i12.i.i = tail call i32 @arm_copy_to_user(ptr noundef %dst, ptr noundef %src, i32 noundef %n) #13
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i.copy_to_user.exit_crit_edge, %if.then.i.i.i.copy_to_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ %n, %if.then.i.i.i.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %n, %if.end.i.i.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i)
  %tobool.not = icmp eq i32 %n.addr.0.i, 0
  %spec.select = select i1 %tobool.not, i32 0, i32 -14
  br label %copy_to_user.exit.thread

copy_to_user.exit.thread:                         ; preds = %copy_to_user.exit, %if.then27.i.i, %land.rhs16.i.i.copy_to_user.exit.thread_crit_edge
  %1 = phi i32 [ -14, %if.then27.i.i ], [ -14, %land.rhs16.i.i.copy_to_user.exit.thread_crit_edge ], [ %spec.select, %copy_to_user.exit ]
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @request_read_anything(ptr nocapture noundef readonly %chan, i8 noundef zeroext %opcode) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan, align 4
  %in_log2_element_size = getelementptr inbounds %struct.xillyusb_channel, ptr %chan, i32 0, i32 11
  %2 = ptrtoint ptr %in_log2_element_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %in_log2_element_size, align 4
  %chan_idx = getelementptr inbounds %struct.xillyusb_channel, ptr %chan, i32 0, i32 7
  %4 = ptrtoint ptr %chan_idx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %chan_idx, align 4
  %shl = shl i32 %5, 1
  %or = or i32 %shl, 1
  %in_consumed_bytes = getelementptr inbounds %struct.xillyusb_channel, ptr %chan, i32 0, i32 8
  %6 = ptrtoint ptr %in_consumed_bytes to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %in_consumed_bytes, align 4
  %shl2 = shl i32 2, %3
  %add = add i32 %shl2, -1
  %sub = add i32 %add, %7
  %shr = lshr i32 %sub, %3
  %call = tail call fastcc i32 @xillyusb_send_opcode(ptr noundef %1, i32 noundef %or, i8 noundef zeroext %opcode, i32 noundef %shr)
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #12

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xillybus_find_inode(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_work(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_kill_anchored_urbs(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xillybus_cleanup_chrdev(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 85)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 85)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nounwind readonly }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { nounwind allocsize(2) }
attributes #17 = { cold nounwind }
attributes #18 = { nounwind allocsize(0) }
attributes #19 = { nounwind readonly willreturn }
attributes #20 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !15, !17, !19, !20, !22, !23, !25, !26, !28, !29, !30, !31, !32, !33, !34, !36, !37, !39, !40, !42, !43, !45, !46, !48, !49, !51, !52, !54, !55, !57, !58, !60, !62, !63, !64, !65, !67, !68, !69, !71, !72, !73, !75, !76, !77, !79, !80, !81, !83, !84, !85, !87, !88, !89, !91, !92, !93, !94, !96, !97, !98, !100, !101, !102, !104, !105, !106, !108, !109, !110, !112, !113, !114, !116, !117, !119, !120, !122, !123, !125, !126, !128, !130, !131, !133, !135, !137, !138, !139, !140, !142, !143, !144, !146, !147, !148, !149, !150, !152, !153, !154, !155, !157}
!llvm.named.register.sp = !{!159}
!llvm.module.flags = !{!160, !161, !162, !163, !164, !165, !166, !167}
!llvm.ident = !{!168}

!0 = !{ptr @__UNIQUE_ID_description232, !1, !"__UNIQUE_ID_description232", i1 false, i1 false}
!1 = !{!"../drivers/char/xillybus/xillyusb.c", i32 34, i32 1}
!2 = !{ptr @__UNIQUE_ID_author233, !3, !"__UNIQUE_ID_author233", i1 false, i1 false}
!3 = !{!"../drivers/char/xillybus/xillyusb.c", i32 35, i32 1}
!4 = !{ptr @__UNIQUE_ID_alias234, !5, !"__UNIQUE_ID_alias234", i1 false, i1 false}
!5 = !{!"../drivers/char/xillybus/xillyusb.c", i32 36, i32 1}
!6 = !{ptr @__UNIQUE_ID_file235, !7, !"__UNIQUE_ID_file235", i1 false, i1 false}
!7 = !{!"../drivers/char/xillybus/xillyusb.c", i32 37, i32 1}
!8 = !{ptr @__UNIQUE_ID_license236, !7, !"__UNIQUE_ID_license236", i1 false, i1 false}
!9 = !{ptr @__initcall__kmod_xillyusb__256_2259_xillyusb_init6, !10, !"__initcall__kmod_xillyusb__256_2259_xillyusb_init6", i1 false, i1 false}
!10 = !{!"../drivers/char/xillybus/xillyusb.c", i32 2259, i32 1}
!11 = !{ptr @__exitcall_xillyusb_exit, !12, !"__exitcall_xillyusb_exit", i1 false, i1 false}
!12 = !{!"../drivers/char/xillybus/xillyusb.c", i32 2260, i32 1}
!13 = !{ptr @xillyusb_driver, !14, !"xillyusb_driver", i1 false, i1 false}
!14 = !{!"../drivers/char/xillybus/xillyusb.c", i32 2232, i32 26}
!15 = !{ptr @xillyname, !16, !"xillyname", i1 false, i1 false}
!16 = !{!"../drivers/char/xillybus/xillyusb.c", i32 50, i32 19}
!17 = !{ptr @xillyusb_probe.__key, !18, !"__key", i1 false, i1 false}
!18 = !{!"../drivers/char/xillybus/xillyusb.c", i32 2125, i32 2}
!19 = !{ptr @.str, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @xillyusb_probe.__key.1, !21, !"__key", i1 false, i1 false}
!21 = !{!"../drivers/char/xillybus/xillyusb.c", i32 2126, i32 2}
!22 = !{ptr @.str.2, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @xillyusb_probe.__key.3, !24, !"__key", i1 false, i1 false}
!24 = !{!"../drivers/char/xillybus/xillyusb.c", i32 2131, i32 2}
!25 = !{ptr @.str.4, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.5, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/char/xillybus/xillyusb.c", i32 2137, i32 3}
!28 = !{ptr @.str.6, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @xillyusb_probe._entry, !27, !"_entry", i1 false, i1 false}
!33 = !{ptr @xillyusb_probe._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @xillyusb_probe.__key.10, !35, !"__key", i1 false, i1 false}
!35 = !{!"../drivers/char/xillybus/xillyusb.c", i32 2142, i32 2}
!36 = !{ptr @.str.11, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @endpoint_alloc.__key, !38, !"__key", i1 false, i1 false}
!38 = !{!"../drivers/char/xillybus/xillyusb.c", i32 497, i32 2}
!39 = !{ptr @.str.12, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @endpoint_alloc.__key.13, !41, !"__key", i1 false, i1 false}
!41 = !{!"../drivers/char/xillybus/xillyusb.c", i32 498, i32 2}
!42 = !{ptr @.str.14, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @endpoint_alloc.__key.15, !44, !"__key", i1 false, i1 false}
!44 = !{!"../drivers/char/xillybus/xillyusb.c", i32 501, i32 2}
!45 = !{ptr @.str.16, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @init_usb_anchor.__key, !47, !"__key", i1 false, i1 false}
!47 = !{!"../include/linux/usb.h", i32 1367, i32 2}
!48 = !{ptr @.str.17, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @init_usb_anchor.__key.18, !50, !"__key", i1 false, i1 false}
!50 = !{!"../include/linux/usb.h", i32 1368, i32 2}
!51 = !{ptr @.str.19, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @fifo_init.__key, !53, !"__key", i1 false, i1 false}
!53 = !{!"../drivers/char/xillybus/xillyusb.c", i32 405, i32 2}
!54 = !{ptr @.str.20, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @fifo_init.__key.21, !56, !"__key", i1 false, i1 false}
!56 = !{!"../drivers/char/xillybus/xillyusb.c", i32 406, i32 2}
!57 = !{ptr @.str.22, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @fifo_buf_order, !59, !"fifo_buf_order", i1 false, i1 false}
!59 = !{!"../drivers/char/xillybus/xillyusb.c", i32 52, i32 21}
!60 = !{ptr @.str.23, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/char/xillybus/xillyusb.c", i32 945, i32 3}
!62 = !{ptr @.str.24, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @process_bulk_in._entry, !61, !"_entry", i1 false, i1 false}
!64 = !{ptr @process_bulk_in._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.26, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/char/xillybus/xillyusb.c", i32 969, i32 5}
!67 = !{ptr @process_bulk_in._entry.25, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @process_bulk_in._entry_ptr.27, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.29, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/char/xillybus/xillyusb.c", i32 990, i32 4}
!71 = !{ptr @process_bulk_in._entry.28, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @process_bulk_in._entry_ptr.30, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.32, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/char/xillybus/xillyusb.c", i32 1002, i32 4}
!75 = !{ptr @process_bulk_in._entry.31, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @process_bulk_in._entry_ptr.33, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.34, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/char/xillybus/xillyusb.c", i32 884, i32 3}
!79 = !{ptr @process_in_opcode._entry, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @process_in_opcode._entry_ptr, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.36, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/char/xillybus/xillyusb.c", i32 894, i32 4}
!83 = !{ptr @process_in_opcode._entry.35, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @process_in_opcode._entry_ptr.37, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.39, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/char/xillybus/xillyusb.c", i32 920, i32 3}
!87 = !{ptr @process_in_opcode._entry.38, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @process_in_opcode._entry_ptr.40, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.41, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/char/xillybus/xillyusb.c", i32 1985, i32 3}
!91 = !{ptr @.str.42, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @xillyusb_discovery._entry, !90, !"_entry", i1 false, i1 false}
!93 = !{ptr @xillyusb_discovery._entry_ptr, !90, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.44, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/char/xillybus/xillyusb.c", i32 2015, i32 3}
!96 = !{ptr @xillyusb_discovery._entry.43, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @xillyusb_discovery._entry_ptr.45, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.47, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/char/xillybus/xillyusb.c", i32 2035, i32 3}
!100 = !{ptr @xillyusb_discovery._entry.46, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @xillyusb_discovery._entry_ptr.48, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.50, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/char/xillybus/xillyusb.c", i32 2050, i32 3}
!104 = !{ptr @xillyusb_discovery._entry.49, !103, !"_entry", i1 false, i1 false}
!105 = !{ptr @xillyusb_discovery._entry_ptr.51, !103, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.53, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/char/xillybus/xillyusb.c", i32 2056, i32 3}
!108 = !{ptr @xillyusb_discovery._entry.52, !107, !"_entry", i1 false, i1 false}
!109 = !{ptr @xillyusb_discovery._entry_ptr.54, !107, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.56, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/char/xillybus/xillyusb.c", i32 2069, i32 3}
!112 = !{ptr @xillyusb_discovery._entry.55, !111, !"_entry", i1 false, i1 false}
!113 = !{ptr @xillyusb_discovery._entry_ptr.57, !111, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @setup_channels.__key, !115, !"__key", i1 false, i1 false}
!115 = !{!"../drivers/char/xillybus/xillyusb.c", i32 1937, i32 3}
!116 = !{ptr @.str.58, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @setup_channels.__key.59, !118, !"__key", i1 false, i1 false}
!118 = !{!"../drivers/char/xillybus/xillyusb.c", i32 1938, i32 3}
!119 = !{ptr @.str.60, !118, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @setup_channels.__key.61, !121, !"__key", i1 false, i1 false}
!121 = !{!"../drivers/char/xillybus/xillyusb.c", i32 1939, i32 3}
!122 = !{ptr @.str.62, !121, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @setup_channels.__key.63, !124, !"__key", i1 false, i1 false}
!124 = !{!"../drivers/char/xillybus/xillyusb.c", i32 1940, i32 3}
!125 = !{ptr @.str.64, !124, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @xillyusb_fops, !127, !"xillyusb_fops", i1 false, i1 false}
!127 = !{!"../drivers/char/xillybus/xillyusb.c", i32 1881, i32 37}
!128 = distinct !{null, !129, !"__already_done", i1 false, i1 false}
!129 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!130 = !{ptr @.str.65, !129, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @.str.66, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!133 = !{ptr @.str.67, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!135 = !{ptr @.str.68, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/char/xillybus/xillyusb.c", i32 1259, i32 3}
!137 = !{ptr @.str.69, !136, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @xillyusb_open._entry, !136, !"_entry", i1 false, i1 false}
!139 = !{ptr @xillyusb_open._entry_ptr, !136, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.71, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/char/xillybus/xillyusb.c", i32 1266, i32 3}
!142 = !{ptr @xillyusb_open._entry.70, !141, !"_entry", i1 false, i1 false}
!143 = !{ptr @xillyusb_open._entry_ptr.72, !141, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @.str.73, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/char/xillybus/xillyusb.c", i32 1622, i32 4}
!146 = !{ptr @.str.74, !145, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @.str.75, !145, !"<string literal>", i1 false, i1 false}
!148 = !{ptr @xillyusb_flush._entry, !145, !"_entry", i1 false, i1 false}
!149 = !{ptr @xillyusb_flush._entry_ptr, !145, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @.str.76, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/char/xillybus/xillyusb.c", i32 2196, i32 3}
!152 = !{ptr @.str.77, !151, !"<string literal>", i1 false, i1 false}
!153 = !{ptr @xillyusb_disconnect._entry, !151, !"_entry", i1 false, i1 false}
!154 = !{ptr @xillyusb_disconnect._entry_ptr, !151, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @xillyusb_table, !156, !"xillyusb_table", i1 false, i1 false}
!156 = !{!"../drivers/char/xillybus/xillyusb.c", i32 59, i32 35}
!157 = !{ptr @.str.78, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/char/xillybus/xillyusb.c", i32 2249, i32 7}
!159 = !{!"sp"}
!160 = !{i32 1, !"wchar_size", i32 2}
!161 = !{i32 1, !"min_enum_size", i32 4}
!162 = !{i32 8, !"branch-target-enforcement", i32 0}
!163 = !{i32 8, !"sign-return-address", i32 0}
!164 = !{i32 8, !"sign-return-address-all", i32 0}
!165 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!166 = !{i32 7, !"uwtable", i32 1}
!167 = !{i32 7, !"frame-pointer", i32 2}
!168 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!169 = !{i8 0, i8 2}
!170 = !{i64 2148720475}
!171 = !{i64 2148634915, i64 2148634947, i64 2148634976, i64 2148635010, i64 2148635041, i64 2148635064}
!172 = !{!"branch_weights", i32 2000, i32 1}
!173 = !{i64 2149918248}
!174 = !{!"branch_weights", i32 1, i32 2000}
!175 = !{i64 2154003712}
!176 = !{ptr @xilly_copy_to_user, ptr @xilly_memcpy}
!177 = !{i64 2148632450, i64 2148632482, i64 2148632511, i64 2148632545, i64 2148632576, i64 2148632599}
!178 = !{i64 2154041322}
!179 = !{i64 2153404033, i64 2153404058}
!180 = !{i64 5899588}
!181 = !{i64 5899785}
!182 = !{i64 2153385018}
!183 = !{!"auto-init"}
!184 = !{i64 2153404714, i64 2153404739}
