; ModuleID = '/llk/IR_all_yes/drivers/greybus/es2.c_pt.bc'
source_filename = "../drivers/greybus/es2.c"
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
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.gb_hd_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.66 }
%union.anon.66 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.usb_interface = type { ptr, ptr, i32, ptr, i32, i32, i8, %struct.device, ptr, %struct.work_struct }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
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
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.gb_host_device = type { %struct.device, i32, ptr, %struct.list_head, %struct.list_head, %struct.ida, i32, i32, ptr, [0 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.usb_host_interface = type { %struct.usb_interface_descriptor, i32, ptr, ptr, ptr }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.es2_ap_dev = type { ptr, ptr, ptr, %struct.es2_cport_in, i8, [8 x ptr], [8 x i8], [8 x i8], %struct.spinlock, i8, ptr, ptr, ptr, %struct.anon.71, i8, [2 x ptr], [2 x ptr], i32, %struct.spinlock, %struct.list_head }
%struct.es2_cport_in = type { i8, [4 x ptr], [4 x ptr] }
%struct.anon.71 = type { %union.anon.72, [16384 x i8] }
%union.anon.72 = type { %struct.__kfifo }
%struct.__kfifo = type { i32, i32, i32, i32, ptr }
%struct.gb_operation_msg_hdr = type { i16, i16, i8, i8, [2 x i8] }
%struct.arpc = type { %struct.list_head, ptr, ptr, %struct.completion, i8 }
%struct.arpc_cport_connected_req = type { i16 }
%struct.arpc_cport_flush_req = type { i16 }
%struct.arpc_cport_shutdown_req = type <{ i16, i16, i8 }>
%struct.arpc_cport_quiesce_req = type { i16, i16, i16 }
%struct.arpc_cport_clear_req = type { i16 }
%struct.gb_message = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.usb_ctrlrequest = type { i8, i8, i16, i16, i16 }
%struct.arpc_request_message = type <{ i16, i16, i8, [0 x i8] }>
%struct.arpc_response_message = type <{ i16, i8 }>
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.67, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.68, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.69, ptr, %struct.address_space, %struct.list_head, %union.anon.70, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.67 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.68 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.69 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.70 = type { ptr }

@__initcall__kmod_gb_es2__318_1457_es2_ap_driver_init6 = internal global ptr @es2_ap_driver_init, section ".initcall6.init", align 4
@es2_ap_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str.1, ptr @ap_probe, ptr @ap_disconnect, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @id_table, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 16 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_es2_ap_driver_exit = internal global ptr @es2_ap_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file319 = internal constant [35 x i8] c"gb_es2.file=drivers/greybus/gb-es2\00", section ".modinfo", align 1
@__UNIQUE_ID_license320 = internal constant [22 x i8] c"gb_es2.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_author321 = internal constant [62 x i8] c"gb_es2.author=Greg Kroah-Hartman <gregkh@linuxfoundation.org>\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gb_es2\00", [25 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"es2_ap_driver\00", [18 x i8] zeroinitializer }, align 32
@id_table = internal constant { [2 x %struct.usb_device_id], [48 x i8] } { [2 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 6353, i16 7855, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@ap_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 1266, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Cannot retrieve CPort count: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ap_probe\00", [23 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"drivers/greybus/es2.c\00", [42 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ap_probe._entry_ptr = internal global ptr @ap_probe._entry, section ".printk_index", align 4
@es2_driver = internal global { %struct.gb_hd_driver, [36 x i8] } { %struct.gb_hd_driver { i32 16640, ptr @es2_cport_allocate, ptr @es2_cport_release, ptr @cport_enable, ptr null, ptr @es2_cport_connected, ptr @es2_cport_flush, ptr @es2_cport_shutdown, ptr @es2_cport_quiesce, ptr @es2_cport_clear, ptr @message_send, ptr @message_cancel, ptr @latency_tag_enable, ptr @latency_tag_disable, ptr @output }, [36 x i8] zeroinitializer }, align 32
@ap_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"&es2->cport_out_urb_lock\00", [39 x i8] zeroinitializer }, align 32
@ap_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 1312, ptr @.str.10, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Unused bulk IN endpoint found: 0x%02x\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@ap_probe._entry_ptr.11 = internal global ptr @ap_probe._entry.8, section ".printk_index", align 4
@ap_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.3, ptr @.str.4, i32 1323, ptr @.str.10, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Unused bulk OUT endpoint found: 0x%02x\0A\00", [56 x i8] zeroinitializer }, align 32
@ap_probe._entry_ptr.14 = internal global ptr @ap_probe._entry.12, section ".printk_index", align 4
@ap_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.3, ptr @.str.4, i32 1329, ptr @.str.10, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Unknown endpoint type found, address 0x%02x\0A\00", [51 x i8] zeroinitializer }, align 32
@ap_probe._entry_ptr.17 = internal global ptr @ap_probe._entry.15, section ".printk_index", align 4
@ap_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.3, ptr @.str.4, i32 1332, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Not enough endpoints found in device, aborting!\0A\00", [47 x i8] zeroinitializer }, align 32
@ap_probe._entry_ptr.20 = internal global ptr @ap_probe._entry.18, section ".printk_index", align 4
@.str.21 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"apb_log_enable\00", [17 x i8] zeroinitializer }, align 32
@apb_log_enable_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr null, ptr @apb_log_enable_read, ptr @apb_log_enable_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@ap_probe.__key.22 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.23 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&es2->arpc_lock\00", [16 x i8] zeroinitializer }, align 32
@apb_get_cport_count._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.24, ptr @.str.4, i32 1217, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"apb_get_cport_count\00", [44 x i8] zeroinitializer }, align 32
@apb_get_cport_count._entry_ptr = internal global ptr @apb_get_cport_count._entry, section ".printk_index", align 4
@apb_get_cport_count._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.24, ptr @.str.4, i32 1230, ptr @.str.10, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Limiting number of CPorts to U8_MAX\0A\00", [59 x i8] zeroinitializer }, align 32
@apb_get_cport_count._entry_ptr.27 = internal global ptr @apb_get_cport_count._entry.25, section ".printk_index", align 4
@es2_cport_allocate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.4, i32 498, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cport %d not available\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"es2_cport_allocate\00", [45 x i8] zeroinitializer }, align 32
@es2_cport_allocate._entry_ptr = internal global ptr @es2_cport_allocate._entry, section ".printk_index", align 4
@es2_cport_allocate._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.29, ptr @.str.4, i32 505, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"CDSI1 already in use\0A\00", [42 x i8] zeroinitializer }, align 32
@es2_cport_allocate._entry_ptr.32 = internal global ptr @es2_cport_allocate._entry.30, section ".printk_index", align 4
@es2_cport_allocate._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.4, i32 521, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@es2_cport_allocate._entry_ptr.34 = internal global ptr @es2_cport_allocate._entry.33, section ".printk_index", align 4
@cport_enable.__UNIQUE_ID_ddebug317 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.35, ptr @.str.4, ptr @.str.36, i8 0, i8 -116, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"cport_enable\00", [19 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s - cport = %u, flags = %02x\0A\00", [33 x i8] zeroinitializer }, align 32
@cport_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.35, ptr @.str.4, i32 572, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"failed to set cport flags for port %d\0A\00", [57 x i8] zeroinitializer }, align 32
@cport_enable._entry_ptr = internal global ptr @cport_enable._entry, section ".printk_index", align 4
@es2_cport_connected._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.4, i32 595, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"failed to set connected state for cport %u: %d\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"es2_cport_connected\00", [44 x i8] zeroinitializer }, align 32
@es2_cport_connected._entry_ptr = internal global ptr @es2_cport_connected._entry, section ".printk_index", align 4
@arpc_sync._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.4, i32 1018, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to execute ARPC: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"arpc_sync\00", [22 x i8] zeroinitializer }, align 32
@arpc_sync._entry_ptr = internal global ptr @arpc_sync._entry, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.42 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@arpc_send._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.4, i32 964, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to send ARPC request %d: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"arpc_send\00", [22 x i8] zeroinitializer }, align 32
@arpc_send._entry_ptr = internal global ptr @arpc_send._entry, section ".printk_index", align 4
@es2_cport_flush._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.4, i32 613, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to flush cport %u: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"es2_cport_flush\00", [16 x i8] zeroinitializer }, align 32
@es2_cport_flush._entry_ptr = internal global ptr @es2_cport_flush._entry, section ".printk_index", align 4
@es2_cport_shutdown._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.4, i32 639, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"failed to send shutdown over cport %u: %d (%d)\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"es2_cport_shutdown\00", [45 x i8] zeroinitializer }, align 32
@es2_cport_shutdown._entry_ptr = internal global ptr @es2_cport_shutdown._entry, section ".printk_index", align 4
@es2_cport_quiesce._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str.4, i32 668, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to quiesce cport %u: %d (%d)\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"es2_cport_quiesce\00", [46 x i8] zeroinitializer }, align 32
@es2_cport_quiesce._entry_ptr = internal global ptr @es2_cport_quiesce._entry, section ".printk_index", align 4
@es2_cport_clear._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.52, ptr @.str.4, i32 686, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to clear cport %u: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"es2_cport_clear\00", [16 x i8] zeroinitializer }, align 32
@es2_cport_clear._entry_ptr = internal global ptr @es2_cport_clear._entry, section ".printk_index", align 4
@message_send._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str.4, i32 406, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"invalid cport %u\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"message_send\00", [19 x i8] zeroinitializer }, align 32
@message_send._entry_ptr = internal global ptr @message_send._entry, section ".printk_index", align 4
@message_send._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.54, ptr @.str.4, i32 435, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to submit out-urb: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@message_send._entry_ptr.57 = internal global ptr @message_send._entry.55, section ".printk_index", align 4
@next_free_urb.__UNIQUE_ID_ddebug316 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.58, ptr @.str.4, ptr @.str.59, i8 0, i8 83, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.58 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"next_free_urb\00", [18 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"No free CPort OUT urbs, having to dynamically allocate one!\0A\00", [35 x i8] zeroinitializer }, align 32
@check_urb_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.61, ptr @.str.4, i32 758, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: overflow actual length is %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"check_urb_status\00", [47 x i8] zeroinitializer }, align 32
@check_urb_status._entry_ptr = internal global ptr @check_urb_status._entry, section ".printk_index", align 4
@check_urb_status._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.61, ptr @.str.4, i32 768, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: unknown status %d\0A\00", [41 x i8] zeroinitializer }, align 32
@check_urb_status._entry_ptr.64 = internal global ptr @check_urb_status._entry.62, section ".printk_index", align 4
@__tracepoint_gb_message_submit = external dso_local global %struct.tracepoint, align 4
@.str.65 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/greybus/greybus_trace.h\00", [32 x i8] zeroinitializer }, align 32
@trace_gb_message_submit.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.66 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.67 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@latency_tag_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.69, ptr @.str.4, i32 707, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Cannot enable latency tag for cport %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"latency_tag_enable\00", [45 x i8] zeroinitializer }, align 32
@latency_tag_enable._entry_ptr = internal global ptr @latency_tag_enable._entry, section ".printk_index", align 4
@latency_tag_disable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.71, ptr @.str.4, i32 725, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Cannot disable latency tag for cport %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"latency_tag_disable\00", [44 x i8] zeroinitializer }, align 32
@latency_tag_disable._entry_ptr = internal global ptr @latency_tag_disable._entry, section ".printk_index", align 4
@output_sync._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.73, ptr @.str.4, i32 163, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s: return error %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"output_sync\00", [20 x i8] zeroinitializer }, align 32
@output_sync._entry_ptr = internal global ptr @output_sync._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@cport_in_callback._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.75, ptr @.str.4, i32 830, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"urb cport in error %d (dropped)\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cport_in_callback\00", [46 x i8] zeroinitializer }, align 32
@cport_in_callback._entry_ptr = internal global ptr @cport_in_callback._entry, section ".printk_index", align 4
@cport_in_callback._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.75, ptr @.str.4, i32 835, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"short message received\0A\00", [40 x i8] zeroinitializer }, align 32
@cport_in_callback._entry_ptr.78 = internal global ptr @cport_in_callback._entry.76, section ".printk_index", align 4
@cport_in_callback._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.75, ptr @.str.4, i32 847, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"invalid cport id %u received\0A\00", [34 x i8] zeroinitializer }, align 32
@cport_in_callback._entry_ptr.81 = internal global ptr @cport_in_callback._entry.79, section ".printk_index", align 4
@cport_in_callback._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.75, ptr @.str.4, i32 853, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to resubmit in-urb: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@cport_in_callback._entry_ptr.84 = internal global ptr @cport_in_callback._entry.82, section ".printk_index", align 4
@arpc_in_callback._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.86, ptr @.str.4, i32 1042, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"arpc in-urb error %d (dropped)\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"arpc_in_callback\00", [47 x i8] zeroinitializer }, align 32
@arpc_in_callback._entry_ptr = internal global ptr @arpc_in_callback._entry, section ".printk_index", align 4
@arpc_in_callback._entry.87 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.86, ptr @.str.4, i32 1047, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"short aprc response received\0A\00", [34 x i8] zeroinitializer }, align 32
@arpc_in_callback._entry_ptr.89 = internal global ptr @arpc_in_callback._entry.87, section ".printk_index", align 4
@arpc_in_callback._entry.90 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.86, ptr @.str.4, i32 1056, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"invalid arpc response id received: %u\0A\00", [57 x i8] zeroinitializer }, align 32
@arpc_in_callback._entry_ptr.92 = internal global ptr @arpc_in_callback._entry.90, section ".printk_index", align 4
@arpc_in_callback._entry.93 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.86, ptr @.str.4, i32 1070, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to resubmit arpc in-urb: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@arpc_in_callback._entry_ptr.95 = internal global ptr @arpc_in_callback._entry.93, section ".printk_index", align 4
@.str.96 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"apb_log\00", [24 x i8] zeroinitializer }, align 32
@apb_log_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr null, ptr @apb_log_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@es2_arpc_in_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.99, ptr @.str.4, i32 281, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to submit arpc in-urb: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"es2_arpc_in_enable\00", [45 x i8] zeroinitializer }, align 32
@es2_arpc_in_enable._entry_ptr = internal global ptr @es2_arpc_in_enable._entry, section ".printk_index", align 4
@es2_cport_in_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.101, ptr @.str.4, i32 241, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to submit in-urb: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"es2_cport_in_enable\00", [44 x i8] zeroinitializer }, align 32
@es2_cport_in_enable._entry_ptr = internal global ptr @es2_cport_in_enable._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 4294967188, i64 4294967192, i64 4294967212, i64 4294967221, i64 4294967225, i64 4294967294]
@__sancov_gen_cov_switch_values.102 = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 4294967188, i64 4294967192, i64 4294967212, i64 4294967221, i64 4294967225, i64 4294967294]
@__sancov_gen_cov_switch_values.103 = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 4294967188, i64 4294967192, i64 4294967212, i64 4294967221, i64 4294967225, i64 4294967294]
@___asan_gen_.104 = private unnamed_addr constant [14 x i8] c"es2_ap_driver\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 1449, i32 26 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 1457, i32 1 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 1450, i32 11 }
@___asan_gen_.113 = private unnamed_addr constant [9 x i8] c"id_table\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 38, i32 35 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 1265, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant [11 x i8] c"es2_driver\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 729, i32 28 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 1281, i32 2 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 1310, i32 5 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 1321, i32 5 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 1327, i32 3 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 1332, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 1405, i32 51 }
@___asan_gen_.173 = private unnamed_addr constant [20 x i8] c"apb_log_enable_fops\00", align 1
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 1196, i32 37 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 1411, i32 2 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 1216, i32 3 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 1230, i32 3 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 498, i32 3 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 505, i32 4 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 521, i32 3 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 562, i32 2 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 571, i32 3 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 594, i32 3 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 1017, i32 3 }
@___asan_gen_.242 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.246 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 87, i32 2 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 962, i32 3 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 613, i32 3 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 638, i32 3 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 667, i32 3 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 686, i32 3 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 406, i32 3 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 435, i32 3 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 333, i32 2 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 757, i32 3 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 768, i32 2 }
@___asan_gen_.333 = private unnamed_addr constant [35 x i8] c"../drivers/greybus/greybus_trace.h\00", align 1
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 86, i32 1 }
@___asan_gen_.336 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 108, i32 2 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 706, i32 3 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 724, i32 3 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 163, i32 3 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 830, i32 3 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 835, i32 3 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 847, i32 3 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 853, i32 3 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 1042, i32 3 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 1047, i32 3 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 1055, i32 3 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 1070, i32 3 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 1173, i32 19 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 1145, i32 22 }
@___asan_gen_.425 = private unnamed_addr constant [13 x i8] c"apb_log_fops\00", align 1
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 1135, i32 37 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 280, i32 4 }
@___asan_gen_.437 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.443 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.444 = private constant [25 x i8] c"../drivers/greybus/es2.c\00", align 1
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 240, i32 4 }
@llvm.compiler.used = appending global [155 x ptr] [ptr @__UNIQUE_ID_author321, ptr @__UNIQUE_ID_file319, ptr @__UNIQUE_ID_license320, ptr @__exitcall_es2_ap_driver_exit, ptr @__initcall__kmod_gb_es2__318_1457_es2_ap_driver_init6, ptr @ap_probe._entry, ptr @ap_probe._entry.12, ptr @ap_probe._entry.15, ptr @ap_probe._entry.18, ptr @ap_probe._entry.8, ptr @ap_probe._entry_ptr, ptr @ap_probe._entry_ptr.11, ptr @ap_probe._entry_ptr.14, ptr @ap_probe._entry_ptr.17, ptr @ap_probe._entry_ptr.20, ptr @apb_get_cport_count._entry, ptr @apb_get_cport_count._entry.25, ptr @apb_get_cport_count._entry_ptr, ptr @apb_get_cport_count._entry_ptr.27, ptr @arpc_in_callback._entry, ptr @arpc_in_callback._entry.87, ptr @arpc_in_callback._entry.90, ptr @arpc_in_callback._entry.93, ptr @arpc_in_callback._entry_ptr, ptr @arpc_in_callback._entry_ptr.89, ptr @arpc_in_callback._entry_ptr.92, ptr @arpc_in_callback._entry_ptr.95, ptr @arpc_send._entry, ptr @arpc_send._entry_ptr, ptr @arpc_sync._entry, ptr @arpc_sync._entry_ptr, ptr @check_urb_status._entry, ptr @check_urb_status._entry.62, ptr @check_urb_status._entry_ptr, ptr @check_urb_status._entry_ptr.64, ptr @cport_enable._entry, ptr @cport_enable._entry_ptr, ptr @cport_in_callback._entry, ptr @cport_in_callback._entry.76, ptr @cport_in_callback._entry.79, ptr @cport_in_callback._entry.82, ptr @cport_in_callback._entry_ptr, ptr @cport_in_callback._entry_ptr.78, ptr @cport_in_callback._entry_ptr.81, ptr @cport_in_callback._entry_ptr.84, ptr @es2_ap_driver_exit, ptr @es2_arpc_in_enable._entry, ptr @es2_arpc_in_enable._entry_ptr, ptr @es2_cport_allocate._entry, ptr @es2_cport_allocate._entry.30, ptr @es2_cport_allocate._entry.33, ptr @es2_cport_allocate._entry_ptr, ptr @es2_cport_allocate._entry_ptr.32, ptr @es2_cport_allocate._entry_ptr.34, ptr @es2_cport_clear._entry, ptr @es2_cport_clear._entry_ptr, ptr @es2_cport_connected._entry, ptr @es2_cport_connected._entry_ptr, ptr @es2_cport_flush._entry, ptr @es2_cport_flush._entry_ptr, ptr @es2_cport_in_enable._entry, ptr @es2_cport_in_enable._entry_ptr, ptr @es2_cport_quiesce._entry, ptr @es2_cport_quiesce._entry_ptr, ptr @es2_cport_shutdown._entry, ptr @es2_cport_shutdown._entry_ptr, ptr @latency_tag_disable._entry, ptr @latency_tag_disable._entry_ptr, ptr @latency_tag_enable._entry, ptr @latency_tag_enable._entry_ptr, ptr @message_send._entry, ptr @message_send._entry.55, ptr @message_send._entry_ptr, ptr @message_send._entry_ptr.57, ptr @output_sync._entry, ptr @output_sync._entry_ptr, ptr @es2_ap_driver, ptr @.str, ptr @.str.1, ptr @id_table, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @es2_driver, ptr @ap_probe.__key, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @.str.21, ptr @apb_log_enable_fops, ptr @ap_probe.__key.22, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @.str.31, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @init_completion.__key, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.56, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.63, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.77, ptr @.str.80, ptr @.str.83, ptr @.str.85, ptr @.str.86, ptr @.str.88, ptr @.str.91, ptr @.str.94, ptr @.str.96, ptr @.str.97, ptr @apb_log_fops, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101], section "llvm.metadata"
@0 = internal global [114 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @es2_ap_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @id_table to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ap_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @es2_driver to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ap_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ap_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ap_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ap_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ap_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apb_log_enable_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ap_probe.__key.22 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apb_get_cport_count._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apb_get_cport_count._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @es2_cport_allocate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @es2_cport_allocate._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @es2_cport_allocate._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cport_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @es2_cport_connected._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arpc_sync._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arpc_send._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @es2_cport_flush._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @es2_cport_shutdown._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @es2_cport_quiesce._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @es2_cport_clear._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @message_send._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @message_send._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_urb_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_urb_status._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @latency_tag_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @latency_tag_disable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @output_sync._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cport_in_callback._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cport_in_callback._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cport_in_callback._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cport_in_callback._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arpc_in_callback._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arpc_in_callback._entry.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arpc_in_callback._entry.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arpc_in_callback._entry.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apb_log_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @es2_arpc_in_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @es2_cport_in_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @es2_ap_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @es2_ap_driver, ptr noundef null, ptr noundef nonnull @.str) #11
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @es2_ap_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @usb_deregister(ptr noundef nonnull @es2_ap_driver) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ap_probe(ptr noundef %interface, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 -128
  %call2 = tail call ptr @usb_get_dev(ptr noundef %add.ptr.i) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 2) #14
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %entry.if.then_crit_edge, label %if.end.i

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

if.end.i:                                         ; preds = %entry
  %3 = ptrtoint ptr %call2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %call2, align 8
  %shl.i.i = shl i32 %4, 8
  %or3.i = or i32 %shl.i.i, -2147483520
  %call4.i = tail call i32 @usb_control_msg(ptr noundef %call2, i32 noundef %or3.i, i8 noundef zeroext 4, i8 noundef zeroext -63, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %call7.i.i.i, i16 noundef zeroext 2, i32 noundef 500) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call4.i)
  %cmp.not.i = icmp eq i32 %call4.i, 2
  br i1 %cmp.not.i, label %if.end9.i, label %do.end.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i = getelementptr inbounds %struct.usb_device, ptr %call2, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.2, i32 noundef %call4.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call4.i)
  %cmp6.i = icmp sgt i32 %call4.i, -1
  %spec.select = select i1 %cmp6.i, i32 -5, i32 %call4.i
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #11
  br label %if.then

