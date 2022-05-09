; ModuleID = '/llk/IR_all_yes/drivers/usb/misc/yurex.c_pt.bc'
source_filename = "../drivers/usb/misc/yurex.c"
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
%struct.usb_class_driver = type { ptr, ptr, ptr, i32 }
%struct.atomic_t = type { i32 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.usb_yurex = type { ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, %struct.kref, %struct.mutex, i8, ptr, %struct.wait_queue_head, %struct.spinlock, i64 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
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
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.usb_ctrlrequest = type { i8, i8, i16, i16, i16 }
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.file = type { %union.anon.13, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.13 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.64, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.65, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.66, ptr, %struct.address_space, %struct.list_head, %union.anon.67, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.64 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.65 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.66 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.67 = type { ptr }

@__initcall__kmod_yurex__239_528_yurex_driver_init6 = internal global ptr @yurex_driver_init, section ".initcall6.init", align 4
@yurex_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str, ptr @yurex_probe, ptr @yurex_disconnect, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @yurex_table, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 0 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_yurex_driver_exit = internal global ptr @yurex_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file240 = internal constant [34 x i8] c"yurex.file=drivers/usb/misc/yurex\00", section ".modinfo", align 1
@__UNIQUE_ID_license241 = internal constant [18 x i8] c"yurex.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"yurex\00", [26 x i8] zeroinitializer }, align 32
@yurex_table = internal global { [2 x %struct.usb_device_id], [48 x i8] } { [2 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 3141, i16 4112, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@yurex_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&dev->io_mutex\00", [17 x i8] zeroinitializer }, align 32
@yurex_probe.__key.2 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&dev->lock\00", [21 x i8] zeroinitializer }, align 32
@yurex_probe.__key.4 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&dev->waitq\00", [20 x i8] zeroinitializer }, align 32
@yurex_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.8, i32 215, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Could not find endpoints\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"yurex_probe\00", [20 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/usb/misc/yurex.c\00", [39 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@yurex_probe._entry_ptr = internal global ptr @yurex_probe._entry, section ".printk_index", align 4
@yurex_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.7, ptr @.str.8, i32 237, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Could not allocate cntl_buffer\0A\00", [32 x i8] zeroinitializer }, align 32
@yurex_probe._entry_ptr.13 = internal global ptr @yurex_probe._entry.11, section ".printk_index", align 4
@yurex_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.7, ptr @.str.8, i32 265, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Could not allocate int_buffer\0A\00", [33 x i8] zeroinitializer }, align 32
@yurex_probe._entry_ptr.16 = internal global ptr @yurex_probe._entry.14, section ".printk_index", align 4
@yurex_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.7, ptr @.str.8, i32 277, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Could not submitting URB\0A\00", [38 x i8] zeroinitializer }, align 32
@yurex_probe._entry_ptr.19 = internal global ptr @yurex_probe._entry.17, section ".printk_index", align 4
@yurex_class = internal global { %struct.usb_class_driver, [16 x i8] } { %struct.usb_class_driver { ptr @.str.40, ptr null, ptr @yurex_fops, i32 0 }, [16 x i8] zeroinitializer }, align 32
@yurex_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.7, ptr @.str.8, i32 289, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Not able to get a minor for this device.\0A\00", [54 x i8] zeroinitializer }, align 32
@yurex_probe._entry_ptr.22 = internal global ptr @yurex_probe._entry.20, section ".printk_index", align 4
@yurex_probe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.7, ptr @.str.8, i32 296, ptr @.str.25, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"USB YUREX device now attached to Yurex #%d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@yurex_probe._entry_ptr.26 = internal global ptr @yurex_probe._entry.23, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@yurex_control_callback._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.8, i32 83, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s - control failed: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"yurex_control_callback\00", [41 x i8] zeroinitializer }, align 32
@yurex_control_callback._entry_ptr = internal global ptr @yurex_control_callback._entry, section ".printk_index", align 4
@yurex_interrupt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.8, i32 139, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"%s - overflow with length %d, actual length is %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"yurex_interrupt\00", [16 x i8] zeroinitializer }, align 32
@yurex_interrupt._entry_ptr = internal global ptr @yurex_interrupt._entry, section ".printk_index", align 4
@yurex_interrupt._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.30, ptr @.str.8, i32 150, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s - unknown status received: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@yurex_interrupt._entry_ptr.33 = internal global ptr @yurex_interrupt._entry.31, section ".printk_index", align 4
@yurex_interrupt.__UNIQUE_ID_ddebug233 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.30, ptr @.str.8, ptr @.str.34, i8 0, i8 41, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s count: %lld\0A\00", [16 x i8] zeroinitializer }, align 32
@yurex_interrupt.__UNIQUE_ID_ddebug234 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.30, ptr @.str.8, ptr @.str.35, i8 0, i8 43, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"data format error - no EOF\0A\00", [36 x i8] zeroinitializer }, align 32
@yurex_interrupt.__UNIQUE_ID_ddebug235 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.30, ptr @.str.8, ptr @.str.36, i8 0, i8 44, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%s ack: %c\0A\00", [20 x i8] zeroinitializer }, align 32
@yurex_interrupt._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.30, ptr @.str.8, i32 186, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s - usb_submit_urb failed: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@yurex_interrupt._entry_ptr.39 = internal global ptr @yurex_interrupt._entry.37, section ".printk_index", align 4
@.str.40 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"yurex%d\00", [24 x i8] zeroinitializer }, align 32
@yurex_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @yurex_read, ptr @yurex_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @yurex_open, ptr null, ptr @yurex_release, ptr null, ptr @yurex_fasync, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%lld\0A\00", [26 x i8] zeroinitializer }, align 32
@yurex_read.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@yurex_write.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.42, ptr @.str.8, ptr @.str.43, i8 0, i8 123, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"yurex_write\00", [20 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s - submit %c\0A\00", [16 x i8] zeroinitializer }, align 32
@yurex_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.42, ptr @.str.8, i32 507, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s - failed to send bulk msg, error %d\0A\00", [56 x i8] zeroinitializer }, align 32
@yurex_write._entry_ptr = internal global ptr @yurex_write._entry, section ".printk_index", align 4
@.str.47 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@yurex_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.49, ptr @.str.8, i32 363, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013%s - error, can't find device for minor %d\00", [51 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"yurex_open\00", [21 x i8] zeroinitializer }, align 32
@yurex_open._entry_ptr = internal global ptr @yurex_open._entry, section ".printk_index", align 4
@yurex_delete.__UNIQUE_ID_ddebug232 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.50, ptr @.str.8, ptr @.str.51, i8 0, i8 23, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"yurex_delete\00", [19 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@yurex_disconnect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.8, i32 332, ptr @.str.25, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"USB YUREX #%d now disconnected\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"yurex_disconnect\00", [47 x i8] zeroinitializer }, align 32
@yurex_disconnect._entry_ptr = internal global ptr @yurex_disconnect._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 4294967188, i64 4294967192, i64 4294967212, i64 4294967221, i64 4294967225, i64 4294967234, i64 4294967294]
@__sancov_gen_cov_switch_values.54 = internal global [5 x i64] [i64 3, i64 8, i64 33, i64 67, i64 82]
@__sancov_gen_cov_switch_values.55 = internal global [17 x i64] [i64 15, i64 8, i64 48, i64 49, i64 50, i64 51, i64 52, i64 53, i64 54, i64 55, i64 56, i64 57, i64 65, i64 76, i64 82, i64 83, i64 86]
@___asan_gen_.56 = private unnamed_addr constant [13 x i8] c"yurex_driver\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 335, i32 26 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 528, i32 1 }
@___asan_gen_.62 = private unnamed_addr constant [12 x i8] c"yurex_table\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 38, i32 29 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 204, i32 2 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 205, i32 2 }
@___asan_gen_.77 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 206, i32 2 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 215, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 237, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 265, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 277, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant [12 x i8] c"yurex_class\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 118, i32 32 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 288, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 294, i32 2 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 82, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 137, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 149, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 166, i32 4 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 173, i32 4 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 177, i32 3 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 185, i32 3 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 119, i32 11 }
@___asan_gen_.179 = private unnamed_addr constant [11 x i8] c"yurex_fops\00", align 1
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 518, i32 37 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 416, i32 32 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 492, i32 2 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 505, i32 3 }
@___asan_gen_.198 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 156, i32 2 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 362, i32 3 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 94, i32 2 }
@___asan_gen_.215 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.221 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.222 = private constant [28 x i8] c"../drivers/usb/misc/yurex.c\00", align 1
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 332, i32 2 }
@llvm.compiler.used = appending global [74 x ptr] [ptr @__UNIQUE_ID_file240, ptr @__UNIQUE_ID_license241, ptr @__exitcall_yurex_driver_exit, ptr @__initcall__kmod_yurex__239_528_yurex_driver_init6, ptr @yurex_control_callback._entry, ptr @yurex_control_callback._entry_ptr, ptr @yurex_disconnect._entry, ptr @yurex_disconnect._entry_ptr, ptr @yurex_driver_exit, ptr @yurex_interrupt._entry, ptr @yurex_interrupt._entry.31, ptr @yurex_interrupt._entry.37, ptr @yurex_interrupt._entry_ptr, ptr @yurex_interrupt._entry_ptr.33, ptr @yurex_interrupt._entry_ptr.39, ptr @yurex_open._entry, ptr @yurex_open._entry_ptr, ptr @yurex_probe._entry, ptr @yurex_probe._entry.11, ptr @yurex_probe._entry.14, ptr @yurex_probe._entry.17, ptr @yurex_probe._entry.20, ptr @yurex_probe._entry.23, ptr @yurex_probe._entry_ptr, ptr @yurex_probe._entry_ptr.13, ptr @yurex_probe._entry_ptr.16, ptr @yurex_probe._entry_ptr.19, ptr @yurex_probe._entry_ptr.22, ptr @yurex_probe._entry_ptr.26, ptr @yurex_write._entry, ptr @yurex_write._entry_ptr, ptr @yurex_driver, ptr @.str, ptr @yurex_table, ptr @yurex_probe.__key, ptr @.str.1, ptr @yurex_probe.__key.2, ptr @.str.3, ptr @yurex_probe.__key.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.15, ptr @.str.18, ptr @yurex_class, ptr @.str.21, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.38, ptr @.str.40, ptr @yurex_fops, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53], section "llvm.metadata"
@0 = internal global [56 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yurex_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yurex_table to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yurex_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yurex_probe.__key.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yurex_probe.__key.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yurex_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yurex_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yurex_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yurex_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yurex_class to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yurex_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yurex_probe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yurex_control_callback._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yurex_interrupt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yurex_interrupt._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yurex_interrupt._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yurex_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yurex_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yurex_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yurex_disconnect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @yurex_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @yurex_driver, ptr noundef null, ptr noundef nonnull @.str) #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @yurex_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @usb_deregister(ptr noundef nonnull @yurex_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @yurex_probe(ptr noundef %interface, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %endpoint = alloca ptr, align 4
  %wait = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %endpoint) #10
  %0 = ptrtoint ptr %endpoint to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %endpoint, align 4, !annotation !125
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait) #10
  %1 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 1
  %2 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 2
  %3 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3
  %4 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3, i32 1
  %5 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %wait, align 4
  %6 = tail call i32 @llvm.read_register.i32(metadata !115) #10
  %and.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %task, align 8
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %1, align 4
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @autoremove_wake_function, ptr %2, align 4
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %3, ptr %3, align 4
  %13 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %3, ptr %4, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %14 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %14, i32 noundef 3520, i32 noundef 240) #13
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %kref = getelementptr inbounds %struct.usb_yurex, ptr %call7.i.i, i32 0, i32 8
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #10
  %15 = ptrtoint ptr %kref to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile i32 1, ptr %kref, align 8
  %io_mutex = getelementptr inbounds %struct.usb_yurex, ptr %call7.i.i, i32 0, i32 9
  call void @__mutex_init(ptr noundef %io_mutex, ptr noundef nonnull @.str.1, ptr noundef nonnull @yurex_probe.__key) #10
  %lock = getelementptr inbounds %struct.usb_yurex, ptr %call7.i.i, i32 0, i32 13
  call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.3, ptr noundef nonnull @yurex_probe.__key.2, i16 noundef signext 3) #10
  %waitq = getelementptr inbounds %struct.usb_yurex, ptr %call7.i.i, i32 0, i32 12
  call void @__init_waitqueue_head(ptr noundef %waitq, ptr noundef nonnull @.str.5, ptr noundef nonnull @yurex_probe.__key.4) #10
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7, i32 1
  %16 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %17, i32 -128
  %call14 = call ptr @usb_get_dev(ptr noundef %add.ptr.i) #10
  %18 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call14, ptr %call7.i.i, align 8
  %call15 = call ptr @usb_get_intf(ptr noundef %interface) #10
  %interface16 = getelementptr inbounds %struct.usb_yurex, ptr %call7.i.i, i32 0, i32 1
  %19 = ptrtoint ptr %interface16 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call15, ptr %interface16, align 4
  %cur_altsetting = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 1
  %20 = ptrtoint ptr %cur_altsetting to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cur_altsetting, align 4
  %call.i = call i32 @usb_find_common_endpoints(ptr noundef %21, ptr noundef null, ptr noundef null, ptr noundef nonnull %endpoint, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool18.not = icmp eq i32 %call.i, 0
  br i1 %tobool18.not, label %if.end24, label %do.end22

do.end22:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %dev23 = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev23, ptr noundef nonnull @.str.6) #14
  br label %if.then110