if.end9.i:                                        ; preds = %if.end.i
  %5 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %call7.i.i.i, align 8
  %7 = tail call i16 @llvm.bswap.i16(i16 %6) #11
  %conv.i = zext i16 %7 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %7)
  %cmp10.i = icmp ugt i16 %7, 255
  br i1 %cmp10.i, label %if.then12.i, label %if.end9.i.if.end_crit_edge

if.end9.i.if.end_crit_edge:                       ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then12.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #13
  %dev16.i = getelementptr inbounds %struct.usb_device, ptr %call2, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev16.i, ptr noundef nonnull @.str.26) #15
  br label %if.end

if.then:                                          ; preds = %do.end.i, %entry.if.then_crit_edge
  %retval.0.i306 = phi i32 [ %spec.select, %do.end.i ], [ -12, %entry.if.then_crit_edge ]
  tail call void @usb_put_dev(ptr noundef %call2) #11
  %dev = getelementptr inbounds %struct.usb_device, ptr %call2, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2, i32 noundef %retval.0.i306) #15
  br label %cleanup163

if.end:                                           ; preds = %if.then12.i, %if.end9.i.if.end_crit_edge
  %retval1.0.i = phi i32 [ 255, %if.then12.i ], [ %conv.i, %if.end9.i.if.end_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #11
  %dev4 = getelementptr inbounds %struct.usb_device, ptr %call2, i32 0, i32 15
  %call5 = tail call ptr @gb_hd_create(ptr noundef nonnull @es2_driver, ptr noundef %dev4, i32 noundef 2048, i32 noundef %retval1.0.i) #11
  %cmp.i = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @usb_put_dev(ptr noundef %call2) #11
  %8 = ptrtoint ptr %call5 to i32
  br label %cleanup163

if.end9:                                          ; preds = %if.end
  %hd_priv.i = getelementptr inbounds %struct.gb_host_device, ptr %call5, i32 0, i32 9
  %hd11 = getelementptr inbounds %struct.gb_host_device, ptr %call5, i32 1, i32 0, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %hd11 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call5, ptr %hd11, align 4
  %usb_intf = getelementptr inbounds %struct.gb_host_device, ptr %call5, i32 1, i32 0, i32 0, i32 1
  %10 = ptrtoint ptr %usb_intf to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %interface, ptr %usb_intf, align 4
  %11 = ptrtoint ptr %hd_priv.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call2, ptr %hd_priv.i, align 4
  %cport_out_urb_lock = getelementptr inbounds %struct.gb_host_device, ptr %call5, i32 1, i32 0, i32 0, i32 7, i32 1, i32 4, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %cport_out_urb_lock, ptr noundef nonnull @.str.7, ptr noundef nonnull @ap_probe.__key, i16 noundef signext 3) #11
  %apb_log_fifo = getelementptr inbounds %struct.gb_host_device, ptr %call5, i32 1, i32 0, i32 7
  %12 = ptrtoint ptr %apb_log_fifo to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %apb_log_fifo, align 4
  %out = getelementptr inbounds %struct.gb_host_device, ptr %call5, i32 1, i32 0, i32 8
  %13 = ptrtoint ptr %out to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %out, align 4
  %mask = getelementptr inbounds %struct.gb_host_device, ptr %call5, i32 1, i32 0, i32 9
  %14 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 16383, ptr %mask, align 4
  %esize = getelementptr inbounds %struct.gb_host_device, ptr %call5, i32 1, i32 0, i32 9, i32 1
  %15 = ptrtoint ptr %esize to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %esize, align 4
  %buf = getelementptr inbounds %struct.gb_host_device, ptr %call5, i32 1, i32 0, i32 9, i32 1, i32 2
  %data = getelementptr inbounds %struct.gb_host_device, ptr %call5, i32 1, i32 0, i32 9, i32 1, i32 1
  %16 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %buf, ptr %data, align 4
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7, i32 8
  %17 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %hd_priv.i, ptr %driver_data.i.i, align 4
  %call16 = tail call i32 @gb_hd_cport_reserve(ptr noundef %call5, i16 noundef zeroext 16) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool.not = icmp eq i32 %call16, 0
  br i1 %tobool.not, label %if.end18, label %if.end9.error_crit_edge

if.end9.error_crit_edge:                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

if.end18:                                         ; preds = %if.end9
  %call19 = tail call i32 @gb_hd_cport_reserve(ptr noundef %call5, i16 noundef zeroext 17) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end22, label %if.end18.error_crit_edge

if.end18.error_crit_edge:                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

if.end22:                                         ; preds = %if.end18
  %cur_altsetting = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 1
  %18 = ptrtoint ptr %cur_altsetting to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cur_altsetting, align 4
  %bNumEndpoints = getelementptr inbounds %struct.usb_interface_descriptor, ptr %19, i32 0, i32 4
  %20 = ptrtoint ptr %bNumEndpoints to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %bNumEndpoints, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %cmp23322.not = icmp eq i8 %21, 0
  br i1 %cmp23322.not, label %if.end22.do.end69_crit_edge, label %for.body.lr.ph

if.end22.do.end69_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end69

for.body.lr.ph:                                   ; preds = %if.end22
  %endpoint25 = getelementptr inbounds %struct.usb_host_interface, ptr %19, i32 0, i32 3
  %cport_in = getelementptr inbounds %struct.gb_host_device, ptr %call5, i32 1, i32 0, i32 0, i32 2
  %arpc_endpoint_in = getelementptr inbounds %struct.gb_host_device, ptr %call5, i32 17, i32 0, i32 10, i32 2
  %cport_out_endpoint = getelementptr inbounds %struct.gb_host_device, ptr %call5, i32 1, i32 0, i32 0, i32 7, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %arpc_in_found.0.off0326 = phi i1 [ false, %for.body.lr.ph ], [ %arpc_in_found.1.off0, %for.inc.for.body_crit_edge ]
  %bulk_in_found.0.off0325 = phi i1 [ false, %for.body.lr.ph ], [ %bulk_in_found.1.off0, %for.inc.for.body_crit_edge ]
  %bulk_out_found.0.off0324 = phi i1 [ false, %for.body.lr.ph ], [ %bulk_out_found.1.off0, %for.inc.for.body_crit_edge ]
  %i.0323 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %22 = ptrtoint ptr %endpoint25 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %endpoint25, align 4
  %arrayidx = getelementptr %struct.usb_host_endpoint, ptr %23, i32 %i.0323
  %bEndpointAddress = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx, i32 0, i32 2
  %24 = ptrtoint ptr %bEndpointAddress to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %bEndpointAddress, align 1
  %bmAttributes.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx, i32 0, i32 3
  %26 = ptrtoint ptr %bmAttributes.i.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %bmAttributes.i.i, align 1
  %28 = and i8 %27, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %28)
  %cmp.i.not.i = icmp eq i8 %28, 2
  br i1 %cmp.i.not.i, label %usb_endpoint_is_bulk_in.exit, label %do.end59

usb_endpoint_is_bulk_in.exit:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %25)
  %tobool28.not = icmp sgt i8 %25, -1
  br i1 %tobool28.not, label %if.then46, label %if.then29

if.then29:                                        ; preds = %usb_endpoint_is_bulk_in.exit
  br i1 %bulk_in_found.0.off0325, label %if.else, label %if.then31

if.then31:                                        ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #13
  %29 = ptrtoint ptr %cport_in to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %25, ptr %cport_in, align 4
  br label %for.inc

if.else:                                          ; preds = %if.then29
  br i1 %arpc_in_found.0.off0326, label %do.end38, label %if.then34

if.then34:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %30 = ptrtoint ptr %arpc_endpoint_in to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %25, ptr %arpc_endpoint_in, align 4
  br label %for.inc

do.end38:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %conv40 = zext i8 %25 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev4, ptr noundef nonnull @.str.9, i32 noundef %conv40) #15
  br label %for.inc

if.then46:                                        ; preds = %usb_endpoint_is_bulk_in.exit
  br i1 %bulk_out_found.0.off0324, label %do.end52, label %if.then48

if.then48:                                        ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #13
  %31 = ptrtoint ptr %cport_out_endpoint to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %25, ptr %cport_out_endpoint, align 4
  br label %for.inc

do.end52:                                         ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #13
  %conv54 = zext i8 %25 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev4, ptr noundef nonnull @.str.13, i32 noundef %conv54) #15
  br label %for.inc

do.end59:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %conv61 = zext i8 %25 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev4, ptr noundef nonnull @.str.16, i32 noundef %conv61) #15
  br label %for.inc

for.inc:                                          ; preds = %do.end59, %do.end52, %if.then48, %do.end38, %if.then34, %if.then31
  %bulk_out_found.1.off0 = phi i1 [ %bulk_out_found.0.off0324, %do.end38 ], [ %bulk_out_found.0.off0324, %if.then34 ], [ %bulk_out_found.0.off0324, %if.then31 ], [ true, %do.end52 ], [ true, %if.then48 ], [ %bulk_out_found.0.off0324, %do.end59 ]
  %bulk_in_found.1.off0 = phi i1 [ true, %do.end38 ], [ true, %if.then34 ], [ true, %if.then31 ], [ %bulk_in_found.0.off0325, %do.end52 ], [ %bulk_in_found.0.off0325, %if.then48 ], [ %bulk_in_found.0.off0325, %do.end59 ]
  %arpc_in_found.1.off0 = phi i1 [ true, %do.end38 ], [ true, %if.then34 ], [ %arpc_in_found.0.off0326, %if.then31 ], [ %arpc_in_found.0.off0326, %do.end52 ], [ %arpc_in_found.0.off0326, %if.then48 ], [ %arpc_in_found.0.off0326, %do.end59 ]
  %inc = add nuw nsw i32 %i.0323, 1
  %32 = ptrtoint ptr %bNumEndpoints to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %bNumEndpoints, align 4
  %conv = zext i8 %33 to i32
  %cmp23 = icmp ult i32 %inc, %conv
  br i1 %cmp23, label %for.inc.for.body_crit_edge, label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.inc
  %34 = select i1 %bulk_in_found.1.off0, i1 %arpc_in_found.1.off0, i1 false
  %35 = select i1 %34, i1 %bulk_out_found.1.off0, i1 false
  br i1 %35, label %for.cond72.preheader, label %for.end.do.end69_crit_edge

for.end.do.end69_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end69

for.cond72.preheader:                             ; preds = %for.end
  %cport_in80 = getelementptr inbounds %struct.gb_host_device, ptr %call5, i32 1, i32 0, i32 0, i32 2
  %call76 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #11
  %tobool77.not = icmp eq ptr %call76, null
  br i1 %tobool77.not, label %for.cond72.preheader.error_crit_edge, label %if.end79

for.cond72.preheader.error_crit_edge:             ; preds = %for.cond72.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

do.end69:                                         ; preds = %for.end.do.end69_crit_edge, %if.end22.do.end69_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev4, ptr noundef nonnull @.str.19) #15
  br label %error

if.end79:                                         ; preds = %for.cond72.preheader
  %arrayidx82 = getelementptr %struct.gb_host_device, ptr %call5, i32 1, i32 0, i32 0, i32 3
  %36 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call76, ptr %arrayidx82, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %37 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %37, i32 noundef 3264, i32 noundef 2048) #14
  %tobool84.not = icmp eq ptr %call7.i, null
  br i1 %tobool84.not, label %if.end79.error_crit_edge, label %for.inc96

if.end79.error_crit_edge:                         ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

for.inc96:                                        ; preds = %if.end79
  %38 = ptrtoint ptr %cport_in80 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %cport_in80, align 4
  %conv89 = zext i8 %39 to i32
  %40 = ptrtoint ptr %call2 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %call2, align 8
  %shl.i = shl i32 %41, 8
  %shl1.i = shl nuw nsw i32 %conv89, 15
  %or.i = or i32 %shl1.i, %shl.i
  %or91 = or i32 %or.i, -1073741696
  %dev1.i = getelementptr inbounds %struct.urb, ptr %call76, i32 0, i32 8
  %42 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call2, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %call76, i32 0, i32 10
  %43 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %or91, ptr %pipe2.i, align 4
  %transfer_buffer3.i = getelementptr inbounds %struct.urb, ptr %call76, i32 0, i32 14
  %44 = ptrtoint ptr %transfer_buffer3.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call7.i, ptr %transfer_buffer3.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %call76, i32 0, i32 19
  %45 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 2048, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %call76, i32 0, i32 28
  %46 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @cport_in_callback, ptr %complete.i, align 4
  %context4.i = getelementptr inbounds %struct.urb, ptr %call76, i32 0, i32 27
  %47 = ptrtoint ptr %context4.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call5, ptr %context4.i, align 4
  %arrayidx94 = getelementptr %struct.gb_host_device, ptr %call5, i32 1, i32 0, i32 0, i32 7
  %48 = ptrtoint ptr %arrayidx94 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call7.i, ptr %arrayidx94, align 4
  %call76.1 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #11
  %tobool77.not.1 = icmp eq ptr %call76.1, null
  br i1 %tobool77.not.1, label %for.inc96.error_crit_edge, label %if.end79.1

for.inc96.error_crit_edge:                        ; preds = %for.inc96
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

if.end79.1:                                       ; preds = %for.inc96
  %arrayidx82.1 = getelementptr %struct.gb_host_device, ptr %call5, i32 1, i32 0, i32 0, i32 4
  %49 = ptrtoint ptr %arrayidx82.1 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call76.1, ptr %arrayidx82.1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %50 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.1 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %50, i32 noundef 3264, i32 noundef 2048) #14
  %tobool84.not.1 = icmp eq ptr %call7.i.1, null
  br i1 %tobool84.not.1, label %if.end79.1.error_crit_edge, label %for.inc96.1

if.end79.1.error_crit_edge:                       ; preds = %if.end79.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

for.inc96.1:                                      ; preds = %if.end79.1
  %51 = ptrtoint ptr %cport_in80 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %cport_in80, align 4
  %conv89.1 = zext i8 %52 to i32
  %53 = ptrtoint ptr %call2 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %call2, align 8
  %shl.i.1 = shl i32 %54, 8
  %shl1.i.1 = shl nuw nsw i32 %conv89.1, 15
  %or.i.1 = or i32 %shl1.i.1, %shl.i.1
  %or91.1 = or i32 %or.i.1, -1073741696
  %dev1.i.1 = getelementptr inbounds %struct.urb, ptr %call76.1, i32 0, i32 8
  %55 = ptrtoint ptr %dev1.i.1 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %call2, ptr %dev1.i.1, align 4
  %pipe2.i.1 = getelementptr inbounds %struct.urb, ptr %call76.1, i32 0, i32 10
  %56 = ptrtoint ptr %pipe2.i.1 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %or91.1, ptr %pipe2.i.1, align 4
  %transfer_buffer3.i.1 = getelementptr inbounds %struct.urb, ptr %call76.1, i32 0, i32 14
  %57 = ptrtoint ptr %transfer_buffer3.i.1 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %call7.i.1, ptr %transfer_buffer3.i.1, align 4
  %transfer_buffer_length.i.1 = getelementptr inbounds %struct.urb, ptr %call76.1, i32 0, i32 19
  %58 = ptrtoint ptr %transfer_buffer_length.i.1 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 2048, ptr %transfer_buffer_length.i.1, align 4
  %complete.i.1 = getelementptr inbounds %struct.urb, ptr %call76.1, i32 0, i32 28
  %59 = ptrtoint ptr %complete.i.1 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr @cport_in_callback, ptr %complete.i.1, align 4
  %context4.i.1 = getelementptr inbounds %struct.urb, ptr %call76.1, i32 0, i32 27
  %60 = ptrtoint ptr %context4.i.1 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %call5, ptr %context4.i.1, align 4
  %arrayidx94.1 = getelementptr %struct.gb_host_device, ptr %call5, i32 1, i32 0, i32 0, i32 7, i32 0, i32 1
  %61 = ptrtoint ptr %arrayidx94.1 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %call7.i.1, ptr %arrayidx94.1, align 4
  %call76.2 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #11
  %tobool77.not.2 = icmp eq ptr %call76.2, null
  br i1 %tobool77.not.2, label %for.inc96.1.error_crit_edge, label %if.end79.2

for.inc96.1.error_crit_edge:                      ; preds = %for.inc96.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

if.end79.2:                                       ; preds = %for.inc96.1
  %arrayidx82.2 = getelementptr %struct.gb_host_device, ptr %call5, i32 1, i32 0, i32 0, i32 5
  %62 = ptrtoint ptr %arrayidx82.2 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %call76.2, ptr %arrayidx82.2, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %63 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.2 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %63, i32 noundef 3264, i32 noundef 2048) #14
  %tobool84.not.2 = icmp eq ptr %call7.i.2, null
  br i1 %tobool84.not.2, label %if.end79.2.error_crit_edge, label %for.inc96.2

if.end79.2.error_crit_edge:                       ; preds = %if.end79.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

for.inc96.2:                                      ; preds = %if.end79.2
  %64 = ptrtoint ptr %cport_in80 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %cport_in80, align 4
  %conv89.2 = zext i8 %65 to i32
  %66 = ptrtoint ptr %call2 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %call2, align 8
  %shl.i.2 = shl i32 %67, 8
  %shl1.i.2 = shl nuw nsw i32 %conv89.2, 15
  %or.i.2 = or i32 %shl1.i.2, %shl.i.2
  %or91.2 = or i32 %or.i.2, -1073741696
  %dev1.i.2 = getelementptr inbounds %struct.urb, ptr %call76.2, i32 0, i32 8
  %68 = ptrtoint ptr %dev1.i.2 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %call2, ptr %dev1.i.2, align 4
  %pipe2.i.2 = getelementptr inbounds %struct.urb, ptr %call76.2, i32 0, i32 10
  %69 = ptrtoint ptr %pipe2.i.2 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %or91.2, ptr %pipe2.i.2, align 4
  %transfer_buffer3.i.2 = getelementptr inbounds %struct.urb, ptr %call76.2, i32 0, i32 14
  %70 = ptrtoint ptr %transfer_buffer3.i.2 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %call7.i.2, ptr %transfer_buffer3.i.2, align 4
  %transfer_buffer_length.i.2 = getelementptr inbounds %struct.urb, ptr %call76.2, i32 0, i32 19
  %71 = ptrtoint ptr %transfer_buffer_length.i.2 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 2048, ptr %transfer_buffer_length.i.2, align 4
  %complete.i.2 = getelementptr inbounds %struct.urb, ptr %call76.2, i32 0, i32 28
  %72 = ptrtoint ptr %complete.i.2 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr @cport_in_callback, ptr %complete.i.2, align 4
  %context4.i.2 = getelementptr inbounds %struct.urb, ptr %call76.2, i32 0, i32 27
  %73 = ptrtoint ptr %context4.i.2 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %call5, ptr %context4.i.2, align 4
  %arrayidx94.2 = getelementptr %struct.gb_host_device, ptr %call5, i32 1, i32 0, i32 0, i32 7, i32 0, i32 1, i32 1
  %74 = ptrtoint ptr %arrayidx94.2 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %call7.i.2, ptr %arrayidx94.2, align 4
  %call76.3 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #11
  %tobool77.not.3 = icmp eq ptr %call76.3, null
  br i1 %tobool77.not.3, label %for.inc96.2.error_crit_edge, label %if.end79.3

for.inc96.2.error_crit_edge:                      ; preds = %for.inc96.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

if.end79.3:                                       ; preds = %for.inc96.2
  %arrayidx82.3 = getelementptr %struct.gb_host_device, ptr %call5, i32 1, i32 0, i32 0, i32 6
  %75 = ptrtoint ptr %arrayidx82.3 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %call76.3, ptr %arrayidx82.3, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %76 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.3 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %76, i32 noundef 3264, i32 noundef 2048) #14
  %tobool84.not.3 = icmp eq ptr %call7.i.3, null
  br i1 %tobool84.not.3, label %if.end79.3.error_crit_edge, label %for.inc96.3

if.end79.3.error_crit_edge:                       ; preds = %if.end79.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

for.inc96.3:                                      ; preds = %if.end79.3
  %77 = ptrtoint ptr %cport_in80 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %cport_in80, align 4
  %conv89.3 = zext i8 %78 to i32
  %79 = ptrtoint ptr %call2 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %call2, align 8
  %shl.i.3 = shl i32 %80, 8
  %shl1.i.3 = shl nuw nsw i32 %conv89.3, 15
  %or.i.3 = or i32 %shl1.i.3, %shl.i.3
  %or91.3 = or i32 %or.i.3, -1073741696
  %dev1.i.3 = getelementptr inbounds %struct.urb, ptr %call76.3, i32 0, i32 8
  %81 = ptrtoint ptr %dev1.i.3 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %call2, ptr %dev1.i.3, align 4
  %pipe2.i.3 = getelementptr inbounds %struct.urb, ptr %call76.3, i32 0, i32 10
  %82 = ptrtoint ptr %pipe2.i.3 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %or91.3, ptr %pipe2.i.3, align 4
  %transfer_buffer3.i.3 = getelementptr inbounds %struct.urb, ptr %call76.3, i32 0, i32 14
  %83 = ptrtoint ptr %transfer_buffer3.i.3 to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %call7.i.3, ptr %transfer_buffer3.i.3, align 4
  %transfer_buffer_length.i.3 = getelementptr inbounds %struct.urb, ptr %call76.3, i32 0, i32 19
  %84 = ptrtoint ptr %transfer_buffer_length.i.3 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 2048, ptr %transfer_buffer_length.i.3, align 4
  %complete.i.3 = getelementptr inbounds %struct.urb, ptr %call76.3, i32 0, i32 28
  %85 = ptrtoint ptr %complete.i.3 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr @cport_in_callback, ptr %complete.i.3, align 4
  %context4.i.3 = getelementptr inbounds %struct.urb, ptr %call76.3, i32 0, i32 27
  %86 = ptrtoint ptr %context4.i.3 to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %call5, ptr %context4.i.3, align 4
  %arrayidx94.3 = getelementptr %struct.gb_host_device, ptr %call5, i32 1, i32 0, i32 0, i32 7, i32 0, i32 2
  %87 = ptrtoint ptr %arrayidx94.3 to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %call7.i.3, ptr %arrayidx94.3, align 4
  %arpc_endpoint_in114 = getelementptr inbounds %struct.gb_host_device, ptr %call5, i32 17, i32 0, i32 10, i32 2
  %call105 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #11
  %tobool106.not = icmp eq ptr %call105, null
  br i1 %tobool106.not, label %for.inc96.3.error_crit_edge, label %if.end108

for.inc96.3.error_crit_edge:                      ; preds = %for.inc96.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

if.end108:                                        ; preds = %for.inc96.3
  %arrayidx109 = getelementptr %struct.gb_host_device, ptr %call5, i32 17, i32 0, i32 10, i32 3
  %88 = ptrtoint ptr %arrayidx109 to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %call105, ptr %arrayidx109, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %89 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i290 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %89, i32 noundef 3264, i32 noundef 128) #14
  %tobool111.not = icmp eq ptr %call7.i290, null
  br i1 %tobool111.not, label %if.end108.error_crit_edge, label %for.inc124

if.end108.error_crit_edge:                        ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