if.end24:                                         ; preds = %if.end
  %22 = ptrtoint ptr %endpoint to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %endpoint, align 4
  %bEndpointAddress = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %bEndpointAddress to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %bEndpointAddress, align 1
  %int_in_endpointAddr = getelementptr inbounds %struct.usb_yurex, ptr %call7.i.i, i32 0, i32 2
  %26 = ptrtoint ptr %int_in_endpointAddr to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %int_in_endpointAddr, align 8
  %call25 = call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #10
  %cntl_urb = getelementptr inbounds %struct.usb_yurex, ptr %call7.i.i, i32 0, i32 5
  %27 = ptrtoint ptr %cntl_urb to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call25, ptr %cntl_urb, align 4
  %tobool27.not = icmp eq ptr %call25, null
  br i1 %tobool27.not, label %if.end24.if.then110_crit_edge, label %if.end29

if.end24.if.then110_crit_edge:                    ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then110

if.end29:                                         ; preds = %if.end24
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %28 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %28, i32 noundef 3264, i32 noundef 8) #13
  %cntl_req = getelementptr inbounds %struct.usb_yurex, ptr %call7.i.i, i32 0, i32 6
  %29 = ptrtoint ptr %cntl_req to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call7.i, ptr %cntl_req, align 8
  %tobool32.not = icmp eq ptr %call7.i, null
  br i1 %tobool32.not, label %if.end29.if.then110_crit_edge, label %if.end34

if.end29.if.then110_crit_edge:                    ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then110

if.end34:                                         ; preds = %if.end29
  %30 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %call7.i.i, align 8
  %32 = ptrtoint ptr %cntl_urb to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %cntl_urb, align 4
  %transfer_dma = getelementptr inbounds %struct.urb, ptr %33, i32 0, i32 15
  %call37 = call ptr @usb_alloc_coherent(ptr noundef %31, i32 noundef 8, i32 noundef 3264, ptr noundef %transfer_dma) #10
  %cntl_buffer = getelementptr inbounds %struct.usb_yurex, ptr %call7.i.i, i32 0, i32 7
  %34 = ptrtoint ptr %cntl_buffer to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call37, ptr %cntl_buffer, align 4
  %tobool39.not = icmp eq ptr %call37, null
  br i1 %tobool39.not, label %do.end43, label %if.end45

do.end43:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  %dev44 = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev44, ptr noundef nonnull @.str.12) #14
  br label %if.then110

if.end45:                                         ; preds = %if.end34
  %35 = ptrtoint ptr %cntl_req to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %cntl_req, align 8
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 33, ptr %36, align 1
  %38 = load ptr, ptr %cntl_req, align 8
  %bRequest = getelementptr inbounds %struct.usb_ctrlrequest, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %bRequest to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 9, ptr %bRequest, align 1
  %40 = load ptr, ptr %cntl_req, align 8
  %wValue = getelementptr inbounds %struct.usb_ctrlrequest, ptr %40, i32 0, i32 2
  %41 = ptrtoint ptr %wValue to i32
  call void @__asan_storeN_noabort(i32 %41, i32 2)
  store i16 2, ptr %wValue, align 1
  %bInterfaceNumber = getelementptr inbounds %struct.usb_interface_descriptor, ptr %21, i32 0, i32 2
  %42 = ptrtoint ptr %bInterfaceNumber to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %bInterfaceNumber, align 2
  %conv = zext i8 %43 to i16
  %44 = shl nuw i16 %conv, 8
  %45 = load ptr, ptr %cntl_req, align 8
  %wIndex = getelementptr inbounds %struct.usb_ctrlrequest, ptr %45, i32 0, i32 3
  %46 = ptrtoint ptr %wIndex to i32
  call void @__asan_storeN_noabort(i32 %46, i32 2)
  store i16 %44, ptr %wIndex, align 1
  %47 = load ptr, ptr %cntl_req, align 8
  %wLength = getelementptr inbounds %struct.usb_ctrlrequest, ptr %47, i32 0, i32 4
  %48 = ptrtoint ptr %wLength to i32
  call void @__asan_storeN_noabort(i32 %48, i32 2)
  store i16 2048, ptr %wLength, align 1
  %49 = ptrtoint ptr %cntl_urb to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %cntl_urb, align 4
  %51 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %call7.i.i, align 8
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %52, align 8
  %shl.i = shl i32 %54, 8
  %or = or i32 %shl.i, -2147483648
  %55 = load ptr, ptr %cntl_req, align 8
  %56 = ptrtoint ptr %cntl_buffer to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %cntl_buffer, align 4
  %dev1.i = getelementptr inbounds %struct.urb, ptr %50, i32 0, i32 8
  %58 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %52, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %50, i32 0, i32 10
  %59 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %or, ptr %pipe2.i, align 4
  %setup_packet3.i = getelementptr inbounds %struct.urb, ptr %50, i32 0, i32 21
  %60 = ptrtoint ptr %setup_packet3.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %55, ptr %setup_packet3.i, align 4
  %transfer_buffer4.i = getelementptr inbounds %struct.urb, ptr %50, i32 0, i32 14
  %61 = ptrtoint ptr %transfer_buffer4.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %57, ptr %transfer_buffer4.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %50, i32 0, i32 19
  %62 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 8, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %50, i32 0, i32 28
  %63 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr @yurex_control_callback, ptr %complete.i, align 4
  %context5.i = getelementptr inbounds %struct.urb, ptr %50, i32 0, i32 27
  %64 = ptrtoint ptr %context5.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %call7.i.i, ptr %context5.i, align 4
  %65 = load ptr, ptr %cntl_urb, align 4
  %transfer_flags = getelementptr inbounds %struct.urb, ptr %65, i32 0, i32 13
  %66 = ptrtoint ptr %transfer_flags to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %transfer_flags, align 4
  %or58 = or i32 %67, 4
  store i32 %or58, ptr %transfer_flags, align 4
  %call59 = call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #10
  %urb = getelementptr inbounds %struct.usb_yurex, ptr %call7.i.i, i32 0, i32 3
  %68 = ptrtoint ptr %urb to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %call59, ptr %urb, align 4
  %tobool61.not = icmp eq ptr %call59, null
  br i1 %tobool61.not, label %if.end45.if.then110_crit_edge, label %if.end63

if.end45.if.then110_crit_edge:                    ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then110

if.end63:                                         ; preds = %if.end45
  %69 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %call7.i.i, align 8
  %transfer_dma66 = getelementptr inbounds %struct.urb, ptr %call59, i32 0, i32 15
  %call67 = call ptr @usb_alloc_coherent(ptr noundef %70, i32 noundef 8, i32 noundef 3264, ptr noundef %transfer_dma66) #10
  %int_buffer = getelementptr inbounds %struct.usb_yurex, ptr %call7.i.i, i32 0, i32 4
  %71 = ptrtoint ptr %int_buffer to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %call67, ptr %int_buffer, align 8
  %tobool69.not = icmp eq ptr %call67, null
  br i1 %tobool69.not, label %do.end73, label %if.end75

do.end73:                                         ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #12
  %dev74 = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev74, ptr noundef nonnull @.str.15) #14
  br label %if.then110

if.end75:                                         ; preds = %if.end63
  %72 = ptrtoint ptr %urb to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %urb, align 4
  %74 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %call7.i.i, align 8
  %76 = ptrtoint ptr %int_in_endpointAddr to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %int_in_endpointAddr, align 8
  %conv80 = zext i8 %77 to i32
  %78 = ptrtoint ptr %75 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %75, align 8
  %shl.i179 = shl i32 %79, 8
  %shl1.i = shl nuw nsw i32 %conv80, 15
  %or.i = or i32 %shl1.i, %shl.i179
  %or83 = or i32 %or.i, 1073741952
  %dev1.i180 = getelementptr inbounds %struct.urb, ptr %73, i32 0, i32 8
  %80 = ptrtoint ptr %dev1.i180 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %75, ptr %dev1.i180, align 4
  %pipe2.i181 = getelementptr inbounds %struct.urb, ptr %73, i32 0, i32 10
  %81 = ptrtoint ptr %pipe2.i181 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %or83, ptr %pipe2.i181, align 4
  %transfer_buffer3.i = getelementptr inbounds %struct.urb, ptr %73, i32 0, i32 14
  %82 = ptrtoint ptr %transfer_buffer3.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %call67, ptr %transfer_buffer3.i, align 4
  %transfer_buffer_length.i182 = getelementptr inbounds %struct.urb, ptr %73, i32 0, i32 19
  %83 = ptrtoint ptr %transfer_buffer_length.i182 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 8, ptr %transfer_buffer_length.i182, align 4
  %complete.i183 = getelementptr inbounds %struct.urb, ptr %73, i32 0, i32 28
  %84 = ptrtoint ptr %complete.i183 to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr @yurex_interrupt, ptr %complete.i183, align 4
  %context4.i = getelementptr inbounds %struct.urb, ptr %73, i32 0, i32 27
  %85 = ptrtoint ptr %context4.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %call7.i.i, ptr %context4.i, align 4
  %86 = getelementptr inbounds %struct.urb, ptr %73, i32 0, i32 25
  %87 = ptrtoint ptr %86 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 1, ptr %86, align 4
  %start_frame.i = getelementptr inbounds %struct.urb, ptr %73, i32 0, i32 23
  %88 = ptrtoint ptr %start_frame.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 -1, ptr %start_frame.i, align 4
  %89 = load ptr, ptr %urb, align 4
  %transfer_flags86 = getelementptr inbounds %struct.urb, ptr %89, i32 0, i32 13
  %90 = ptrtoint ptr %transfer_flags86 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %transfer_flags86, align 4
  %or87 = or i32 %91, 4
  store i32 %or87, ptr %transfer_flags86, align 4
  %92 = load ptr, ptr %urb, align 4
  %call89 = call i32 @usb_submit_urb(ptr noundef %92, i32 noundef 3264) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call89)
  %tobool90.not = icmp eq i32 %call89, 0
  br i1 %tobool90.not, label %if.end96, label %if.then91

if.then91:                                        ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #12
  %dev95 = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev95, ptr noundef nonnull @.str.18) #14
  br label %if.then110

if.end96:                                         ; preds = %if.end75
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7, i32 8
  %93 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %bbu = getelementptr inbounds %struct.usb_yurex, ptr %call7.i.i, i32 0, i32 14
  %94 = ptrtoint ptr %bbu to i32
  call void @__asan_store8_noabort(i32 %94)
  store i64 -1, ptr %bbu, align 8
  %call97 = call i32 @usb_register_dev(ptr noundef %interface, ptr noundef nonnull @yurex_class) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call97)
  %tobool98.not = icmp eq i32 %call97, 0
  %dev108 = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7
  br i1 %tobool98.not, label %do.end107, label %do.end102

do.end102:                                        ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev108, ptr noundef nonnull @.str.21) #14
  %95 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr null, ptr %driver_data.i.i, align 4
  br label %if.then110

do.end107:                                        ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #12
  %minor = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 4
  %96 = ptrtoint ptr %minor to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %minor, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev108, ptr noundef nonnull @.str.24, i32 noundef %97) #14
  br label %cleanup

if.then110:                                       ; preds = %do.end102, %if.then91, %do.end73, %if.end45.if.then110_crit_edge, %do.end43, %if.end29.if.then110_crit_edge, %if.end24.if.then110_crit_edge, %do.end22
  %retval1.0.ph = phi i32 [ -12, %if.end24.if.then110_crit_edge ], [ -12, %if.end29.if.then110_crit_edge ], [ -12, %do.end43 ], [ -12, %if.end45.if.then110_crit_edge ], [ -12, %do.end73 ], [ %call97, %do.end102 ], [ -5, %if.then91 ], [ %call.i, %do.end22 ]
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !126
  call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #10
  %98 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #10, !srcloc !127
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %98, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then110
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !128

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef 3) #10
  br label %cleanup