for.inc124:                                       ; preds = %if.end108
  %90 = ptrtoint ptr %arpc_endpoint_in114 to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %arpc_endpoint_in114, align 4
  %conv115 = zext i8 %91 to i32
  %92 = ptrtoint ptr %call2 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %call2, align 8
  %shl.i295 = shl i32 %93, 8
  %shl1.i296 = shl nuw nsw i32 %conv115, 15
  %or.i297 = or i32 %shl1.i296, %shl.i295
  %or118 = or i32 %or.i297, -1073741696
  %dev1.i298 = getelementptr inbounds %struct.urb, ptr %call105, i32 0, i32 8
  %94 = ptrtoint ptr %dev1.i298 to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %call2, ptr %dev1.i298, align 4
  %pipe2.i299 = getelementptr inbounds %struct.urb, ptr %call105, i32 0, i32 10
  %95 = ptrtoint ptr %pipe2.i299 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %or118, ptr %pipe2.i299, align 4
  %transfer_buffer3.i300 = getelementptr inbounds %struct.urb, ptr %call105, i32 0, i32 14
  %96 = ptrtoint ptr %transfer_buffer3.i300 to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %call7.i290, ptr %transfer_buffer3.i300, align 4
  %transfer_buffer_length.i301 = getelementptr inbounds %struct.urb, ptr %call105, i32 0, i32 19
  %97 = ptrtoint ptr %transfer_buffer_length.i301 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 128, ptr %transfer_buffer_length.i301, align 4
  %complete.i302 = getelementptr inbounds %struct.urb, ptr %call105, i32 0, i32 28
  %98 = ptrtoint ptr %complete.i302 to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr @arpc_in_callback, ptr %complete.i302, align 4
  %context4.i303 = getelementptr inbounds %struct.urb, ptr %call105, i32 0, i32 27
  %99 = ptrtoint ptr %context4.i303 to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %hd_priv.i, ptr %context4.i303, align 4
  %arrayidx119 = getelementptr %struct.gb_host_device, ptr %call5, i32 17, i32 0, i32 10, i32 4
  %100 = ptrtoint ptr %arrayidx119 to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %call7.i290, ptr %arrayidx119, align 4
  %call105.1 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #11
  %tobool106.not.1 = icmp eq ptr %call105.1, null
  br i1 %tobool106.not.1, label %for.inc124.error_crit_edge, label %if.end108.1

for.inc124.error_crit_edge:                       ; preds = %for.inc124
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

if.end108.1:                                      ; preds = %for.inc124
  %arrayidx109.1 = getelementptr %struct.gb_host_device, ptr %call5, i32 17, i32 0, i32 10, i32 3, i32 1
  %101 = ptrtoint ptr %arrayidx109.1 to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %call105.1, ptr %arrayidx109.1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %102 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i290.1 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %102, i32 noundef 3264, i32 noundef 128) #14
  %tobool111.not.1 = icmp eq ptr %call7.i290.1, null
  br i1 %tobool111.not.1, label %if.end108.1.error_crit_edge, label %for.inc124.1

if.end108.1.error_crit_edge:                      ; preds = %if.end108.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

for.inc124.1:                                     ; preds = %if.end108.1
  %103 = ptrtoint ptr %arpc_endpoint_in114 to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %arpc_endpoint_in114, align 4
  %conv115.1 = zext i8 %104 to i32
  %105 = ptrtoint ptr %call2 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %call2, align 8
  %shl.i295.1 = shl i32 %106, 8
  %shl1.i296.1 = shl nuw nsw i32 %conv115.1, 15
  %or.i297.1 = or i32 %shl1.i296.1, %shl.i295.1
  %or118.1 = or i32 %or.i297.1, -1073741696
  %dev1.i298.1 = getelementptr inbounds %struct.urb, ptr %call105.1, i32 0, i32 8
  %107 = ptrtoint ptr %dev1.i298.1 to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %call2, ptr %dev1.i298.1, align 4
  %pipe2.i299.1 = getelementptr inbounds %struct.urb, ptr %call105.1, i32 0, i32 10
  %108 = ptrtoint ptr %pipe2.i299.1 to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %or118.1, ptr %pipe2.i299.1, align 4
  %transfer_buffer3.i300.1 = getelementptr inbounds %struct.urb, ptr %call105.1, i32 0, i32 14
  %109 = ptrtoint ptr %transfer_buffer3.i300.1 to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr %call7.i290.1, ptr %transfer_buffer3.i300.1, align 4
  %transfer_buffer_length.i301.1 = getelementptr inbounds %struct.urb, ptr %call105.1, i32 0, i32 19
  %110 = ptrtoint ptr %transfer_buffer_length.i301.1 to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 128, ptr %transfer_buffer_length.i301.1, align 4
  %complete.i302.1 = getelementptr inbounds %struct.urb, ptr %call105.1, i32 0, i32 28
  %111 = ptrtoint ptr %complete.i302.1 to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr @arpc_in_callback, ptr %complete.i302.1, align 4
  %context4.i303.1 = getelementptr inbounds %struct.urb, ptr %call105.1, i32 0, i32 27
  %112 = ptrtoint ptr %context4.i303.1 to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr %hd_priv.i, ptr %context4.i303.1, align 4
  %arrayidx119.1 = getelementptr %struct.gb_host_device, ptr %call5, i32 17, i32 0, i32 10, i32 5
  %113 = ptrtoint ptr %arrayidx119.1 to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr %call7.i290.1, ptr %arrayidx119.1, align 4
  %call132 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #11
  %tobool133.not = icmp eq ptr %call132, null
  br i1 %tobool133.not, label %for.inc124.1.error_crit_edge, label %for.inc141

for.inc124.1.error_crit_edge:                     ; preds = %for.inc124.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

for.inc141:                                       ; preds = %for.inc124.1
  %arrayidx136 = getelementptr %struct.gb_host_device, ptr %call5, i32 1, i32 0, i32 0, i32 7, i32 0, i32 3, i32 1
  %114 = ptrtoint ptr %arrayidx136 to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr %call132, ptr %arrayidx136, align 4
  %arrayidx137 = getelementptr %struct.gb_host_device, ptr %call5, i32 1, i32 0, i32 0, i32 7, i32 1, i32 1
  %115 = ptrtoint ptr %arrayidx137 to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 0, ptr %arrayidx137, align 1
  %call132.1 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #11
  %tobool133.not.1 = icmp eq ptr %call132.1, null
  br i1 %tobool133.not.1, label %for.inc141.error_crit_edge, label %for.inc141.1

for.inc141.error_crit_edge:                       ; preds = %for.inc141
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

for.inc141.1:                                     ; preds = %for.inc141
  %arrayidx136.1 = getelementptr %struct.gb_host_device, ptr %call5, i32 1, i32 0, i32 0, i32 7, i32 0, i32 3, i32 1, i32 1
  %116 = ptrtoint ptr %arrayidx136.1 to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr %call132.1, ptr %arrayidx136.1, align 4
  %arrayidx137.1 = getelementptr %struct.es2_ap_dev, ptr %hd_priv.i, i32 0, i32 6, i32 1
  %117 = ptrtoint ptr %arrayidx137.1 to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 0, ptr %arrayidx137.1, align 1
  %call132.2 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #11
  %tobool133.not.2 = icmp eq ptr %call132.2, null
  br i1 %tobool133.not.2, label %for.inc141.1.error_crit_edge, label %for.inc141.2

for.inc141.1.error_crit_edge:                     ; preds = %for.inc141.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

for.inc141.2:                                     ; preds = %for.inc141.1
  %arrayidx136.2 = getelementptr %struct.gb_host_device, ptr %call5, i32 1, i32 0, i32 0, i32 7, i32 0, i32 3, i32 2
  %118 = ptrtoint ptr %arrayidx136.2 to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr %call132.2, ptr %arrayidx136.2, align 4
  %arrayidx137.2 = getelementptr %struct.es2_ap_dev, ptr %hd_priv.i, i32 0, i32 6, i32 2
  %119 = ptrtoint ptr %arrayidx137.2 to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 0, ptr %arrayidx137.2, align 1
  %call132.3 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #11
  %tobool133.not.3 = icmp eq ptr %call132.3, null
  br i1 %tobool133.not.3, label %for.inc141.2.error_crit_edge, label %for.inc141.3

for.inc141.2.error_crit_edge:                     ; preds = %for.inc141.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

for.inc141.3:                                     ; preds = %for.inc141.2
  %arrayidx136.3 = getelementptr %struct.gb_host_device, ptr %call5, i32 1, i32 0, i32 0, i32 7, i32 0, i32 3, i32 3
  %120 = ptrtoint ptr %arrayidx136.3 to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr %call132.3, ptr %arrayidx136.3, align 4
  %arrayidx137.3 = getelementptr %struct.es2_ap_dev, ptr %hd_priv.i, i32 0, i32 6, i32 3
  %121 = ptrtoint ptr %arrayidx137.3 to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 0, ptr %arrayidx137.3, align 1
  %call132.4 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #11
  %tobool133.not.4 = icmp eq ptr %call132.4, null
  br i1 %tobool133.not.4, label %for.inc141.3.error_crit_edge, label %for.inc141.4

for.inc141.3.error_crit_edge:                     ; preds = %for.inc141.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

for.inc141.4:                                     ; preds = %for.inc141.3
  %arrayidx136.4 = getelementptr %struct.gb_host_device, ptr %call5, i32 1, i32 0, i32 0, i32 7, i32 0, i32 3, i32 6
  %122 = ptrtoint ptr %arrayidx136.4 to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr %call132.4, ptr %arrayidx136.4, align 4
  %arrayidx137.4 = getelementptr %struct.gb_host_device, ptr %call5, i32 1, i32 0, i32 0, i32 7, i32 1, i32 2
  %123 = ptrtoint ptr %arrayidx137.4 to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 0, ptr %arrayidx137.4, align 1
  %call132.5 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #11
  %tobool133.not.5 = icmp eq ptr %call132.5, null
  br i1 %tobool133.not.5, label %for.inc141.4.error_crit_edge, label %for.inc141.5

for.inc141.4.error_crit_edge:                     ; preds = %for.inc141.4
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

for.inc141.5:                                     ; preds = %for.inc141.4
  %arrayidx136.5 = getelementptr %struct.gb_host_device, ptr %call5, i32 1, i32 0, i32 0, i32 7, i32 0, i32 3, i32 7
  %124 = ptrtoint ptr %arrayidx136.5 to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr %call132.5, ptr %arrayidx136.5, align 4
  %arrayidx137.5 = getelementptr %struct.es2_ap_dev, ptr %hd_priv.i, i32 0, i32 6, i32 5
  %125 = ptrtoint ptr %arrayidx137.5 to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 0, ptr %arrayidx137.5, align 1
  %call132.6 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #11
  %tobool133.not.6 = icmp eq ptr %call132.6, null
  br i1 %tobool133.not.6, label %for.inc141.5.error_crit_edge, label %for.inc141.6

for.inc141.5.error_crit_edge:                     ; preds = %for.inc141.5
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

for.inc141.6:                                     ; preds = %for.inc141.5
  %arrayidx136.6 = getelementptr %struct.gb_host_device, ptr %call5, i32 1, i32 0, i32 0, i32 7, i32 1
  %126 = ptrtoint ptr %arrayidx136.6 to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr %call132.6, ptr %arrayidx136.6, align 4
  %arrayidx137.6 = getelementptr %struct.es2_ap_dev, ptr %hd_priv.i, i32 0, i32 6, i32 6
  %127 = ptrtoint ptr %arrayidx137.6 to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 0, ptr %arrayidx137.6, align 1
  %call132.7 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #11
  %tobool133.not.7 = icmp eq ptr %call132.7, null
  br i1 %tobool133.not.7, label %for.inc141.6.error_crit_edge, label %for.inc141.7

for.inc141.6.error_crit_edge:                     ; preds = %for.inc141.6
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

for.inc141.7:                                     ; preds = %for.inc141.6
  %arrayidx136.7 = getelementptr %struct.gb_host_device, ptr %call5, i32 1, i32 0, i32 0, i32 7, i32 1, i32 0, i32 1
  %128 = ptrtoint ptr %arrayidx136.7 to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr %call132.7, ptr %arrayidx136.7, align 4
  %arrayidx137.7 = getelementptr %struct.es2_ap_dev, ptr %hd_priv.i, i32 0, i32 6, i32 7
  %129 = ptrtoint ptr %arrayidx137.7 to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 0, ptr %arrayidx137.7, align 1
  %call144 = tail call ptr @gb_debugfs_get() #11
  %call145 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.21, i16 noundef zeroext 420, ptr noundef %call144, ptr noundef %hd_priv.i, ptr noundef nonnull @apb_log_enable_fops) #11
  %apb_log_enable_dentry = getelementptr inbounds %struct.gb_host_device, ptr %call5, i32 1, i32 0, i32 6
  %130 = ptrtoint ptr %apb_log_enable_dentry to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr %call145, ptr %apb_log_enable_dentry, align 4
  %arpcs = getelementptr inbounds %struct.gb_host_device, ptr %call5, i32 17, i32 0, i32 11, i32 3
  %131 = ptrtoint ptr %arpcs to i32
  call void @__asan_store4_noabort(i32 %131)
  store volatile ptr %arpcs, ptr %arpcs, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %arpcs, i32 0, i32 1
  %132 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr %arpcs, ptr %prev.i, align 4
  %arpc_lock = getelementptr inbounds %struct.gb_host_device, ptr %call5, i32 17, i32 0, i32 10, i32 5, i32 1, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %arpc_lock, ptr noundef nonnull @.str.23, ptr noundef nonnull @ap_probe.__key.22, i16 noundef signext 3) #11
  %call150 = tail call fastcc i32 @es2_arpc_in_enable(ptr noundef %hd_priv.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call150)
  %tobool151.not = icmp eq i32 %call150, 0
  br i1 %tobool151.not, label %if.end153, label %for.inc141.7.error_crit_edge

for.inc141.7.error_crit_edge:                     ; preds = %for.inc141.7
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

if.end153:                                        ; preds = %for.inc141.7
  %call154 = tail call i32 @gb_hd_add(ptr noundef %call5) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call154)
  %tobool155.not = icmp eq i32 %call154, 0
  br i1 %tobool155.not, label %if.end157, label %if.end153.err_disable_arpc_in_crit_edge

if.end153.err_disable_arpc_in_crit_edge:          ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_disable_arpc_in

if.end157:                                        ; preds = %if.end153
  %call159 = tail call fastcc i32 @es2_cport_in_enable(ptr noundef %hd_priv.i, ptr noundef %cport_in80)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call159)
  %tobool160.not = icmp eq i32 %call159, 0
  br i1 %tobool160.not, label %if.end157.cleanup163_crit_edge, label %err_hd_del

if.end157.cleanup163_crit_edge:                   ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup163

err_hd_del:                                       ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @gb_hd_del(ptr noundef %call5) #11
  br label %err_disable_arpc_in

err_disable_arpc_in:                              ; preds = %err_hd_del, %if.end153.err_disable_arpc_in_crit_edge
  %retval1.6 = phi i32 [ %call154, %if.end153.err_disable_arpc_in_crit_edge ], [ %call159, %err_hd_del ]
  tail call fastcc void @es2_arpc_in_disable(ptr noundef %hd_priv.i)
  br label %error

error:                                            ; preds = %err_disable_arpc_in, %for.inc141.7.error_crit_edge, %for.inc141.6.error_crit_edge, %for.inc141.5.error_crit_edge, %for.inc141.4.error_crit_edge, %for.inc141.3.error_crit_edge, %for.inc141.2.error_crit_edge, %for.inc141.1.error_crit_edge, %for.inc141.error_crit_edge, %for.inc124.1.error_crit_edge, %if.end108.1.error_crit_edge, %for.inc124.error_crit_edge, %if.end108.error_crit_edge, %for.inc96.3.error_crit_edge, %if.end79.3.error_crit_edge, %for.inc96.2.error_crit_edge, %if.end79.2.error_crit_edge, %for.inc96.1.error_crit_edge, %if.end79.1.error_crit_edge, %for.inc96.error_crit_edge, %if.end79.error_crit_edge, %do.end69, %for.cond72.preheader.error_crit_edge, %if.end18.error_crit_edge, %if.end9.error_crit_edge
  %retval1.7 = phi i32 [ %call16, %if.end9.error_crit_edge ], [ %call19, %if.end18.error_crit_edge ], [ %call150, %for.inc141.7.error_crit_edge ], [ %retval1.6, %err_disable_arpc_in ], [ -19, %do.end69 ], [ -12, %for.inc141.6.error_crit_edge ], [ -12, %for.inc141.5.error_crit_edge ], [ -12, %for.inc141.4.error_crit_edge ], [ -12, %for.inc141.3.error_crit_edge ], [ -12, %for.inc141.2.error_crit_edge ], [ -12, %for.inc141.1.error_crit_edge ], [ -12, %for.inc141.error_crit_edge ], [ -12, %for.inc124.1.error_crit_edge ], [ -12, %if.end108.1.error_crit_edge ], [ -12, %for.inc124.error_crit_edge ], [ -12, %for.inc96.3.error_crit_edge ], [ -12, %if.end108.error_crit_edge ], [ -12, %if.end79.3.error_crit_edge ], [ -12, %for.inc96.2.error_crit_edge ], [ -12, %if.end79.2.error_crit_edge ], [ -12, %for.inc96.1.error_crit_edge ], [ -12, %if.end79.1.error_crit_edge ], [ -12, %for.inc96.error_crit_edge ], [ -12, %for.cond72.preheader.error_crit_edge ], [ -12, %if.end79.error_crit_edge ]
  tail call fastcc void @es2_destroy(ptr noundef %hd_priv.i)
  br label %cleanup163

cleanup163:                                       ; preds = %error, %if.end157.cleanup163_crit_edge, %if.then7, %if.then
  %retval.0 = phi i32 [ %retval.0.i306, %if.then ], [ %8, %if.then7 ], [ %retval1.7, %error ], [ 0, %if.end157.cleanup163_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ap_disconnect(ptr nocapture noundef readonly %interface) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %hd = getelementptr inbounds %struct.es2_ap_dev, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %hd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hd, align 4
  tail call void @gb_hd_del(ptr noundef %3) #11
  %arrayidx.i = getelementptr %struct.es2_ap_dev, ptr %1, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 4
  tail call void @usb_kill_urb(ptr noundef %5) #11
  %arrayidx.1.i = getelementptr %struct.es2_ap_dev, ptr %1, i32 0, i32 3, i32 1, i32 1
  %6 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.1.i, align 4
  tail call void @usb_kill_urb(ptr noundef %7) #11
  %arrayidx.2.i = getelementptr %struct.es2_ap_dev, ptr %1, i32 0, i32 3, i32 1, i32 2
  %8 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.2.i, align 4
  tail call void @usb_kill_urb(ptr noundef %9) #11
  %arrayidx.3.i = getelementptr %struct.es2_ap_dev, ptr %1, i32 0, i32 3, i32 1, i32 3
  %10 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.3.i, align 4
  tail call void @usb_kill_urb(ptr noundef %11) #11
  %arrayidx.i5 = getelementptr %struct.es2_ap_dev, ptr %1, i32 0, i32 15, i32 0
  %12 = ptrtoint ptr %arrayidx.i5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i5, align 4
  tail call void @usb_kill_urb(ptr noundef %13) #11
  %arrayidx.1.i6 = getelementptr %struct.es2_ap_dev, ptr %1, i32 0, i32 15, i32 1
  %14 = ptrtoint ptr %arrayidx.1.i6 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.1.i6, align 4
  tail call void @usb_kill_urb(ptr noundef %15) #11
  tail call fastcc void @es2_destroy(ptr noundef %1)
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_get_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_put_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gb_hd_create(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gb_hd_cport_reserve(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_urb(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cport_in_callback(ptr noundef %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %dev1 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  %dev2 = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 15
  %status3.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %4 = ptrtoint ptr %status3.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %status3.i, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %5, label %check_urb_status.exit.thread59 [
    i32 0, label %if.end10
    i32 -75, label %check_urb_status.exit.thread61
    i32 -108, label %entry.cleanup_crit_edge
    i32 -71, label %entry.exit_crit_edge
    i32 -2, label %entry.cleanup_crit_edge62
    i32 -104, label %entry.do.end_crit_edge
    i32 -84, label %entry.do.end_crit_edge63
  ]

entry.do.end_crit_edge63:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

entry.cleanup_crit_edge62:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

entry.exit_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

check_urb_status.exit.thread61:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %actual_length.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %7 = ptrtoint ptr %actual_length.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %actual_length.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.61, i32 noundef %8) #15
  br label %do.end

check_urb_status.exit.thread59:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.61, i32 noundef %5) #15
  br label %exit

do.end:                                           ; preds = %check_urb_status.exit.thread61, %entry.do.end_crit_edge, %entry.do.end_crit_edge63
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.74, i32 noundef %5) #15
  br label %cleanup

if.end10:                                         ; preds = %entry
  %actual_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %9 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %actual_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %10)
  %cmp11 = icmp ult i32 %10, 8
  br i1 %cmp11, label %do.end15, label %if.end16

do.end15:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.77) #15
  br label %exit

if.end16:                                         ; preds = %if.end10
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %11 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %transfer_buffer, align 4
  %pad.i = getelementptr inbounds %struct.gb_operation_msg_hdr, ptr %12, i32 0, i32 4
  %13 = ptrtoint ptr %pad.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %pad.i, align 1
  store i8 0, ptr %pad.i, align 1
  %conv.i57 = zext i8 %14 to i32
  %num_cports.i = getelementptr inbounds %struct.gb_host_device, ptr %1, i32 0, i32 6
  %15 = ptrtoint ptr %num_cports.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %num_cports.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %conv.i57)
  %cmp3.i = icmp ugt i32 %16, %conv.i57
  br i1 %cmp3.i, label %if.then19, label %do.end24

if.then19:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i = zext i8 %14 to i16
  %17 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %transfer_buffer, align 4
  %19 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %actual_length, align 4
  tail call void @greybus_data_rcvd(ptr noundef %1, i16 noundef zeroext %conv.i, ptr noundef %18, i32 noundef %20) #11
  br label %exit

do.end24:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.80, i32 noundef %conv.i57) #15
  br label %exit

exit:                                             ; preds = %do.end24, %if.then19, %do.end15, %check_urb_status.exit.thread59, %entry.exit_crit_edge
  %call26 = tail call i32 @usb_submit_urb(ptr noundef %urb, i32 noundef 2592) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %exit.cleanup_crit_edge, label %do.end31

exit.cleanup_crit_edge:                           ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end31:                                         ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.83, i32 noundef %call26) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end31, %exit.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge, %entry.cleanup_crit_edge62
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @arpc_in_callback(ptr noundef %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %dev1 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  %dev2 = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 15
  %status3.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %4 = ptrtoint ptr %status3.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %status3.i, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.102)
  switch i32 %5, label %check_urb_status.exit.thread77 [
    i32 0, label %if.end10
    i32 -75, label %check_urb_status.exit.thread79
    i32 -108, label %entry.cleanup_crit_edge
    i32 -71, label %entry.exit_crit_edge
    i32 -2, label %entry.cleanup_crit_edge88
    i32 -104, label %entry.do.end_crit_edge
    i32 -84, label %entry.do.end_crit_edge89
  ]

entry.do.end_crit_edge89:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