if.then.i:                                        ; preds = %if.then110
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !129
  call fastcc void @yurex_delete(ptr noundef %kref) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %do.end107, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end107 ], [ -12, %entry.cleanup_crit_edge ], [ %retval1.0.ph, %if.end5.i.i.i.i.cleanup_crit_edge ], [ %retval1.0.ph, %if.then10.i.i.i.i ], [ %retval1.0.ph, %if.then.i ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %endpoint) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @yurex_disconnect(ptr noundef %interface) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %minor1 = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 4
  %0 = ptrtoint ptr %minor1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %minor1, align 8
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  store ptr null, ptr %driver_data.i.i, align 4
  tail call void @usb_deregister_dev(ptr noundef %interface, ptr noundef nonnull @yurex_class) #10
  %urb = getelementptr inbounds %struct.usb_yurex, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %urb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %urb, align 4
  tail call void @usb_poison_urb(ptr noundef %5) #10
  %cntl_urb = getelementptr inbounds %struct.usb_yurex, ptr %3, i32 0, i32 5
  %6 = ptrtoint ptr %cntl_urb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cntl_urb, align 4
  tail call void @usb_poison_urb(ptr noundef %7) #10
  %io_mutex = getelementptr inbounds %struct.usb_yurex, ptr %3, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %io_mutex, i32 noundef 0) #10
  %disconnected = getelementptr inbounds %struct.usb_yurex, ptr %3, i32 0, i32 10
  %8 = ptrtoint ptr %disconnected to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load = load i8, ptr %disconnected, align 8
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %disconnected, align 8
  tail call void @mutex_unlock(ptr noundef %io_mutex) #10
  %async_queue = getelementptr inbounds %struct.usb_yurex, ptr %3, i32 0, i32 11
  tail call void @kill_fasync(ptr noundef %async_queue, i32 noundef 29, i32 noundef 1) #10
  %waitq = getelementptr inbounds %struct.usb_yurex, ptr %3, i32 0, i32 12
  tail call void @__wake_up(ptr noundef %waitq, i32 noundef 1, i32 noundef 1, ptr noundef null) #10
  %kref = getelementptr inbounds %struct.usb_yurex, ptr %3, i32 0, i32 8
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !126
  tail call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #10
  %9 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #10, !srcloc !127
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !128

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef 3) #10
  br label %kref_put.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !129
  tail call fastcc void @yurex_delete(ptr noundef %kref) #10
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  %dev4 = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev4, ptr noundef nonnull @.str.52, i32 noundef %1) #14
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @autoremove_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_get_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_get_intf(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_urb(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_coherent(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @yurex_control_callback(ptr nocapture noundef readonly %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %status1 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %0 = ptrtoint ptr %status1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %status1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %2 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %context, align 4
  %dev2 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %4 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev2, align 4
  %dev3 = getelementptr inbounds %struct.usb_device, ptr %5, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.28, i32 noundef %1) #14
  %waitq = getelementptr inbounds %struct.usb_yurex, ptr %3, i32 0, i32 12
  tail call void @__wake_up(ptr noundef %waitq, i32 noundef 1, i32 noundef 1, ptr noundef null) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @yurex_interrupt(ptr nocapture noundef readonly %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %int_buffer = getelementptr inbounds %struct.usb_yurex, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %int_buffer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %int_buffer, align 8
  %status1 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %4 = ptrtoint ptr %status1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %status1, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %5, label %do.end7 [
    i32 0, label %sw.epilog
    i32 -75, label %do.end
    i32 -104, label %entry.cleanup_crit_edge
    i32 -2, label %entry.cleanup_crit_edge136
    i32 -108, label %entry.cleanup_crit_edge137
    i32 -84, label %entry.cleanup_crit_edge138
    i32 -71, label %entry.cleanup_crit_edge139
    i32 -62, label %entry.cleanup_crit_edge140
  ]

entry.cleanup_crit_edge140:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

entry.cleanup_crit_edge139:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

entry.cleanup_crit_edge138:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

entry.cleanup_crit_edge137:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

entry.cleanup_crit_edge136:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %interface = getelementptr inbounds %struct.usb_yurex, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %interface, align 4
  %dev2 = getelementptr inbounds %struct.usb_interface, ptr %8, i32 0, i32 7
  %urb3 = getelementptr inbounds %struct.usb_yurex, ptr %1, i32 0, i32 3
  %9 = ptrtoint ptr %urb3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %urb3, align 4
  %actual_length = getelementptr inbounds %struct.urb, ptr %10, i32 0, i32 20
  %11 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %actual_length, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.30, i32 noundef 8, i32 noundef %12) #14
  br label %cleanup

do.end7:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %interface8 = getelementptr inbounds %struct.usb_yurex, ptr %1, i32 0, i32 1
  %13 = ptrtoint ptr %interface8 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %interface8, align 4
  %dev9 = getelementptr inbounds %struct.usb_interface, ptr %14, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev9, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.30, i32 noundef %5) #14
  br label %cleanup

sw.epilog:                                        ; preds = %entry
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %3, align 1
  %17 = zext i8 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.54)
  switch i8 %16, label %sw.epilog.sw.epilog85_crit_edge [
    i8 67, label %sw.epilog.sw.bb10_crit_edge
    i8 82, label %sw.epilog.sw.bb10_crit_edge141
    i8 33, label %do.body65
  ]

sw.epilog.sw.bb10_crit_edge141:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb10

sw.epilog.sw.bb10_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb10

sw.epilog.sw.epilog85_crit_edge:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog85

sw.bb10:                                          ; preds = %sw.epilog.sw.bb10_crit_edge, %sw.epilog.sw.bb10_crit_edge141
  %arrayidx11 = getelementptr i8, ptr %3, i32 6
  %18 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx11, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 13, i8 %19)
  %cmp = icmp eq i8 %19, 13
  br i1 %cmp, label %do.body15, label %do.body45

do.body15:                                        ; preds = %sw.bb10
  %lock = getelementptr inbounds %struct.usb_yurex, ptr %1, i32 0, i32 13
  %call18 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %bbu = getelementptr inbounds %struct.usb_yurex, ptr %1, i32 0, i32 14
  %20 = ptrtoint ptr %bbu to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 0, ptr %bbu, align 8
  %arrayidx25 = getelementptr i8, ptr %3, i32 1
  %21 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx25, align 1
  %conv26 = zext i8 %22 to i64
  %shl = shl nuw nsw i64 %conv26, 8
  store i64 %shl, ptr %bbu, align 8
  %arrayidx25.1 = getelementptr i8, ptr %3, i32 2
  %23 = ptrtoint ptr %arrayidx25.1 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx25.1, align 1
  %conv26.1 = zext i8 %24 to i64
  %add.1 = or i64 %shl, %conv26.1
  %shl.1 = shl nuw nsw i64 %add.1, 8
  store i64 %shl.1, ptr %bbu, align 8
  %arrayidx25.2 = getelementptr i8, ptr %3, i32 3
  %25 = ptrtoint ptr %arrayidx25.2 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx25.2, align 1
  %conv26.2 = zext i8 %26 to i64
  %add.2 = or i64 %shl.1, %conv26.2
  %shl.2 = shl nuw nsw i64 %add.2, 8
  store i64 %shl.2, ptr %bbu, align 8
  %arrayidx25.3 = getelementptr i8, ptr %3, i32 4
  %27 = ptrtoint ptr %arrayidx25.3 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx25.3, align 1
  %conv26.3 = zext i8 %28 to i64
  %add.3 = or i64 %shl.2, %conv26.3
  %shl.3 = shl i64 %add.3, 8
  store i64 %shl.3, ptr %bbu, align 8
  %arrayidx25.4 = getelementptr i8, ptr %3, i32 5
  %29 = ptrtoint ptr %arrayidx25.4 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx25.4, align 1
  %conv26.4 = zext i8 %30 to i64
  %add.4 = or i64 %shl.3, %conv26.4
  store i64 %add.4, ptr %bbu, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @yurex_interrupt.__UNIQUE_ID_ddebug233, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@yurex_interrupt, %if.then37)) #10
          to label %do.end43 [label %if.then37], !srcloc !130

if.then37:                                        ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #12
  %interface38 = getelementptr inbounds %struct.usb_yurex, ptr %1, i32 0, i32 1
  %31 = ptrtoint ptr %interface38 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %interface38, align 4
  %dev39 = getelementptr inbounds %struct.usb_interface, ptr %32, i32 0, i32 7
  %33 = ptrtoint ptr %bbu to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %bbu, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @yurex_interrupt.__UNIQUE_ID_ddebug233, ptr noundef %dev39, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.30, i64 noundef %34) #10
  br label %do.end43

do.end43:                                         ; preds = %if.then37, %do.body15
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call18) #10
  %async_queue = getelementptr inbounds %struct.usb_yurex, ptr %1, i32 0, i32 11
  tail call void @kill_fasync(ptr noundef %async_queue, i32 noundef 29, i32 noundef 1) #10
  br label %sw.epilog85

do.body45:                                        ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @yurex_interrupt.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@yurex_interrupt, %if.then57)) #10
          to label %sw.epilog85 [label %if.then57], !srcloc !130