entry.cleanup_crit_edge88:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

entry.exit_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

check_urb_status.exit.thread79:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %actual_length.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %7 = ptrtoint ptr %actual_length.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %actual_length.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.61, i32 noundef %8) #15
  br label %do.end

check_urb_status.exit.thread77:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.61, i32 noundef %5) #15
  br label %exit

do.end:                                           ; preds = %check_urb_status.exit.thread79, %entry.do.end_crit_edge, %entry.do.end_crit_edge89
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.85, i32 noundef %5) #15
  br label %cleanup

if.end10:                                         ; preds = %entry
  %actual_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %9 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %actual_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %10)
  %cmp11 = icmp ult i32 %10, 3
  br i1 %cmp11, label %do.end15, label %if.end16

do.end15:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.88) #15
  br label %exit

if.end16:                                         ; preds = %if.end10
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %11 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %transfer_buffer, align 4
  %arpc_lock = getelementptr inbounds %struct.es2_ap_dev, ptr %1, i32 0, i32 18
  %call21 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %arpc_lock) #11
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_loadN_noabort(i32 %13, i32 2)
  %14 = load i16, ptr %12, align 1
  %arpcs.i = getelementptr inbounds %struct.es2_ap_dev, ptr %1, i32 0, i32 19
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end16
  %rpc.0.in.i = phi ptr [ %arpcs.i, %if.end16 ], [ %rpc.0.i, %for.body.i.for.cond.i_crit_edge ]
  %15 = ptrtoint ptr %rpc.0.in.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %rpc.0.i = load ptr, ptr %rpc.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %rpc.0.i, %arpcs.i
  br i1 %cmp.not.i, label %for.cond.i.do.end31_crit_edge, label %for.body.i

for.cond.i.do.end31_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end31

for.body.i:                                       ; preds = %for.cond.i
  %req.i = getelementptr inbounds %struct.arpc, ptr %rpc.0.i, i32 0, i32 1
  %16 = ptrtoint ptr %req.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %req.i, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_loadN_noabort(i32 %18, i32 2)
  %19 = load i16, ptr %17, align 1
  %cmp4.i = icmp eq i16 %19, %14
  br i1 %cmp4.i, label %arpc_find.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i

arpc_find.exit:                                   ; preds = %for.body.i
  %tobool27.not = icmp eq ptr %rpc.0.i, null
  br i1 %tobool27.not, label %arpc_find.exit.do.end31_crit_edge, label %if.end35

arpc_find.exit.do.end31_crit_edge:                ; preds = %arpc_find.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end31

do.end31:                                         ; preds = %arpc_find.exit.do.end31_crit_edge, %for.cond.i.do.end31_crit_edge
  %20 = tail call i16 @llvm.bswap.i16(i16 %14)
  %conv33 = zext i16 %20 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.91, i32 noundef %conv33) #15
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %arpc_lock, i32 noundef %call21) #11
  br label %exit

if.end35:                                         ; preds = %arpc_find.exit
  %active.i = getelementptr inbounds %struct.arpc, ptr %rpc.0.i, i32 0, i32 4
  %21 = ptrtoint ptr %active.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %active.i, align 4, !range !223
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.not.i = icmp eq i8 %22, 0
  br i1 %tobool.not.i, label %if.end35.arpc_del.exit_crit_edge, label %if.then.i

if.end35.arpc_del.exit_crit_edge:                 ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #13
  br label %arpc_del.exit

if.then.i:                                        ; preds = %if.end35
  %23 = ptrtoint ptr %active.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %active.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %rpc.0.i) #11
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.i.list_del.exit.i_crit_edge

if.then.i.list_del.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %rpc.0.i, i32 0, i32 1
  %24 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %prev.i.i.i, align 4
  %26 = ptrtoint ptr %rpc.0.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %rpc.0.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %25, ptr %prev1.i.i.i.i, align 4
  %29 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %27, ptr %25, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.then.i.list_del.exit.i_crit_edge
  %30 = ptrtoint ptr %rpc.0.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr inttoptr (i32 256 to ptr), ptr %rpc.0.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %rpc.0.i, i32 0, i32 1
  %31 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  br label %arpc_del.exit

arpc_del.exit:                                    ; preds = %list_del.exit.i, %if.end35.arpc_del.exit_crit_edge
  %resp36 = getelementptr inbounds %struct.arpc, ptr %rpc.0.i, i32 0, i32 2
  %32 = ptrtoint ptr %resp36 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %resp36, align 4
  %34 = call ptr @memcpy(ptr %33, ptr %12, i32 3)
  %response_received = getelementptr inbounds %struct.arpc, ptr %rpc.0.i, i32 0, i32 3
  tail call void @complete(ptr noundef %response_received) #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %arpc_lock, i32 noundef %call21) #11
  br label %exit

exit:                                             ; preds = %arpc_del.exit, %do.end31, %do.end15, %check_urb_status.exit.thread77, %entry.exit_crit_edge
  %call38 = tail call i32 @usb_submit_urb(ptr noundef %urb, i32 noundef 2592) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %exit.cleanup_crit_edge, label %do.end43

exit.cleanup_crit_edge:                           ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end43:                                         ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.94, i32 noundef %call38) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end43, %exit.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge, %entry.cleanup_crit_edge88
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gb_debugfs_get() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @es2_arpc_in_enable(ptr nocapture noundef readonly %es2) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.es2_ap_dev, ptr %es2, i32 0, i32 15, i32 0
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %call = tail call i32 @usb_submit_urb(ptr noundef %1, i32 noundef 3264) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.inc, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %2 = ptrtoint ptr %es2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %es2, align 4
  %dev = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.98, i32 noundef %call) #15
  br label %cleanup

for.inc:                                          ; preds = %entry
  %arrayidx.1 = getelementptr %struct.es2_ap_dev, ptr %es2, i32 0, i32 15, i32 1
  %4 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.1, align 4
  %call.1 = tail call i32 @usb_submit_urb(ptr noundef %5, i32 noundef 3264) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1)
  %tobool.not.1 = icmp eq i32 %call.1, 0
  br i1 %tobool.not.1, label %for.inc.cleanup_crit_edge, label %for.body3

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body3:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  %6 = ptrtoint ptr %es2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %es2, align 4
  %dev27 = getelementptr inbounds %struct.usb_device, ptr %7, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev27, ptr noundef nonnull @.str.98, i32 noundef %call.1) #15
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  tail call void @usb_kill_urb(ptr noundef %9) #11
  br label %cleanup

cleanup:                                          ; preds = %for.body3, %for.inc.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call.1, %for.body3 ], [ %call, %do.end ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gb_hd_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @es2_cport_in_enable(ptr nocapture noundef readonly %es2, ptr nocapture noundef readonly %cport_in) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.es2_cport_in, ptr %cport_in, i32 0, i32 1, i32 0
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %call = tail call i32 @usb_submit_urb(ptr noundef %1, i32 noundef 3264) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.inc, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %2 = ptrtoint ptr %es2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %es2, align 4
  %dev = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.100, i32 noundef %call) #15
  br label %cleanup

for.body4.preheader:                              ; preds = %for.inc.2.for.body4.preheader_crit_edge, %for.inc.1.for.body4.preheader_crit_edge, %for.inc.for.body4.preheader_crit_edge
  %i.024.lcssa.ph = phi i32 [ 2, %for.inc.2.for.body4.preheader_crit_edge ], [ 1, %for.inc.1.for.body4.preheader_crit_edge ], [ 0, %for.inc.for.body4.preheader_crit_edge ]
  %call.lcssa.ph = phi i32 [ %call.3, %for.inc.2.for.body4.preheader_crit_edge ], [ %call.2, %for.inc.1.for.body4.preheader_crit_edge ], [ %call.1, %for.inc.for.body4.preheader_crit_edge ]
  %4 = ptrtoint ptr %es2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %es2, align 4
  %dev33 = getelementptr inbounds %struct.usb_device, ptr %5, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev33, ptr noundef nonnull @.str.100, i32 noundef %call.lcssa.ph) #15
  %arrayidx6 = getelementptr %struct.es2_cport_in, ptr %cport_in, i32 0, i32 1, i32 %i.024.lcssa.ph
  %6 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx6, align 4
  tail call void @usb_kill_urb(ptr noundef %7) #11
  br i1 %tobool.not.1, label %for.body4.1, label %for.body4.preheader.cleanup_crit_edge

for.body4.preheader.cleanup_crit_edge:            ; preds = %for.body4.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.inc:                                          ; preds = %entry
  %arrayidx.1 = getelementptr %struct.es2_cport_in, ptr %cport_in, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.1, align 4
  %call.1 = tail call i32 @usb_submit_urb(ptr noundef %9, i32 noundef 3264) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1)
  %tobool.not.1 = icmp eq i32 %call.1, 0
  br i1 %tobool.not.1, label %for.inc.1, label %for.inc.for.body4.preheader_crit_edge

for.inc.for.body4.preheader_crit_edge:            ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body4.preheader

for.inc.1:                                        ; preds = %for.inc
  %arrayidx.2 = getelementptr %struct.es2_cport_in, ptr %cport_in, i32 0, i32 1, i32 2
  %10 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.2, align 4
  %call.2 = tail call i32 @usb_submit_urb(ptr noundef %11, i32 noundef 3264) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2)
  %tobool.not.2 = icmp eq i32 %call.2, 0
  br i1 %tobool.not.2, label %for.inc.2, label %for.inc.1.for.body4.preheader_crit_edge

for.inc.1.for.body4.preheader_crit_edge:          ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body4.preheader

for.inc.2:                                        ; preds = %for.inc.1
  %arrayidx.3 = getelementptr %struct.es2_cport_in, ptr %cport_in, i32 0, i32 1, i32 3
  %12 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.3, align 4
  %call.3 = tail call i32 @usb_submit_urb(ptr noundef %13, i32 noundef 3264) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.3)
  %tobool.not.3 = icmp eq i32 %call.3, 0
  br i1 %tobool.not.3, label %for.inc.2.cleanup_crit_edge, label %for.inc.2.for.body4.preheader_crit_edge

for.inc.2.for.body4.preheader_crit_edge:          ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body4.preheader

for.inc.2.cleanup_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body4.1:                                      ; preds = %for.body4.preheader
  %i.1 = add nsw i32 %i.024.lcssa.ph, -1
  %arrayidx6.1 = getelementptr %struct.es2_cport_in, ptr %cport_in, i32 0, i32 1, i32 %i.1
  %14 = ptrtoint ptr %arrayidx6.1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx6.1, align 4
  tail call void @usb_kill_urb(ptr noundef %15) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.1)
  %cmp3.not.1 = icmp eq i32 %i.1, 0
  br i1 %cmp3.not.1, label %for.body4.1.cleanup_crit_edge, label %for.body4.2

for.body4.1.cleanup_crit_edge:                    ; preds = %for.body4.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body4.2:                                      ; preds = %for.body4.1
  call void @__sanitizer_cov_trace_pc() #13
  %i.1.1 = add nsw i32 %i.024.lcssa.ph, -2
  %arrayidx6.2 = getelementptr %struct.es2_cport_in, ptr %cport_in, i32 0, i32 1, i32 %i.1.1
  %16 = ptrtoint ptr %arrayidx6.2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx6.2, align 4
  tail call void @usb_kill_urb(ptr noundef %17) #11
  br label %cleanup

cleanup:                                          ; preds = %for.body4.2, %for.body4.1.cleanup_crit_edge, %for.inc.2.cleanup_crit_edge, %for.body4.preheader.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ 0, %for.inc.2.cleanup_crit_edge ], [ %call.lcssa.ph, %for.body4.2 ], [ %call.lcssa.ph, %for.body4.1.cleanup_crit_edge ], [ %call.lcssa.ph, %for.body4.preheader.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gb_hd_del(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @es2_arpc_in_disable(ptr nocapture noundef readonly %es2) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.es2_ap_dev, ptr %es2, i32 0, i32 15, i32 0
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  tail call void @usb_kill_urb(ptr noundef %1) #11
  %arrayidx.1 = getelementptr %struct.es2_ap_dev, ptr %es2, i32 0, i32 15, i32 1
  %2 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.1, align 4
  tail call void @usb_kill_urb(ptr noundef %3) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @es2_destroy(ptr nocapture noundef %es2) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %apb_log_enable_dentry = getelementptr inbounds %struct.es2_ap_dev, ptr %es2, i32 0, i32 12
  %0 = ptrtoint ptr %apb_log_enable_dentry to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %apb_log_enable_dentry, align 4
  tail call void @debugfs_remove(ptr noundef %1) #11
  %apb_log_task.i = getelementptr inbounds %struct.es2_ap_dev, ptr %es2, i32 0, i32 10
  %2 = ptrtoint ptr %apb_log_task.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %apb_log_task.i, align 4
  %tobool.not.i.i = icmp eq ptr %3, null
  %cmp.i.i = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i = or i1 %tobool.not.i.i, %cmp.i.i
  br i1 %spec.select.i.i, label %entry.usb_log_disable.exit_crit_edge, label %if.end.i

entry.usb_log_disable.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %usb_log_disable.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %apb_log_dentry.i = getelementptr inbounds %struct.es2_ap_dev, ptr %es2, i32 0, i32 11
  %4 = ptrtoint ptr %apb_log_dentry.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %apb_log_dentry.i, align 4
  tail call void @debugfs_remove(ptr noundef %5) #11
  %6 = ptrtoint ptr %apb_log_dentry.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %apb_log_dentry.i, align 4
  %7 = ptrtoint ptr %apb_log_task.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %apb_log_task.i, align 4
  %call3.i = tail call i32 @kthread_stop(ptr noundef %8) #11
  %9 = ptrtoint ptr %apb_log_task.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %apb_log_task.i, align 4
  br label %usb_log_disable.exit

usb_log_disable.exit:                             ; preds = %if.end.i, %entry.usb_log_disable.exit_crit_edge
  %arrayidx = getelementptr %struct.es2_ap_dev, ptr %es2, i32 0, i32 5, i32 0
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  tail call void @usb_kill_urb(ptr noundef %11) #11
  tail call void @usb_free_urb(ptr noundef %11) #11
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %arrayidx, align 4
  %arrayidx3 = getelementptr %struct.es2_ap_dev, ptr %es2, i32 0, i32 6, i32 0
  %13 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %arrayidx3, align 1
  %arrayidx.1 = getelementptr %struct.es2_ap_dev, ptr %es2, i32 0, i32 5, i32 1
  %14 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.1, align 4
  tail call void @usb_kill_urb(ptr noundef %15) #11
  tail call void @usb_free_urb(ptr noundef %15) #11
  %16 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %arrayidx.1, align 4
  %arrayidx3.1 = getelementptr %struct.es2_ap_dev, ptr %es2, i32 0, i32 6, i32 1
  %17 = ptrtoint ptr %arrayidx3.1 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %arrayidx3.1, align 1
  %arrayidx.2 = getelementptr %struct.es2_ap_dev, ptr %es2, i32 0, i32 5, i32 2
  %18 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.2, align 4
  tail call void @usb_kill_urb(ptr noundef %19) #11
  tail call void @usb_free_urb(ptr noundef %19) #11
  %20 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %arrayidx.2, align 4
  %arrayidx3.2 = getelementptr %struct.es2_ap_dev, ptr %es2, i32 0, i32 6, i32 2
  %21 = ptrtoint ptr %arrayidx3.2 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %arrayidx3.2, align 1
  %arrayidx.3 = getelementptr %struct.es2_ap_dev, ptr %es2, i32 0, i32 5, i32 3
  %22 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.3, align 4
  tail call void @usb_kill_urb(ptr noundef %23) #11
  tail call void @usb_free_urb(ptr noundef %23) #11
  %24 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %arrayidx.3, align 4
  %arrayidx3.3 = getelementptr %struct.es2_ap_dev, ptr %es2, i32 0, i32 6, i32 3
  %25 = ptrtoint ptr %arrayidx3.3 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %arrayidx3.3, align 1
  %arrayidx.4 = getelementptr %struct.es2_ap_dev, ptr %es2, i32 0, i32 5, i32 4
  %26 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx.4, align 4
  tail call void @usb_kill_urb(ptr noundef %27) #11
  tail call void @usb_free_urb(ptr noundef %27) #11
  %28 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %arrayidx.4, align 4
  %arrayidx3.4 = getelementptr %struct.es2_ap_dev, ptr %es2, i32 0, i32 6, i32 4
  %29 = ptrtoint ptr %arrayidx3.4 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %arrayidx3.4, align 1
  %arrayidx.5 = getelementptr %struct.es2_ap_dev, ptr %es2, i32 0, i32 5, i32 5
  %30 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx.5, align 4
  tail call void @usb_kill_urb(ptr noundef %31) #11
  tail call void @usb_free_urb(ptr noundef %31) #11
  %32 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %arrayidx.5, align 4
  %arrayidx3.5 = getelementptr %struct.es2_ap_dev, ptr %es2, i32 0, i32 6, i32 5
  %33 = ptrtoint ptr %arrayidx3.5 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %arrayidx3.5, align 1
  %arrayidx.6 = getelementptr %struct.es2_ap_dev, ptr %es2, i32 0, i32 5, i32 6
  %34 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx.6, align 4
  tail call void @usb_kill_urb(ptr noundef %35) #11
  tail call void @usb_free_urb(ptr noundef %35) #11
  %36 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %arrayidx.6, align 4
  %arrayidx3.6 = getelementptr %struct.es2_ap_dev, ptr %es2, i32 0, i32 6, i32 6
  %37 = ptrtoint ptr %arrayidx3.6 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 0, ptr %arrayidx3.6, align 1
  %arrayidx.7 = getelementptr %struct.es2_ap_dev, ptr %es2, i32 0, i32 5, i32 7
  %38 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx.7, align 4
  tail call void @usb_kill_urb(ptr noundef %39) #11
  tail call void @usb_free_urb(ptr noundef %39) #11
  %40 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr null, ptr %arrayidx.7, align 4
  %arrayidx3.7 = getelementptr %struct.es2_ap_dev, ptr %es2, i32 0, i32 6, i32 7
  %41 = ptrtoint ptr %arrayidx3.7 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 0, ptr %arrayidx3.7, align 1
  %arrayidx7 = getelementptr %struct.es2_ap_dev, ptr %es2, i32 0, i32 15, i32 0
  %42 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx7, align 4
  tail call void @usb_free_urb(ptr noundef %43) #11
  %arrayidx8 = getelementptr %struct.es2_ap_dev, ptr %es2, i32 0, i32 16, i32 0
  %44 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx8, align 4
  tail call void @kfree(ptr noundef %45) #11
  %46 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr null, ptr %arrayidx8, align 4
  %arrayidx7.1 = getelementptr %struct.es2_ap_dev, ptr %es2, i32 0, i32 15, i32 1
  %47 = ptrtoint ptr %arrayidx7.1 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx7.1, align 4
  tail call void @usb_free_urb(ptr noundef %48) #11
  %arrayidx8.1 = getelementptr %struct.es2_ap_dev, ptr %es2, i32 0, i32 16, i32 1
  %49 = ptrtoint ptr %arrayidx8.1 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx8.1, align 4
  tail call void @kfree(ptr noundef %50) #11
  %51 = ptrtoint ptr %arrayidx8.1 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr null, ptr %arrayidx8.1, align 4
  %arrayidx18 = getelementptr %struct.es2_ap_dev, ptr %es2, i32 0, i32 3, i32 1, i32 0
  %52 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx18, align 4
  tail call void @usb_free_urb(ptr noundef %53) #11
  %arrayidx20 = getelementptr %struct.es2_ap_dev, ptr %es2, i32 0, i32 3, i32 2, i32 0
  %54 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %arrayidx20, align 4
  tail call void @kfree(ptr noundef %55) #11
  %56 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr null, ptr %arrayidx20, align 4
  %arrayidx18.1 = getelementptr %struct.es2_ap_dev, ptr %es2, i32 0, i32 3, i32 1, i32 1
  %57 = ptrtoint ptr %arrayidx18.1 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %arrayidx18.1, align 4
  tail call void @usb_free_urb(ptr noundef %58) #11
  %arrayidx20.1 = getelementptr %struct.es2_ap_dev, ptr %es2, i32 0, i32 3, i32 2, i32 1
  %59 = ptrtoint ptr %arrayidx20.1 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %arrayidx20.1, align 4
  tail call void @kfree(ptr noundef %60) #11
  %61 = ptrtoint ptr %arrayidx20.1 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr null, ptr %arrayidx20.1, align 4
  %arrayidx18.2 = getelementptr %struct.es2_ap_dev, ptr %es2, i32 0, i32 3, i32 1, i32 2
  %62 = ptrtoint ptr %arrayidx18.2 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %arrayidx18.2, align 4
  tail call void @usb_free_urb(ptr noundef %63) #11
  %arrayidx20.2 = getelementptr %struct.es2_ap_dev, ptr %es2, i32 0, i32 3, i32 2, i32 2
  %64 = ptrtoint ptr %arrayidx20.2 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %arrayidx20.2, align 4
  tail call void @kfree(ptr noundef %65) #11
  %66 = ptrtoint ptr %arrayidx20.2 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr null, ptr %arrayidx20.2, align 4
  %arrayidx18.3 = getelementptr %struct.es2_ap_dev, ptr %es2, i32 0, i32 3, i32 1, i32 3
  %67 = ptrtoint ptr %arrayidx18.3 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %arrayidx18.3, align 4
  tail call void @usb_free_urb(ptr noundef %68) #11
  %arrayidx20.3 = getelementptr %struct.es2_ap_dev, ptr %es2, i32 0, i32 3, i32 2, i32 3
  %69 = ptrtoint ptr %arrayidx20.3 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %arrayidx20.3, align 4
  tail call void @kfree(ptr noundef %70) #11
  %71 = ptrtoint ptr %arrayidx20.3 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr null, ptr %arrayidx20.3, align 4
  %hd = getelementptr inbounds %struct.es2_ap_dev, ptr %es2, i32 0, i32 2
  %72 = ptrtoint ptr %hd to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %hd, align 4
  tail call void @gb_hd_cport_release_reserved(ptr noundef %73, i16 noundef zeroext 17) #11
  %74 = ptrtoint ptr %hd to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %hd, align 4
  tail call void @gb_hd_cport_release_reserved(ptr noundef %75, i16 noundef zeroext 16) #11
  %76 = ptrtoint ptr %es2 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %es2, align 4
  %78 = ptrtoint ptr %hd to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %hd, align 4
  tail call void @gb_hd_put(ptr noundef %79) #11
  tail call void @usb_put_dev(ptr noundef %77) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @es2_cport_allocate(ptr noundef %hd, i32 noundef %cport_id, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %cport_id_map = getelementptr inbounds %struct.gb_host_device, ptr %hd, i32 0, i32 5
  %0 = and i32 %cport_id, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %0)
  %switch = icmp eq i32 %0, 16
  br i1 %switch, label %do.end, label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %hd, ptr noundef nonnull @.str.28, i32 noundef %cport_id) #15
  br label %cleanup

sw.epilog:                                        ; preds = %entry
  %1 = and i32 %flags, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %1)
  %.not = icmp eq i32 %1, 12
  br i1 %.not, label %if.then, label %if.end10