if.then57:                                        ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #12
  %interface58 = getelementptr inbounds %struct.usb_yurex, ptr %1, i32 0, i32 1
  %35 = ptrtoint ptr %interface58 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %interface58, align 4
  %dev59 = getelementptr inbounds %struct.usb_interface, ptr %36, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @yurex_interrupt.__UNIQUE_ID_ddebug234, ptr noundef %dev59, ptr noundef nonnull @.str.35) #10
  br label %sw.epilog85

do.body65:                                        ; preds = %sw.epilog
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @yurex_interrupt.__UNIQUE_ID_ddebug235, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@yurex_interrupt, %if.then77)) #10
          to label %do.end84 [label %if.then77], !srcloc !130

if.then77:                                        ; preds = %do.body65
  call void @__sanitizer_cov_trace_pc() #12
  %interface78 = getelementptr inbounds %struct.usb_yurex, ptr %1, i32 0, i32 1
  %37 = ptrtoint ptr %interface78 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %interface78, align 4
  %dev79 = getelementptr inbounds %struct.usb_interface, ptr %38, i32 0, i32 7
  %arrayidx80 = getelementptr i8, ptr %3, i32 1
  %39 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx80, align 1
  %conv81 = zext i8 %40 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @yurex_interrupt.__UNIQUE_ID_ddebug235, ptr noundef %dev79, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.30, i32 noundef %conv81) #10
  br label %do.end84

do.end84:                                         ; preds = %if.then77, %do.body65
  %waitq = getelementptr inbounds %struct.usb_yurex, ptr %1, i32 0, i32 12
  tail call void @__wake_up(ptr noundef %waitq, i32 noundef 1, i32 noundef 1, ptr noundef null) #10
  br label %sw.epilog85

sw.epilog85:                                      ; preds = %do.end84, %if.then57, %do.body45, %do.end43, %sw.epilog.sw.epilog85_crit_edge
  %urb86 = getelementptr inbounds %struct.usb_yurex, ptr %1, i32 0, i32 3
  %41 = ptrtoint ptr %urb86 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %urb86, align 4
  %call87 = tail call i32 @usb_submit_urb(ptr noundef %42, i32 noundef 2592) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87)
  %tobool88.not = icmp eq i32 %call87, 0
  br i1 %tobool88.not, label %sw.epilog85.cleanup_crit_edge, label %do.end92

sw.epilog85.cleanup_crit_edge:                    ; preds = %sw.epilog85
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end92:                                         ; preds = %sw.epilog85
  call void @__sanitizer_cov_trace_pc() #12
  %interface93 = getelementptr inbounds %struct.usb_yurex, ptr %1, i32 0, i32 1
  %43 = ptrtoint ptr %interface93 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %interface93, align 4
  %dev94 = getelementptr inbounds %struct.usb_interface, ptr %44, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev94, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.30, i32 noundef %call87) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end92, %sw.epilog85.cleanup_crit_edge, %do.end7, %do.end, %entry.cleanup_crit_edge, %entry.cleanup_crit_edge136, %entry.cleanup_crit_edge137, %entry.cleanup_crit_edge138, %entry.cleanup_crit_edge139, %entry.cleanup_crit_edge140
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_dev(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @yurex_delete(ptr noundef %kref) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %kref, i32 -32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @yurex_delete.__UNIQUE_ID_ddebug232, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@yurex_delete, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !130

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %interface = getelementptr i8, ptr %kref, i32 -28
  %0 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %interface, align 4
  %dev4 = getelementptr inbounds %struct.usb_interface, ptr %1, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @yurex_delete.__UNIQUE_ID_ddebug232, ptr noundef %dev4, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.50) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %cntl_urb = getelementptr i8, ptr %kref, i32 -12
  %2 = ptrtoint ptr %cntl_urb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cntl_urb, align 4
  %tobool5.not = icmp eq ptr %3, null
  br i1 %tobool5.not, label %do.end.if.end10_crit_edge, label %if.then6

do.end.if.end10_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

if.then6:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @usb_kill_urb(ptr noundef nonnull %3) #10
  %cntl_req = getelementptr i8, ptr %kref, i32 -8
  %4 = ptrtoint ptr %cntl_req to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cntl_req, align 8
  tail call void @kfree(ptr noundef %5) #10
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr, align 8
  %cntl_buffer = getelementptr i8, ptr %kref, i32 -4
  %8 = ptrtoint ptr %cntl_buffer to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cntl_buffer, align 4
  %10 = ptrtoint ptr %cntl_urb to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cntl_urb, align 4
  %transfer_dma = getelementptr inbounds %struct.urb, ptr %11, i32 0, i32 15
  %12 = ptrtoint ptr %transfer_dma to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %transfer_dma, align 4
  tail call void @usb_free_coherent(ptr noundef %7, i32 noundef 8, ptr noundef %9, i32 noundef %13) #10
  %14 = ptrtoint ptr %cntl_urb to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cntl_urb, align 4
  tail call void @usb_free_urb(ptr noundef %15) #10
  br label %if.end10

if.end10:                                         ; preds = %if.then6, %do.end.if.end10_crit_edge
  %urb = getelementptr i8, ptr %kref, i32 -20
  %16 = ptrtoint ptr %urb to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %urb, align 4
  %tobool11.not = icmp eq ptr %17, null
  br i1 %tobool11.not, label %if.end10.if.end18_crit_edge, label %if.then12

if.end10.if.end18_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

if.then12:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @usb_kill_urb(ptr noundef nonnull %17) #10
  %18 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %add.ptr, align 8
  %int_buffer = getelementptr i8, ptr %kref, i32 -16
  %20 = ptrtoint ptr %int_buffer to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %int_buffer, align 8
  %22 = ptrtoint ptr %urb to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %urb, align 4
  %transfer_dma16 = getelementptr inbounds %struct.urb, ptr %23, i32 0, i32 15
  %24 = ptrtoint ptr %transfer_dma16 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %transfer_dma16, align 4
  tail call void @usb_free_coherent(ptr noundef %19, i32 noundef 8, ptr noundef %21, i32 noundef %25) #10
  %26 = ptrtoint ptr %urb to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %urb, align 4
  tail call void @usb_free_urb(ptr noundef %27) #10
  br label %if.end18

if.end18:                                         ; preds = %if.then12, %if.end10.if.end18_crit_edge
  %interface19 = getelementptr i8, ptr %kref, i32 -28
  %28 = ptrtoint ptr %interface19 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %interface19, align 4
  tail call void @usb_put_intf(ptr noundef %29) #10
  %30 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %add.ptr, align 8
  tail call void @usb_put_dev(ptr noundef %31) #10
  tail call void @kfree(ptr noundef %add.ptr) #10
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_find_common_endpoints(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kill_fasync(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @default_llseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @yurex_read(ptr nocapture noundef readonly %file, ptr noundef %buffer, i32 noundef %count, ptr noundef %ppos) #2 align 64 {
entry:
  %in_buffer = alloca [20 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %in_buffer) #10
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = call ptr @memset(ptr %in_buffer, i32 255, i32 20)
  %1 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %private_data, align 4
  %io_mutex = getelementptr inbounds %struct.usb_yurex, ptr %2, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %io_mutex, i32 noundef 0) #10
  %disconnected = getelementptr inbounds %struct.usb_yurex, ptr %2, i32 0, i32 10
  %3 = ptrtoint ptr %disconnected to i32
  call void @__asan_load1_noabort(i32 %3)
  %bf.load = load i8, ptr %disconnected, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %do.body2, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mutex_unlock(ptr noundef %io_mutex) #10
  br label %cleanup

do.body2:                                         ; preds = %entry
  %lock = getelementptr inbounds %struct.usb_yurex, ptr %2, i32 0, i32 13
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %bbu = getelementptr inbounds %struct.usb_yurex, ptr %2, i32 0, i32 14
  %4 = ptrtoint ptr %bbu to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %bbu, align 8
  %call6 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %in_buffer, i32 noundef 20, ptr noundef nonnull @.str.41, i64 noundef %5)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #10
  tail call void @mutex_unlock(ptr noundef %io_mutex) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %call6)
  %cmp9 = icmp ugt i32 %call6, 19
  br i1 %cmp9, label %land.rhs, label %if.end55

land.rhs:                                         ; preds = %do.body2
  %.b70 = load i1, ptr @yurex_read.__already_done, align 1
  br i1 %.b70, label %land.rhs.cleanup_crit_edge, label %if.then19, !prof !128

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then19:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @yurex_read.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 420, i32 noundef 9, ptr noundef null) #10
  br label %cleanup

if.end55:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #12
  %call57 = call i32 @simple_read_from_buffer(ptr noundef %buffer, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %in_buffer, i32 noundef %call6) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end55, %if.then19, %land.rhs.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ -19, %if.then ], [ %call57, %if.end55 ], [ -5, %if.then19 ], [ -5, %land.rhs.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %in_buffer) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @yurex_write(ptr nocapture noundef readonly %file, ptr noundef %user_buffer, i32 noundef %count, ptr nocapture noundef readnone %ppos) #2 align 64 {
entry:
  %buffer = alloca [17 x i8], align 1
  %wait = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %buffer) #10
  %0 = getelementptr inbounds [17 x i8], ptr %buffer, i32 0, i32 1
  %1 = getelementptr inbounds [17 x i8], ptr %buffer, i32 0, i32 6
  %2 = call ptr @memset(ptr %buffer, i32 255, i32 17)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait) #10
  %3 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 1
  %4 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 2
  %5 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3
  %6 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3, i32 1
  %7 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %wait, align 4
  %8 = tail call i32 @llvm.read_register.i32(metadata !115) #10
  %and.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %task, align 8
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %3, align 4
  %13 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @autoremove_wake_function, ptr %4, align 4
  %14 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %5, ptr %5, align 4
  %15 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %5, ptr %6, align 4
  %16 = call i32 @llvm.umin.i32(i32 %count, i32 16)
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %17 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %private_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp5 = icmp eq i32 %16, 0
  br i1 %cmp5, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %io_mutex = getelementptr inbounds %struct.usb_yurex, ptr %18, i32 0, i32 9
  call void @mutex_lock_nested(ptr noundef %io_mutex, i32 noundef 0) #10
  %disconnected = getelementptr inbounds %struct.usb_yurex, ptr %18, i32 0, i32 10
  %19 = ptrtoint ptr %disconnected to i32
  call void @__asan_load1_noabort(i32 %19)
  %bf.load = load i8, ptr %disconnected, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %if.then.i.i.i, label %if.then6

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  call void @mutex_unlock(ptr noundef %io_mutex) #10
  br label %cleanup

if.then.i.i.i:                                    ; preds = %if.end
  call void @__check_object_size(ptr noundef nonnull %buffer, i32 noundef %16, i1 noundef zeroext false) #10
  call void @__might_fault(ptr noundef nonnull @.str.47, i32 noundef 156) #10
  %call.i.i = call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i, label %if.then.i.i.i.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.then.i.i.i.if.then11.i.i_crit_edge:            ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i.i.i
  %20 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %user_buffer, i32 %16, i32 -1226833920) #15, !srcloc !131
  %asmresult.i.i = extractvalue { i32, i32 } %20, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !128

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %buffer, i32 noundef %16) #10
  %21 = call i32 @llvm.read_register.i32(metadata !115) #10
  %and.i.i.i.i.i.i = and i32 %21, -16384
  %22 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 4
  %23 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #5, !srcloc !132
  %and.i.i.i.i = and i32 %23, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #10, !srcloc !133
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !134
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %buffer, ptr noundef %user_buffer, i32 noundef %16) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %23) #10, !srcloc !133
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !134
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end14, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !128

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.then.i.i.i.if.then11.i.i_crit_edge
  %res.0.i.i129 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ %16, %if.then.i.i.i.if.then11.i.i_crit_edge ], [ %16, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 %16, %res.0.i.i129
  %add.ptr.i.i = getelementptr i8, ptr %buffer, i32 %sub.i.i
  %24 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i129)
  call void @mutex_unlock(ptr noundef %io_mutex) #10
  br label %cleanup

if.end14:                                         ; preds = %if.end.i.i
  %arrayidx = getelementptr [17 x i8], ptr %buffer, i32 0, i32 %16
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %arrayidx, align 1
  %cntl_buffer = getelementptr inbounds %struct.usb_yurex, ptr %18, i32 0, i32 7
  %26 = ptrtoint ptr %cntl_buffer to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %cntl_buffer, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_storeN_noabort(i32 %28, i32 8)
  store i64 -1, ptr %27, align 1
  %29 = ptrtoint ptr %buffer to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %buffer, align 1
  %31 = zext i8 %30 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.55)
  switch i8 %30, label %sw.default [
    i8 65, label %if.end14.sw.bb_crit_edge
    i8 76, label %if.end14.sw.bb_crit_edge135
    i8 82, label %if.end14.sw.bb24_crit_edge
    i8 86, label %if.end14.sw.bb24_crit_edge136
    i8 83, label %sw.bb32
    i8 48, label %if.end14.sw.bb33_crit_edge
    i8 49, label %if.end14.sw.bb33_crit_edge137
    i8 50, label %if.end14.sw.bb33_crit_edge138
    i8 51, label %if.end14.sw.bb33_crit_edge139
    i8 52, label %if.end14.sw.bb33_crit_edge140
    i8 53, label %if.end14.sw.bb33_crit_edge141
    i8 54, label %if.end14.sw.bb33_crit_edge142
    i8 55, label %if.end14.sw.bb33_crit_edge143
    i8 56, label %if.end14.sw.bb33_crit_edge144
    i8 57, label %if.end14.sw.bb33_crit_edge145
  ]

if.end14.sw.bb33_crit_edge145:                    ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb33

if.end14.sw.bb33_crit_edge144:                    ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb33

if.end14.sw.bb33_crit_edge143:                    ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb33

if.end14.sw.bb33_crit_edge142:                    ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb33

if.end14.sw.bb33_crit_edge141:                    ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb33

if.end14.sw.bb33_crit_edge140:                    ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb33

if.end14.sw.bb33_crit_edge139:                    ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb33

if.end14.sw.bb33_crit_edge138:                    ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb33

if.end14.sw.bb33_crit_edge137:                    ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb33

if.end14.sw.bb33_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb33

if.end14.sw.bb24_crit_edge136:                    ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb24

if.end14.sw.bb24_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb24

if.end14.sw.bb_crit_edge135:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

if.end14.sw.bb_crit_edge:                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

sw.bb:                                            ; preds = %if.end14.sw.bb_crit_edge, %if.end14.sw.bb_crit_edge135
  %32 = ptrtoint ptr %cntl_buffer to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %cntl_buffer, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %30, ptr %33, align 1
  %35 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %0, align 1
  %37 = load ptr, ptr %cntl_buffer, align 4
  %arrayidx21 = getelementptr i8, ptr %37, i32 1
  %38 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %36, ptr %arrayidx21, align 1
  %39 = load ptr, ptr %cntl_buffer, align 4
  %arrayidx23 = getelementptr i8, ptr %39, i32 2
  br label %sw.epilog

sw.bb24:                                          ; preds = %if.end14.sw.bb24_crit_edge, %if.end14.sw.bb24_crit_edge136
  %40 = ptrtoint ptr %cntl_buffer to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %cntl_buffer, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %30, ptr %41, align 1
  %43 = load ptr, ptr %cntl_buffer, align 4
  %arrayidx29 = getelementptr i8, ptr %43, i32 1
  %44 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 0, ptr %arrayidx29, align 1
  %45 = load ptr, ptr %cntl_buffer, align 4
  %arrayidx31 = getelementptr i8, ptr %45, i32 2
  br label %sw.epilog

sw.bb32:                                          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb33