if.then:                                          ; preds = %sw.epilog
  %cdsi1_in_use = getelementptr inbounds %struct.gb_host_device, ptr %hd, i32 1, i32 0, i32 3
  %2 = ptrtoint ptr %cdsi1_in_use to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %cdsi1_in_use, align 4, !range !223
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool3.not = icmp eq i8 %3, 0
  br i1 %tobool3.not, label %if.end, label %do.end7

do.end7:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %hd, ptr noundef nonnull @.str.31) #15
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %4 = ptrtoint ptr %cdsi1_in_use to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %cdsi1_in_use, align 4
  br label %cleanup

if.end10:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cport_id)
  %cmp = icmp slt i32 %cport_id, 0
  %num_cports = getelementptr inbounds %struct.gb_host_device, ptr %hd, i32 0, i32 6
  %5 = ptrtoint ptr %num_cports to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %num_cports, align 4
  br i1 %cmp, label %if.end10.if.end21_crit_edge, label %if.else

if.end10.if.end21_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21

if.else:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %cport_id)
  %cmp13 = icmp ugt i32 %6, %cport_id
  br i1 %cmp13, label %if.then14, label %do.end18

if.then14:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %add = add nuw i32 %cport_id, 1
  br label %if.end21

do.end18:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %hd, ptr noundef nonnull @.str.28, i32 noundef %cport_id) #15
  br label %cleanup

if.end21:                                         ; preds = %if.then14, %if.end10.if.end21_crit_edge
  %ida_start.0 = phi i32 [ %cport_id, %if.then14 ], [ 0, %if.end10.if.end21_crit_edge ]
  %ida_end.0 = phi i32 [ %add, %if.then14 ], [ %6, %if.end10.if.end21_crit_edge ]
  %sub = add i32 %ida_end.0, -1
  %call22 = tail call i32 @ida_alloc_range(ptr noundef %cport_id_map, i32 noundef %ida_start.0, i32 noundef %sub, i32 noundef 3264) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %do.end18, %if.end, %do.end7, %do.end
  %retval.0 = phi i32 [ -16, %do.end7 ], [ 17, %if.end ], [ %call22, %if.end21 ], [ -22, %do.end18 ], [ -16, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @es2_cport_release(ptr noundef %hd, i16 noundef zeroext %cport_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp2(i16 17, i16 %cport_id)
  %cond = icmp eq i16 %cport_id, 17
  br i1 %cond, label %sw.bb, label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %cdsi1_in_use = getelementptr inbounds %struct.gb_host_device, ptr %hd, i32 1, i32 0, i32 3
  %0 = ptrtoint ptr %cdsi1_in_use to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %cdsi1_in_use, align 4
  br label %cleanup

sw.epilog:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %conv = zext i16 %cport_id to i32
  %cport_id_map = getelementptr inbounds %struct.gb_host_device, ptr %hd, i32 0, i32 5
  tail call void @ida_free(ptr noundef %cport_id_map, i32 noundef %conv) #11
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.bb
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cport_enable(ptr noundef %hd, i16 noundef zeroext %cport_id, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %hd_priv.i = getelementptr inbounds %struct.gb_host_device, ptr %hd, i32 0, i32 9
  %0 = ptrtoint ptr %hd_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hd_priv.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 4) #14
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %and = lshr i32 %flags, 4
  %3 = and i32 %and, 3
  %4 = shl nuw nsw i32 %3, 24
  %5 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %call7.i.i, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cport_enable.__UNIQUE_ID_ddebug317, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cport_enable, %if.then15)) #11
          to label %do.end [label %if.then15], !srcloc !224

if.then15:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %conv = zext i16 %cport_id to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cport_enable.__UNIQUE_ID_ddebug317, ptr noundef %hd, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.35, i32 noundef %conv, i32 noundef %3) #11
  br label %do.end

do.end:                                           ; preds = %if.then15, %if.end
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %1, align 8
  %shl.i = shl i32 %7, 8
  %or18 = or i32 %shl.i, -2147483648
  %call19 = tail call i32 @usb_control_msg(ptr noundef %1, i32 noundef %or18, i8 noundef zeroext 17, i8 noundef zeroext 65, i16 noundef zeroext %cport_id, i16 noundef zeroext 0, ptr noundef nonnull %call7.i.i, i16 noundef zeroext 4, i32 noundef 500) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp = icmp slt i32 %call19, 0
  br i1 %cmp, label %do.end24, label %do.end.out_crit_edge

do.end.out_crit_edge:                             ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

do.end24:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %dev25 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 15
  %conv26 = zext i16 %cport_id to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev25, ptr noundef nonnull @.str.37, i32 noundef %conv26) #15
  br label %out

out:                                              ; preds = %do.end24, %do.end.out_crit_edge
  %ret.0 = phi i32 [ %call19, %do.end24 ], [ 0, %do.end.out_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @es2_cport_connected(ptr noundef %hd, i16 noundef zeroext %cport_id) #2 align 64 {
entry:
  %req = alloca %struct.arpc_cport_connected_req, align 2
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %hd_priv.i = getelementptr inbounds %struct.gb_host_device, ptr %hd, i32 0, i32 9
  %0 = ptrtoint ptr %hd_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hd_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %req) #11
  %2 = tail call i16 @llvm.bswap.i16(i16 %cport_id)
  %3 = ptrtoint ptr %req to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %2, ptr %req, align 2
  %call3 = call fastcc i32 @arpc_sync(ptr noundef %hd_priv.i, i8 noundef zeroext 1, ptr noundef nonnull %req, i32 noundef 2, ptr noundef null, i32 noundef 500)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dev1 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 15
  %conv = zext i16 %cport_id to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.38, i32 noundef %conv, i32 noundef %call3) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %req) #11
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @es2_cport_flush(ptr noundef %hd, i16 noundef zeroext %cport_id) #2 align 64 {
entry:
  %req = alloca %struct.arpc_cport_flush_req, align 2
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %hd_priv.i = getelementptr inbounds %struct.gb_host_device, ptr %hd, i32 0, i32 9
  %0 = ptrtoint ptr %hd_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hd_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %req) #11
  %2 = tail call i16 @llvm.bswap.i16(i16 %cport_id)
  %3 = ptrtoint ptr %req to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %2, ptr %req, align 2
  %call3 = call fastcc i32 @arpc_sync(ptr noundef %hd_priv.i, i8 noundef zeroext 4, ptr noundef nonnull %req, i32 noundef 2, ptr noundef null, i32 noundef 500)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dev1 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 15
  %conv = zext i16 %cport_id to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.45, i32 noundef %conv, i32 noundef %call3) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %req) #11
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @es2_cport_shutdown(ptr noundef %hd, i16 noundef zeroext %cport_id, i8 noundef zeroext %phase, i32 noundef %timeout) #2 align 64 {
entry:
  %req = alloca %struct.arpc_cport_shutdown_req, align 2
  %result = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %hd_priv.i = getelementptr inbounds %struct.gb_host_device, ptr %hd, i32 0, i32 9
  %0 = ptrtoint ptr %hd_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hd_priv.i, align 4
  %dev1 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 15
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %req) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %result) #11
  %2 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %result, align 4, !annotation !225
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %timeout)
  %cmp = icmp ugt i32 %timeout, 65535
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = getelementptr inbounds %struct.arpc_cport_shutdown_req, ptr %req, i32 0, i32 2
  %4 = getelementptr inbounds %struct.arpc_cport_shutdown_req, ptr %req, i32 0, i32 1
  %5 = tail call i16 @llvm.bswap.i16(i16 %cport_id)
  %6 = ptrtoint ptr %req to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %5, ptr %req, align 2
  %conv = trunc i32 %timeout to i16
  %7 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %4, align 2
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %phase, ptr %3, align 2
  %add = add nuw nsw i32 %timeout, 500
  %call5 = call fastcc i32 @arpc_sync(ptr noundef %hd_priv.i, i8 noundef zeroext 5, ptr noundef nonnull %req, i32 noundef 5, ptr noundef nonnull %result, i32 noundef %add)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %do.end

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %conv7 = zext i16 %cport_id to i32
  %10 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %result, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.47, i32 noundef %conv7, i32 noundef %call5, i32 noundef %11) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %do.end ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %result) #11
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %req) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @es2_cport_quiesce(ptr noundef %hd, i16 noundef zeroext %cport_id, i32 noundef %peer_space, i32 noundef %timeout) #2 align 64 {
entry:
  %req = alloca %struct.arpc_cport_quiesce_req, align 2
  %result = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %hd_priv.i = getelementptr inbounds %struct.gb_host_device, ptr %hd, i32 0, i32 9
  %0 = ptrtoint ptr %hd_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hd_priv.i, align 4
  %dev1 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 15
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %req) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %result) #11
  %2 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %result, align 4, !annotation !225
  %3 = or i32 %timeout, %peer_space
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %3)
  %.not = icmp ult i32 %3, 65536
  br i1 %.not, label %if.end4, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end4:                                          ; preds = %entry
  %4 = getelementptr inbounds %struct.arpc_cport_quiesce_req, ptr %req, i32 0, i32 2
  %5 = getelementptr inbounds %struct.arpc_cport_quiesce_req, ptr %req, i32 0, i32 1
  %6 = tail call i16 @llvm.bswap.i16(i16 %cport_id)
  %7 = ptrtoint ptr %req to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %6, ptr %req, align 2
  %conv = trunc i32 %peer_space to i16
  %8 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %8, ptr %5, align 2
  %conv7 = trunc i32 %timeout to i16
  %10 = tail call i16 @llvm.bswap.i16(i16 %conv7)
  %11 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %10, ptr %4, align 2
  %add = add nuw nsw i32 %timeout, 500
  %call9 = call fastcc i32 @arpc_sync(ptr noundef %hd_priv.i, i8 noundef zeroext 2, ptr noundef nonnull %req, i32 noundef 6, ptr noundef nonnull %result, i32 noundef %add)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool.not = icmp eq i32 %call9, 0
  br i1 %tobool.not, label %if.end4.cleanup_crit_edge, label %do.end

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end:                                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  %conv11 = zext i16 %cport_id to i32
  %12 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %result, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.49, i32 noundef %conv11, i32 noundef %call9, i32 noundef %13) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end4.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call9, %do.end ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end4.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %result) #11
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %req) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @es2_cport_clear(ptr noundef %hd, i16 noundef zeroext %cport_id) #2 align 64 {
entry:
  %req = alloca %struct.arpc_cport_clear_req, align 2
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %hd_priv.i = getelementptr inbounds %struct.gb_host_device, ptr %hd, i32 0, i32 9
  %0 = ptrtoint ptr %hd_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hd_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %req) #11
  %2 = tail call i16 @llvm.bswap.i16(i16 %cport_id)
  %3 = ptrtoint ptr %req to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %2, ptr %req, align 2
  %call3 = call fastcc i32 @arpc_sync(ptr noundef %hd_priv.i, i8 noundef zeroext 3, ptr noundef nonnull %req, i32 noundef 2, ptr noundef null, i32 noundef 500)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dev1 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 15
  %conv = zext i16 %cport_id to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.51, i32 noundef %conv, i32 noundef %call3) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %req) #11
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @message_send(ptr noundef %hd, i16 noundef zeroext %cport_id, ptr noundef %message, i32 noundef %gfp_mask) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %hd_priv.i = getelementptr inbounds %struct.gb_host_device, ptr %hd, i32 0, i32 9
  %0 = ptrtoint ptr %hd_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hd_priv.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %cport_id)
  %cmp.not.i = icmp eq i16 %cport_id, -1
  br i1 %cmp.not.i, label %entry.do.end_crit_edge, label %cport_id_valid.exit

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

cport_id_valid.exit:                              ; preds = %entry
  %conv.i = zext i16 %cport_id to i32
  %num_cports.i = getelementptr inbounds %struct.gb_host_device, ptr %hd, i32 0, i32 6
  %2 = ptrtoint ptr %num_cports.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_cports.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %conv.i)
  %cmp3.i = icmp ugt i32 %3, %conv.i
  br i1 %cmp3.i, label %if.end, label %cport_id_valid.exit.do.end_crit_edge

cport_id_valid.exit.do.end_crit_edge:             ; preds = %cport_id_valid.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

do.end:                                           ; preds = %cport_id_valid.exit.do.end_crit_edge, %entry.do.end_crit_edge
  %conv.pre-phi = phi i32 [ %conv.i, %cport_id_valid.exit.do.end_crit_edge ], [ 65535, %entry.do.end_crit_edge ]
  %dev = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.53, i32 noundef %conv.pre-phi) #15
  br label %cleanup

if.end:                                           ; preds = %cport_id_valid.exit
  %call3 = tail call fastcc ptr @next_free_urb(ptr noundef %hd_priv.i, i32 noundef %gfp_mask)
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %do.body7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body7:                                         ; preds = %if.end
  %cport_out_urb_lock = getelementptr inbounds %struct.gb_host_device, ptr %hd, i32 1, i32 0, i32 0, i32 7, i32 1, i32 4, i32 1
  %call10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %cport_out_urb_lock) #11
  %hcpriv = getelementptr inbounds %struct.gb_message, ptr %message, i32 0, i32 5
  %4 = ptrtoint ptr %hcpriv to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call3, ptr %hcpriv, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %cport_out_urb_lock, i32 noundef %call10) #11
  %header = getelementptr inbounds %struct.gb_message, ptr %message, i32 0, i32 1
  %5 = ptrtoint ptr %header to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %header, align 4
  %conv.i78 = trunc i16 %cport_id to i8
  %pad.i = getelementptr inbounds %struct.gb_operation_msg_hdr, ptr %6, i32 0, i32 4
  %7 = ptrtoint ptr %pad.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv.i78, ptr %pad.i, align 1
  %payload_size = getelementptr inbounds %struct.gb_message, ptr %message, i32 0, i32 3
  %8 = ptrtoint ptr %payload_size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %payload_size, align 4
  %add = add i32 %9, 8
  %cport_out_endpoint = getelementptr inbounds %struct.gb_host_device, ptr %hd, i32 1, i32 0, i32 0, i32 7, i32 0, i32 3
  %10 = ptrtoint ptr %cport_out_endpoint to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %cport_out_endpoint, align 4
  %conv16 = zext i8 %11 to i32
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %1, align 8
  %shl.i = shl i32 %13, 8
  %shl1.i = shl nuw nsw i32 %conv16, 15
  %or.i = or i32 %shl1.i, %shl.i
  %or = or i32 %or.i, -1073741824
  %buffer = getelementptr inbounds %struct.gb_message, ptr %message, i32 0, i32 4
  %14 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %buffer, align 4
  %dev1.i = getelementptr inbounds %struct.urb, ptr %call3, i32 0, i32 8
  %16 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %1, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %call3, i32 0, i32 10
  %17 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %or, ptr %pipe2.i, align 4
  %transfer_buffer3.i = getelementptr inbounds %struct.urb, ptr %call3, i32 0, i32 14
  %18 = ptrtoint ptr %transfer_buffer3.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %15, ptr %transfer_buffer3.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %call3, i32 0, i32 19
  %19 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %add, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %call3, i32 0, i32 28
  %20 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @cport_out_callback, ptr %complete.i, align 4
  %context4.i = getelementptr inbounds %struct.urb, ptr %call3, i32 0, i32 27
  %21 = ptrtoint ptr %context4.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %message, ptr %context4.i, align 4
  %transfer_flags = getelementptr inbounds %struct.urb, ptr %call3, i32 0, i32 13
  %22 = ptrtoint ptr %transfer_flags to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %transfer_flags, align 4
  %or18 = or i32 %23, 64
  store i32 %or18, ptr %transfer_flags, align 4
  tail call fastcc void @trace_gb_message_submit(ptr noundef %message)
  %call19 = tail call i32 @usb_submit_urb(ptr noundef nonnull %call3, i32 noundef %gfp_mask) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %do.body7.cleanup_crit_edge, label %do.end24

do.body7.cleanup_crit_edge:                       ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end24:                                         ; preds = %do.body7
  %dev25 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev25, ptr noundef nonnull @.str.56, i32 noundef %call19) #15
  %call35 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %cport_out_urb_lock) #11
  %24 = ptrtoint ptr %hcpriv to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %hcpriv, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %cport_out_urb_lock, i32 noundef %call35) #11
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %cport_out_urb_lock) #11
  %arrayidx.i = getelementptr %struct.gb_host_device, ptr %hd, i32 1, i32 0, i32 0, i32 7, i32 0, i32 3, i32 1
  %25 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx.i, align 4
  %cmp7.i = icmp eq ptr %26, %call3
  br i1 %cmp7.i, label %do.end24.if.then.i_crit_edge, label %for.inc.i

do.end24.if.then.i_crit_edge:                     ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

if.then.i:                                        ; preds = %for.inc.6.i.if.then.i_crit_edge, %for.inc.5.i.if.then.i_crit_edge, %for.inc.4.i.if.then.i_crit_edge, %for.inc.3.i.if.then.i_crit_edge, %for.inc.2.i.if.then.i_crit_edge, %for.inc.1.i.if.then.i_crit_edge, %for.inc.i.if.then.i_crit_edge, %do.end24.if.then.i_crit_edge
  %i.019.lcssa.i = phi i32 [ 0, %do.end24.if.then.i_crit_edge ], [ 1, %for.inc.i.if.then.i_crit_edge ], [ 2, %for.inc.1.i.if.then.i_crit_edge ], [ 3, %for.inc.2.i.if.then.i_crit_edge ], [ 4, %for.inc.3.i.if.then.i_crit_edge ], [ 5, %for.inc.4.i.if.then.i_crit_edge ], [ 6, %for.inc.5.i.if.then.i_crit_edge ], [ 7, %for.inc.6.i.if.then.i_crit_edge ]
  %arrayidx9.i = getelementptr %struct.es2_ap_dev, ptr %hd_priv.i, i32 0, i32 6, i32 %i.019.lcssa.i
  %27 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %arrayidx9.i, align 1
  br label %free_urb.exit

for.inc.i:                                        ; preds = %do.end24
  %arrayidx.1.i = getelementptr %struct.gb_host_device, ptr %hd, i32 1, i32 0, i32 0, i32 7, i32 0, i32 3, i32 1, i32 1
  %28 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx.1.i, align 4
  %cmp7.1.i = icmp eq ptr %29, %call3
  br i1 %cmp7.1.i, label %for.inc.i.if.then.i_crit_edge, label %for.inc.1.i

for.inc.i.if.then.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

for.inc.1.i:                                      ; preds = %for.inc.i
  %arrayidx.2.i = getelementptr %struct.gb_host_device, ptr %hd, i32 1, i32 0, i32 0, i32 7, i32 0, i32 3, i32 2
  %30 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx.2.i, align 4
  %cmp7.2.i = icmp eq ptr %31, %call3
  br i1 %cmp7.2.i, label %for.inc.1.i.if.then.i_crit_edge, label %for.inc.2.i

for.inc.1.i.if.then.i_crit_edge:                  ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

for.inc.2.i:                                      ; preds = %for.inc.1.i
  %arrayidx.3.i = getelementptr %struct.gb_host_device, ptr %hd, i32 1, i32 0, i32 0, i32 7, i32 0, i32 3, i32 3
  %32 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx.3.i, align 4
  %cmp7.3.i = icmp eq ptr %33, %call3
  br i1 %cmp7.3.i, label %for.inc.2.i.if.then.i_crit_edge, label %for.inc.3.i

for.inc.2.i.if.then.i_crit_edge:                  ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

for.inc.3.i:                                      ; preds = %for.inc.2.i
  %arrayidx.4.i = getelementptr %struct.gb_host_device, ptr %hd, i32 1, i32 0, i32 0, i32 7, i32 0, i32 3, i32 6
  %34 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx.4.i, align 4
  %cmp7.4.i = icmp eq ptr %35, %call3
  br i1 %cmp7.4.i, label %for.inc.3.i.if.then.i_crit_edge, label %for.inc.4.i

for.inc.3.i.if.then.i_crit_edge:                  ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

for.inc.4.i:                                      ; preds = %for.inc.3.i
  %arrayidx.5.i = getelementptr %struct.gb_host_device, ptr %hd, i32 1, i32 0, i32 0, i32 7, i32 0, i32 3, i32 7
  %36 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx.5.i, align 4
  %cmp7.5.i = icmp eq ptr %37, %call3
  br i1 %cmp7.5.i, label %for.inc.4.i.if.then.i_crit_edge, label %for.inc.5.i

for.inc.4.i.if.then.i_crit_edge:                  ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

for.inc.5.i:                                      ; preds = %for.inc.4.i
  %arrayidx.6.i = getelementptr %struct.gb_host_device, ptr %hd, i32 1, i32 0, i32 0, i32 7, i32 1
  %38 = ptrtoint ptr %arrayidx.6.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx.6.i, align 4
  %cmp7.6.i = icmp eq ptr %39, %call3
  br i1 %cmp7.6.i, label %for.inc.5.i.if.then.i_crit_edge, label %for.inc.6.i

for.inc.5.i.if.then.i_crit_edge:                  ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

for.inc.6.i:                                      ; preds = %for.inc.5.i
  %arrayidx.7.i = getelementptr %struct.gb_host_device, ptr %hd, i32 1, i32 0, i32 0, i32 7, i32 1, i32 0, i32 1
  %40 = ptrtoint ptr %arrayidx.7.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx.7.i, align 4
  %cmp7.7.i = icmp eq ptr %41, %call3
  br i1 %cmp7.7.i, label %for.inc.6.i.if.then.i_crit_edge, label %for.inc.6.i.free_urb.exit_crit_edge

for.inc.6.i.free_urb.exit_crit_edge:              ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %free_urb.exit

for.inc.6.i.if.then.i_crit_edge:                  ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

free_urb.exit:                                    ; preds = %for.inc.6.i.free_urb.exit_crit_edge, %if.then.i
  %urb.addr.0.i = phi ptr [ null, %if.then.i ], [ %call3, %for.inc.6.i.free_urb.exit_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %cport_out_urb_lock, i32 noundef %call2.i) #11
  tail call void @usb_free_urb(ptr noundef %urb.addr.0.i) #11
  %42 = ptrtoint ptr %header to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %header, align 4
  %pad.i79 = getelementptr inbounds %struct.gb_operation_msg_hdr, ptr %43, i32 0, i32 4
  %44 = ptrtoint ptr %pad.i79 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 0, ptr %pad.i79, align 1
  br label %cleanup

cleanup:                                          ; preds = %free_urb.exit, %do.body7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call19, %free_urb.exit ], [ -22, %do.end ], [ -12, %if.end.cleanup_crit_edge ], [ 0, %do.body7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @message_cancel(ptr nocapture noundef readonly %message) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %message to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %message, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %hd_priv.i = getelementptr inbounds %struct.gb_host_device, ptr %5, i32 0, i32 9
  tail call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 460) #11
  %cport_out_urb_lock = getelementptr inbounds %struct.gb_host_device, ptr %5, i32 1, i32 0, i32 0, i32 7, i32 1, i32 4, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %cport_out_urb_lock) #11
  %hcpriv = getelementptr inbounds %struct.gb_message, ptr %message, i32 0, i32 5
  %6 = ptrtoint ptr %hcpriv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hcpriv, align 4
  %call5 = tail call ptr @usb_get_urb(ptr noundef %7) #11
  %arrayidx = getelementptr %struct.gb_host_device, ptr %5, i32 1, i32 0, i32 0, i32 7, i32 0, i32 3, i32 1
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %cmp6 = icmp eq ptr %7, %9
  br i1 %cmp6, label %entry.if.then_crit_edge, label %for.inc

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

if.then:                                          ; preds = %for.inc.6.if.then_crit_edge, %for.inc.5.if.then_crit_edge, %for.inc.4.if.then_crit_edge, %for.inc.3.if.then_crit_edge, %for.inc.2.if.then_crit_edge, %for.inc.1.if.then_crit_edge, %for.inc.if.then_crit_edge, %entry.if.then_crit_edge
  %i.032.lcssa = phi i32 [ 0, %entry.if.then_crit_edge ], [ 1, %for.inc.if.then_crit_edge ], [ 2, %for.inc.1.if.then_crit_edge ], [ 3, %for.inc.2.if.then_crit_edge ], [ 4, %for.inc.3.if.then_crit_edge ], [ 5, %for.inc.4.if.then_crit_edge ], [ 6, %for.inc.5.if.then_crit_edge ], [ 7, %for.inc.6.if.then_crit_edge ]
  %arrayidx7 = getelementptr %struct.es2_ap_dev, ptr %hd_priv.i, i32 0, i32 7, i32 %i.032.lcssa
  %10 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %arrayidx7, align 1
  tail call void @_raw_spin_unlock_irq(ptr noundef %cport_out_urb_lock) #11
  tail call void @usb_kill_urb(ptr noundef %7) #11
  tail call void @_raw_spin_lock_irq(ptr noundef %cport_out_urb_lock) #11
  %11 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %arrayidx7, align 1
  tail call void @_raw_spin_unlock_irq(ptr noundef %cport_out_urb_lock) #11
  br label %if.end15

for.inc:                                          ; preds = %entry
  %arrayidx.1 = getelementptr %struct.gb_host_device, ptr %5, i32 1, i32 0, i32 0, i32 7, i32 0, i32 3, i32 1, i32 1
  %12 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.1, align 4
  %cmp6.1 = icmp eq ptr %7, %13
  br i1 %cmp6.1, label %for.inc.if.then_crit_edge, label %for.inc.1

for.inc.if.then_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

for.inc.1:                                        ; preds = %for.inc
  %arrayidx.2 = getelementptr %struct.gb_host_device, ptr %5, i32 1, i32 0, i32 0, i32 7, i32 0, i32 3, i32 2
  %14 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.2, align 4
  %cmp6.2 = icmp eq ptr %7, %15
  br i1 %cmp6.2, label %for.inc.1.if.then_crit_edge, label %for.inc.2

for.inc.1.if.then_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

for.inc.2:                                        ; preds = %for.inc.1
  %arrayidx.3 = getelementptr %struct.gb_host_device, ptr %5, i32 1, i32 0, i32 0, i32 7, i32 0, i32 3, i32 3
  %16 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.3, align 4
  %cmp6.3 = icmp eq ptr %7, %17
  br i1 %cmp6.3, label %for.inc.2.if.then_crit_edge, label %for.inc.3

for.inc.2.if.then_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

for.inc.3:                                        ; preds = %for.inc.2
  %arrayidx.4 = getelementptr %struct.gb_host_device, ptr %5, i32 1, i32 0, i32 0, i32 7, i32 0, i32 3, i32 6
  %18 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.4, align 4
  %cmp6.4 = icmp eq ptr %7, %19
  br i1 %cmp6.4, label %for.inc.3.if.then_crit_edge, label %for.inc.4

for.inc.3.if.then_crit_edge:                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

for.inc.4:                                        ; preds = %for.inc.3
  %arrayidx.5 = getelementptr %struct.gb_host_device, ptr %5, i32 1, i32 0, i32 0, i32 7, i32 0, i32 3, i32 7
  %20 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.5, align 4
  %cmp6.5 = icmp eq ptr %7, %21
  br i1 %cmp6.5, label %for.inc.4.if.then_crit_edge, label %for.inc.5

for.inc.4.if.then_crit_edge:                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

for.inc.5:                                        ; preds = %for.inc.4
  %arrayidx.6 = getelementptr %struct.gb_host_device, ptr %5, i32 1, i32 0, i32 0, i32 7, i32 1
  %22 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.6, align 4
  %cmp6.6 = icmp eq ptr %7, %23
  br i1 %cmp6.6, label %for.inc.5.if.then_crit_edge, label %for.inc.6

for.inc.5.if.then_crit_edge:                      ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

for.inc.6:                                        ; preds = %for.inc.5
  %arrayidx.7 = getelementptr %struct.gb_host_device, ptr %5, i32 1, i32 0, i32 0, i32 7, i32 1, i32 0, i32 1
  %24 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx.7, align 4
  %cmp6.7 = icmp eq ptr %7, %25
  br i1 %cmp6.7, label %for.inc.6.if.then_crit_edge, label %for.inc.7

for.inc.6.if.then_crit_edge:                      ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

for.inc.7:                                        ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_raw_spin_unlock_irq(ptr noundef %cport_out_urb_lock) #11
  tail call void @usb_kill_urb(ptr noundef %7) #11
  br label %if.end15

if.end15:                                         ; preds = %for.inc.7, %if.then
  tail call void @usb_free_urb(ptr noundef %7) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @latency_tag_enable(ptr nocapture noundef readonly %hd, i16 noundef zeroext %cport_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %hd_priv.i = getelementptr inbounds %struct.gb_host_device, ptr %hd, i32 0, i32 9
  %0 = ptrtoint ptr %hd_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hd_priv.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 8
  %shl.i = shl i32 %3, 8
  %or = or i32 %shl.i, -2147483648
  %call3 = tail call i32 @usb_control_msg(ptr noundef %1, i32 noundef %or, i8 noundef zeroext 6, i8 noundef zeroext 65, i16 noundef zeroext %cport_id, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 15
  %conv = zext i16 %cport_id to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.68, i32 noundef %conv) #15
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @latency_tag_disable(ptr nocapture noundef readonly %hd, i16 noundef zeroext %cport_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %hd_priv.i = getelementptr inbounds %struct.gb_host_device, ptr %hd, i32 0, i32 9
  %0 = ptrtoint ptr %hd_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hd_priv.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 8
  %shl.i = shl i32 %3, 8
  %or = or i32 %shl.i, -2147483648
  %call3 = tail call i32 @usb_control_msg(ptr noundef %1, i32 noundef %or, i8 noundef zeroext 7, i8 noundef zeroext 65, i16 noundef zeroext %cport_id, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 15
  %conv = zext i16 %cport_id to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.70, i32 noundef %conv) #15
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @output(ptr nocapture noundef readonly %hd, ptr noundef %req, i16 noundef zeroext %size, i8 noundef zeroext %cmd, i1 noundef zeroext %async) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %hd_priv.i = getelementptr inbounds %struct.gb_host_device, ptr %hd, i32 0, i32 9
  %0 = ptrtoint ptr %hd_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hd_priv.i, align 4
  br i1 %async, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call.i = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 2592) #11
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then.cleanup_crit_edge, label %if.end.i

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i:                                         ; preds = %if.then
  %conv.i = zext i16 %size to i32
  %add.i = add nuw nsw i32 %conv.i, 8
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i, i32 noundef 2592) #16
  %tobool3.not.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool3.not.i, label %if.then4.i, label %if.end5.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @usb_free_urb(ptr noundef nonnull %call.i) #11
  br label %cleanup

if.end5.i:                                        ; preds = %if.end.i
  %add.ptr.i = getelementptr i8, ptr %call9.i.i, i32 8
  %2 = call ptr @memcpy(ptr %add.ptr.i, ptr %req, i32 %conv.i)
  %bRequest.i = getelementptr inbounds %struct.usb_ctrlrequest, ptr %call9.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %bRequest.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %cmd, ptr %bRequest.i, align 1
  %4 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 65, ptr %call9.i.i, align 128
  %wValue.i = getelementptr inbounds %struct.usb_ctrlrequest, ptr %call9.i.i, i32 0, i32 2
  %5 = ptrtoint ptr %wValue.i to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 0, ptr %wValue.i, align 2
  %wIndex.i = getelementptr inbounds %struct.usb_ctrlrequest, ptr %call9.i.i, i32 0, i32 3
  %6 = ptrtoint ptr %wIndex.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 0, ptr %wIndex.i, align 4
  %7 = tail call i16 @llvm.bswap.i16(i16 %size) #11
  %wLength.i = getelementptr inbounds %struct.usb_ctrlrequest, ptr %call9.i.i, i32 0, i32 4
  %8 = ptrtoint ptr %wLength.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %wLength.i, align 2
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %1, align 8
  %shl.i.i = shl i32 %10, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %dev1.i.i = getelementptr inbounds %struct.urb, ptr %call.i, i32 0, i32 8
  %11 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %1, ptr %dev1.i.i, align 4
  %pipe2.i.i = getelementptr inbounds %struct.urb, ptr %call.i, i32 0, i32 10
  %12 = ptrtoint ptr %pipe2.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %or.i, ptr %pipe2.i.i, align 4
  %setup_packet3.i.i = getelementptr inbounds %struct.urb, ptr %call.i, i32 0, i32 21
  %13 = ptrtoint ptr %setup_packet3.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call9.i.i, ptr %setup_packet3.i.i, align 4
  %transfer_buffer4.i.i = getelementptr inbounds %struct.urb, ptr %call.i, i32 0, i32 14
  %14 = ptrtoint ptr %transfer_buffer4.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %add.ptr.i, ptr %transfer_buffer4.i.i, align 4
  %transfer_buffer_length.i.i = getelementptr inbounds %struct.urb, ptr %call.i, i32 0, i32 19
  %15 = ptrtoint ptr %transfer_buffer_length.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %conv.i, ptr %transfer_buffer_length.i.i, align 4
  %complete.i.i = getelementptr inbounds %struct.urb, ptr %call.i, i32 0, i32 28
  %16 = ptrtoint ptr %complete.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @ap_urb_complete, ptr %complete.i.i, align 4
  %context5.i.i = getelementptr inbounds %struct.urb, ptr %call.i, i32 0, i32 27
  %17 = ptrtoint ptr %context5.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call9.i.i, ptr %context5.i.i, align 4
  %call9.i = tail call i32 @usb_submit_urb(ptr noundef nonnull %call.i, i32 noundef 2592) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %if.end5.i.cleanup_crit_edge, label %if.then11.i

if.end5.i.cleanup_crit_edge:                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then11.i:                                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @usb_free_urb(ptr noundef nonnull %call.i) #11
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv.i7 = zext i16 %size to i32
  %call.i8 = tail call ptr @kmemdup(ptr noundef %req, i32 noundef %conv.i7, i32 noundef 3264) #11
  %tobool.not.i9 = icmp eq ptr %call.i8, null
  br i1 %tobool.not.i9, label %if.end.cleanup_crit_edge, label %if.end.i12

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i12:                                       ; preds = %if.end
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %1, align 8
  %shl.i.i10 = shl i32 %19, 8
  %or.i11 = or i32 %shl.i.i10, -2147483648
  %call3.i = tail call i32 @usb_control_msg(ptr noundef %1, i32 noundef %or.i11, i8 noundef zeroext %cmd, i8 noundef zeroext 65, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %call.i8, i16 noundef zeroext %size, i32 noundef 500) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp.i = icmp slt i32 %call3.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.end.i12.if.end6.i_crit_edge

if.end.i12.if.end6.i_crit_edge:                   ; preds = %if.end.i12
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6.i

do.end.i:                                         ; preds = %if.end.i12
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.73, i32 noundef %call3.i) #15
  br label %if.end6.i

if.end6.i:                                        ; preds = %do.end.i, %if.end.i12.if.end6.i_crit_edge
  %retval1.0.i = phi i32 [ %call3.i, %do.end.i ], [ 0, %if.end.i12.if.end6.i_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call.i8) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end6.i, %if.end.cleanup_crit_edge, %if.then11.i, %if.end5.i.cleanup_crit_edge, %if.then4.i, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.then4.i ], [ -12, %if.then.cleanup_crit_edge ], [ %call9.i, %if.then11.i ], [ 0, %if.end5.i.cleanup_crit_edge ], [ %retval1.0.i, %if.end6.i ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ida_alloc_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_free(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @arpc_sync(ptr noundef %es2, i8 noundef zeroext %type, ptr nocapture noundef readonly %payload, i32 noundef %size, ptr noundef writeonly %result, i32 noundef %timeout) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %result, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %0 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %result, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %conv.i = and i32 %size, 65535
  %add.i = add nuw nsw i32 %conv.i, 5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 76) #14
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %if.end3.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end3.i:                                        ; preds = %if.end
  %2 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %call7.i.i.i, ptr %call7.i.i.i, align 8
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call7.i.i.i, ptr %prev.i.i, align 4
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i, i32 noundef 3520) #16
  %req.i = getelementptr inbounds %struct.arpc, ptr %call7.i.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %req.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call9.i.i.i, ptr %req.i, align 8
  %tobool8.not.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool8.not.i, label %if.end3.i.err_free_rpc.i_crit_edge, label %if.end10.i

if.end3.i.err_free_rpc.i_crit_edge:               ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_free_rpc.i

if.end10.i:                                       ; preds = %if.end3.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i46.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 3) #14
  %resp.i = getelementptr inbounds %struct.arpc, ptr %call7.i.i.i, i32 0, i32 2
  %6 = ptrtoint ptr %resp.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call7.i.i46.i, ptr %resp.i, align 4
  %tobool13.not.i = icmp eq ptr %call7.i.i46.i, null
  %7 = ptrtoint ptr %req.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %req.i, align 8
  br i1 %tobool13.not.i, label %err_free_req.i, label %do.body5

err_free_req.i:                                   ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree(ptr noundef %8) #11
  br label %err_free_rpc.i

err_free_rpc.i:                                   ; preds = %err_free_req.i, %if.end3.i.err_free_rpc.i_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #11
  br label %cleanup

do.body5:                                         ; preds = %if.end10.i
  %type17.i = getelementptr inbounds %struct.arpc_request_message, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %type17.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %type, ptr %type17.i, align 1
  %conv20.i = trunc i32 %add.i to i16
  %10 = tail call i16 @llvm.bswap.i16(i16 %conv20.i) #11
  %11 = ptrtoint ptr %req.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %req.i, align 8
  %size22.i = getelementptr inbounds %struct.arpc_request_message, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %size22.i to i32
  call void @__asan_storeN_noabort(i32 %13, i32 2)
  store i16 %10, ptr %size22.i, align 1
  %14 = load ptr, ptr %req.i, align 8
  %data.i = getelementptr inbounds %struct.arpc_request_message, ptr %14, i32 0, i32 3
  %15 = call ptr @memcpy(ptr %data.i, ptr %payload, i32 %conv.i)
  %response_received.i = getelementptr inbounds %struct.arpc, ptr %call7.i.i.i, i32 0, i32 3
  %16 = ptrtoint ptr %response_received.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %response_received.i, align 8
  %wait.i.i = getelementptr inbounds %struct.arpc, ptr %call7.i.i.i, i32 0, i32 3, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i.i, ptr noundef nonnull @.str.42, ptr noundef nonnull @init_completion.__key) #11
  %arpc_lock = getelementptr inbounds %struct.es2_ap_dev, ptr %es2, i32 0, i32 18
  %call8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %arpc_lock) #11
  %active.i = getelementptr inbounds %struct.arpc, ptr %call7.i.i.i, i32 0, i32 4
  %17 = ptrtoint ptr %active.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %active.i, align 8
  %arpc_id_cycle.i = getelementptr inbounds %struct.es2_ap_dev, ptr %es2, i32 0, i32 17
  %18 = ptrtoint ptr %arpc_id_cycle.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arpc_id_cycle.i, align 4
  %inc.i = add i32 %19, 1
  store i32 %inc.i, ptr %arpc_id_cycle.i, align 4
  %conv.i87 = trunc i32 %19 to i16
  %20 = tail call i16 @llvm.bswap.i16(i16 %conv.i87) #11
  %21 = ptrtoint ptr %req.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %req.i, align 8
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_storeN_noabort(i32 %23, i32 2)
  store i16 %20, ptr %22, align 1
  %arpcs.i = getelementptr inbounds %struct.es2_ap_dev, ptr %es2, i32 0, i32 19
  %prev.i.i89 = getelementptr inbounds %struct.es2_ap_dev, ptr %es2, i32 0, i32 19, i32 1
  %24 = ptrtoint ptr %prev.i.i89 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %prev.i.i89, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i, ptr noundef %25, ptr noundef %arpcs.i) #11
  br i1 %call.i.i.i, label %if.end.i.i.i90, label %do.body5.arpc_add.exit_crit_edge

do.body5.arpc_add.exit_crit_edge:                 ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #13
  br label %arpc_add.exit

if.end.i.i.i90:                                   ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #13
  %26 = ptrtoint ptr %prev.i.i89 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call7.i.i.i, ptr %prev.i.i89, align 4
  %27 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %arpcs.i, ptr %call7.i.i.i, align 8
  %28 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %25, ptr %prev.i.i, align 4
  %29 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %call7.i.i.i, ptr %25, align 4
  br label %arpc_add.exit

arpc_add.exit:                                    ; preds = %if.end.i.i.i90, %do.body5.arpc_add.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %arpc_lock, i32 noundef %call8) #11
  %30 = ptrtoint ptr %es2 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %es2, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %31, align 8
  %shl.i.i = shl i32 %33, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %34 = ptrtoint ptr %req.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %req.i, align 8
  %size.i = getelementptr inbounds %struct.arpc_request_message, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %size.i to i32
  call void @__asan_loadN_noabort(i32 %36, i32 2)
  %37 = load i16, ptr %size.i, align 1
  %38 = tail call i16 @llvm.bswap.i16(i16 %37) #11
  %call3.i = tail call i32 @usb_control_msg(ptr noundef %31, i32 noundef %or.i, i8 noundef zeroext 18, i8 noundef zeroext 65, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef %35, i16 noundef zeroext %38, i32 noundef 500) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp.i = icmp slt i32 %call3.i, 0
  br i1 %cmp.i, label %arpc_send.exit, label %if.else.i

arpc_send.exit:                                   ; preds = %arpc_add.exit
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i = getelementptr inbounds %struct.usb_device, ptr %31, i32 0, i32 15
  %39 = ptrtoint ptr %req.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %req.i, align 8
  %type.i = getelementptr inbounds %struct.arpc_request_message, ptr %40, i32 0, i32 2
  %41 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %type.i, align 1
  %conv.i92 = zext i8 %42 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.43, i32 noundef %conv.i92, i32 noundef %call3.i) #15
  br label %do.body36

if.else.i:                                        ; preds = %arpc_add.exit
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %timeout) #11
  %call17 = tail call i32 @wait_for_completion_interruptible_timeout(ptr noundef %response_received.i, i32 noundef %call2.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call17)
  %cmp18 = icmp slt i32 %call17, 1
  br i1 %cmp18, label %if.then20, label %if.end24

if.then20:                                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool21.not = icmp eq i32 %call17, 0
  %spec.store.select = select i1 %tobool21.not, i32 -110, i32 %call17
  br label %do.body36

if.end24:                                         ; preds = %if.else.i
  %43 = ptrtoint ptr %resp.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %resp.i, align 4
  %result25 = getelementptr inbounds %struct.arpc_response_message, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %result25 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %result25, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool26.not = icmp eq i8 %46, 0
  %brmerge = or i1 %tobool.not, %tobool26.not
  %.mux = select i1 %tobool26.not, i32 0, i32 -121
  br i1 %brmerge, label %if.end24.do.body36_crit_edge, label %if.then29

if.end24.do.body36_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body36

if.then29:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  %conv32 = zext i8 %46 to i32
  %47 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %conv32, ptr %result, align 4
  br label %do.body36

do.body36:                                        ; preds = %if.then29, %if.end24.do.body36_crit_edge, %if.then20, %arpc_send.exit
  %retval1.0 = phi i32 [ %call3.i, %arpc_send.exit ], [ %spec.store.select, %if.then20 ], [ -121, %if.then29 ], [ %.mux, %if.end24.do.body36_crit_edge ]
  %call44 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %arpc_lock) #11
  %48 = ptrtoint ptr %active.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %active.i, align 8, !range !223
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool.not.i95 = icmp eq i8 %49, 0
  br i1 %tobool.not.i95, label %do.body36.arpc_del.exit_crit_edge, label %if.then.i

do.body36.arpc_del.exit_crit_edge:                ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #13
  br label %arpc_del.exit

if.then.i:                                        ; preds = %do.body36
  %50 = ptrtoint ptr %active.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 0, ptr %active.i, align 8
  %call.i.i.i96 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %call7.i.i.i) #11
  br i1 %call.i.i.i96, label %if.end.i.i.i97, label %if.then.i.list_del.exit.i_crit_edge

if.then.i.list_del.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit.i

if.end.i.i.i97:                                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %51 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %prev.i.i, align 4
  %53 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %call7.i.i.i, align 8
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %52, ptr %prev1.i.i.i.i, align 4
  %56 = ptrtoint ptr %52 to i32
  call void @__asan_store4_noabort(i32 %56)
  store volatile ptr %54, ptr %52, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i97, %if.then.i.list_del.exit.i_crit_edge
  %57 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr inttoptr (i32 256 to ptr), ptr %call7.i.i.i, align 8
  %58 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  br label %arpc_del.exit

arpc_del.exit:                                    ; preds = %list_del.exit.i, %do.body36.arpc_del.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %arpc_lock, i32 noundef %call44) #11
  %59 = ptrtoint ptr %req.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %req.i, align 8
  tail call void @kfree(ptr noundef %60) #11
  %61 = ptrtoint ptr %resp.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %resp.i, align 4
  tail call void @kfree(ptr noundef %62) #11
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval1.0)
  %cmp50 = icmp sgt i32 %retval1.0, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -121, i32 %retval1.0)
  %cmp52.not = icmp eq i32 %retval1.0, -121
  %or.cond = or i1 %cmp50, %cmp52.not
  br i1 %or.cond, label %arpc_del.exit.cleanup_crit_edge, label %do.end57

arpc_del.exit.cleanup_crit_edge:                  ; preds = %arpc_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end57:                                         ; preds = %arpc_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  %63 = ptrtoint ptr %es2 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %es2, align 4
  %dev = getelementptr inbounds %struct.usb_device, ptr %64, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.40, i32 noundef %retval1.0) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end57, %arpc_del.exit.cleanup_crit_edge, %err_free_rpc.i, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval1.0, %do.end57 ], [ %retval1.0, %arpc_del.exit.cleanup_crit_edge ], [ -12, %err_free_rpc.i ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_interruptible_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @next_free_urb(ptr noundef %es2, i32 noundef %gfp_mask) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %cport_out_urb_lock = getelementptr inbounds %struct.es2_ap_dev, ptr %es2, i32 0, i32 8
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %cport_out_urb_lock) #11
  %arrayidx = getelementptr %struct.es2_ap_dev, ptr %es2, i32 0, i32 6, i32 0
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1, !range !223
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.for.inc_crit_edge

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true:                                    ; preds = %entry
  %arrayidx7 = getelementptr %struct.es2_ap_dev, ptr %es2, i32 0, i32 7, i32 0
  %2 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx7, align 1, !range !223
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool8.not = icmp eq i8 %3, 0
  br i1 %tobool8.not, label %land.lhs.true.for.end_crit_edge, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true.for.end_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %entry.for.inc_crit_edge
  %arrayidx.1 = getelementptr %struct.es2_ap_dev, ptr %es2, i32 0, i32 6, i32 1
  %4 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx.1, align 1, !range !223
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.1 = icmp eq i8 %5, 0
  br i1 %tobool.not.1, label %land.lhs.true.1, label %for.inc.for.inc.1_crit_edge

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.1