sw.bb33:                                          ; preds = %sw.bb32, %if.end14.sw.bb33_crit_edge, %if.end14.sw.bb33_crit_edge137, %if.end14.sw.bb33_crit_edge138, %if.end14.sw.bb33_crit_edge139, %if.end14.sw.bb33_crit_edge140, %if.end14.sw.bb33_crit_edge141, %if.end14.sw.bb33_crit_edge142, %if.end14.sw.bb33_crit_edge143, %if.end14.sw.bb33_crit_edge144, %if.end14.sw.bb33_crit_edge145
  %data.0 = phi ptr [ %buffer, %if.end14.sw.bb33_crit_edge ], [ %buffer, %if.end14.sw.bb33_crit_edge137 ], [ %buffer, %if.end14.sw.bb33_crit_edge138 ], [ %buffer, %if.end14.sw.bb33_crit_edge139 ], [ %buffer, %if.end14.sw.bb33_crit_edge140 ], [ %buffer, %if.end14.sw.bb33_crit_edge141 ], [ %buffer, %if.end14.sw.bb33_crit_edge142 ], [ %buffer, %if.end14.sw.bb33_crit_edge143 ], [ %buffer, %if.end14.sw.bb33_crit_edge144 ], [ %buffer, %if.end14.sw.bb33_crit_edge145 ], [ %0, %sw.bb32 ]
  %call34 = call i64 @simple_strtoull(ptr noundef %data.0, ptr noundef null, i32 noundef 0) #10
  %46 = ptrtoint ptr %cntl_buffer to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %cntl_buffer, align 4
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 83, ptr %47, align 1
  %shr = lshr i64 %call34, 32
  %conv39 = trunc i64 %shr to i8
  %49 = load ptr, ptr %cntl_buffer, align 4
  %arrayidx41 = getelementptr i8, ptr %49, i32 1
  %50 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %conv39, ptr %arrayidx41, align 1
  %51 = lshr i64 %call34, 24
  %conv39.1 = trunc i64 %51 to i8
  %52 = load ptr, ptr %cntl_buffer, align 4
  %arrayidx41.1 = getelementptr i8, ptr %52, i32 2
  %53 = ptrtoint ptr %arrayidx41.1 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %conv39.1, ptr %arrayidx41.1, align 1
  %54 = lshr i64 %call34, 16
  %conv39.2 = trunc i64 %54 to i8
  %55 = load ptr, ptr %cntl_buffer, align 4
  %arrayidx41.2 = getelementptr i8, ptr %55, i32 3
  %56 = ptrtoint ptr %arrayidx41.2 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %conv39.2, ptr %arrayidx41.2, align 1
  %57 = lshr i64 %call34, 8
  %conv39.3 = trunc i64 %57 to i8
  %58 = load ptr, ptr %cntl_buffer, align 4
  %arrayidx41.3 = getelementptr i8, ptr %58, i32 4
  %59 = ptrtoint ptr %arrayidx41.3 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %conv39.3, ptr %arrayidx41.3, align 1
  %conv39.4 = trunc i64 %call34 to i8
  %60 = load ptr, ptr %cntl_buffer, align 4
  %arrayidx41.4 = getelementptr i8, ptr %60, i32 5
  %61 = ptrtoint ptr %arrayidx41.4 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %conv39.4, ptr %arrayidx41.4, align 1
  br label %sw.epilog

sw.default:                                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  call void @mutex_unlock(ptr noundef %io_mutex) #10
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb33, %sw.bb24, %sw.bb
  %.sink = phi ptr [ %1, %sw.bb33 ], [ %arrayidx31, %sw.bb24 ], [ %arrayidx23, %sw.bb ]
  %tobool73.not = phi i1 [ false, %sw.bb33 ], [ true, %sw.bb24 ], [ true, %sw.bb ]
  %c2.0 = phi i64 [ %call34, %sw.bb33 ], [ 0, %sw.bb24 ], [ 0, %sw.bb ]
  %62 = ptrtoint ptr %.sink to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 13, ptr %.sink, align 1
  %waitq = getelementptr inbounds %struct.usb_yurex, ptr %18, i32 0, i32 12
  call void @prepare_to_wait(ptr noundef %waitq, ptr noundef nonnull %wait, i32 noundef 1) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @yurex_write.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@yurex_write, %if.then49)) #10
          to label %do.end [label %if.then49], !srcloc !130

if.then49:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  %interface = getelementptr inbounds %struct.usb_yurex, ptr %18, i32 0, i32 1
  %63 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %interface, align 4
  %dev50 = getelementptr inbounds %struct.usb_interface, ptr %64, i32 0, i32 7
  %65 = ptrtoint ptr %cntl_buffer to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %cntl_buffer, align 4
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %66, align 1
  %conv53 = zext i8 %68 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @yurex_write.__UNIQUE_ID_ddebug238, ptr noundef %dev50, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.42, i32 noundef %conv53) #10
  br label %do.end

do.end:                                           ; preds = %if.then49, %sw.epilog
  %cntl_urb = getelementptr inbounds %struct.usb_yurex, ptr %18, i32 0, i32 5
  %69 = ptrtoint ptr %cntl_urb to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %cntl_urb, align 4
  %call55 = call i32 @usb_submit_urb(ptr noundef %70, i32 noundef 2592) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call55)
  %cmp56 = icmp sgt i32 %call55, -1
  br i1 %cmp56, label %if.then58, label %do.end.if.end60_crit_edge

do.end.if.end60_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end60

if.then58:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %call59 = call i32 @schedule_timeout(i32 noundef 200) #10
  br label %if.end60

if.end60:                                         ; preds = %if.then58, %do.end.if.end60_crit_edge
  %timeout.0 = phi i32 [ %call59, %if.then58 ], [ 0, %do.end.if.end60_crit_edge ]
  call void @finish_wait(ptr noundef %waitq, ptr noundef nonnull %wait) #10
  %71 = ptrtoint ptr %cntl_urb to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %cntl_urb, align 4
  call void @usb_kill_urb(ptr noundef %72) #10
  call void @mutex_unlock(ptr noundef %io_mutex) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %cmp64 = icmp slt i32 %call55, 0
  br i1 %cmp64, label %do.end69, label %if.end72

do.end69:                                         ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #12
  %interface70 = getelementptr inbounds %struct.usb_yurex, ptr %18, i32 0, i32 1
  %73 = ptrtoint ptr %interface70 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %interface70, align 4
  %dev71 = getelementptr inbounds %struct.usb_interface, ptr %74, i32 0, i32 7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev71, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.42, i32 noundef %call55) #14
  br label %cleanup

if.end72:                                         ; preds = %if.end60
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout.0)
  %tobool74.not = icmp eq i32 %timeout.0, 0
  %or.cond = select i1 %tobool73.not, i1 true, i1 %tobool74.not
  br i1 %or.cond, label %if.end72.if.end76_crit_edge, label %if.then75

if.end72.if.end76_crit_edge:                      ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end76

if.then75:                                        ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #12
  %bbu = getelementptr inbounds %struct.usb_yurex, ptr %18, i32 0, i32 14
  %75 = ptrtoint ptr %bbu to i32
  call void @__asan_store8_noabort(i32 %75)
  store i64 %c2.0, ptr %bbu, align 8
  br label %if.end76

if.end76:                                         ; preds = %if.then75, %if.end72.if.end76_crit_edge
  %spec.select = select i1 %tobool74.not, i32 -5, i32 %16
  br label %cleanup

cleanup:                                          ; preds = %if.end76, %do.end69, %sw.default, %if.then11.i.i, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %sw.default ], [ %spec.select, %if.end76 ], [ 0, %entry.cleanup_crit_edge ], [ -19, %if.then6 ], [ -14, %if.then11.i.i ], [ %call55, %do.end69 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #10
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %buffer) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @yurex_open(ptr nocapture noundef readonly %inode, ptr nocapture noundef writeonly %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %i_rdev.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 13
  %0 = ptrtoint ptr %i_rdev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i_rdev.i, align 8
  %and.i = and i32 %1, 1048575
  %call2 = tail call ptr @usb_find_interface(ptr noundef nonnull @yurex_driver, i32 noundef %and.i) #10
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.49, i32 noundef %and.i) #14
  br label %exit

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %call2, i32 0, i32 7, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %tobool5.not = icmp eq ptr %3, null
  br i1 %tobool5.not, label %if.end.exit_crit_edge, label %if.end7

if.end.exit_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %exit

if.end7:                                          ; preds = %if.end
  %kref = getelementptr inbounds %struct.usb_yurex, ptr %3, i32 0, i32 8
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #10
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #10, !srcloc !135
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end7.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !136

if.end7.if.end15.sink.split.i.i.i.i_crit_edge:    ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end7
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %5 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %.not.i.i.i.i = icmp sgt i32 %5, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.kref_get.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !128

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.kref_get.exit_crit_edge:          ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %kref_get.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.end7.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.end7.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef %.sink.i.i.i.i) #10
  br label %kref_get.exit

kref_get.exit:                                    ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.kref_get.exit_crit_edge
  %io_mutex = getelementptr inbounds %struct.usb_yurex, ptr %3, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %io_mutex, i32 noundef 0) #10
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %6 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %private_data, align 4
  tail call void @mutex_unlock(ptr noundef %io_mutex) #10
  br label %exit