land.lhs.true.1:                                  ; preds = %for.inc
  %arrayidx7.1 = getelementptr %struct.es2_ap_dev, ptr %es2, i32 0, i32 7, i32 1
  %6 = ptrtoint ptr %arrayidx7.1 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx7.1, align 1, !range !223
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool8.not.1 = icmp eq i8 %7, 0
  br i1 %tobool8.not.1, label %land.lhs.true.1.for.end_crit_edge, label %land.lhs.true.1.for.inc.1_crit_edge

land.lhs.true.1.for.inc.1_crit_edge:              ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.1

land.lhs.true.1.for.end_crit_edge:                ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.inc.1:                                        ; preds = %land.lhs.true.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %arrayidx.2 = getelementptr %struct.es2_ap_dev, ptr %es2, i32 0, i32 6, i32 2
  %8 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx.2, align 1, !range !223
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.2 = icmp eq i8 %9, 0
  br i1 %tobool.not.2, label %land.lhs.true.2, label %for.inc.1.for.inc.2_crit_edge

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.2

land.lhs.true.2:                                  ; preds = %for.inc.1
  %arrayidx7.2 = getelementptr %struct.es2_ap_dev, ptr %es2, i32 0, i32 7, i32 2
  %10 = ptrtoint ptr %arrayidx7.2 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx7.2, align 1, !range !223
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool8.not.2 = icmp eq i8 %11, 0
  br i1 %tobool8.not.2, label %land.lhs.true.2.for.end_crit_edge, label %land.lhs.true.2.for.inc.2_crit_edge

land.lhs.true.2.for.inc.2_crit_edge:              ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.2

land.lhs.true.2.for.end_crit_edge:                ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.inc.2:                                        ; preds = %land.lhs.true.2.for.inc.2_crit_edge, %for.inc.1.for.inc.2_crit_edge
  %arrayidx.3 = getelementptr %struct.es2_ap_dev, ptr %es2, i32 0, i32 6, i32 3
  %12 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx.3, align 1, !range !223
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.3 = icmp eq i8 %13, 0
  br i1 %tobool.not.3, label %land.lhs.true.3, label %for.inc.2.for.inc.3_crit_edge

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.3

land.lhs.true.3:                                  ; preds = %for.inc.2
  %arrayidx7.3 = getelementptr %struct.es2_ap_dev, ptr %es2, i32 0, i32 7, i32 3
  %14 = ptrtoint ptr %arrayidx7.3 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx7.3, align 1, !range !223
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool8.not.3 = icmp eq i8 %15, 0
  br i1 %tobool8.not.3, label %land.lhs.true.3.for.end_crit_edge, label %land.lhs.true.3.for.inc.3_crit_edge

land.lhs.true.3.for.inc.3_crit_edge:              ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.3

land.lhs.true.3.for.end_crit_edge:                ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.inc.3:                                        ; preds = %land.lhs.true.3.for.inc.3_crit_edge, %for.inc.2.for.inc.3_crit_edge
  %arrayidx.4 = getelementptr %struct.es2_ap_dev, ptr %es2, i32 0, i32 6, i32 4
  %16 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx.4, align 1, !range !223
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not.4 = icmp eq i8 %17, 0
  br i1 %tobool.not.4, label %land.lhs.true.4, label %for.inc.3.for.inc.4_crit_edge

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.4

land.lhs.true.4:                                  ; preds = %for.inc.3
  %arrayidx7.4 = getelementptr %struct.es2_ap_dev, ptr %es2, i32 0, i32 7, i32 4
  %18 = ptrtoint ptr %arrayidx7.4 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx7.4, align 1, !range !223
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool8.not.4 = icmp eq i8 %19, 0
  br i1 %tobool8.not.4, label %land.lhs.true.4.for.end_crit_edge, label %land.lhs.true.4.for.inc.4_crit_edge

land.lhs.true.4.for.inc.4_crit_edge:              ; preds = %land.lhs.true.4
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.4

land.lhs.true.4.for.end_crit_edge:                ; preds = %land.lhs.true.4
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.inc.4:                                        ; preds = %land.lhs.true.4.for.inc.4_crit_edge, %for.inc.3.for.inc.4_crit_edge
  %arrayidx.5 = getelementptr %struct.es2_ap_dev, ptr %es2, i32 0, i32 6, i32 5
  %20 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx.5, align 1, !range !223
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool.not.5 = icmp eq i8 %21, 0
  br i1 %tobool.not.5, label %land.lhs.true.5, label %for.inc.4.for.inc.5_crit_edge

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.5

land.lhs.true.5:                                  ; preds = %for.inc.4
  %arrayidx7.5 = getelementptr %struct.es2_ap_dev, ptr %es2, i32 0, i32 7, i32 5
  %22 = ptrtoint ptr %arrayidx7.5 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx7.5, align 1, !range !223
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool8.not.5 = icmp eq i8 %23, 0
  br i1 %tobool8.not.5, label %land.lhs.true.5.for.end_crit_edge, label %land.lhs.true.5.for.inc.5_crit_edge

land.lhs.true.5.for.inc.5_crit_edge:              ; preds = %land.lhs.true.5
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.5

land.lhs.true.5.for.end_crit_edge:                ; preds = %land.lhs.true.5
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.inc.5:                                        ; preds = %land.lhs.true.5.for.inc.5_crit_edge, %for.inc.4.for.inc.5_crit_edge
  %arrayidx.6 = getelementptr %struct.es2_ap_dev, ptr %es2, i32 0, i32 6, i32 6
  %24 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx.6, align 1, !range !223
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool.not.6 = icmp eq i8 %25, 0
  br i1 %tobool.not.6, label %land.lhs.true.6, label %for.inc.5.for.inc.6_crit_edge

for.inc.5.for.inc.6_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.6

land.lhs.true.6:                                  ; preds = %for.inc.5
  %arrayidx7.6 = getelementptr %struct.es2_ap_dev, ptr %es2, i32 0, i32 7, i32 6
  %26 = ptrtoint ptr %arrayidx7.6 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx7.6, align 1, !range !223
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool8.not.6 = icmp eq i8 %27, 0
  br i1 %tobool8.not.6, label %land.lhs.true.6.for.end_crit_edge, label %land.lhs.true.6.for.inc.6_crit_edge

land.lhs.true.6.for.inc.6_crit_edge:              ; preds = %land.lhs.true.6
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.6

land.lhs.true.6.for.end_crit_edge:                ; preds = %land.lhs.true.6
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.inc.6:                                        ; preds = %land.lhs.true.6.for.inc.6_crit_edge, %for.inc.5.for.inc.6_crit_edge
  %arrayidx.7 = getelementptr %struct.es2_ap_dev, ptr %es2, i32 0, i32 6, i32 7
  %28 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx.7, align 1, !range !223
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool.not.7 = icmp eq i8 %29, 0
  br i1 %tobool.not.7, label %land.lhs.true.7, label %for.inc.6.for.inc.7_crit_edge

for.inc.6.for.inc.7_crit_edge:                    ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.7

land.lhs.true.7:                                  ; preds = %for.inc.6
  %arrayidx7.7 = getelementptr %struct.es2_ap_dev, ptr %es2, i32 0, i32 7, i32 7
  %30 = ptrtoint ptr %arrayidx7.7 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx7.7, align 1, !range !223
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool8.not.7 = icmp eq i8 %31, 0
  br i1 %tobool8.not.7, label %land.lhs.true.7.for.end_crit_edge, label %land.lhs.true.7.for.inc.7_crit_edge

land.lhs.true.7.for.inc.7_crit_edge:              ; preds = %land.lhs.true.7
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.7

land.lhs.true.7.for.end_crit_edge:                ; preds = %land.lhs.true.7
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.inc.7:                                        ; preds = %land.lhs.true.7.for.inc.7_crit_edge, %for.inc.6.for.inc.7_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %cport_out_urb_lock, i32 noundef %call2) #11
  br label %do.body16

for.end:                                          ; preds = %land.lhs.true.7.for.end_crit_edge, %land.lhs.true.6.for.end_crit_edge, %land.lhs.true.5.for.end_crit_edge, %land.lhs.true.4.for.end_crit_edge, %land.lhs.true.3.for.end_crit_edge, %land.lhs.true.2.for.end_crit_edge, %land.lhs.true.1.for.end_crit_edge, %land.lhs.true.for.end_crit_edge
  %i.045.lcssa = phi i32 [ 0, %land.lhs.true.for.end_crit_edge ], [ 1, %land.lhs.true.1.for.end_crit_edge ], [ 2, %land.lhs.true.2.for.end_crit_edge ], [ 3, %land.lhs.true.3.for.end_crit_edge ], [ 4, %land.lhs.true.4.for.end_crit_edge ], [ 5, %land.lhs.true.5.for.end_crit_edge ], [ 6, %land.lhs.true.6.for.end_crit_edge ], [ 7, %land.lhs.true.7.for.end_crit_edge ]
  %arrayidx.lcssa = phi ptr [ %arrayidx, %land.lhs.true.for.end_crit_edge ], [ %arrayidx.1, %land.lhs.true.1.for.end_crit_edge ], [ %arrayidx.2, %land.lhs.true.2.for.end_crit_edge ], [ %arrayidx.3, %land.lhs.true.3.for.end_crit_edge ], [ %arrayidx.4, %land.lhs.true.4.for.end_crit_edge ], [ %arrayidx.5, %land.lhs.true.5.for.end_crit_edge ], [ %arrayidx.6, %land.lhs.true.6.for.end_crit_edge ], [ %arrayidx.7, %land.lhs.true.7.for.end_crit_edge ]
  %32 = ptrtoint ptr %arrayidx.lcssa to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 1, ptr %arrayidx.lcssa, align 1
  %arrayidx11 = getelementptr %struct.es2_ap_dev, ptr %es2, i32 0, i32 5, i32 %i.045.lcssa
  %33 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx11, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %cport_out_urb_lock, i32 noundef %call2) #11
  %tobool13.not = icmp eq ptr %34, null
  br i1 %tobool13.not, label %for.end.do.body16_crit_edge, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.end.do.body16_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body16

do.body16:                                        ; preds = %for.end.do.body16_crit_edge, %for.inc.7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @next_free_urb.__UNIQUE_ID_ddebug316, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@next_free_urb, %if.then22)) #11
          to label %do.end25 [label %if.then22], !srcloc !224

if.then22:                                        ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #13
  %35 = ptrtoint ptr %es2 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %es2, align 4
  %dev = getelementptr inbounds %struct.usb_device, ptr %36, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @next_free_urb.__UNIQUE_ID_ddebug316, ptr noundef %dev, ptr noundef nonnull @.str.59) #11
  br label %do.end25

do.end25:                                         ; preds = %if.then22, %do.body16
  %call26 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef %gfp_mask) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end25, %for.end.cleanup_crit_edge
  %retval.0 = phi ptr [ %call26, %do.end25 ], [ %34, %for.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cport_out_callback(ptr noundef %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %hd_priv.i = getelementptr inbounds %struct.gb_host_device, ptr %7, i32 0, i32 9
  %dev1.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %8 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev1.i, align 4
  %dev2.i = getelementptr inbounds %struct.usb_device, ptr %9, i32 0, i32 15
  %status3.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %10 = ptrtoint ptr %status3.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %status3.i, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.103)
  switch i32 %11, label %do.end8.i [
    i32 0, label %entry.check_urb_status.exit_crit_edge
    i32 -75, label %do.end.i
    i32 -104, label %entry.check_urb_status.exit_crit_edge17
    i32 -2, label %entry.check_urb_status.exit_crit_edge18
    i32 -108, label %entry.check_urb_status.exit_crit_edge19
    i32 -84, label %entry.check_urb_status.exit_crit_edge20
    i32 -71, label %entry.check_urb_status.exit_crit_edge21
  ]

entry.check_urb_status.exit_crit_edge21:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %check_urb_status.exit

entry.check_urb_status.exit_crit_edge20:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %check_urb_status.exit

entry.check_urb_status.exit_crit_edge19:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %check_urb_status.exit

entry.check_urb_status.exit_crit_edge18:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %check_urb_status.exit

entry.check_urb_status.exit_crit_edge17:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %check_urb_status.exit

entry.check_urb_status.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %check_urb_status.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %actual_length.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %13 = ptrtoint ptr %actual_length.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %actual_length.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i, ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.61, i32 noundef %14) #15
  br label %check_urb_status.exit

do.end8.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i, ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.61, i32 noundef %11) #15
  br label %check_urb_status.exit

check_urb_status.exit:                            ; preds = %do.end8.i, %do.end.i, %entry.check_urb_status.exit_crit_edge, %entry.check_urb_status.exit_crit_edge17, %entry.check_urb_status.exit_crit_edge18, %entry.check_urb_status.exit_crit_edge19, %entry.check_urb_status.exit_crit_edge20, %entry.check_urb_status.exit_crit_edge21
  %retval.0.i = phi i32 [ -11, %do.end8.i ], [ %11, %entry.check_urb_status.exit_crit_edge ], [ %11, %do.end.i ], [ %11, %entry.check_urb_status.exit_crit_edge17 ], [ %11, %entry.check_urb_status.exit_crit_edge18 ], [ %11, %entry.check_urb_status.exit_crit_edge19 ], [ %11, %entry.check_urb_status.exit_crit_edge20 ], [ %11, %entry.check_urb_status.exit_crit_edge21 ]
  %header = getelementptr inbounds %struct.gb_message, ptr %1, i32 0, i32 1
  %15 = ptrtoint ptr %header to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %header, align 4
  %pad.i = getelementptr inbounds %struct.gb_operation_msg_hdr, ptr %16, i32 0, i32 4
  %17 = ptrtoint ptr %pad.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %pad.i, align 1
  %cport_out_urb_lock = getelementptr inbounds %struct.gb_host_device, ptr %7, i32 1, i32 0, i32 0, i32 7, i32 1, i32 4, i32 1
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %cport_out_urb_lock) #11
  %hcpriv = getelementptr inbounds %struct.gb_message, ptr %1, i32 0, i32 5
  %18 = ptrtoint ptr %hcpriv to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %hcpriv, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %cport_out_urb_lock, i32 noundef %call5) #11
  tail call void @greybus_message_sent(ptr noundef %7, ptr noundef %1, i32 noundef %retval.0.i) #11
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %cport_out_urb_lock) #11
  %arrayidx.i = getelementptr %struct.gb_host_device, ptr %7, i32 1, i32 0, i32 0, i32 7, i32 0, i32 3, i32 1
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx.i, align 4
  %cmp7.i = icmp eq ptr %20, %urb
  br i1 %cmp7.i, label %check_urb_status.exit.if.then.i_crit_edge, label %for.inc.i

check_urb_status.exit.if.then.i_crit_edge:        ; preds = %check_urb_status.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

if.then.i:                                        ; preds = %for.inc.6.i.if.then.i_crit_edge, %for.inc.5.i.if.then.i_crit_edge, %for.inc.4.i.if.then.i_crit_edge, %for.inc.3.i.if.then.i_crit_edge, %for.inc.2.i.if.then.i_crit_edge, %for.inc.1.i.if.then.i_crit_edge, %for.inc.i.if.then.i_crit_edge, %check_urb_status.exit.if.then.i_crit_edge
  %i.019.lcssa.i = phi i32 [ 0, %check_urb_status.exit.if.then.i_crit_edge ], [ 1, %for.inc.i.if.then.i_crit_edge ], [ 2, %for.inc.1.i.if.then.i_crit_edge ], [ 3, %for.inc.2.i.if.then.i_crit_edge ], [ 4, %for.inc.3.i.if.then.i_crit_edge ], [ 5, %for.inc.4.i.if.then.i_crit_edge ], [ 6, %for.inc.5.i.if.then.i_crit_edge ], [ 7, %for.inc.6.i.if.then.i_crit_edge ]
  %arrayidx9.i = getelementptr %struct.es2_ap_dev, ptr %hd_priv.i, i32 0, i32 6, i32 %i.019.lcssa.i
  %21 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %arrayidx9.i, align 1
  br label %free_urb.exit

for.inc.i:                                        ; preds = %check_urb_status.exit
  %arrayidx.1.i = getelementptr %struct.gb_host_device, ptr %7, i32 1, i32 0, i32 0, i32 7, i32 0, i32 3, i32 1, i32 1
  %22 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.1.i, align 4
  %cmp7.1.i = icmp eq ptr %23, %urb
  br i1 %cmp7.1.i, label %for.inc.i.if.then.i_crit_edge, label %for.inc.1.i

for.inc.i.if.then.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

for.inc.1.i:                                      ; preds = %for.inc.i
  %arrayidx.2.i = getelementptr %struct.gb_host_device, ptr %7, i32 1, i32 0, i32 0, i32 7, i32 0, i32 3, i32 2
  %24 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx.2.i, align 4
  %cmp7.2.i = icmp eq ptr %25, %urb
  br i1 %cmp7.2.i, label %for.inc.1.i.if.then.i_crit_edge, label %for.inc.2.i

for.inc.1.i.if.then.i_crit_edge:                  ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

for.inc.2.i:                                      ; preds = %for.inc.1.i
  %arrayidx.3.i = getelementptr %struct.gb_host_device, ptr %7, i32 1, i32 0, i32 0, i32 7, i32 0, i32 3, i32 3
  %26 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx.3.i, align 4
  %cmp7.3.i = icmp eq ptr %27, %urb
  br i1 %cmp7.3.i, label %for.inc.2.i.if.then.i_crit_edge, label %for.inc.3.i

for.inc.2.i.if.then.i_crit_edge:                  ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

for.inc.3.i:                                      ; preds = %for.inc.2.i
  %arrayidx.4.i = getelementptr %struct.gb_host_device, ptr %7, i32 1, i32 0, i32 0, i32 7, i32 0, i32 3, i32 6
  %28 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx.4.i, align 4
  %cmp7.4.i = icmp eq ptr %29, %urb
  br i1 %cmp7.4.i, label %for.inc.3.i.if.then.i_crit_edge, label %for.inc.4.i

for.inc.3.i.if.then.i_crit_edge:                  ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

for.inc.4.i:                                      ; preds = %for.inc.3.i
  %arrayidx.5.i = getelementptr %struct.gb_host_device, ptr %7, i32 1, i32 0, i32 0, i32 7, i32 0, i32 3, i32 7
  %30 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx.5.i, align 4
  %cmp7.5.i = icmp eq ptr %31, %urb
  br i1 %cmp7.5.i, label %for.inc.4.i.if.then.i_crit_edge, label %for.inc.5.i

for.inc.4.i.if.then.i_crit_edge:                  ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

for.inc.5.i:                                      ; preds = %for.inc.4.i
  %arrayidx.6.i = getelementptr %struct.gb_host_device, ptr %7, i32 1, i32 0, i32 0, i32 7, i32 1
  %32 = ptrtoint ptr %arrayidx.6.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx.6.i, align 4
  %cmp7.6.i = icmp eq ptr %33, %urb
  br i1 %cmp7.6.i, label %for.inc.5.i.if.then.i_crit_edge, label %for.inc.6.i

for.inc.5.i.if.then.i_crit_edge:                  ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

for.inc.6.i:                                      ; preds = %for.inc.5.i
  %arrayidx.7.i = getelementptr %struct.gb_host_device, ptr %7, i32 1, i32 0, i32 0, i32 7, i32 1, i32 0, i32 1
  %34 = ptrtoint ptr %arrayidx.7.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx.7.i, align 4
  %cmp7.7.i = icmp eq ptr %35, %urb
  br i1 %cmp7.7.i, label %for.inc.6.i.if.then.i_crit_edge, label %for.inc.6.i.free_urb.exit_crit_edge

for.inc.6.i.free_urb.exit_crit_edge:              ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %free_urb.exit

for.inc.6.i.if.then.i_crit_edge:                  ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

free_urb.exit:                                    ; preds = %for.inc.6.i.free_urb.exit_crit_edge, %if.then.i
  %urb.addr.0.i = phi ptr [ null, %if.then.i ], [ %urb, %for.inc.6.i.free_urb.exit_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %cport_out_urb_lock, i32 noundef %call2.i) #11
  tail call void @usb_free_urb(ptr noundef %urb.addr.0.i) #11
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_gb_message_submit(ptr noundef %message) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_gb_message_submit, i32 0, i32 1), ptr blockaddress(@trace_gb_message_submit, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !224

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !213) #11
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !226

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.67, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !213) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !227
  %call42 = tail call i32 @__traceiter_gb_message_submit(ptr noundef null, ptr noundef %message) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !228
  %13 = tail call i32 @llvm.read_register.i32(metadata !213) #11
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !213) #11
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !226

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.67, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !213) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !229
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_gb_message_submit, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_gb_message_submit, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_gb_message_submit.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_gb_message_submit.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.65, i32 noundef 86, ptr noundef nonnull @.str.66) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !230
  %31 = tail call i32 @llvm.read_register.i32(metadata !213) #11
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @greybus_message_sent(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_gb_message_submit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_get_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_kill_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ap_urb_complete(ptr noundef %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  tail call void @kfree(ptr noundef %1) #11
  tail call void @usb_free_urb(ptr noundef %urb) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @greybus_data_rcvd(ptr noundef, i16 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @apb_log_enable_read(ptr nocapture noundef readonly %f, ptr noundef %buf, i32 noundef %count, ptr noundef %ppos) #2 align 64 {
entry:
  %tmp_buf = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %f, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %i_private = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 54
  %2 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_private, align 4
  %apb_log_task = getelementptr inbounds %struct.es2_ap_dev, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %apb_log_task to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %apb_log_task, align 4
  %tobool.not.i = icmp ne ptr %5, null
  %cmp.i = icmp ule ptr %5, inttoptr (i32 -4096 to ptr)
  %lnot = and i1 %tobool.not.i, %cmp.i
  %lnot.ext = zext i1 %lnot to i32
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %tmp_buf) #11
  %6 = ptrtoint ptr %tmp_buf to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %tmp_buf, align 1, !annotation !225
  %7 = getelementptr inbounds [3 x i8], ptr %tmp_buf, i32 0, i32 1
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -1, ptr %7, align 1, !annotation !225
  %9 = getelementptr inbounds [3 x i8], ptr %tmp_buf, i32 0, i32 2
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -1, ptr %9, align 1, !annotation !225
  %call2 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %tmp_buf, ptr noundef nonnull @.str.96, i32 noundef %lnot.ext)
  %call4 = call i32 @simple_read_from_buffer(ptr noundef %buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %tmp_buf, i32 noundef 2) #11
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %tmp_buf) #11
  ret i32 %call4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @apb_log_enable_write(ptr nocapture noundef readonly %f, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #2 align 64 {
entry:
  %enable = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %enable) #11
  %0 = ptrtoint ptr %enable to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %enable, align 4, !annotation !225
  %f_inode.i = getelementptr inbounds %struct.file, ptr %f, i32 0, i32 2
  %1 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %f_inode.i, align 8
  %i_private = getelementptr inbounds %struct.inode, ptr %2, i32 0, i32 54
  %3 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %i_private, align 4
  %call2 = call i32 @kstrtoint_from_user(ptr noundef %buf, i32 noundef %count, i32 noundef 10, ptr noundef nonnull %enable) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %enable to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %enable, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool3.not = icmp eq i32 %6, 0
  %apb_log_task.i11 = getelementptr inbounds %struct.es2_ap_dev, ptr %4, i32 0, i32 10
  %7 = ptrtoint ptr %apb_log_task.i11 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %apb_log_task.i11, align 4
  %tobool.not.i.i12 = icmp eq ptr %8, null
  %cmp.i.i13 = icmp ugt ptr %8, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i14 = or i1 %tobool.not.i.i12, %cmp.i.i13
  br i1 %tobool3.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.end
  br i1 %spec.select.i.i14, label %if.end.i, label %if.then4.cleanup_crit_edge