exit:                                             ; preds = %kref_get.exit, %if.end.exit_crit_edge, %do.end
  %retval1.0 = phi i32 [ 0, %kref_get.exit ], [ -19, %do.end ], [ -19, %if.end.exit_crit_edge ]
  ret i32 %retval1.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @yurex_release(ptr nocapture noundef readnone %inode, ptr nocapture noundef readonly %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %kref = getelementptr inbounds %struct.usb_yurex, ptr %1, i32 0, i32 8
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !126
  tail call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #10
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #10, !srcloc !127
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !128

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef 3) #10
  br label %cleanup

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !129
  tail call fastcc void @yurex_delete(ptr noundef %kref) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %entry.cleanup_crit_edge ], [ 0, %if.end5.i.i.i.i.cleanup_crit_edge ], [ 0, %if.then10.i.i.i.i ], [ 0, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @yurex_fasync(i32 noundef %fd, ptr noundef %file, i32 noundef %on) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %async_queue = getelementptr inbounds %struct.usb_yurex, ptr %1, i32 0, i32 11
  %call = tail call i32 @fasync_helper(i32 noundef %fd, ptr noundef %file, i32 noundef %on, ptr noundef %async_queue) #10
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_read_from_buffer(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @simple_strtoull(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @prepare_to_wait(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_kill_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_find_interface(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fasync_helper(i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_coherent(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_put_intf(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_put_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister_dev(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_poison_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 56)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 56)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind readonly }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !7, !9, !11, !12, !14, !15, !17, !18, !20, !21, !22, !23, !24, !25, !26, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !41, !42, !44, !45, !46, !47, !49, !50, !51, !52, !54, !55, !56, !57, !59, !60, !61, !63, !64, !66, !67, !69, !70, !72, !73, !74, !76, !78, !80, !82, !84, !86, !87, !88, !90, !91, !92, !94, !95, !97, !99, !101, !102, !103, !104, !106, !107, !108, !110, !111, !112, !113}
!llvm.named.register.sp = !{!115}
!llvm.module.flags = !{!116, !117, !118, !119, !120, !121, !122, !123}
!llvm.ident = !{!124}

!0 = !{ptr @__initcall__kmod_yurex__239_528_yurex_driver_init6, !1, !"__initcall__kmod_yurex__239_528_yurex_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/usb/misc/yurex.c", i32 528, i32 1}
!2 = !{ptr @__exitcall_yurex_driver_exit, !1, !"__exitcall_yurex_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file240, !4, !"__UNIQUE_ID_file240", i1 false, i1 false}
!4 = !{!"../drivers/usb/misc/yurex.c", i32 530, i32 1}
!5 = !{ptr @__UNIQUE_ID_license241, !4, !"__UNIQUE_ID_license241", i1 false, i1 false}
!6 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @yurex_driver, !8, !"yurex_driver", i1 false, i1 false}
!8 = !{!"../drivers/usb/misc/yurex.c", i32 335, i32 26}
!9 = !{ptr @yurex_probe.__key, !10, !"__key", i1 false, i1 false}
!10 = !{!"../drivers/usb/misc/yurex.c", i32 204, i32 2}
!11 = !{ptr @.str.1, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @yurex_probe.__key.2, !13, !"__key", i1 false, i1 false}
!13 = !{!"../drivers/usb/misc/yurex.c", i32 205, i32 2}
!14 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @yurex_probe.__key.4, !16, !"__key", i1 false, i1 false}
!16 = !{!"../drivers/usb/misc/yurex.c", i32 206, i32 2}
!17 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/usb/misc/yurex.c", i32 215, i32 3}
!20 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @yurex_probe._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @yurex_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/usb/misc/yurex.c", i32 237, i32 3}
!28 = !{ptr @yurex_probe._entry.11, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @yurex_probe._entry_ptr.13, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/usb/misc/yurex.c", i32 265, i32 3}
!32 = !{ptr @yurex_probe._entry.14, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @yurex_probe._entry_ptr.16, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.18, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/usb/misc/yurex.c", i32 277, i32 3}
!36 = !{ptr @yurex_probe._entry.17, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @yurex_probe._entry_ptr.19, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.21, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/usb/misc/yurex.c", i32 288, i32 3}
!40 = !{ptr @yurex_probe._entry.20, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @yurex_probe._entry_ptr.22, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.24, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/usb/misc/yurex.c", i32 294, i32 2}
!44 = !{ptr @.str.25, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @yurex_probe._entry.23, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @yurex_probe._entry_ptr.26, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.27, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/usb/misc/yurex.c", i32 82, i32 3}
!49 = !{ptr @.str.28, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @yurex_control_callback._entry, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @yurex_control_callback._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.29, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/usb/misc/yurex.c", i32 137, i32 3}
!54 = !{ptr @.str.30, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @yurex_interrupt._entry, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @yurex_interrupt._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.32, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/usb/misc/yurex.c", i32 149, i32 3}
!59 = !{ptr @yurex_interrupt._entry.31, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @yurex_interrupt._entry_ptr.33, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.34, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/usb/misc/yurex.c", i32 166, i32 4}
!63 = !{ptr @yurex_interrupt.__UNIQUE_ID_ddebug233, !62, !"__UNIQUE_ID_ddebug233", i1 false, i1 false}
!64 = !{ptr @.str.35, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/usb/misc/yurex.c", i32 173, i32 4}
!66 = !{ptr @yurex_interrupt.__UNIQUE_ID_ddebug234, !65, !"__UNIQUE_ID_ddebug234", i1 false, i1 false}
!67 = !{ptr @.str.36, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/usb/misc/yurex.c", i32 177, i32 3}
!69 = !{ptr @yurex_interrupt.__UNIQUE_ID_ddebug235, !68, !"__UNIQUE_ID_ddebug235", i1 false, i1 false}
!70 = !{ptr @.str.38, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/usb/misc/yurex.c", i32 185, i32 3}
!72 = !{ptr @yurex_interrupt._entry.37, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @yurex_interrupt._entry_ptr.39, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.40, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/usb/misc/yurex.c", i32 119, i32 11}
!76 = !{ptr @yurex_class, !77, !"yurex_class", i1 false, i1 false}
!77 = !{!"../drivers/usb/misc/yurex.c", i32 118, i32 32}
!78 = !{ptr @yurex_fops, !79, !"yurex_fops", i1 false, i1 false}
!79 = !{!"../drivers/usb/misc/yurex.c", i32 518, i32 37}
!80 = !{ptr @.str.41, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/usb/misc/yurex.c", i32 416, i32 32}
!82 = distinct !{null, !83, !"__already_done", i1 false, i1 false}
!83 = !{!"../drivers/usb/misc/yurex.c", i32 420, i32 6}
!84 = !{ptr @.str.42, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/usb/misc/yurex.c", i32 492, i32 2}
!86 = !{ptr @.str.43, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @yurex_write.__UNIQUE_ID_ddebug238, !85, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!88 = !{ptr @.str.44, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/usb/misc/yurex.c", i32 505, i32 3}
!90 = !{ptr @yurex_write._entry, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @yurex_write._entry_ptr, !89, !"_entry_ptr", i1 false, i1 false}
!92 = distinct !{null, !93, !"__already_done", i1 false, i1 false}
!93 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!94 = distinct !{null, !93, !"<string literal>", i1 false, i1 false}
!95 = distinct !{null, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!97 = !{ptr @.str.47, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!99 = !{ptr @.str.48, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/usb/misc/yurex.c", i32 362, i32 3}
!101 = !{ptr @.str.49, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @yurex_open._entry, !100, !"_entry", i1 false, i1 false}
!103 = !{ptr @yurex_open._entry_ptr, !100, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.50, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/usb/misc/yurex.c", i32 94, i32 2}
!106 = !{ptr @.str.51, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @yurex_delete.__UNIQUE_ID_ddebug232, !105, !"__UNIQUE_ID_ddebug232", i1 false, i1 false}
!108 = !{ptr @.str.52, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/usb/misc/yurex.c", i32 332, i32 2}
!110 = !{ptr @.str.53, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @yurex_disconnect._entry, !109, !"_entry", i1 false, i1 false}
!112 = !{ptr @yurex_disconnect._entry_ptr, !109, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @yurex_table, !114, !"yurex_table", i1 false, i1 false}
!114 = !{!"../drivers/usb/misc/yurex.c", i32 38, i32 29}
!115 = !{!"sp"}
!116 = !{i32 1, !"wchar_size", i32 2}
!117 = !{i32 1, !"min_enum_size", i32 4}
!118 = !{i32 8, !"branch-target-enforcement", i32 0}
!119 = !{i32 8, !"sign-return-address", i32 0}
!120 = !{i32 8, !"sign-return-address-all", i32 0}
!121 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!122 = !{i32 7, !"uwtable", i32 1}
!123 = !{i32 7, !"frame-pointer", i32 2}
!124 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!125 = !{!"auto-init"}
!126 = !{i64 2148310347}
!127 = !{i64 2148224811, i64 2148224843, i64 2148224872, i64 2148224906, i64 2148224937, i64 2148224960}
!128 = !{!"branch_weights", i32 2000, i32 1}
!129 = !{i64 2149878936}
!130 = !{i64 2148702631, i64 2148702636, i64 2148702649, i64 2148702693, i64 2148702727, i64 2148702748}
!131 = !{i64 2152473775, i64 2152473800}
!132 = !{i64 4969330}
!133 = !{i64 4969527}
!134 = !{i64 2152454760}
!135 = !{i64 2148222346, i64 2148222378, i64 2148222407, i64 2148222441, i64 2148222472, i64 2148222495}
!136 = !{!"branch_weights", i32 1, i32 2000}