if.then4.cleanup_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i:                                         ; preds = %if.then4
  %call1.i = call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @apb_log_poll, ptr noundef %4, i32 noundef -1, ptr noundef nonnull @.str.97) #11
  %cmp.i20.i = icmp ugt ptr %call1.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i20.i, label %if.end5.thread.i, label %if.end10.i

if.end5.thread.i:                                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %9 = ptrtoint ptr %apb_log_task.i11 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call1.i, ptr %apb_log_task.i11, align 4
  br label %cleanup

if.end10.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %call4.i = call i32 @wake_up_process(ptr noundef %call1.i) #11
  %10 = ptrtoint ptr %apb_log_task.i11 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call1.i, ptr %apb_log_task.i11, align 4
  %call11.i = call ptr @gb_debugfs_get() #11
  %call12.i = call ptr @debugfs_create_file(ptr noundef nonnull @.str.97, i16 noundef zeroext 292, ptr noundef %call11.i, ptr noundef %4, ptr noundef nonnull @apb_log_fops) #11
  %apb_log_dentry.i = getelementptr inbounds %struct.es2_ap_dev, ptr %4, i32 0, i32 11
  %11 = ptrtoint ptr %apb_log_dentry.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call12.i, ptr %apb_log_dentry.i, align 4
  br label %cleanup

if.else:                                          ; preds = %if.end
  br i1 %spec.select.i.i14, label %if.else.cleanup_crit_edge, label %if.end.i16

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i16:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %apb_log_dentry.i15 = getelementptr inbounds %struct.es2_ap_dev, ptr %4, i32 0, i32 11
  %12 = ptrtoint ptr %apb_log_dentry.i15 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %apb_log_dentry.i15, align 4
  call void @debugfs_remove(ptr noundef %13) #11
  %14 = ptrtoint ptr %apb_log_dentry.i15 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %apb_log_dentry.i15, align 4
  %15 = ptrtoint ptr %apb_log_task.i11 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %apb_log_task.i11, align 4
  %call3.i = call i32 @kthread_stop(ptr noundef %16) #11
  %17 = ptrtoint ptr %apb_log_task.i11 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %apb_log_task.i11, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i16, %if.else.cleanup_crit_edge, %if.end10.i, %if.end5.thread.i, %if.then4.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %entry.cleanup_crit_edge ], [ %count, %if.then4.cleanup_crit_edge ], [ %count, %if.end5.thread.i ], [ %count, %if.end10.i ], [ %count, %if.else.cleanup_crit_edge ], [ %count, %if.end.i16 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %enable) #11
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_read_from_buffer(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoint_from_user(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_create_on_node(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @apb_log_poll(ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 64) #14
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %while.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

while.cond.preheader:                             ; preds = %entry
  %call15 = tail call zeroext i1 @kthread_should_stop() #11
  br i1 %call15, label %while.cond.preheader.while.end_crit_edge, label %while.body.lr.ph

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %apb_log_fifo.i = getelementptr inbounds %struct.es2_ap_dev, ptr %data, i32 0, i32 13
  br label %while.body

while.body:                                       ; preds = %apb_log_get.exit.while.body_crit_edge, %while.body.lr.ph
  tail call void @msleep(i32 noundef 1000) #11
  %1 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %data, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 8
  %shl.i11.i = shl i32 %4, 8
  %or212.i = or i32 %shl.i11.i, -2147483520
  %call313.i = tail call i32 @usb_control_msg(ptr noundef %2, i32 noundef %or212.i, i8 noundef zeroext 2, i8 noundef zeroext -63, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %call7.i, i16 noundef zeroext 64, i32 noundef 500) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call313.i)
  %cmp14.i = icmp sgt i32 %call313.i, 0
  br i1 %cmp14.i, label %while.body.if.then.i_crit_edge, label %while.body.apb_log_get.exit_crit_edge

while.body.apb_log_get.exit_crit_edge:            ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %apb_log_get.exit

while.body.if.then.i_crit_edge:                   ; preds = %while.body
  br label %if.then.i

if.then.i:                                        ; preds = %if.then.i.if.then.i_crit_edge, %while.body.if.then.i_crit_edge
  %call315.i = phi i32 [ %call3.i, %if.then.i.if.then.i_crit_edge ], [ %call313.i, %while.body.if.then.i_crit_edge ]
  %call4.i = tail call i32 @__kfifo_in(ptr noundef %apb_log_fifo.i, ptr noundef nonnull %call7.i, i32 noundef %call315.i) #11
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 8
  %shl.i.i = shl i32 %8, 8
  %or2.i = or i32 %shl.i.i, -2147483520
  %call3.i = tail call i32 @usb_control_msg(ptr noundef %6, i32 noundef %or2.i, i8 noundef zeroext 2, i8 noundef zeroext -63, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %call7.i, i16 noundef zeroext 64, i32 noundef 500) #11
  %cmp.i = icmp sgt i32 %call3.i, 0
  br i1 %cmp.i, label %if.then.i.if.then.i_crit_edge, label %if.then.i.apb_log_get.exit_crit_edge

if.then.i.apb_log_get.exit_crit_edge:             ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %apb_log_get.exit

if.then.i.if.then.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

apb_log_get.exit:                                 ; preds = %if.then.i.apb_log_get.exit_crit_edge, %while.body.apb_log_get.exit_crit_edge
  %call1 = tail call zeroext i1 @kthread_should_stop() #11
  br i1 %call1, label %apb_log_get.exit.while.end_crit_edge, label %apb_log_get.exit.while.body_crit_edge

apb_log_get.exit.while.body_crit_edge:            ; preds = %apb_log_get.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

apb_log_get.exit.while.end_crit_edge:             ; preds = %apb_log_get.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.end:                                        ; preds = %apb_log_get.exit.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i) #11
  br label %cleanup

cleanup:                                          ; preds = %while.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %while.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kthread_should_stop() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__kfifo_in(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @apb_log_read(ptr nocapture noundef readonly %f, ptr noundef %buf, i32 noundef %count, ptr noundef %ppos) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %f, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %i_private = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 54
  %2 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_private, align 4
  %4 = tail call i32 @llvm.umin.i32(i32 %count, i32 16384)
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %4, i32 noundef 3264) #16
  %tobool.not = icmp eq ptr %call9.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end3

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end3:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %apb_log_fifo = getelementptr inbounds %struct.es2_ap_dev, ptr %3, i32 0, i32 13
  %call4 = tail call i32 @__kfifo_out(ptr noundef %apb_log_fifo, ptr noundef nonnull %call9.i, i32 noundef %4) #11
  %call6 = tail call i32 @simple_read_from_buffer(ptr noundef %buf, i32 noundef %4, ptr noundef %ppos, ptr noundef nonnull %call9.i, i32 noundef %call4) #11
  tail call void @kfree(ptr noundef nonnull %call9.i) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %if.end3 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__kfifo_out(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kthread_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gb_hd_cport_release_reserved(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gb_hd_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

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

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 114)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 114)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind readonly }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !9, !11, !13, !15, !16, !17, !18, !19, !20, !21, !23, !24, !26, !27, !28, !29, !31, !32, !33, !35, !36, !37, !39, !40, !41, !43, !45, !46, !48, !49, !50, !52, !53, !54, !56, !58, !59, !60, !61, !63, !64, !65, !67, !68, !70, !71, !72, !74, !75, !76, !78, !79, !80, !81, !83, !84, !85, !86, !88, !89, !91, !92, !93, !94, !96, !97, !98, !99, !101, !102, !103, !104, !106, !107, !108, !109, !111, !112, !113, !114, !116, !117, !118, !119, !121, !122, !123, !125, !126, !127, !129, !130, !131, !132, !134, !135, !136, !138, !139, !140, !141, !143, !144, !146, !147, !148, !149, !151, !152, !153, !154, !156, !157, !158, !159, !161, !162, !163, !164, !166, !167, !168, !170, !171, !172, !174, !175, !176, !178, !179, !180, !181, !183, !184, !185, !187, !188, !189, !191, !192, !193, !195, !197, !199, !201, !203, !204, !205, !206, !208, !209, !210, !211}
!llvm.named.register.sp = !{!213}
!llvm.module.flags = !{!214, !215, !216, !217, !218, !219, !220, !221}
!llvm.ident = !{!222}

!0 = !{ptr @__initcall__kmod_gb_es2__318_1457_es2_ap_driver_init6, !1, !"__initcall__kmod_gb_es2__318_1457_es2_ap_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/greybus/es2.c", i32 1457, i32 1}
!2 = !{ptr @__exitcall_es2_ap_driver_exit, !1, !"__exitcall_es2_ap_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file319, !4, !"__UNIQUE_ID_file319", i1 false, i1 false}
!4 = !{!"../drivers/greybus/es2.c", i32 1459, i32 1}
!5 = !{ptr @__UNIQUE_ID_license320, !4, !"__UNIQUE_ID_license320", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_author321, !7, !"__UNIQUE_ID_author321", i1 false, i1 false}
!7 = !{!"../drivers/greybus/es2.c", i32 1460, i32 1}
!8 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.1, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/greybus/es2.c", i32 1450, i32 11}
!11 = !{ptr @es2_ap_driver, !12, !"es2_ap_driver", i1 false, i1 false}
!12 = !{!"../drivers/greybus/es2.c", i32 1449, i32 26}
!13 = !{ptr @.str.2, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/greybus/es2.c", i32 1265, i32 3}
!15 = !{ptr @.str.3, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @ap_probe._entry, !14, !"_entry", i1 false, i1 false}
!20 = !{ptr @ap_probe._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @ap_probe.__key, !22, !"__key", i1 false, i1 false}
!22 = !{!"../drivers/greybus/es2.c", i32 1281, i32 2}
!23 = !{ptr @.str.7, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/greybus/es2.c", i32 1310, i32 5}
!26 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @ap_probe._entry.8, !25, !"_entry", i1 false, i1 false}
!28 = !{ptr @ap_probe._entry_ptr.11, !25, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.13, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/greybus/es2.c", i32 1321, i32 5}
!31 = !{ptr @ap_probe._entry.12, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @ap_probe._entry_ptr.14, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.16, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/greybus/es2.c", i32 1327, i32 3}
!35 = !{ptr @ap_probe._entry.15, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @ap_probe._entry_ptr.17, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.19, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/greybus/es2.c", i32 1332, i32 3}
!39 = !{ptr @ap_probe._entry.18, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @ap_probe._entry_ptr.20, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.21, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/greybus/es2.c", i32 1405, i32 51}
!43 = !{ptr @ap_probe.__key.22, !44, !"__key", i1 false, i1 false}
!44 = !{!"../drivers/greybus/es2.c", i32 1411, i32 2}
!45 = !{ptr @.str.23, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.24, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/greybus/es2.c", i32 1216, i32 3}
!48 = !{ptr @apb_get_cport_count._entry, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @apb_get_cport_count._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.26, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/greybus/es2.c", i32 1230, i32 3}
!52 = !{ptr @apb_get_cport_count._entry.25, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @apb_get_cport_count._entry_ptr.27, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @es2_driver, !55, !"es2_driver", i1 false, i1 false}
!55 = !{!"../drivers/greybus/es2.c", i32 729, i32 28}
!56 = !{ptr @.str.28, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/greybus/es2.c", i32 498, i32 3}
!58 = !{ptr @.str.29, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @es2_cport_allocate._entry, !57, !"_entry", i1 false, i1 false}
!60 = !{ptr @es2_cport_allocate._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.31, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/greybus/es2.c", i32 505, i32 4}
!63 = !{ptr @es2_cport_allocate._entry.30, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @es2_cport_allocate._entry_ptr.32, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @es2_cport_allocate._entry.33, !66, !"_entry", i1 false, i1 false}
!66 = !{!"../drivers/greybus/es2.c", i32 521, i32 3}
!67 = !{ptr @es2_cport_allocate._entry_ptr.34, !66, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.35, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/greybus/es2.c", i32 562, i32 2}
!70 = !{ptr @.str.36, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @cport_enable.__UNIQUE_ID_ddebug317, !69, !"__UNIQUE_ID_ddebug317", i1 false, i1 false}
!72 = !{ptr @.str.37, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/greybus/es2.c", i32 571, i32 3}
!74 = !{ptr @cport_enable._entry, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @cport_enable._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.38, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/greybus/es2.c", i32 594, i32 3}
!78 = !{ptr @.str.39, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @es2_cport_connected._entry, !77, !"_entry", i1 false, i1 false}
!80 = !{ptr @es2_cport_connected._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.40, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/greybus/es2.c", i32 1017, i32 3}
!83 = !{ptr @.str.41, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @arpc_sync._entry, !82, !"_entry", i1 false, i1 false}
!85 = !{ptr @arpc_sync._entry_ptr, !82, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @init_completion.__key, !87, !"__key", i1 false, i1 false}
!87 = !{!"../include/linux/completion.h", i32 87, i32 2}
!88 = !{ptr @.str.42, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @.str.43, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/greybus/es2.c", i32 962, i32 3}
!91 = !{ptr @.str.44, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @arpc_send._entry, !90, !"_entry", i1 false, i1 false}
!93 = !{ptr @arpc_send._entry_ptr, !90, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.45, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/greybus/es2.c", i32 613, i32 3}
!96 = !{ptr @.str.46, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @es2_cport_flush._entry, !95, !"_entry", i1 false, i1 false}
!98 = !{ptr @es2_cport_flush._entry_ptr, !95, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.47, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/greybus/es2.c", i32 638, i32 3}
!101 = !{ptr @.str.48, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @es2_cport_shutdown._entry, !100, !"_entry", i1 false, i1 false}
!103 = !{ptr @es2_cport_shutdown._entry_ptr, !100, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.49, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/greybus/es2.c", i32 667, i32 3}
!106 = !{ptr @.str.50, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @es2_cport_quiesce._entry, !105, !"_entry", i1 false, i1 false}
!108 = !{ptr @es2_cport_quiesce._entry_ptr, !105, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.51, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/greybus/es2.c", i32 686, i32 3}
!111 = !{ptr @.str.52, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @es2_cport_clear._entry, !110, !"_entry", i1 false, i1 false}
!113 = !{ptr @es2_cport_clear._entry_ptr, !110, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.53, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/greybus/es2.c", i32 406, i32 3}
!116 = !{ptr @.str.54, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @message_send._entry, !115, !"_entry", i1 false, i1 false}
!118 = !{ptr @message_send._entry_ptr, !115, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.56, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/greybus/es2.c", i32 435, i32 3}
!121 = !{ptr @message_send._entry.55, !120, !"_entry", i1 false, i1 false}
!122 = !{ptr @message_send._entry_ptr.57, !120, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.58, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/greybus/es2.c", i32 333, i32 2}
!125 = !{ptr @.str.59, !124, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @next_free_urb.__UNIQUE_ID_ddebug316, !124, !"__UNIQUE_ID_ddebug316", i1 false, i1 false}
!127 = !{ptr @.str.60, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/greybus/es2.c", i32 757, i32 3}
!129 = !{ptr @.str.61, !128, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @check_urb_status._entry, !128, !"_entry", i1 false, i1 false}
!131 = !{ptr @check_urb_status._entry_ptr, !128, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.63, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/greybus/es2.c", i32 768, i32 2}
!134 = !{ptr @check_urb_status._entry.62, !133, !"_entry", i1 false, i1 false}
!135 = !{ptr @check_urb_status._entry_ptr.64, !133, !"_entry_ptr", i1 false, i1 false}
!136 = distinct !{null, !137, !"__already_done", i1 false, i1 false}
!137 = !{!"../drivers/greybus/greybus_trace.h", i32 86, i32 1}
!138 = !{ptr @.str.65, !137, !"<string literal>", i1 false, i1 false}
!139 = distinct !{null, !137, !"__warned", i1 false, i1 false}
!140 = !{ptr @.str.66, !137, !"<string literal>", i1 false, i1 false}
!141 = distinct !{null, !142, !"__already_done", i1 false, i1 false}
!142 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!143 = !{ptr @.str.67, !142, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @.str.68, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/greybus/es2.c", i32 706, i32 3}
!146 = !{ptr @.str.69, !145, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @latency_tag_enable._entry, !145, !"_entry", i1 false, i1 false}
!148 = !{ptr @latency_tag_enable._entry_ptr, !145, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @.str.70, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/greybus/es2.c", i32 724, i32 3}
!151 = !{ptr @.str.71, !150, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @latency_tag_disable._entry, !150, !"_entry", i1 false, i1 false}
!153 = !{ptr @latency_tag_disable._entry_ptr, !150, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @.str.72, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/greybus/es2.c", i32 163, i32 3}
!156 = !{ptr @.str.73, !155, !"<string literal>", i1 false, i1 false}
!157 = !{ptr @output_sync._entry, !155, !"_entry", i1 false, i1 false}
!158 = !{ptr @output_sync._entry_ptr, !155, !"_entry_ptr", i1 false, i1 false}
!159 = !{ptr @.str.74, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/greybus/es2.c", i32 830, i32 3}
!161 = !{ptr @.str.75, !160, !"<string literal>", i1 false, i1 false}
!162 = !{ptr @cport_in_callback._entry, !160, !"_entry", i1 false, i1 false}
!163 = !{ptr @cport_in_callback._entry_ptr, !160, !"_entry_ptr", i1 false, i1 false}
!164 = !{ptr @.str.77, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/greybus/es2.c", i32 835, i32 3}
!166 = !{ptr @cport_in_callback._entry.76, !165, !"_entry", i1 false, i1 false}
!167 = !{ptr @cport_in_callback._entry_ptr.78, !165, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @.str.80, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/greybus/es2.c", i32 847, i32 3}
!170 = !{ptr @cport_in_callback._entry.79, !169, !"_entry", i1 false, i1 false}
!171 = !{ptr @cport_in_callback._entry_ptr.81, !169, !"_entry_ptr", i1 false, i1 false}
!172 = !{ptr @.str.83, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/greybus/es2.c", i32 853, i32 3}
!174 = !{ptr @cport_in_callback._entry.82, !173, !"_entry", i1 false, i1 false}
!175 = !{ptr @cport_in_callback._entry_ptr.84, !173, !"_entry_ptr", i1 false, i1 false}
!176 = !{ptr @.str.85, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/greybus/es2.c", i32 1042, i32 3}
!178 = !{ptr @.str.86, !177, !"<string literal>", i1 false, i1 false}
!179 = !{ptr @arpc_in_callback._entry, !177, !"_entry", i1 false, i1 false}
!180 = !{ptr @arpc_in_callback._entry_ptr, !177, !"_entry_ptr", i1 false, i1 false}
!181 = !{ptr @.str.88, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/greybus/es2.c", i32 1047, i32 3}
!183 = !{ptr @arpc_in_callback._entry.87, !182, !"_entry", i1 false, i1 false}
!184 = !{ptr @arpc_in_callback._entry_ptr.89, !182, !"_entry_ptr", i1 false, i1 false}
!185 = !{ptr @.str.91, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/greybus/es2.c", i32 1055, i32 3}
!187 = !{ptr @arpc_in_callback._entry.90, !186, !"_entry", i1 false, i1 false}
!188 = !{ptr @arpc_in_callback._entry_ptr.92, !186, !"_entry_ptr", i1 false, i1 false}
!189 = !{ptr @.str.94, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/greybus/es2.c", i32 1070, i32 3}
!191 = !{ptr @arpc_in_callback._entry.93, !190, !"_entry", i1 false, i1 false}
!192 = !{ptr @arpc_in_callback._entry_ptr.95, !190, !"_entry_ptr", i1 false, i1 false}
!193 = !{ptr @apb_log_enable_fops, !194, !"apb_log_enable_fops", i1 false, i1 false}
!194 = !{!"../drivers/greybus/es2.c", i32 1196, i32 37}
!195 = !{ptr @.str.96, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/greybus/es2.c", i32 1173, i32 19}
!197 = !{ptr @.str.97, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/greybus/es2.c", i32 1145, i32 22}
!199 = !{ptr @apb_log_fops, !200, !"apb_log_fops", i1 false, i1 false}
!200 = !{!"../drivers/greybus/es2.c", i32 1135, i32 37}
!201 = !{ptr @.str.98, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/greybus/es2.c", i32 280, i32 4}
!203 = !{ptr @.str.99, !202, !"<string literal>", i1 false, i1 false}
!204 = !{ptr @es2_arpc_in_enable._entry, !202, !"_entry", i1 false, i1 false}
!205 = !{ptr @es2_arpc_in_enable._entry_ptr, !202, !"_entry_ptr", i1 false, i1 false}
!206 = !{ptr @.str.100, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/greybus/es2.c", i32 240, i32 4}
!208 = !{ptr @.str.101, !207, !"<string literal>", i1 false, i1 false}
!209 = !{ptr @es2_cport_in_enable._entry, !207, !"_entry", i1 false, i1 false}
!210 = !{ptr @es2_cport_in_enable._entry_ptr, !207, !"_entry_ptr", i1 false, i1 false}
!211 = !{ptr @id_table, !212, !"id_table", i1 false, i1 false}
!212 = !{!"../drivers/greybus/es2.c", i32 38, i32 35}
!213 = !{!"sp"}
!214 = !{i32 1, !"wchar_size", i32 2}
!215 = !{i32 1, !"min_enum_size", i32 4}
!216 = !{i32 8, !"branch-target-enforcement", i32 0}
!217 = !{i32 8, !"sign-return-address", i32 0}
!218 = !{i32 8, !"sign-return-address-all", i32 0}
!219 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!220 = !{i32 7, !"uwtable", i32 1}
!221 = !{i32 7, !"frame-pointer", i32 2}
!222 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!223 = !{i8 0, i8 2}
!224 = !{i64 2148283385, i64 2148283390, i64 2148283403, i64 2148283447, i64 2148283481, i64 2148283502}
!225 = !{!"auto-init"}
!226 = !{!"branch_weights", i32 2000, i32 1}
!227 = !{i64 2154642977}
!228 = !{i64 2154643188}
!229 = !{i64 2149295581}
!230 = !{i64 2149296617}
