; ModuleID = '/llk/IR_all_yes/drivers/usb/class/usbtmc.c_pt.bc'
source_filename = "../drivers/usb/class/usbtmc.c"
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
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.usb_class_driver = type { ptr, ptr, ptr, i32 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
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
%struct.usbtmc_device_data = type { ptr, ptr, ptr, %struct.list_head, i32, i32, i8, i8, i8, i16, i8, i8, i16, i8, ptr, %struct.atomic_t, i32, i32, i32, ptr, i16, i8, i8, %struct.usbtmc_dev_capabilities, %struct.kref, %struct.mutex, %struct.wait_queue_head, ptr, %struct.spinlock }
%struct.usbtmc_dev_capabilities = type { i8, i8, i8, i8 }
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
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
%struct.usbtmc_file_data = type { ptr, %struct.list_head, i32, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, i8, i8, i8, %struct.spinlock, %struct.usb_anchor, %struct.semaphore, i32, i32, i32, i32, i32, %struct.usb_anchor, %struct.wait_queue_head }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.usb_anchor = type { %struct.list_head, %struct.wait_queue_head, %struct.spinlock, %struct.atomic_t, i8 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
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
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.70 = type { ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.usbtmc_ctrlrequest = type { %struct.usbtmc_request, ptr }
%struct.usbtmc_request = type { i8, i8, i16, i16, i16 }
%struct.usbtmc_termchar = type { i8, i8 }
%struct.usbtmc_message = type { i32, i32, i32, ptr }

@__initcall__kmod_usbtmc__292_2591_usbtmc_driver_init6 = internal global ptr @usbtmc_driver_init, section ".initcall6.init", align 4
@usbtmc_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str, ptr @usbtmc_probe, ptr @usbtmc_disconnect, ptr null, ptr @usbtmc_suspend, ptr @usbtmc_resume, ptr null, ptr @usbtmc_pre_reset, ptr @usbtmc_post_reset, ptr @usbtmc_devices, ptr @usbtmc_groups, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 0 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_usbtmc_driver_exit = internal global ptr @usbtmc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file293 = internal constant [37 x i8] c"usbtmc.file=drivers/usb/class/usbtmc\00", section ".modinfo", align 1
@__UNIQUE_ID_license294 = internal constant [19 x i8] c"usbtmc.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"usbtmc\00", [25 x i8] zeroinitializer }, align 32
@usbtmc_devices = internal constant { [3 x %struct.usb_device_id], [56 x i8] } { [3 x %struct.usb_device_id] [%struct.usb_device_id { i16 896, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -2, i8 3, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 896, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -2, i8 3, i8 1, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@usbtmc_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @usbtmc_group, ptr null], [24 x i8] zeroinitializer }, align 32
@usbtmc_probe.__UNIQUE_ID_ddebug287 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 2, i8 79, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"usbtmc_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/usb/class/usbtmc.c\00", [37 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%s called\0A\00", [21 x i8] zeroinitializer }, align 32
@usbtmc_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&data->io_mutex\00", [16 x i8] zeroinitializer }, align 32
@usbtmc_probe.__key.5 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&data->waitq\00", [19 x i8] zeroinitializer }, align 32
@usbtmc_probe.__key.7 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&data->dev_lock\00", [16 x i8] zeroinitializer }, align 32
@usbtmc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.1, ptr @.str.2, i32 2397, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"bulk endpoints not found\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@usbtmc_probe._entry_ptr = internal global ptr @usbtmc_probe._entry, section ".printk_index", align 4
@usbtmc_probe.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.12, i8 2, i8 89, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Found bulk in endpoint at %u\0A\00", [34 x i8] zeroinitializer }, align 32
@usbtmc_probe.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.13, i8 2, i8 90, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Found Bulk out endpoint at %u\0A\00", [33 x i8] zeroinitializer }, align 32
@usbtmc_probe.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.14, i8 2, i8 92, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Found Int in endpoint at %u\0A\00", [35 x i8] zeroinitializer }, align 32
@usbtmc_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.1, ptr @.str.2, i32 2424, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"can't read capabilities\0A\00", [39 x i8] zeroinitializer }, align 32
@usbtmc_probe._entry_ptr.17 = internal global ptr @usbtmc_probe._entry.15, section ".printk_index", align 4
@usbtmc_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.1, ptr @.str.2, i32 2454, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to submit iin_urb\0A\00", [38 x i8] zeroinitializer }, align 32
@usbtmc_probe._entry_ptr.20 = internal global ptr @usbtmc_probe._entry.18, section ".printk_index", align 4
@usbtmc_class = internal global { %struct.usb_class_driver, [16 x i8] } { %struct.usb_class_driver { ptr @.str.46, ptr null, ptr @fops, i32 176 }, [16 x i8] zeroinitializer }, align 32
@usbtmc_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.1, ptr @.str.2, i32 2463, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"Not able to get a minor (base %u, slice default): %d\0A\00", [42 x i8] zeroinitializer }, align 32
@usbtmc_probe._entry_ptr.23 = internal global ptr @usbtmc_probe._entry.21, section ".printk_index", align 4
@usbtmc_probe.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.24, i8 2, i8 104, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Using minor number %d\0A\00", [41 x i8] zeroinitializer }, align 32
@get_capabilities._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.2, i32 1826, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"usb_control_msg returned %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"get_capabilities\00", [47 x i8] zeroinitializer }, align 32
@get_capabilities._entry_ptr = internal global ptr @get_capabilities._entry, section ".printk_index", align 4
@get_capabilities.__UNIQUE_ID_ddebug277 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.26, ptr @.str.2, ptr @.str.27, i8 1, i8 -55, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"GET_CAPABILITIES returned %x\0A\00", [34 x i8] zeroinitializer }, align 32
@get_capabilities._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.26, ptr @.str.2, i32 1832, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@get_capabilities._entry_ptr.29 = internal global ptr @get_capabilities._entry.28, section ".printk_index", align 4
@get_capabilities.__UNIQUE_ID_ddebug278 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.26, ptr @.str.2, ptr @.str.30, i8 1, i8 -53, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Interface capabilities are %x\0A\00", [33 x i8] zeroinitializer }, align 32
@get_capabilities.__UNIQUE_ID_ddebug279 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.26, ptr @.str.2, ptr @.str.31, i8 1, i8 -53, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Device capabilities are %x\0A\00", [36 x i8] zeroinitializer }, align 32
@get_capabilities.__UNIQUE_ID_ddebug280 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.26, ptr @.str.2, ptr @.str.32, i8 1, i8 -53, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"USB488 interface capabilities are %x\0A\00", [58 x i8] zeroinitializer }, align 32
@get_capabilities.__UNIQUE_ID_ddebug281 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.26, ptr @.str.2, ptr @.str.33, i8 1, i8 -53, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"USB488 device capabilities are %x\0A\00", [61 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@usbtmc_interrupt.__UNIQUE_ID_ddebug284 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.34, ptr @.str.2, ptr @.str.35, i8 2, i8 60, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"usbtmc_interrupt\00", [47 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"int status: %d len %d\0A\00", [41 x i8] zeroinitializer }, align 32
@usbtmc_interrupt.__UNIQUE_ID_ddebug285 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.34, ptr @.str.2, ptr @.str.36, i8 2, i8 68, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"srq received bTag %x stb %x\0A\00", [35 x i8] zeroinitializer }, align 32
@usbtmc_interrupt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.34, ptr @.str.2, i32 2328, ptr @.str.38, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"invalid notification: %x\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@usbtmc_interrupt._entry_ptr = internal global ptr @usbtmc_interrupt._entry, section ".printk_index", align 4
@usbtmc_interrupt._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.34, ptr @.str.2, i32 2332, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"overflow with length %d, actual length is %d\0A\00", [50 x i8] zeroinitializer }, align 32
@usbtmc_interrupt._entry_ptr.41 = internal global ptr @usbtmc_interrupt._entry.39, section ".printk_index", align 4
@usbtmc_interrupt.__UNIQUE_ID_ddebug286 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.34, ptr @.str.2, ptr @.str.42, i8 2, i8 72, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"urb terminated, status: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@usbtmc_interrupt._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.34, ptr @.str.2, i32 2342, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"usb_submit_urb failed: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@usbtmc_interrupt._entry_ptr.45 = internal global ptr @usbtmc_interrupt._entry.43, section ".printk_index", align 4
@.str.46 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"usbtmc%d\00", [23 x i8] zeroinitializer }, align 32
@fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @usbtmc_read, ptr @usbtmc_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @usbtmc_poll, ptr @usbtmc_ioctl, ptr null, ptr null, i32 0, ptr @usbtmc_open, ptr @usbtmc_flush, ptr @usbtmc_release, ptr null, ptr @usbtmc_fasync, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@usbtmc_read.__UNIQUE_ID_ddebug265 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.47, ptr @.str.2, ptr @.str.48, i8 1, i8 92, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"usbtmc_read\00", [20 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s(count:%zu)\0A\00", [17 x i8] zeroinitializer }, align 32
@usbtmc_read.__UNIQUE_ID_ddebug266 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.47, ptr @.str.2, ptr @.str.49, i8 1, i8 97, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: bulk_msg retval(%u), actual(%d)\0A\00", [59 x i8] zeroinitializer }, align 32
@usbtmc_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.47, ptr @.str.2, i32 1428, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Device sent too small first packet: %u < %u\0A\00", [51 x i8] zeroinitializer }, align 32
@usbtmc_read._entry_ptr = internal global ptr @usbtmc_read._entry, section ".printk_index", align 4
@usbtmc_read._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.47, ptr @.str.2, i32 1436, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Device sent reply with wrong MsgID: %u != 2\0A\00", [51 x i8] zeroinitializer }, align 32
@usbtmc_read._entry_ptr.53 = internal global ptr @usbtmc_read._entry.51, section ".printk_index", align 4
@usbtmc_read._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.47, ptr @.str.2, i32 1444, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Device sent reply with wrong bTag: %u != %u\0A\00", [51 x i8] zeroinitializer }, align 32
@usbtmc_read._entry_ptr.56 = internal global ptr @usbtmc_read._entry.54, section ".printk_index", align 4
@usbtmc_read.__UNIQUE_ID_ddebug267 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.47, ptr @.str.2, ptr @.str.57, i8 1, i8 108, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Bulk-IN header: N_characters(%u), bTransAttr(%u)\0A\00", [46 x i8] zeroinitializer }, align 32
@usbtmc_read._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.47, ptr @.str.2, i32 1463, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"Device wants to return more data than requested: %u > %zu\0A\00", [37 x i8] zeroinitializer }, align 32
@usbtmc_read._entry_ptr.60 = internal global ptr @usbtmc_read._entry.58, section ".printk_index", align 4
@usbtmc_read.__UNIQUE_ID_ddebug268 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.47, ptr @.str.2, ptr @.str.61, i8 1, i8 111, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.61 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"usbtmc \00", [24 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@send_request_dev_dep_msg_in._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.64, ptr @.str.2, i32 1355, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s returned %d\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"send_request_dev_dep_msg_in\00", [36 x i8] zeroinitializer }, align 32
@send_request_dev_dep_msg_in._entry_ptr = internal global ptr @send_request_dev_dep_msg_in._entry, section ".printk_index", align 4
@usbtmc_ioctl_abort_bulk_out_tag._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.65, ptr @.str.2, i32 416, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"usbtmc_ioctl_abort_bulk_out_tag\00", [32 x i8] zeroinitializer }, align 32
@usbtmc_ioctl_abort_bulk_out_tag._entry_ptr = internal global ptr @usbtmc_ioctl_abort_bulk_out_tag._entry, section ".printk_index", align 4
@usbtmc_ioctl_abort_bulk_out_tag.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.65, ptr @.str.2, ptr @.str.66, i8 0, i8 105, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.66 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"INITIATE_ABORT_BULK_OUT returned %x\0A\00", [59 x i8] zeroinitializer }, align 32
@usbtmc_ioctl_abort_bulk_out_tag._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.65, ptr @.str.2, i32 424, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@usbtmc_ioctl_abort_bulk_out_tag._entry_ptr.68 = internal global ptr @usbtmc_ioctl_abort_bulk_out_tag._entry.67, section ".printk_index", align 4
@usbtmc_ioctl_abort_bulk_out_tag._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.65, ptr @.str.2, i32 442, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@usbtmc_ioctl_abort_bulk_out_tag._entry_ptr.70 = internal global ptr @usbtmc_ioctl_abort_bulk_out_tag._entry.69, section ".printk_index", align 4
@usbtmc_ioctl_abort_bulk_out_tag.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.65, ptr @.str.2, ptr @.str.71, i8 0, i8 111, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.71 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"CHECK_ABORT_BULK_OUT returned %x\0A\00", [62 x i8] zeroinitializer }, align 32
@usbtmc_ioctl_abort_bulk_out_tag._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.65, ptr @.str.2, i32 463, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@usbtmc_ioctl_abort_bulk_out_tag._entry_ptr.73 = internal global ptr @usbtmc_ioctl_abort_bulk_out_tag._entry.72, section ".printk_index", align 4
@usbtmc_ioctl_abort_bulk_in_tag._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.74, ptr @.str.2, i32 287, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"usbtmc_ioctl_abort_bulk_in_tag\00", [33 x i8] zeroinitializer }, align 32
@usbtmc_ioctl_abort_bulk_in_tag._entry_ptr = internal global ptr @usbtmc_ioctl_abort_bulk_in_tag._entry, section ".printk_index", align 4
@usbtmc_ioctl_abort_bulk_in_tag.__UNIQUE_ID_ddebug234 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.74, ptr @.str.2, ptr @.str.75, i8 0, i8 73, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.75 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"INITIATE_ABORT_BULK_IN returned %x with tag %02x\0A\00", [46 x i8] zeroinitializer }, align 32
@usbtmc_ioctl_abort_bulk_in_tag._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.74, ptr @.str.2, i32 313, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"INITIATE_ABORT_BULK_IN returned %x\0A\00", [60 x i8] zeroinitializer }, align 32
@usbtmc_ioctl_abort_bulk_in_tag._entry_ptr.78 = internal global ptr @usbtmc_ioctl_abort_bulk_in_tag._entry.76, section ".printk_index", align 4
@usbtmc_ioctl_abort_bulk_in_tag.__UNIQUE_ID_ddebug235 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.74, ptr @.str.2, ptr @.str.79, i8 0, i8 80, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.79 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Reading from bulk in EP\0A\00", [39 x i8] zeroinitializer }, align 32
@usbtmc_ioctl_abort_bulk_in_tag.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.74, ptr @.str.2, ptr @.str.61, i8 0, i8 83, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@usbtmc_ioctl_abort_bulk_in_tag._entry.80 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.74, ptr @.str.2, i32 337, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"usb_bulk_msg returned %d\0A\00", [38 x i8] zeroinitializer }, align 32
@usbtmc_ioctl_abort_bulk_in_tag._entry_ptr.82 = internal global ptr @usbtmc_ioctl_abort_bulk_in_tag._entry.80, section ".printk_index", align 4
@usbtmc_ioctl_abort_bulk_in_tag._entry.83 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.74, ptr @.str.2, i32 347, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Couldn't clear device buffer within %d cycles\0A\00", [49 x i8] zeroinitializer }, align 32
@usbtmc_ioctl_abort_bulk_in_tag._entry_ptr.85 = internal global ptr @usbtmc_ioctl_abort_bulk_in_tag._entry.83, section ".printk_index", align 4
@usbtmc_ioctl_abort_bulk_in_tag._entry.86 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.74, ptr @.str.2, i32 360, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@usbtmc_ioctl_abort_bulk_in_tag._entry_ptr.87 = internal global ptr @usbtmc_ioctl_abort_bulk_in_tag._entry.86, section ".printk_index", align 4
@usbtmc_ioctl_abort_bulk_in_tag.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.74, ptr @.str.2, ptr @.str.88, i8 0, i8 91, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.88 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"CHECK_ABORT_BULK_IN returned %x\0A\00", [63 x i8] zeroinitializer }, align 32
@usbtmc_ioctl_abort_bulk_in_tag._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.74, ptr @.str.2, i32 372, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@usbtmc_ioctl_abort_bulk_in_tag._entry_ptr.90 = internal global ptr @usbtmc_ioctl_abort_bulk_in_tag._entry.89, section ".printk_index", align 4
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.91 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@usbtmc_generic_read.__UNIQUE_ID_ddebug251 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.94, ptr @.str.2, ptr @.str.95, i8 0, i8 -32, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.94 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"usbtmc_generic_read\00", [44 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"%s: requested=%u flags=0x%X size=%u bufs=%d used=%d\0A\00", [43 x i8] zeroinitializer }, align 32
@usbtmc_generic_read.__UNIQUE_ID_ddebug252 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.94, ptr @.str.2, ptr @.str.96, i8 0, i8 -24, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.96 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s: ret=again\0A\00", [17 x i8] zeroinitializer }, align 32
@usbtmc_generic_read.__UNIQUE_ID_ddebug253 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.94, ptr @.str.2, ptr @.str.97, i8 0, i8 -20, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.97 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: before wait time %lu\0A\00", [38 x i8] zeroinitializer }, align 32
@usbtmc_generic_read.__UNIQUE_ID_ddebug254 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.94, ptr @.str.2, ptr @.str.98, i8 0, i8 -19, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.98 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s: wait returned %d\0A\00", [42 x i8] zeroinitializer }, align 32
@usbtmc_generic_read.__UNIQUE_ID_ddebug255 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.94, ptr @.str.2, ptr @.str.99, i8 0, i8 -14, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.99 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: (async) done=%u ret=0\0A\00", [37 x i8] zeroinitializer }, align 32
@usbtmc_generic_read.__UNIQUE_ID_ddebug256 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.94, ptr @.str.2, ptr @.str.61, i8 0, i8 -9, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@usbtmc_generic_read.__UNIQUE_ID_ddebug257 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.94, ptr @.str.2, ptr @.str.100, i8 1, i8 3, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.100 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s: before kill\0A\00", [47 x i8] zeroinitializer }, align 32
@usbtmc_generic_read.__UNIQUE_ID_ddebug258 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.94, ptr @.str.2, ptr @.str.101, i8 1, i8 3, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.101 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s: after kill\0A\00", [16 x i8] zeroinitializer }, align 32
@usbtmc_generic_read.__UNIQUE_ID_ddebug259 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.94, ptr @.str.2, ptr @.str.102, i8 1, i8 4, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.102 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s: done=%u ret=%d\0A\00", [44 x i8] zeroinitializer }, align 32
@usbtmc_read_bulk_cb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.103, ptr @.str.104, ptr @.str.2, i32 783, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s - nonzero read bulk status received: %d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"usbtmc_read_bulk_cb\00", [44 x i8] zeroinitializer }, align 32
@usbtmc_read_bulk_cb._entry_ptr = internal global ptr @usbtmc_read_bulk_cb._entry, section ".printk_index", align 4
@usbtmc_read_bulk_cb.__UNIQUE_ID_ddebug249 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.104, ptr @.str.2, ptr @.str.105, i8 0, i8 -57, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.105 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s - total size: %u current: %d status: %d\0A\00", [52 x i8] zeroinitializer }, align 32
@usbtmc_do_transfer.__UNIQUE_ID_ddebug250 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.106, ptr @.str.2, ptr @.str.107, i8 0, i8 -53, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.106 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"usbtmc_do_transfer\00", [45 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s: returns %d\0A\00", [16 x i8] zeroinitializer }, align 32
@usbtmc_write.__UNIQUE_ID_ddebug269 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.108, ptr @.str.2, ptr @.str.109, i8 1, i8 -114, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.108 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"usbtmc_write\00", [19 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s(size:%u align:%u)\0A\00", [42 x i8] zeroinitializer }, align 32
@usbtmc_write.__UNIQUE_ID_ddebug270 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.108, ptr @.str.2, ptr @.str.61, i8 1, i8 -113, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@usbtmc_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.110, ptr @.str.108, ptr @.str.2, i32 1635, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Unable to send data, error %d\0A\00", [33 x i8] zeroinitializer }, align 32
@usbtmc_write._entry_ptr = internal global ptr @usbtmc_write._entry, section ".printk_index", align 4
@usbtmc_write_bulk_cb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.111, ptr @.str.112, ptr @.str.2, i32 1086, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s - nonzero write bulk status received: %d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"usbtmc_write_bulk_cb\00", [43 x i8] zeroinitializer }, align 32
@usbtmc_write_bulk_cb._entry_ptr = internal global ptr @usbtmc_write_bulk_cb._entry, section ".printk_index", align 4
@usbtmc_write_bulk_cb.__UNIQUE_ID_ddebug260 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.112, ptr @.str.2, ptr @.str.113, i8 1, i8 18, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.113 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s - write bulk total size: %u\0A\00", [32 x i8] zeroinitializer }, align 32
@usbtmc_generic_write.__UNIQUE_ID_ddebug261 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.114, ptr @.str.2, ptr @.str.115, i8 1, i8 25, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.114 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"usbtmc_generic_write\00", [43 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: size=%u flags=0x%X sema=%u\0A\00", [32 x i8] zeroinitializer }, align 32
@usbtmc_generic_write.__UNIQUE_ID_ddebug262 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.114, ptr @.str.2, ptr @.str.61, i8 1, i8 43, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@usbtmc_generic_write.__UNIQUE_ID_ddebug263 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.114, ptr @.str.2, ptr @.str.116, i8 1, i8 45, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.116 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"write(size:%u align:%u done:%u)\0A\00", [63 x i8] zeroinitializer }, align 32
@usbtmc_generic_write.__UNIQUE_ID_ddebug264 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.114, ptr @.str.2, ptr @.str.117, i8 1, i8 57, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.117 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: done=%u, retval=%d, urbstat=%d\0A\00", [60 x i8] zeroinitializer }, align 32
@usbtmc_poll.__UNIQUE_ID_ddebug283 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.118, ptr @.str.2, ptr @.str.119, i8 2, i8 51, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.118 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"usbtmc_poll\00", [20 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"poll mask = %x\0A\00", [16 x i8] zeroinitializer }, align 32
@usbtmc_ioctl_clear_out_halt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.120, ptr @.str.2, i32 1770, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"usbtmc_ioctl_clear_out_halt\00", [36 x i8] zeroinitializer }, align 32
@usbtmc_ioctl_clear_out_halt._entry_ptr = internal global ptr @usbtmc_ioctl_clear_out_halt._entry, section ".printk_index", align 4
@usbtmc_ioctl_clear_in_halt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.121, ptr @.str.2, i32 1782, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"usbtmc_ioctl_clear_in_halt\00", [37 x i8] zeroinitializer }, align 32
@usbtmc_ioctl_clear_in_halt._entry_ptr = internal global ptr @usbtmc_ioctl_clear_in_halt._entry, section ".printk_index", align 4
@usbtmc_ioctl_indicator_pulse._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.122, ptr @.str.2, i32 1897, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"usbtmc_ioctl_indicator_pulse\00", [35 x i8] zeroinitializer }, align 32
@usbtmc_ioctl_indicator_pulse._entry_ptr = internal global ptr @usbtmc_ioctl_indicator_pulse._entry, section ".printk_index", align 4
@usbtmc_ioctl_indicator_pulse.__UNIQUE_ID_ddebug282 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.122, ptr @.str.2, ptr @.str.123, i8 1, i8 -37, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.123 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"INDICATOR_PULSE returned %x\0A\00", [35 x i8] zeroinitializer }, align 32
@usbtmc_ioctl_indicator_pulse._entry.124 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.123, ptr @.str.122, ptr @.str.2, i32 1904, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@usbtmc_ioctl_indicator_pulse._entry_ptr.125 = internal global ptr @usbtmc_ioctl_indicator_pulse._entry.124, section ".printk_index", align 4
@usbtmc_ioctl_clear.__UNIQUE_ID_ddebug271 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.126, ptr @.str.2, ptr @.str.127, i8 1, i8 -98, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.126 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"usbtmc_ioctl_clear\00", [45 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Sending INITIATE_CLEAR request\0A\00", [32 x i8] zeroinitializer }, align 32
@usbtmc_ioctl_clear._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.126, ptr @.str.2, i32 1670, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@usbtmc_ioctl_clear._entry_ptr = internal global ptr @usbtmc_ioctl_clear._entry, section ".printk_index", align 4
@usbtmc_ioctl_clear.__UNIQUE_ID_ddebug272 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.126, ptr @.str.2, ptr @.str.128, i8 1, i8 -94, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.128 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"INITIATE_CLEAR returned %x\0A\00", [36 x i8] zeroinitializer }, align 32
@usbtmc_ioctl_clear._entry.129 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.128, ptr @.str.126, ptr @.str.2, i32 1677, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@usbtmc_ioctl_clear._entry_ptr.130 = internal global ptr @usbtmc_ioctl_clear._entry.129, section ".printk_index", align 4
@usbtmc_ioctl_clear.__UNIQUE_ID_ddebug273 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.126, ptr @.str.2, ptr @.str.131, i8 1, i8 -91, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.131 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Sending CHECK_CLEAR_STATUS request\0A\00", [60 x i8] zeroinitializer }, align 32
@usbtmc_ioctl_clear._entry.132 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.126, ptr @.str.2, i32 1694, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@usbtmc_ioctl_clear._entry_ptr.133 = internal global ptr @usbtmc_ioctl_clear._entry.132, section ".printk_index", align 4
@usbtmc_ioctl_clear.__UNIQUE_ID_ddebug274 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.126, ptr @.str.2, ptr @.str.134, i8 1, i8 -88, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.134 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"CHECK_CLEAR_STATUS returned %x\0A\00", [32 x i8] zeroinitializer }, align 32
@usbtmc_ioctl_clear._entry.135 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.134, ptr @.str.126, ptr @.str.2, i32 1704, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@usbtmc_ioctl_clear._entry_ptr.136 = internal global ptr @usbtmc_ioctl_clear._entry.135, section ".printk_index", align 4
@usbtmc_ioctl_clear.__UNIQUE_ID_ddebug275 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.126, ptr @.str.2, ptr @.str.79, i8 1, i8 -85, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@usbtmc_ioctl_clear.__UNIQUE_ID_ddebug276 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.126, ptr @.str.2, ptr @.str.61, i8 1, i8 -82, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@usbtmc_ioctl_clear._entry.137 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.126, ptr @.str.2, i32 1727, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@usbtmc_ioctl_clear._entry_ptr.138 = internal global ptr @usbtmc_ioctl_clear._entry.137, section ".printk_index", align 4
@usbtmc_ioctl_clear._entry.139 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.126, ptr @.str.2, i32 1740, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@usbtmc_ioctl_clear._entry_ptr.140 = internal global ptr @usbtmc_ioctl_clear._entry.139, section ".printk_index", align 4
@usbtmc_ioctl_clear._entry.141 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.142, ptr @.str.126, ptr @.str.2, i32 1752, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"usb_clear_halt returned %d\0A\00", [36 x i8] zeroinitializer }, align 32
@usbtmc_ioctl_clear._entry_ptr.143 = internal global ptr @usbtmc_ioctl_clear._entry.141, section ".printk_index", align 4
@usbtmc_ioctl_request._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.144, ptr @.str.145, ptr @.str.2, i32 1963, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s failed %d\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"usbtmc_ioctl_request\00", [43 x i8] zeroinitializer }, align 32
@usbtmc_ioctl_request._entry_ptr = internal global ptr @usbtmc_ioctl_request._entry, section ".printk_index", align 4
@usbtmc488_ioctl_simple._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.146, ptr @.str.147, ptr @.str.2, i32 683, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"simple usb_control_msg failed %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"usbtmc488_ioctl_simple\00", [41 x i8] zeroinitializer }, align 32
@usbtmc488_ioctl_simple._entry_ptr = internal global ptr @usbtmc488_ioctl_simple._entry, section ".printk_index", align 4
@usbtmc488_ioctl_simple._entry.148 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.149, ptr @.str.147, ptr @.str.2, i32 686, ptr @.str.38, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"simple usb_control_msg returned %d\0A\00", [60 x i8] zeroinitializer }, align 32
@usbtmc488_ioctl_simple._entry_ptr.150 = internal global ptr @usbtmc488_ioctl_simple._entry.148, section ".printk_index", align 4
@usbtmc488_ioctl_simple._entry.151 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.147, ptr @.str.2, i32 692, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"simple control status returned %x\0A\00", [61 x i8] zeroinitializer }, align 32
@usbtmc488_ioctl_simple._entry_ptr.153 = internal global ptr @usbtmc488_ioctl_simple._entry.151, section ".printk_index", align 4
@usbtmc488_ioctl_trigger._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.154, ptr @.str.2, i32 741, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"usbtmc488_ioctl_trigger\00", [40 x i8] zeroinitializer }, align 32
@usbtmc488_ioctl_trigger._entry_ptr = internal global ptr @usbtmc488_ioctl_trigger._entry, section ".printk_index", align 4
@usbtmc488_ioctl_wait_srq.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.155, ptr @.str.2, ptr @.str.156, i8 0, i8 -104, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.155 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"usbtmc488_ioctl_wait_srq\00", [39 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"no interrupt endpoint present\0A\00", [33 x i8] zeroinitializer }, align 32
@usbtmc488_ioctl_wait_srq.__UNIQUE_ID_ddebug246 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.155, ptr @.str.2, ptr @.str.157, i8 0, i8 -98, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.157 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s - wait interrupted %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"usbtmc: %s - wait interrupted %d\0A\00", [62 x i8] zeroinitializer }, align 32
@usbtmc488_ioctl_wait_srq.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.155, ptr @.str.2, ptr @.str.159, i8 0, i8 -96, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.159 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s - wait timed out\0A\00", [43 x i8] zeroinitializer }, align 32
@usbtmc488_ioctl_wait_srq.__UNIQUE_ID_ddebug248 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.155, ptr @.str.2, ptr @.str.160, i8 0, i8 -95, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.160 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s - srq asserted\0A\00", [45 x i8] zeroinitializer }, align 32
@usbtmc_get_stb.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.161, ptr @.str.2, ptr @.str.162, i8 0, i8 121, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.161 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"usbtmc_get_stb\00", [17 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Enter ioctl_read_stb iin_ep_present: %d\0A\00", [55 x i8] zeroinitializer }, align 32
@usbtmc_get_stb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.163, ptr @.str.161, ptr @.str.2, i32 503, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"stb usb_control_msg returned %d\0A\00", [63 x i8] zeroinitializer }, align 32
@usbtmc_get_stb._entry_ptr = internal global ptr @usbtmc_get_stb._entry, section ".printk_index", align 4
@usbtmc_get_stb._entry.164 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.165, ptr @.str.161, ptr @.str.2, i32 508, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"control status returned %x\0A\00", [36 x i8] zeroinitializer }, align 32
@usbtmc_get_stb._entry_ptr.166 = internal global ptr @usbtmc_get_stb._entry.164, section ".printk_index", align 4
@usbtmc_get_stb.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.161, ptr @.str.2, ptr @.str.167, i8 0, i8 -127, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.167 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"wait interrupted %d\0A\00", [43 x i8] zeroinitializer }, align 32
@usbtmc_get_stb.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.161, ptr @.str.2, ptr @.str.168, i8 0, i8 -125, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.168 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"wait timed out\0A\00", [16 x i8] zeroinitializer }, align 32
@usbtmc_get_stb._entry.169 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.170, ptr @.str.161, ptr @.str.2, i32 532, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"expected bTag %x got %x\0A\00", [39 x i8] zeroinitializer }, align 32
@usbtmc_get_stb._entry_ptr.171 = internal global ptr @usbtmc_get_stb._entry.169, section ".printk_index", align 4
@usbtmc_get_stb.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.161, ptr @.str.2, ptr @.str.172, i8 0, i8 -121, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.172 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"stb:0x%02x received %d\0A\00", [40 x i8] zeroinitializer }, align 32
@usbtmc_ioctl_get_srq_stb.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.173, ptr @.str.2, ptr @.str.174, i8 0, i8 -108, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.173 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"usbtmc_ioctl_get_srq_stb\00", [39 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"stb:0x%02x with srq received %d\0A\00", [63 x i8] zeroinitializer }, align 32
@usbtmc_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.175, ptr @.str.176, ptr @.str.2, i32 171, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013usbtmc: can not find device for minor %d\00", [53 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"usbtmc_open\00", [20 x i8] zeroinitializer }, align 32
@usbtmc_open._entry_ptr = internal global ptr @usbtmc_open._entry, section ".printk_index", align 4
@usbtmc_open.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.177 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&file_data->err_lock\00", [43 x i8] zeroinitializer }, align 32
@usbtmc_open.__key.178 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.179 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"&file_data->wait_bulk_in\00", [39 x i8] zeroinitializer }, align 32
@sema_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.180 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"(*sem).lock\00", [20 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"semaphore->lock\00", [16 x i8] zeroinitializer }, align 32
@init_usb_anchor.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.182 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&anchor->wait\00", [18 x i8] zeroinitializer }, align 32
@init_usb_anchor.__key.183 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.184 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&anchor->lock\00", [18 x i8] zeroinitializer }, align 32
@usbtmc_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.185, ptr @.str.2, i32 2543, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"usbtmc_resume\00", [18 x i8] zeroinitializer }, align 32
@usbtmc_resume._entry_ptr = internal global ptr @usbtmc_resume._entry, section ".printk_index", align 4
@usbtmc_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @usbtmc_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@usbtmc_attrs = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @dev_attr_interface_capabilities, ptr @dev_attr_device_capabilities, ptr @dev_attr_usb488_interface_capabilities, ptr @dev_attr_usb488_device_capabilities, ptr null], [44 x i8] zeroinitializer }, align 32
@dev_attr_interface_capabilities = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.186, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @interface_capabilities_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_device_capabilities = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.188, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @device_capabilities_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_usb488_interface_capabilities = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.189, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @usb488_interface_capabilities_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_usb488_device_capabilities = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.190, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @usb488_device_capabilities_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"interface_capabilities\00", [41 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"device_capabilities\00", [44 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"usb488_interface_capabilities\00", [34 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"usb488_device_capabilities\00", [37 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967221]
@__sancov_gen_cov_switch_values.191 = internal global [30 x i64] [i64 28, i64 32, i64 23297, i64 23298, i64 23299, i64 23300, i64 23302, i64 23303, i64 23316, i64 23317, i64 23318, i64 23331, i64 23332, i64 1073830667, i64 1073830675, i64 1073830681, i64 1073896204, i64 1074027274, i64 1074027287, i64 2147572497, i64 2147572498, i64 2147572504, i64 2147572506, i64 2147572507, i64 2147769097, i64 2147769104, i64 3221510927, i64 3222035208, i64 3222297357, i64 3222297358]
@__sancov_gen_cov_switch_values.192 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.193 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 128, i64 129]
@__sancov_gen_cov_switch_values.194 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.195 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 4294967175, i64 4294967188, i64 4294967192]
@__sancov_gen_cov_switch_values.196 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 4294967188, i64 4294967192, i64 4294967294]
@__sancov_gen_cov_switch_values.197 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@___asan_gen_.198 = private unnamed_addr constant [14 x i8] c"usbtmc_driver\00", align 1
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 2579, i32 26 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 2591, i32 1 }
@___asan_gen_.204 = private unnamed_addr constant [15 x i8] c"usbtmc_devices\00", align 1
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 50, i32 35 }
@___asan_gen_.207 = private unnamed_addr constant [14 x i8] c"usbtmc_groups\00", align 1
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 2365, i32 2 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 2376, i32 2 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 2377, i32 2 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 2380, i32 2 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 2397, i32 3 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 2406, i32 2 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 2409, i32 2 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 2418, i32 3 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 2424, i32 3 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 2454, i32 4 }
@___asan_gen_.270 = private unnamed_addr constant [13 x i8] c"usbtmc_class\00", align 1
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 2274, i32 32 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 2461, i32 3 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 2466, i32 2 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 1826, i32 3 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 1830, i32 2 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 1832, i32 3 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 1836, i32 2 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 1837, i32 2 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 1838, i32 2 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 1839, i32 2 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 2287, i32 2 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 2321, i32 4 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 2327, i32 3 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 2331, i32 3 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 2336, i32 3 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 2342, i32 3 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 2275, i32 11 }
@___asan_gen_.345 = private unnamed_addr constant [5 x i8] c"fops\00", align 1
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 2260, i32 37 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 1392, i32 2 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 1413, i32 2 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 1427, i32 3 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 1435, i32 3 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 1443, i32 3 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 1458, i32 2 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 1462, i32 3 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 1469, i32 2 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 1354, i32 3 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 416, i32 3 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 420, i32 2 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 423, i32 3 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 442, i32 3 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 446, i32 2 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 463, i32 3 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 287, i32 3 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 291, i32 2 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 312, i32 3 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 321, i32 2 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 337, i32 3 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 346, i32 3 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 360, i32 3 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 364, i32 2 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 372, i32 3 }
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 230, i32 6 }
@___asan_gen_.463 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 214, i32 2 }
@___asan_gen_.466 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 174, i32 2 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 896, i32 2 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 929, i32 3 }
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 943, i32 4 }
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 950, i32 4 }
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 970, i32 4 }
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 1036, i32 2 }
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 1039, i32 2 }
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 1043, i32 2 }
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 781, i32 4 }
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 793, i32 2 }
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 812, i32 2 }
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 1594, i32 2 }
@___asan_gen_.524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 1634, i32 3 }
@___asan_gen_.533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 1084, i32 4 }
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 1095, i32 2 }
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 1125, i32 2 }
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 1202, i32 3 }
@___asan_gen_.548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 1253, i32 2 }
@___asan_gen_.554 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 2253, i32 2 }
@___asan_gen_.560 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 1770, i32 3 }
@___asan_gen_.566 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 1782, i32 3 }
@___asan_gen_.572 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 1897, i32 3 }
@___asan_gen_.575 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 1901, i32 2 }
@___asan_gen_.578 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 1904, i32 3 }
@___asan_gen_.584 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 1658, i32 2 }
@___asan_gen_.587 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 1670, i32 3 }
@___asan_gen_.590 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 1674, i32 2 }
@___asan_gen_.593 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 1677, i32 3 }
@___asan_gen_.596 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 1686, i32 2 }
@___asan_gen_.599 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 1694, i32 3 }
@___asan_gen_.602 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 1698, i32 2 }
@___asan_gen_.605 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 1704, i32 3 }
@___asan_gen_.608 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 1726, i32 5 }
@___asan_gen_.611 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 1739, i32 3 }
@___asan_gen_.617 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 1752, i32 3 }
@___asan_gen_.626 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 1963, i32 3 }
@___asan_gen_.635 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 683, i32 3 }
@___asan_gen_.641 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 686, i32 3 }
@___asan_gen_.647 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 692, i32 3 }
@___asan_gen_.653 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 740, i32 3 }
@___asan_gen_.659 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 610, i32 3 }
@___asan_gen_.665 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 635, i32 3 }
@___asan_gen_.668 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 640, i32 3 }
@___asan_gen_.671 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 644, i32 2 }
@___asan_gen_.677 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 486, i32 2 }
@___asan_gen_.683 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 503, i32 3 }
@___asan_gen_.689 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 508, i32 3 }
@___asan_gen_.692 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 519, i32 4 }
@___asan_gen_.695 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 524, i32 4 }
@___asan_gen_.701 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 531, i32 4 }
@___asan_gen_.704 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 540, i32 2 }
@___asan_gen_.710 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 595, i32 2 }
@___asan_gen_.719 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 171, i32 3 }
@___asan_gen_.725 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 179, i32 2 }
@___asan_gen_.731 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 183, i32 2 }
@___asan_gen_.734 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.739, i32 33, i32 31 }
@___asan_gen_.737 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.739, i32 34, i32 28 }
@___asan_gen_.739 = private unnamed_addr constant [29 x i8] c"../include/linux/semaphore.h\00", align 1
@___asan_gen_.740 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.739, i32 35, i32 39 }
@___asan_gen_.746 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.751, i32 1367, i32 2 }
@___asan_gen_.747 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.751 = private unnamed_addr constant [23 x i8] c"../include/linux/usb.h\00", align 1
@___asan_gen_.752 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.751, i32 1368, i32 2 }
@___asan_gen_.753 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.758 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 2543, i32 3 }
@___asan_gen_.759 = private unnamed_addr constant [13 x i8] c"usbtmc_group\00", align 1
@___asan_gen_.761 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 1876, i32 1 }
@___asan_gen_.762 = private unnamed_addr constant [13 x i8] c"usbtmc_attrs\00", align 1
@___asan_gen_.764 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 1869, i32 26 }
@___asan_gen_.765 = private unnamed_addr constant [32 x i8] c"dev_attr_interface_capabilities\00", align 1
@___asan_gen_.768 = private unnamed_addr constant [29 x i8] c"dev_attr_device_capabilities\00", align 1
@___asan_gen_.771 = private unnamed_addr constant [39 x i8] c"dev_attr_usb488_interface_capabilities\00", align 1
@___asan_gen_.774 = private unnamed_addr constant [36 x i8] c"dev_attr_usb488_device_capabilities\00", align 1
@___asan_gen_.782 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 1864, i32 1 }
@___asan_gen_.785 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 1865, i32 1 }
@___asan_gen_.788 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 1866, i32 1 }
@___asan_gen_.789 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.790 = private constant [30 x i8] c"../drivers/usb/class/usbtmc.c\00", align 1
@___asan_gen_.791 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 1867, i32 1 }
@llvm.compiler.used = appending global [251 x ptr] [ptr @__UNIQUE_ID_file293, ptr @__UNIQUE_ID_license294, ptr @__exitcall_usbtmc_driver_exit, ptr @__initcall__kmod_usbtmc__292_2591_usbtmc_driver_init6, ptr @get_capabilities._entry, ptr @get_capabilities._entry.28, ptr @get_capabilities._entry_ptr, ptr @get_capabilities._entry_ptr.29, ptr @send_request_dev_dep_msg_in._entry, ptr @send_request_dev_dep_msg_in._entry_ptr, ptr @usbtmc488_ioctl_simple._entry, ptr @usbtmc488_ioctl_simple._entry.148, ptr @usbtmc488_ioctl_simple._entry.151, ptr @usbtmc488_ioctl_simple._entry_ptr, ptr @usbtmc488_ioctl_simple._entry_ptr.150, ptr @usbtmc488_ioctl_simple._entry_ptr.153, ptr @usbtmc488_ioctl_trigger._entry, ptr @usbtmc488_ioctl_trigger._entry_ptr, ptr @usbtmc_driver_exit, ptr @usbtmc_get_stb._entry, ptr @usbtmc_get_stb._entry.164, ptr @usbtmc_get_stb._entry.169, ptr @usbtmc_get_stb._entry_ptr, ptr @usbtmc_get_stb._entry_ptr.166, ptr @usbtmc_get_stb._entry_ptr.171, ptr @usbtmc_interrupt._entry, ptr @usbtmc_interrupt._entry.39, ptr @usbtmc_interrupt._entry.43, ptr @usbtmc_interrupt._entry_ptr, ptr @usbtmc_interrupt._entry_ptr.41, ptr @usbtmc_interrupt._entry_ptr.45, ptr @usbtmc_ioctl_abort_bulk_in_tag._entry, ptr @usbtmc_ioctl_abort_bulk_in_tag._entry.76, ptr @usbtmc_ioctl_abort_bulk_in_tag._entry.80, ptr @usbtmc_ioctl_abort_bulk_in_tag._entry.83, ptr @usbtmc_ioctl_abort_bulk_in_tag._entry.86, ptr @usbtmc_ioctl_abort_bulk_in_tag._entry.89, ptr @usbtmc_ioctl_abort_bulk_in_tag._entry_ptr, ptr @usbtmc_ioctl_abort_bulk_in_tag._entry_ptr.78, ptr @usbtmc_ioctl_abort_bulk_in_tag._entry_ptr.82, ptr @usbtmc_ioctl_abort_bulk_in_tag._entry_ptr.85, ptr @usbtmc_ioctl_abort_bulk_in_tag._entry_ptr.87, ptr @usbtmc_ioctl_abort_bulk_in_tag._entry_ptr.90, ptr @usbtmc_ioctl_abort_bulk_out_tag._entry, ptr @usbtmc_ioctl_abort_bulk_out_tag._entry.67, ptr @usbtmc_ioctl_abort_bulk_out_tag._entry.69, ptr @usbtmc_ioctl_abort_bulk_out_tag._entry.72, ptr @usbtmc_ioctl_abort_bulk_out_tag._entry_ptr, ptr @usbtmc_ioctl_abort_bulk_out_tag._entry_ptr.68, ptr @usbtmc_ioctl_abort_bulk_out_tag._entry_ptr.70, ptr @usbtmc_ioctl_abort_bulk_out_tag._entry_ptr.73, ptr @usbtmc_ioctl_clear._entry, ptr @usbtmc_ioctl_clear._entry.129, ptr @usbtmc_ioctl_clear._entry.132, ptr @usbtmc_ioctl_clear._entry.135, ptr @usbtmc_ioctl_clear._entry.137, ptr @usbtmc_ioctl_clear._entry.139, ptr @usbtmc_ioctl_clear._entry.141, ptr @usbtmc_ioctl_clear._entry_ptr, ptr @usbtmc_ioctl_clear._entry_ptr.130, ptr @usbtmc_ioctl_clear._entry_ptr.133, ptr @usbtmc_ioctl_clear._entry_ptr.136, ptr @usbtmc_ioctl_clear._entry_ptr.138, ptr @usbtmc_ioctl_clear._entry_ptr.140, ptr @usbtmc_ioctl_clear._entry_ptr.143, ptr @usbtmc_ioctl_clear_in_halt._entry, ptr @usbtmc_ioctl_clear_in_halt._entry_ptr, ptr @usbtmc_ioctl_clear_out_halt._entry, ptr @usbtmc_ioctl_clear_out_halt._entry_ptr, ptr @usbtmc_ioctl_indicator_pulse._entry, ptr @usbtmc_ioctl_indicator_pulse._entry.124, ptr @usbtmc_ioctl_indicator_pulse._entry_ptr, ptr @usbtmc_ioctl_indicator_pulse._entry_ptr.125, ptr @usbtmc_ioctl_request._entry, ptr @usbtmc_ioctl_request._entry_ptr, ptr @usbtmc_open._entry, ptr @usbtmc_open._entry_ptr, ptr @usbtmc_probe._entry, ptr @usbtmc_probe._entry.15, ptr @usbtmc_probe._entry.18, ptr @usbtmc_probe._entry.21, ptr @usbtmc_probe._entry_ptr, ptr @usbtmc_probe._entry_ptr.17, ptr @usbtmc_probe._entry_ptr.20, ptr @usbtmc_probe._entry_ptr.23, ptr @usbtmc_read._entry, ptr @usbtmc_read._entry.51, ptr @usbtmc_read._entry.54, ptr @usbtmc_read._entry.58, ptr @usbtmc_read._entry_ptr, ptr @usbtmc_read._entry_ptr.53, ptr @usbtmc_read._entry_ptr.56, ptr @usbtmc_read._entry_ptr.60, ptr @usbtmc_read_bulk_cb._entry, ptr @usbtmc_read_bulk_cb._entry_ptr, ptr @usbtmc_resume._entry, ptr @usbtmc_resume._entry_ptr, ptr @usbtmc_write._entry, ptr @usbtmc_write._entry_ptr, ptr @usbtmc_write_bulk_cb._entry, ptr @usbtmc_write_bulk_cb._entry_ptr, ptr @usbtmc_driver, ptr @.str, ptr @usbtmc_devices, ptr @usbtmc_groups, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @usbtmc_probe.__key, ptr @.str.4, ptr @usbtmc_probe.__key.5, ptr @.str.6, ptr @usbtmc_probe.__key.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.19, ptr @usbtmc_class, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.40, ptr @.str.42, ptr @.str.44, ptr @.str.46, ptr @fops, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.52, ptr @.str.55, ptr @.str.57, ptr @.str.59, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.71, ptr @.str.74, ptr @.str.75, ptr @.str.77, ptr @.str.79, ptr @.str.81, ptr @.str.84, ptr @.str.88, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.131, ptr @.str.134, ptr @.str.142, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.149, ptr @.str.152, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.165, ptr @.str.167, ptr @.str.168, ptr @.str.170, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @usbtmc_open.__key, ptr @.str.177, ptr @usbtmc_open.__key.178, ptr @.str.179, ptr @sema_init.__key, ptr @.str.180, ptr @.str.181, ptr @init_usb_anchor.__key, ptr @.str.182, ptr @init_usb_anchor.__key.183, ptr @.str.184, ptr @.str.185, ptr @usbtmc_group, ptr @usbtmc_attrs, ptr @dev_attr_interface_capabilities, ptr @dev_attr_device_capabilities, ptr @dev_attr_usb488_interface_capabilities, ptr @dev_attr_usb488_device_capabilities, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @.str.189, ptr @.str.190], section "llvm.metadata"
@0 = internal global [198 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbtmc_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbtmc_devices to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbtmc_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbtmc_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbtmc_probe.__key.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbtmc_probe.__key.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbtmc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbtmc_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbtmc_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbtmc_class to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbtmc_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_capabilities._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_capabilities._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbtmc_interrupt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbtmc_interrupt._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbtmc_interrupt._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbtmc_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbtmc_read._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbtmc_read._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbtmc_read._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @send_request_dev_dep_msg_in._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbtmc_ioctl_abort_bulk_out_tag._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbtmc_ioctl_abort_bulk_out_tag._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbtmc_ioctl_abort_bulk_out_tag._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbtmc_ioctl_abort_bulk_out_tag._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbtmc_ioctl_abort_bulk_in_tag._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbtmc_ioctl_abort_bulk_in_tag._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbtmc_ioctl_abort_bulk_in_tag._entry.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbtmc_ioctl_abort_bulk_in_tag._entry.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbtmc_ioctl_abort_bulk_in_tag._entry.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbtmc_ioctl_abort_bulk_in_tag._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbtmc_read_bulk_cb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbtmc_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbtmc_write_bulk_cb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbtmc_ioctl_clear_out_halt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbtmc_ioctl_clear_in_halt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbtmc_ioctl_indicator_pulse._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbtmc_ioctl_indicator_pulse._entry.124 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbtmc_ioctl_clear._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbtmc_ioctl_clear._entry.129 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbtmc_ioctl_clear._entry.132 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbtmc_ioctl_clear._entry.135 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbtmc_ioctl_clear._entry.137 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbtmc_ioctl_clear._entry.139 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbtmc_ioctl_clear._entry.141 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbtmc_ioctl_request._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbtmc488_ioctl_simple._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbtmc488_ioctl_simple._entry.148 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbtmc488_ioctl_simple._entry.151 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbtmc488_ioctl_trigger._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbtmc_get_stb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbtmc_get_stb._entry.164 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbtmc_get_stb._entry.169 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbtmc_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbtmc_open.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbtmc_open.__key.178 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sema_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_usb_anchor.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_usb_anchor.__key.183 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbtmc_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbtmc_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbtmc_attrs to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_interface_capabilities to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_device_capabilities to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_usb488_interface_capabilities to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_usb488_device_capabilities to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @usbtmc_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @usbtmc_driver, ptr noundef null, ptr noundef nonnull @.str) #12
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @usbtmc_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @usb_deregister(ptr noundef nonnull @usbtmc_driver) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usbtmc_probe(ptr noundef %intf, ptr noundef %id) #2 align 64 {
entry:
  %bulk_in = alloca ptr, align 4
  %bulk_out = alloca ptr, align 4
  %int_in = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bulk_in) #12
  %0 = ptrtoint ptr %bulk_in to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %bulk_in, align 4, !annotation !451
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bulk_out) #12
  %1 = ptrtoint ptr %bulk_out to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %bulk_out, align 4, !annotation !451
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %int_in) #12
  %2 = ptrtoint ptr %int_in to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %int_in, align 4, !annotation !451
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usbtmc_probe.__UNIQUE_ID_ddebug287, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usbtmc_probe, %if.then)) #12
          to label %do.end [label %if.then], !srcloc !452

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usbtmc_probe.__UNIQUE_ID_ddebug287, ptr noundef %dev, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 268) #15
  %tobool4.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool4.not, label %do.end.cleanup_crit_edge, label %if.end6

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end6:                                          ; preds = %do.end
  %intf7 = getelementptr inbounds %struct.usbtmc_device_data, ptr %call7.i.i, i32 0, i32 2
  %4 = ptrtoint ptr %intf7 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %intf, ptr %intf7, align 8
  %5 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %id, ptr %call7.i.i, align 8
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 1
  %6 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %7, i32 -128
  %call10 = tail call ptr @usb_get_dev(ptr noundef %add.ptr.i) #12
  %usb_dev = getelementptr %struct.usbtmc_device_data, ptr %call7.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %usb_dev to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call10, ptr %usb_dev, align 4
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %9 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %kref = getelementptr inbounds %struct.usbtmc_device_data, ptr %call7.i.i, i32 0, i32 24
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #12
  %10 = ptrtoint ptr %kref to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile i32 1, ptr %kref, align 8
  %io_mutex = getelementptr inbounds %struct.usbtmc_device_data, ptr %call7.i.i, i32 0, i32 25
  tail call void @__mutex_init(ptr noundef %io_mutex, ptr noundef nonnull @.str.4, ptr noundef nonnull @usbtmc_probe.__key) #12
  %waitq = getelementptr inbounds %struct.usbtmc_device_data, ptr %call7.i.i, i32 0, i32 26
  tail call void @__init_waitqueue_head(ptr noundef %waitq, ptr noundef nonnull @.str.6, ptr noundef nonnull @usbtmc_probe.__key.5) #12
  %iin_data_valid = getelementptr inbounds %struct.usbtmc_device_data, ptr %call7.i.i, i32 0, i32 15
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %iin_data_valid, i32 noundef 4) #12
  %11 = ptrtoint ptr %iin_data_valid to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile i32 0, ptr %iin_data_valid, align 4
  %file_list = getelementptr inbounds %struct.usbtmc_device_data, ptr %call7.i.i, i32 0, i32 3
  %12 = ptrtoint ptr %file_list to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %file_list, ptr %file_list, align 4
  %prev.i = getelementptr inbounds %struct.usbtmc_device_data, ptr %call7.i.i, i32 0, i32 3, i32 1
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %file_list, ptr %prev.i, align 8
  %dev_lock = getelementptr inbounds %struct.usbtmc_device_data, ptr %call7.i.i, i32 0, i32 28
  tail call void @__raw_spin_lock_init(ptr noundef %dev_lock, ptr noundef nonnull @.str.8, ptr noundef nonnull @usbtmc_probe.__key.7, i16 noundef signext 3) #12
  %zombie = getelementptr inbounds %struct.usbtmc_device_data, ptr %call7.i.i, i32 0, i32 22
  %14 = ptrtoint ptr %zombie to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %zombie, align 1
  %bTag = getelementptr inbounds %struct.usbtmc_device_data, ptr %call7.i.i, i32 0, i32 6
  %15 = ptrtoint ptr %bTag to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %bTag, align 4
  %iin_bTag = getelementptr inbounds %struct.usbtmc_device_data, ptr %call7.i.i, i32 0, i32 13
  %16 = ptrtoint ptr %iin_bTag to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 2, ptr %iin_bTag, align 2
  %17 = ptrtoint ptr %intf7 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %intf7, align 8
  %cur_altsetting = getelementptr inbounds %struct.usb_interface, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %cur_altsetting to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %cur_altsetting, align 4
  %bInterfaceNumber = getelementptr inbounds %struct.usb_interface_descriptor, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %bInterfaceNumber to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %bInterfaceNumber, align 2
  %conv = zext i8 %22 to i16
  %ifnum = getelementptr inbounds %struct.usbtmc_device_data, ptr %call7.i.i, i32 0, i32 12
  %23 = ptrtoint ptr %ifnum to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %conv, ptr %ifnum, align 4
  %call22 = call i32 @usb_find_common_endpoints(ptr noundef %20, ptr noundef nonnull %bulk_in, ptr noundef nonnull %bulk_out, ptr noundef null, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end29, label %do.end27

do.end27:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  %dev28 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev28, ptr noundef nonnull @.str.9) #16
  br label %err_put

if.end29:                                         ; preds = %if.end6
  %24 = ptrtoint ptr %bulk_in to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %bulk_in, align 4
  %bEndpointAddress = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %bEndpointAddress to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %bEndpointAddress, align 1
  %conv30 = zext i8 %27 to i32
  %bulk_in31 = getelementptr inbounds %struct.usbtmc_device_data, ptr %call7.i.i, i32 0, i32 4
  %28 = ptrtoint ptr %bulk_in31 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %conv30, ptr %bulk_in31, align 4
  %wMaxPacketSize.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %25, i32 0, i32 4
  %29 = ptrtoint ptr %wMaxPacketSize.i to i32
  call void @__asan_loadN_noabort(i32 %29, i32 2)
  %30 = load i16, ptr %wMaxPacketSize.i, align 1
  %31 = and i16 %30, -249
  %32 = call i16 @llvm.bswap.i16(i16 %31) #12
  %wMaxPacketSize = getelementptr inbounds %struct.usbtmc_device_data, ptr %call7.i.i, i32 0, i32 9
  %33 = ptrtoint ptr %wMaxPacketSize to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %32, ptr %wMaxPacketSize, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %31)
  %tobool35.not = icmp eq i16 %31, 0
  br i1 %tobool35.not, label %if.end29.err_put_crit_edge, label %do.body38

if.end29.err_put_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_put

do.body38:                                        ; preds = %if.end29
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usbtmc_probe.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usbtmc_probe, %if.then50)) #12
          to label %do.end55 [label %if.then50], !srcloc !452

if.then50:                                        ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #14
  %dev51 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  %34 = ptrtoint ptr %bulk_in31 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %bulk_in31, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usbtmc_probe.__UNIQUE_ID_ddebug288, ptr noundef %dev51, ptr noundef nonnull @.str.12, i32 noundef %35) #12
  br label %do.end55

do.end55:                                         ; preds = %if.then50, %do.body38
  %36 = ptrtoint ptr %bulk_out to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %bulk_out, align 4
  %bEndpointAddress56 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %37, i32 0, i32 2
  %38 = ptrtoint ptr %bEndpointAddress56 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %bEndpointAddress56, align 1
  %conv57 = zext i8 %39 to i32
  %bulk_out58 = getelementptr inbounds %struct.usbtmc_device_data, ptr %call7.i.i, i32 0, i32 5
  %40 = ptrtoint ptr %bulk_out58 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %conv57, ptr %bulk_out58, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usbtmc_probe.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usbtmc_probe, %if.then71)) #12
          to label %do.end76 [label %if.then71], !srcloc !452

if.then71:                                        ; preds = %do.end55
  call void @__sanitizer_cov_trace_pc() #14
  %dev72 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  %41 = ptrtoint ptr %bulk_out58 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %bulk_out58, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usbtmc_probe.__UNIQUE_ID_ddebug289, ptr noundef %dev72, ptr noundef nonnull @.str.13, i32 noundef %42) #12
  br label %do.end76

do.end76:                                         ; preds = %if.then71, %do.end55
  %call.i = call i32 @usb_find_common_endpoints(ptr noundef %20, ptr noundef null, ptr noundef null, ptr noundef nonnull %int_in, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool78.not = icmp eq i32 %call.i, 0
  br i1 %tobool78.not, label %if.then79, label %do.end76.if.end103_crit_edge

do.end76.if.end103_crit_edge:                     ; preds = %do.end76
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end103

if.then79:                                        ; preds = %do.end76
  call void @__sanitizer_cov_trace_pc() #14
  %iin_ep_present = getelementptr inbounds %struct.usbtmc_device_data, ptr %call7.i.i, i32 0, i32 17
  %43 = ptrtoint ptr %iin_ep_present to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 1, ptr %iin_ep_present, align 4
  %44 = ptrtoint ptr %int_in to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %int_in, align 4
  %bEndpointAddress80 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %45, i32 0, i32 2
  %46 = ptrtoint ptr %bEndpointAddress80 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %bEndpointAddress80, align 1
  %conv81 = zext i8 %47 to i32
  %iin_ep = getelementptr inbounds %struct.usbtmc_device_data, ptr %call7.i.i, i32 0, i32 16
  %48 = ptrtoint ptr %iin_ep to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %conv81, ptr %iin_ep, align 8
  %wMaxPacketSize.i259 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %45, i32 0, i32 4
  %49 = ptrtoint ptr %wMaxPacketSize.i259 to i32
  call void @__asan_loadN_noabort(i32 %49, i32 2)
  %50 = load i16, ptr %wMaxPacketSize.i259, align 1
  %51 = and i16 %50, -249
  %52 = call i16 @llvm.bswap.i16(i16 %51) #12
  %iin_wMaxPacketSize = getelementptr inbounds %struct.usbtmc_device_data, ptr %call7.i.i, i32 0, i32 20
  %53 = ptrtoint ptr %iin_wMaxPacketSize to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %52, ptr %iin_wMaxPacketSize, align 8
  %bInterval = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %45, i32 0, i32 5
  %54 = ptrtoint ptr %bInterval to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %bInterval, align 1
  %conv84 = zext i8 %55 to i32
  %iin_interval = getelementptr inbounds %struct.usbtmc_device_data, ptr %call7.i.i, i32 0, i32 18
  %56 = ptrtoint ptr %iin_interval to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %conv84, ptr %iin_interval, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usbtmc_probe.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usbtmc_probe, %if.then97)) #12
          to label %if.end103 [label %if.then97], !srcloc !452

if.then97:                                        ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #14
  %dev98 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  %57 = ptrtoint ptr %iin_ep to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %iin_ep, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usbtmc_probe.__UNIQUE_ID_ddebug290, ptr noundef %dev98, ptr noundef nonnull @.str.14, i32 noundef %58) #12
  br label %if.end103

if.end103:                                        ; preds = %if.then97, %if.then79, %do.end76.if.end103_crit_edge
  %call104 = call fastcc i32 @get_capabilities(ptr noundef nonnull %call7.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call104)
  %tobool105.not = icmp eq i32 %call104, 0
  br i1 %tobool105.not, label %if.end103.if.end111_crit_edge, label %do.end109

if.end103.if.end111_crit_edge:                    ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end111

do.end109:                                        ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #14
  %dev110 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev110, ptr noundef nonnull @.str.16) #16
  br label %if.end111

if.end111:                                        ; preds = %do.end109, %if.end103.if.end111_crit_edge
  %iin_ep_present112 = getelementptr inbounds %struct.usbtmc_device_data, ptr %call7.i.i, i32 0, i32 17
  %59 = ptrtoint ptr %iin_ep_present112 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %iin_ep_present112, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool113.not = icmp eq i32 %60, 0
  br i1 %tobool113.not, label %if.end111.if.end147_crit_edge, label %if.then114

if.end111.if.end147_crit_edge:                    ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end147

if.then114:                                       ; preds = %if.end111
  %call115 = call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #12
  %iin_urb = getelementptr inbounds %struct.usbtmc_device_data, ptr %call7.i.i, i32 0, i32 19
  %61 = ptrtoint ptr %iin_urb to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %call115, ptr %iin_urb, align 4
  %tobool117.not = icmp eq ptr %call115, null
  br i1 %tobool117.not, label %if.then114.error_register_crit_edge, label %if.end119

if.then114.error_register_crit_edge:              ; preds = %if.then114
  call void @__sanitizer_cov_trace_pc() #14
  br label %error_register

if.end119:                                        ; preds = %if.then114
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #12
  call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #12
  %62 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #12, !srcloc !453
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %62, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end119.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !454

if.end119.if.end15.sink.split.i.i.i.i_crit_edge:  ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end119
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %63 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %63)
  %.not.i.i.i.i = icmp sgt i32 %63, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.kref_get.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !455

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.kref_get.exit_crit_edge:          ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %kref_get.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.end119.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.end119.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef %.sink.i.i.i.i) #12
  br label %kref_get.exit

kref_get.exit:                                    ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.kref_get.exit_crit_edge
  %iin_wMaxPacketSize121 = getelementptr inbounds %struct.usbtmc_device_data, ptr %call7.i.i, i32 0, i32 20
  %64 = ptrtoint ptr %iin_wMaxPacketSize121 to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %iin_wMaxPacketSize121, align 8
  %conv122 = zext i16 %65 to i32
  %call9.i = call noalias align 128 ptr @__kmalloc(i32 noundef %conv122, i32 noundef 3264) #17
  %iin_buffer = getelementptr inbounds %struct.usbtmc_device_data, ptr %call7.i.i, i32 0, i32 14
  %66 = ptrtoint ptr %iin_buffer to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %call9.i, ptr %iin_buffer, align 8
  %tobool125.not = icmp eq ptr %call9.i, null
  br i1 %tobool125.not, label %kref_get.exit.error_register_crit_edge, label %if.end127

kref_get.exit.error_register_crit_edge:           ; preds = %kref_get.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %error_register

if.end127:                                        ; preds = %kref_get.exit
  %67 = ptrtoint ptr %iin_urb to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %iin_urb, align 4
  %69 = ptrtoint ptr %usb_dev to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %usb_dev, align 4
  %iin_ep131 = getelementptr inbounds %struct.usbtmc_device_data, ptr %call7.i.i, i32 0, i32 16
  %71 = ptrtoint ptr %iin_ep131 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %iin_ep131, align 8
  %73 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %70, align 8
  %shl.i = shl i32 %74, 8
  %shl1.i = shl i32 %72, 15
  %or.i = or i32 %shl1.i, %shl.i
  %or133 = or i32 %or.i, 1073741952
  %75 = ptrtoint ptr %iin_wMaxPacketSize121 to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %iin_wMaxPacketSize121, align 8
  %conv136 = zext i16 %76 to i32
  %iin_interval137 = getelementptr inbounds %struct.usbtmc_device_data, ptr %call7.i.i, i32 0, i32 18
  %77 = ptrtoint ptr %iin_interval137 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %iin_interval137, align 8
  %dev1.i = getelementptr inbounds %struct.urb, ptr %68, i32 0, i32 8
  %79 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %70, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %68, i32 0, i32 10
  %80 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %or133, ptr %pipe2.i, align 4
  %transfer_buffer3.i = getelementptr inbounds %struct.urb, ptr %68, i32 0, i32 14
  %81 = ptrtoint ptr %transfer_buffer3.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %call9.i, ptr %transfer_buffer3.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %68, i32 0, i32 19
  %82 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %conv136, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %68, i32 0, i32 28
  %83 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr @usbtmc_interrupt, ptr %complete.i, align 4
  %context4.i = getelementptr inbounds %struct.urb, ptr %68, i32 0, i32 27
  %84 = ptrtoint ptr %context4.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %call7.i.i, ptr %context4.i, align 4
  %speed.i = getelementptr inbounds %struct.usb_device, ptr %70, i32 0, i32 4
  %85 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %speed.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %86)
  %cmp.i261 = icmp eq i32 %86, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %86)
  %cmp6.i = icmp ugt i32 %86, 4
  %or.cond.i = or i1 %cmp.i261, %cmp6.i
  br i1 %or.cond.i, label %if.then.i263, label %if.end127.usb_fill_int_urb.exit_crit_edge

if.end127.usb_fill_int_urb.exit_crit_edge:        ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #14
  br label %usb_fill_int_urb.exit

if.then.i263:                                     ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #14
  %87 = call i32 @llvm.smax.i32(i32 %78, i32 1) #12
  %88 = call i32 @llvm.umin.i32(i32 %87, i32 16) #12
  %sub.i = add nsw i32 %88, -1
  %shl.i262 = shl nuw nsw i32 1, %sub.i
  br label %usb_fill_int_urb.exit

usb_fill_int_urb.exit:                            ; preds = %if.then.i263, %if.end127.usb_fill_int_urb.exit_crit_edge
  %interval.sink.i = phi i32 [ %shl.i262, %if.then.i263 ], [ %78, %if.end127.usb_fill_int_urb.exit_crit_edge ]
  %89 = getelementptr inbounds %struct.urb, ptr %68, i32 0, i32 25
  %90 = ptrtoint ptr %89 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %interval.sink.i, ptr %89, align 4
  %start_frame.i = getelementptr inbounds %struct.urb, ptr %68, i32 0, i32 23
  %91 = ptrtoint ptr %start_frame.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 -1, ptr %start_frame.i, align 4
  %92 = ptrtoint ptr %iin_urb to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %iin_urb, align 4
  %call139 = call i32 @usb_submit_urb(ptr noundef %93, i32 noundef 3264) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call139)
  %tobool140.not = icmp eq i32 %call139, 0
  br i1 %tobool140.not, label %usb_fill_int_urb.exit.if.end147_crit_edge, label %do.end144

usb_fill_int_urb.exit.if.end147_crit_edge:        ; preds = %usb_fill_int_urb.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end147

do.end144:                                        ; preds = %usb_fill_int_urb.exit
  call void @__sanitizer_cov_trace_pc() #14
  %dev145 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev145, ptr noundef nonnull @.str.19) #16
  br label %error_register

if.end147:                                        ; preds = %usb_fill_int_urb.exit.if.end147_crit_edge, %if.end111.if.end147_crit_edge
  %call148 = call i32 @usb_register_dev(ptr noundef %intf, ptr noundef nonnull @usbtmc_class) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call148)
  %tobool149.not = icmp eq i32 %call148, 0
  br i1 %tobool149.not, label %do.body156, label %do.end153

do.end153:                                        ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #14
  %dev154 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev154, ptr noundef nonnull @.str.22, i32 noundef 176, i32 noundef %call148) #16
  br label %error_register

do.body156:                                       ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usbtmc_probe.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usbtmc_probe, %if.then168)) #12
          to label %cleanup [label %if.then168], !srcloc !452

if.then168:                                       ; preds = %do.body156
  call void @__sanitizer_cov_trace_pc() #14
  %dev169 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  %minor = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 4
  %94 = ptrtoint ptr %minor to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %minor, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usbtmc_probe.__UNIQUE_ID_ddebug291, ptr noundef %dev169, ptr noundef nonnull @.str.24, i32 noundef %95) #12
  br label %cleanup

error_register:                                   ; preds = %do.end153, %do.end144, %kref_get.exit.error_register_crit_edge, %if.then114.error_register_crit_edge
  %retcode.0 = phi i32 [ %call139, %do.end144 ], [ %call148, %do.end153 ], [ -12, %if.then114.error_register_crit_edge ], [ -12, %kref_get.exit.error_register_crit_edge ]
  call fastcc void @usbtmc_free_int(ptr noundef nonnull %call7.i.i)
  br label %err_put

err_put:                                          ; preds = %error_register, %if.end29.err_put_crit_edge, %do.end27
  %retcode.1 = phi i32 [ %call22, %do.end27 ], [ %retcode.0, %error_register ], [ -22, %if.end29.err_put_crit_edge ]
  %call.i.i.i.i.i.i265 = call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !456
  call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #12
  %96 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #12, !srcloc !457
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %96, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i267, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %err_put
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i266 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i266, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !455

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef 3) #12
  br label %cleanup

if.then.i267:                                     ; preds = %err_put
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !458
  %97 = ptrtoint ptr %usb_dev to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %usb_dev, align 4
  call void @usb_put_dev(ptr noundef %98) #12
  call void @kfree(ptr noundef nonnull %call7.i.i) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then.i267, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %if.then168, %do.body156, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %do.end.cleanup_crit_edge ], [ 0, %if.then168 ], [ 0, %do.body156 ], [ %retcode.1, %if.end5.i.i.i.i.cleanup_crit_edge ], [ %retcode.1, %if.then10.i.i.i.i ], [ %retcode.1, %if.then.i267 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %int_in) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bulk_out) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bulk_in) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @usbtmc_disconnect(ptr noundef %intf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @usb_deregister_dev(ptr noundef %intf, ptr noundef nonnull @usbtmc_class) #12
  %io_mutex = getelementptr inbounds %struct.usbtmc_device_data, ptr %1, i32 0, i32 25
  tail call void @mutex_lock_nested(ptr noundef %io_mutex, i32 noundef 0) #12
  %zombie = getelementptr inbounds %struct.usbtmc_device_data, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %zombie to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %zombie, align 1
  %waitq = getelementptr inbounds %struct.usbtmc_device_data, ptr %1, i32 0, i32 26
  tail call void @__wake_up(ptr noundef %waitq, i32 noundef 1, i32 noundef 0, ptr noundef null) #12
  %file_list = getelementptr inbounds %struct.usbtmc_device_data, ptr %1, i32 0, i32 3
  %3 = ptrtoint ptr %file_list to i32
  call void @__asan_load4_noabort(i32 %3)
  %elem.017 = load ptr, ptr %file_list, align 4
  %cmp.i.not18 = icmp eq ptr %elem.017, %file_list
  br i1 %cmp.i.not18, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %elem.019 = phi ptr [ %elem.0, %for.body.for.body_crit_edge ], [ %elem.017, %entry.for.body_crit_edge ]
  %submitted = getelementptr i8, ptr %elem.019, i32 76
  tail call void @usb_kill_anchored_urbs(ptr noundef %submitted) #12
  %in_anchor = getelementptr i8, ptr %elem.019, i32 264
  tail call void @usb_scuttle_anchored_urbs(ptr noundef %in_anchor) #12
  %4 = ptrtoint ptr %elem.019 to i32
  call void @__asan_load4_noabort(i32 %4)
  %elem.0 = load ptr, ptr %elem.019, align 4
  %cmp.i.not = icmp eq ptr %elem.0, %file_list
  br i1 %cmp.i.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %io_mutex) #12
  tail call fastcc void @usbtmc_free_int(ptr noundef %1)
  %kref = getelementptr inbounds %struct.usbtmc_device_data, ptr %1, i32 0, i32 24
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !456
  tail call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #12
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #12, !srcloc !457
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %for.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !455

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef 3) #12
  br label %kref_put.exit

if.then.i:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !458
  %usb_dev.i.i = getelementptr %struct.usbtmc_device_data, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %usb_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %usb_dev.i.i, align 4
  tail call void @usb_put_dev(ptr noundef %7) #12
  tail call void @kfree(ptr noundef %1) #12
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usbtmc_suspend(ptr nocapture noundef readonly %intf, [1 x i32] %message.coerce) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %io_mutex = getelementptr inbounds %struct.usbtmc_device_data, ptr %1, i32 0, i32 25
  tail call void @mutex_lock_nested(ptr noundef %io_mutex, i32 noundef 0) #12
  %file_list = getelementptr inbounds %struct.usbtmc_device_data, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %file_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %elem.021 = load ptr, ptr %file_list, align 4
  %cmp.i.not22 = icmp eq ptr %elem.021, %file_list
  br i1 %cmp.i.not22, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %usbtmc_draw_down.exit.for.body_crit_edge, %if.end.for.body_crit_edge
  %elem.023 = phi ptr [ %elem.0, %usbtmc_draw_down.exit.for.body_crit_edge ], [ %elem.021, %if.end.for.body_crit_edge ]
  %submitted.i = getelementptr i8, ptr %elem.023, i32 76
  %call.i = tail call i32 @usb_wait_anchor_empty_timeout(ptr noundef %submitted.i, i32 noundef 1000) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %for.body.usbtmc_draw_down.exit_crit_edge

for.body.usbtmc_draw_down.exit_crit_edge:         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %usbtmc_draw_down.exit

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @usb_kill_anchored_urbs(ptr noundef %submitted.i) #12
  br label %usbtmc_draw_down.exit

usbtmc_draw_down.exit:                            ; preds = %if.then.i, %for.body.usbtmc_draw_down.exit_crit_edge
  %in_anchor.i = getelementptr i8, ptr %elem.023, i32 264
  tail call void @usb_scuttle_anchored_urbs(ptr noundef %in_anchor.i) #12
  %3 = ptrtoint ptr %elem.023 to i32
  call void @__asan_load4_noabort(i32 %3)
  %elem.0 = load ptr, ptr %elem.023, align 4
  %cmp.i.not = icmp eq ptr %elem.0, %file_list
  br i1 %cmp.i.not, label %usbtmc_draw_down.exit.for.end_crit_edge, label %usbtmc_draw_down.exit.for.body_crit_edge

usbtmc_draw_down.exit.for.body_crit_edge:         ; preds = %usbtmc_draw_down.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

usbtmc_draw_down.exit.for.end_crit_edge:          ; preds = %usbtmc_draw_down.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %usbtmc_draw_down.exit.for.end_crit_edge, %if.end.for.end_crit_edge
  %iin_ep_present = getelementptr inbounds %struct.usbtmc_device_data, ptr %1, i32 0, i32 17
  %4 = ptrtoint ptr %iin_ep_present to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %iin_ep_present, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool5.not = icmp eq i32 %5, 0
  br i1 %tobool5.not, label %for.end.if.end9_crit_edge, label %land.lhs.true

for.end.if.end9_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9

land.lhs.true:                                    ; preds = %for.end
  %iin_urb = getelementptr inbounds %struct.usbtmc_device_data, ptr %1, i32 0, i32 19
  %6 = ptrtoint ptr %iin_urb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %iin_urb, align 4
  %tobool6.not = icmp eq ptr %7, null
  br i1 %tobool6.not, label %land.lhs.true.if.end9_crit_edge, label %if.then7

land.lhs.true.if.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9

if.then7:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @usb_kill_urb(ptr noundef nonnull %7) #12
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %land.lhs.true.if.end9_crit_edge, %for.end.if.end9_crit_edge
  tail call void @mutex_unlock(ptr noundef %io_mutex) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usbtmc_resume(ptr noundef %intf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %iin_ep_present = getelementptr inbounds %struct.usbtmc_device_data, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %iin_ep_present to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %iin_ep_present, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end6_crit_edge, label %land.lhs.true

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

land.lhs.true:                                    ; preds = %entry
  %iin_urb = getelementptr inbounds %struct.usbtmc_device_data, ptr %1, i32 0, i32 19
  %4 = ptrtoint ptr %iin_urb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %iin_urb, align 4
  %tobool1.not = icmp eq ptr %5, null
  br i1 %tobool1.not, label %land.lhs.true.if.end6_crit_edge, label %if.end

land.lhs.true.if.end6_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

if.end:                                           ; preds = %land.lhs.true
  %call3 = tail call i32 @usb_submit_urb(ptr noundef nonnull %5, i32 noundef 3264) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end.if.end6_crit_edge, label %do.end

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.19) #16
  br label %if.end6

if.end6:                                          ; preds = %do.end, %if.end.if.end6_crit_edge, %land.lhs.true.if.end6_crit_edge, %entry.if.end6_crit_edge
  %retcode.013 = phi i32 [ %call3, %do.end ], [ 0, %if.end.if.end6_crit_edge ], [ 0, %land.lhs.true.if.end6_crit_edge ], [ 0, %entry.if.end6_crit_edge ]
  ret i32 %retcode.013
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usbtmc_pre_reset(ptr nocapture noundef readonly %intf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %io_mutex = getelementptr inbounds %struct.usbtmc_device_data, ptr %1, i32 0, i32 25
  tail call void @mutex_lock_nested(ptr noundef %io_mutex, i32 noundef 0) #12
  %file_list = getelementptr inbounds %struct.usbtmc_device_data, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %file_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %elem.012 = load ptr, ptr %file_list, align 4
  %cmp.i.not13 = icmp eq ptr %elem.012, %file_list
  br i1 %cmp.i.not13, label %if.end.cleanup_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %elem.014 = phi ptr [ %elem.0, %for.body.for.body_crit_edge ], [ %elem.012, %if.end.for.body_crit_edge ]
  %err_lock.i = getelementptr i8, ptr %elem.014, i32 32
  tail call void @_raw_spin_lock_irq(ptr noundef %err_lock.i) #12
  %in_status.i = getelementptr i8, ptr %elem.014, i32 256
  %3 = ptrtoint ptr %in_status.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -125, ptr %in_status.i, align 4
  %out_status.i = getelementptr i8, ptr %elem.014, i32 248
  %4 = ptrtoint ptr %out_status.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -125, ptr %out_status.i, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %err_lock.i) #12
  %submitted.i = getelementptr i8, ptr %elem.014, i32 76
  tail call void @usb_kill_anchored_urbs(ptr noundef %submitted.i) #12
  %5 = ptrtoint ptr %elem.014 to i32
  call void @__asan_load4_noabort(i32 %5)
  %elem.0 = load ptr, ptr %elem.014, align 4
  %cmp.i.not = icmp eq ptr %elem.0, %file_list
  br i1 %cmp.i.not, label %for.body.cleanup_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usbtmc_post_reset(ptr nocapture noundef readonly %intf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %io_mutex = getelementptr inbounds %struct.usbtmc_device_data, ptr %1, i32 0, i32 25
  tail call void @mutex_unlock(ptr noundef %io_mutex) #12
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_get_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_find_common_endpoints(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @get_capabilities(ptr nocapture noundef %data) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %usb_dev = getelementptr inbounds %struct.usbtmc_device_data, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %usb_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %usb_dev, align 4
  %dev1 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3264, i32 noundef 24) #15
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %usb_dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %usb_dev, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 8
  %shl.i = shl i32 %6, 8
  %or5 = or i32 %shl.i, -2147483520
  %call6 = tail call i32 @usb_control_msg(ptr noundef %4, i32 noundef %or5, i8 noundef zeroext 7, i8 noundef zeroext -95, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %call7.i, i16 noundef zeroext 24, i32 noundef 5000) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp = icmp slt i32 %call6, 0
  br i1 %cmp, label %do.end, label %do.body9

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.25, i32 noundef %call6) #16
  br label %err_out

do.body9:                                         ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @get_capabilities.__UNIQUE_ID_ddebug277, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@get_capabilities, %if.then14)) #12
          to label %do.end17 [label %if.then14], !srcloc !452

if.then14:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #14
  %7 = ptrtoint ptr %call7.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %call7.i, align 8
  %conv = zext i8 %8 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @get_capabilities.__UNIQUE_ID_ddebug277, ptr noundef %dev1, ptr noundef nonnull @.str.27, i32 noundef %conv) #12
  br label %do.end17

do.end17:                                         ; preds = %if.then14, %do.body9
  %9 = ptrtoint ptr %call7.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %call7.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %10)
  %cmp20.not = icmp eq i8 %10, 1
  br i1 %cmp20.not, label %do.body29, label %do.end25

do.end25:                                         ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #14
  %conv19 = zext i8 %10 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.27, i32 noundef %conv19) #16
  br label %err_out

do.body29:                                        ; preds = %do.end17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @get_capabilities.__UNIQUE_ID_ddebug278, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@get_capabilities, %if.then41)) #12
          to label %do.body47 [label %if.then41], !srcloc !452

if.then41:                                        ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx42 = getelementptr i8, ptr %call7.i, i32 4
  %11 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx42, align 4
  %conv43 = zext i8 %12 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @get_capabilities.__UNIQUE_ID_ddebug278, ptr noundef %dev1, ptr noundef nonnull @.str.30, i32 noundef %conv43) #12
  br label %do.body47

do.body47:                                        ; preds = %if.then41, %do.body29
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @get_capabilities.__UNIQUE_ID_ddebug279, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@get_capabilities, %if.then59)) #12
          to label %do.body65 [label %if.then59], !srcloc !452

if.then59:                                        ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx60 = getelementptr i8, ptr %call7.i, i32 5
  %13 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx60, align 1
  %conv61 = zext i8 %14 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @get_capabilities.__UNIQUE_ID_ddebug279, ptr noundef %dev1, ptr noundef nonnull @.str.31, i32 noundef %conv61) #12
  br label %do.body65

do.body65:                                        ; preds = %if.then59, %do.body47
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @get_capabilities.__UNIQUE_ID_ddebug280, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@get_capabilities, %if.then77)) #12
          to label %do.body83 [label %if.then77], !srcloc !452

if.then77:                                        ; preds = %do.body65
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx78 = getelementptr i8, ptr %call7.i, i32 14
  %15 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx78, align 2
  %conv79 = zext i8 %16 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @get_capabilities.__UNIQUE_ID_ddebug280, ptr noundef %dev1, ptr noundef nonnull @.str.32, i32 noundef %conv79) #12
  br label %do.body83

do.body83:                                        ; preds = %if.then77, %do.body65
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @get_capabilities.__UNIQUE_ID_ddebug281, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@get_capabilities, %if.then95)) #12
          to label %do.end100 [label %if.then95], !srcloc !452

if.then95:                                        ; preds = %do.body83
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx96 = getelementptr i8, ptr %call7.i, i32 15
  %17 = ptrtoint ptr %arrayidx96 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx96, align 1
  %conv97 = zext i8 %18 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @get_capabilities.__UNIQUE_ID_ddebug281, ptr noundef %dev1, ptr noundef nonnull @.str.33, i32 noundef %conv97) #12
  br label %do.end100

do.end100:                                        ; preds = %if.then95, %do.body83
  %arrayidx101 = getelementptr i8, ptr %call7.i, i32 4
  %19 = ptrtoint ptr %arrayidx101 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx101, align 4
  %capabilities = getelementptr inbounds %struct.usbtmc_device_data, ptr %data, i32 0, i32 23
  %21 = ptrtoint ptr %capabilities to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %capabilities, align 4
  %arrayidx102 = getelementptr i8, ptr %call7.i, i32 5
  %22 = ptrtoint ptr %arrayidx102 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx102, align 1
  %device_capabilities = getelementptr inbounds %struct.usbtmc_device_data, ptr %data, i32 0, i32 23, i32 1
  %24 = ptrtoint ptr %device_capabilities to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %device_capabilities, align 1
  %arrayidx104 = getelementptr i8, ptr %call7.i, i32 14
  %25 = ptrtoint ptr %arrayidx104 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx104, align 2
  %usb488_interface_capabilities = getelementptr inbounds %struct.usbtmc_device_data, ptr %data, i32 0, i32 23, i32 2
  %27 = ptrtoint ptr %usb488_interface_capabilities to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %usb488_interface_capabilities, align 2
  %arrayidx106 = getelementptr i8, ptr %call7.i, i32 15
  %28 = ptrtoint ptr %arrayidx106 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx106, align 1
  %usb488_device_capabilities = getelementptr inbounds %struct.usbtmc_device_data, ptr %data, i32 0, i32 23, i32 3
  %30 = ptrtoint ptr %usb488_device_capabilities to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %29, ptr %usb488_device_capabilities, align 1
  %31 = and i8 %26, 7
  %32 = shl i8 %29, 4
  %or113147 = or i8 %32, %31
  %usb488_caps = getelementptr inbounds %struct.usbtmc_device_data, ptr %data, i32 0, i32 21
  %33 = ptrtoint ptr %usb488_caps to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %or113147, ptr %usb488_caps, align 2
  br label %err_out

err_out:                                          ; preds = %do.end100, %do.end25, %do.end
  %rv.0 = phi i32 [ %call6, %do.end ], [ -1, %do.end25 ], [ 0, %do.end100 ]
  tail call void @kfree(ptr noundef nonnull %call7.i) #12
  br label %cleanup

cleanup:                                          ; preds = %err_out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rv.0, %err_out ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_urb(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @usbtmc_interrupt(ptr noundef %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %intf = getelementptr inbounds %struct.usbtmc_device_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %intf, align 4
  %dev1 = getelementptr inbounds %struct.usb_interface, ptr %3, i32 0, i32 7
  %status2 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %4 = ptrtoint ptr %status2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %status2, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usbtmc_interrupt.__UNIQUE_ID_ddebug284, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usbtmc_interrupt, %if.then)) #12
          to label %do.end [label %if.then], !srcloc !452

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %6 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %intf, align 4
  %dev6 = getelementptr inbounds %struct.usb_interface, ptr %7, i32 0, i32 7
  %actual_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %8 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %actual_length, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usbtmc_interrupt.__UNIQUE_ID_ddebug284, ptr noundef %dev6, ptr noundef nonnull @.str.35, i32 noundef %5, i32 noundef %9) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %10 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i32 %5, label %do.end.do.body81_crit_edge [
    i32 0, label %sw.bb
    i32 -75, label %do.end78
  ]

do.end.do.body81_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body81

sw.bb:                                            ; preds = %do.end
  %iin_buffer = getelementptr inbounds %struct.usbtmc_device_data, ptr %1, i32 0, i32 14
  %11 = ptrtoint ptr %iin_buffer to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %iin_buffer, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %12, align 1
  %conv = zext i8 %14 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 -127, i8 %14)
  %cmp = icmp ugt i8 %14, -127
  br i1 %cmp, label %if.then8, label %if.end13

if.then8:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  %bNotify1 = getelementptr inbounds %struct.usbtmc_device_data, ptr %1, i32 0, i32 10
  %15 = ptrtoint ptr %bNotify1 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %bNotify1, align 2
  %arrayidx12 = getelementptr i8, ptr %12, i32 1
  %16 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx12, align 1
  %bNotify2 = getelementptr inbounds %struct.usbtmc_device_data, ptr %1, i32 0, i32 11
  %18 = ptrtoint ptr %bNotify2 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %bNotify2, align 1
  %iin_data_valid = getelementptr inbounds %struct.usbtmc_device_data, ptr %1, i32 0, i32 15
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %iin_data_valid, i32 noundef 4) #12
  %19 = ptrtoint ptr %iin_data_valid to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile i32 1, ptr %iin_data_valid, align 4
  %waitq = getelementptr inbounds %struct.usbtmc_device_data, ptr %1, i32 0, i32 26
  tail call void @__wake_up(ptr noundef %waitq, i32 noundef 1, i32 noundef 1, ptr noundef null) #12
  br label %exit

if.end13:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp1(i8 -127, i8 %14)
  %cmp17 = icmp eq i8 %14, -127
  br i1 %cmp17, label %if.then19, label %do.end71

if.then19:                                        ; preds = %if.end13
  %fasync = getelementptr inbounds %struct.usbtmc_device_data, ptr %1, i32 0, i32 27
  %20 = ptrtoint ptr %fasync to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %fasync, align 4
  %tobool20.not = icmp eq ptr %21, null
  br i1 %tobool20.not, label %if.then19.do.body25_crit_edge, label %if.then21

if.then19.do.body25_crit_edge:                    ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body25

if.then21:                                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kill_fasync(ptr noundef %fasync, i32 noundef 29, i32 noundef 5) #12
  br label %do.body25

do.body25:                                        ; preds = %if.then21, %if.then19.do.body25_crit_edge
  %dev_lock = getelementptr inbounds %struct.usbtmc_device_data, ptr %1, i32 0, i32 28
  %call30 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %dev_lock) #12
  %file_list = getelementptr inbounds %struct.usbtmc_device_data, ptr %1, i32 0, i32 3
  %22 = ptrtoint ptr %file_list to i32
  call void @__asan_load4_noabort(i32 %22)
  %elem.0153 = load ptr, ptr %file_list, align 4
  %cmp.i.not154 = icmp eq ptr %elem.0153, %file_list
  br i1 %cmp.i.not154, label %do.body25.for.end_crit_edge, label %do.body25.for.body_crit_edge

do.body25.for.body_crit_edge:                     ; preds = %do.body25
  br label %for.body

do.body25.for.end_crit_edge:                      ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %do.body25.for.body_crit_edge
  %elem.0155 = phi ptr [ %elem.0, %for.body.for.body_crit_edge ], [ %elem.0153, %do.body25.for.body_crit_edge ]
  %23 = ptrtoint ptr %iin_buffer to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %iin_buffer, align 4
  %arrayidx42 = getelementptr i8, ptr %24, i32 1
  %25 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx42, align 1
  %srq_byte = getelementptr i8, ptr %elem.0155, i32 12
  %27 = ptrtoint ptr %srq_byte to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %srq_byte, align 4
  %srq_asserted = getelementptr i8, ptr %elem.0155, i32 16
  %call.i.i143 = tail call zeroext i1 @__kasan_check_write(ptr noundef %srq_asserted, i32 noundef 4) #12
  %28 = ptrtoint ptr %srq_asserted to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile i32 1, ptr %srq_asserted, align 4
  %29 = ptrtoint ptr %elem.0155 to i32
  call void @__asan_load4_noabort(i32 %29)
  %elem.0 = load ptr, ptr %elem.0155, align 4
  %cmp.i.not = icmp eq ptr %elem.0, %file_list
  br i1 %cmp.i.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %do.body25.for.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %dev_lock, i32 noundef %call30) #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usbtmc_interrupt.__UNIQUE_ID_ddebug285, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usbtmc_interrupt, %if.then57)) #12
          to label %do.end66 [label %if.then57], !srcloc !452

if.then57:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  %30 = ptrtoint ptr %iin_buffer to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %iin_buffer, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %31, align 1
  %conv60 = zext i8 %33 to i32
  %arrayidx62 = getelementptr i8, ptr %31, i32 1
  %34 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx62, align 1
  %conv63 = zext i8 %35 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usbtmc_interrupt.__UNIQUE_ID_ddebug285, ptr noundef %dev1, ptr noundef nonnull @.str.36, i32 noundef %conv60, i32 noundef %conv63) #12
  br label %do.end66

do.end66:                                         ; preds = %if.then57, %for.end
  %waitq67 = getelementptr inbounds %struct.usbtmc_device_data, ptr %1, i32 0, i32 26
  tail call void @__wake_up(ptr noundef %waitq67, i32 noundef 1, i32 noundef 0, ptr noundef null) #12
  br label %exit

do.end71:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.37, i32 noundef %conv) #16
  br label %exit

do.end78:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  %iin_wMaxPacketSize = getelementptr inbounds %struct.usbtmc_device_data, ptr %1, i32 0, i32 20
  %36 = ptrtoint ptr %iin_wMaxPacketSize to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %iin_wMaxPacketSize, align 4
  %conv79 = zext i16 %37 to i32
  %actual_length80 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %38 = ptrtoint ptr %actual_length80 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %actual_length80, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.40, i32 noundef %conv79, i32 noundef %39) #16
  br label %do.body81

do.body81:                                        ; preds = %do.end78, %do.end.do.body81_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usbtmc_interrupt.__UNIQUE_ID_ddebug286, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usbtmc_interrupt, %if.then93)) #12
          to label %cleanup [label %if.then93], !srcloc !452

if.then93:                                        ; preds = %do.body81
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usbtmc_interrupt.__UNIQUE_ID_ddebug286, ptr noundef %dev1, ptr noundef nonnull @.str.42, i32 noundef %5) #12
  br label %cleanup

exit:                                             ; preds = %do.end71, %do.end66, %if.then8
  %call97 = tail call i32 @usb_submit_urb(ptr noundef %urb, i32 noundef 2592) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call97)
  %tobool98.not = icmp eq i32 %call97, 0
  br i1 %tobool98.not, label %exit.cleanup_crit_edge, label %do.end102

exit.cleanup_crit_edge:                           ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end102:                                        ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.44, i32 noundef %call97) #16
  br label %cleanup

cleanup:                                          ; preds = %do.end102, %exit.cleanup_crit_edge, %if.then93, %do.body81
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_dev(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @usbtmc_free_int(ptr noundef %data) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %iin_ep_present = getelementptr inbounds %struct.usbtmc_device_data, ptr %data, i32 0, i32 17
  %0 = ptrtoint ptr %iin_ep_present to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %iin_ep_present, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %lor.lhs.false

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %iin_urb = getelementptr inbounds %struct.usbtmc_device_data, ptr %data, i32 0, i32 19
  %2 = ptrtoint ptr %iin_urb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iin_urb, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %lor.lhs.false.return_crit_edge, label %if.end

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  tail call void @usb_kill_urb(ptr noundef nonnull %3) #12
  %iin_buffer = getelementptr inbounds %struct.usbtmc_device_data, ptr %data, i32 0, i32 14
  %4 = ptrtoint ptr %iin_buffer to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %iin_buffer, align 4
  tail call void @kfree(ptr noundef %5) #12
  %6 = ptrtoint ptr %iin_buffer to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %iin_buffer, align 4
  %7 = ptrtoint ptr %iin_urb to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %iin_urb, align 4
  tail call void @usb_free_urb(ptr noundef %8) #12
  %9 = ptrtoint ptr %iin_urb to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %iin_urb, align 4
  %kref = getelementptr inbounds %struct.usbtmc_device_data, ptr %data, i32 0, i32 24
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !456
  tail call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #12
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #12, !srcloc !457
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.return_crit_edge, label %if.then10.i.i.i.i, !prof !455

if.end5.i.i.i.i.return_crit_edge:                 ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef 3) #12
  br label %return

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !458
  %usb_dev.i.i = getelementptr %struct.usbtmc_device_data, ptr %data, i32 0, i32 1
  %11 = ptrtoint ptr %usb_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %usb_dev.i.i, align 4
  tail call void @usb_put_dev(ptr noundef %12) #12
  tail call void @kfree(ptr noundef %data) #12
  br label %return

return:                                           ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.return_crit_edge, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kill_fasync(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @default_llseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usbtmc_read(ptr nocapture noundef readonly %filp, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef %f_pos) #2 align 64 {
entry:
  %actual.i = alloca i32, align 4
  %actual = alloca i32, align 4
  %done = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %actual) #12
  %0 = ptrtoint ptr %actual to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %actual, align 4, !annotation !451
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %done) #12
  %1 = ptrtoint ptr %done to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %done, align 4
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %intf = getelementptr inbounds %struct.usbtmc_device_data, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %intf, align 4
  %dev3 = getelementptr inbounds %struct.usb_interface, ptr %7, i32 0, i32 7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %8 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3264, i32 noundef 4096) #15
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %io_mutex = getelementptr inbounds %struct.usbtmc_device_data, ptr %5, i32 0, i32 25
  tail call void @mutex_lock_nested(ptr noundef %io_mutex, i32 noundef 0) #12
  %zombie = getelementptr inbounds %struct.usbtmc_device_data, ptr %5, i32 0, i32 22
  %9 = ptrtoint ptr %zombie to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %zombie, align 1, !range !459
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool4.not = icmp eq i8 %10, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.exit_crit_edge

if.end.exit_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit

if.end6:                                          ; preds = %if.end
  %11 = tail call i32 @llvm.umin.i32(i32 %count, i32 2147483647)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usbtmc_read.__UNIQUE_ID_ddebug265, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usbtmc_read, %if.then13)) #12
          to label %do.end [label %if.then13], !srcloc !452

if.then13:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usbtmc_read.__UNIQUE_ID_ddebug265, ptr noundef %dev3, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.47, i32 noundef %11) #12
  br label %do.end

do.end:                                           ; preds = %if.then13, %if.end6
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %actual.i) #12
  %14 = ptrtoint ptr %actual.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %actual.i, align 4, !annotation !451
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %15 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %15, i32 noundef 3264, i32 noundef 12) #15
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %do.end.if.then17_crit_edge, label %if.end.i

do.end.if.then17_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then17

if.end.i:                                         ; preds = %do.end
  %16 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 2, ptr %call7.i.i, align 8
  %bTag.i = getelementptr inbounds %struct.usbtmc_device_data, ptr %13, i32 0, i32 6
  %17 = ptrtoint ptr %bTag.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %bTag.i, align 4
  %arrayidx3.i = getelementptr i8, ptr %call7.i.i, i32 1
  %19 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %arrayidx3.i, align 1
  %20 = load i8, ptr %bTag.i, align 4
  %neg.i = xor i8 %20, -1
  %arrayidx6.i = getelementptr i8, ptr %call7.i.i, i32 2
  %21 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %neg.i, ptr %arrayidx6.i, align 2
  %arrayidx7.i = getelementptr i8, ptr %call7.i.i, i32 3
  %22 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %arrayidx7.i, align 1
  %conv8.i = trunc i32 %11 to i8
  %arrayidx9.i = getelementptr i8, ptr %call7.i.i, i32 4
  %23 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv8.i, ptr %arrayidx9.i, align 4
  %shr10.i = lshr i32 %11, 8
  %conv11.i = trunc i32 %shr10.i to i8
  %arrayidx12.i = getelementptr i8, ptr %call7.i.i, i32 5
  %24 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv11.i, ptr %arrayidx12.i, align 1
  %shr13.i = lshr i32 %11, 16
  %conv14.i = trunc i32 %shr13.i to i8
  %arrayidx15.i = getelementptr i8, ptr %call7.i.i, i32 6
  %25 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv14.i, ptr %arrayidx15.i, align 2
  %shr16.i = lshr i32 %11, 24
  %conv17.i = trunc i32 %shr16.i to i8
  %arrayidx18.i = getelementptr i8, ptr %call7.i.i, i32 7
  %26 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv17.i, ptr %arrayidx18.i, align 1
  %term_char_enabled.i = getelementptr inbounds %struct.usbtmc_file_data, ptr %3, i32 0, i32 9
  %27 = ptrtoint ptr %term_char_enabled.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %term_char_enabled.i, align 1, !range !459
  %29 = shl nuw nsw i8 %28, 1
  %arrayidx22.i = getelementptr i8, ptr %call7.i.i, i32 8
  %30 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %29, ptr %arrayidx22.i, align 8
  %term_char.i = getelementptr inbounds %struct.usbtmc_file_data, ptr %3, i32 0, i32 8
  %31 = ptrtoint ptr %term_char.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %term_char.i, align 2
  %arrayidx23.i = getelementptr i8, ptr %call7.i.i, i32 9
  %33 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %32, ptr %arrayidx23.i, align 1
  %arrayidx24.i = getelementptr i8, ptr %call7.i.i, i32 10
  %34 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %arrayidx24.i, align 2
  %arrayidx25.i = getelementptr i8, ptr %call7.i.i, i32 11
  %35 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 0, ptr %arrayidx25.i, align 1
  %usb_dev.i = getelementptr inbounds %struct.usbtmc_device_data, ptr %13, i32 0, i32 1
  %36 = ptrtoint ptr %usb_dev.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %usb_dev.i, align 4
  %bulk_out.i = getelementptr inbounds %struct.usbtmc_device_data, ptr %13, i32 0, i32 5
  %38 = ptrtoint ptr %bulk_out.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %bulk_out.i, align 4
  %40 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %37, align 8
  %shl.i.i = shl i32 %41, 8
  %shl1.i.i = shl i32 %39, 15
  %or.i.i = or i32 %shl1.i.i, %shl.i.i
  %or.i = or i32 %or.i.i, -1073741824
  %timeout.i = getelementptr inbounds %struct.usbtmc_file_data, ptr %3, i32 0, i32 2
  %42 = ptrtoint ptr %timeout.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %timeout.i, align 4
  %call28.i = call i32 @usb_bulk_msg(ptr noundef %37, i32 noundef %or.i, ptr noundef nonnull %call7.i.i, i32 noundef 12, ptr noundef nonnull %actual.i, i32 noundef %43) #12
  %44 = ptrtoint ptr %bTag.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %bTag.i, align 4
  %bTag_last_write.i = getelementptr inbounds %struct.usbtmc_device_data, ptr %13, i32 0, i32 7
  %46 = ptrtoint ptr %bTag_last_write.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %45, ptr %bTag_last_write.i, align 1
  %inc.i = add i8 %45, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %inc.i)
  %tobool32.not.i = icmp eq i8 %inc.i, 0
  %spec.select.i = select i1 %tobool32.not.i, i8 1, i8 %inc.i
  %47 = ptrtoint ptr %bTag.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %spec.select.i, ptr %bTag.i, align 4
  call void @kfree(ptr noundef nonnull %call7.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i)
  %cmp.i = icmp slt i32 %call28.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.end22

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %intf.i = getelementptr inbounds %struct.usbtmc_device_data, ptr %13, i32 0, i32 2
  %48 = ptrtoint ptr %intf.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %intf.i, align 4
  %dev.i = getelementptr inbounds %struct.usb_interface, ptr %49, i32 0, i32 7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.64, i32 noundef %call28.i) #16
  br label %if.then17

if.then17:                                        ; preds = %do.end.i, %do.end.if.then17_crit_edge
  %retval.0.i259.ph = phi i32 [ %call28.i, %do.end.i ], [ -12, %do.end.if.then17_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %actual.i) #12
  %auto_abort = getelementptr inbounds %struct.usbtmc_file_data, ptr %3, i32 0, i32 10
  %50 = ptrtoint ptr %auto_abort to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %auto_abort, align 4, !range !459
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool18.not = icmp eq i8 %51, 0
  br i1 %tobool18.not, label %if.then17.exit_crit_edge, label %if.then19

if.then17.exit_crit_edge:                         ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit

if.then19:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #14
  %bTag_last_write.i260 = getelementptr inbounds %struct.usbtmc_device_data, ptr %5, i32 0, i32 7
  %52 = ptrtoint ptr %bTag_last_write.i260 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %bTag_last_write.i260, align 1
  %call.i = call fastcc i32 @usbtmc_ioctl_abort_bulk_out_tag(ptr noundef %5, i8 noundef zeroext %53) #12
  br label %exit

if.end22:                                         ; preds = %if.end.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %actual.i) #12
  %54 = ptrtoint ptr %actual to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 0, ptr %actual, align 4
  %usb_dev = getelementptr inbounds %struct.usbtmc_device_data, ptr %5, i32 0, i32 1
  %55 = ptrtoint ptr %usb_dev to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %usb_dev, align 4
  %bulk_in = getelementptr inbounds %struct.usbtmc_device_data, ptr %5, i32 0, i32 4
  %57 = ptrtoint ptr %bulk_in to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %bulk_in, align 4
  %59 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %56, align 8
  %shl.i = shl i32 %60, 8
  %shl1.i = shl i32 %58, 15
  %or.i261 = or i32 %shl1.i, %shl.i
  %or25 = or i32 %or.i261, -1073741696
  %61 = ptrtoint ptr %timeout.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %timeout.i, align 4
  %call26 = call i32 @usb_bulk_msg(ptr noundef %56, i32 noundef %or25, ptr noundef nonnull %call7.i, i32 noundef 4096, ptr noundef nonnull %actual, i32 noundef %62) #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usbtmc_read.__UNIQUE_ID_ddebug266, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usbtmc_read, %if.then39)) #12
          to label %do.end42 [label %if.then39], !srcloc !452

if.then39:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  %63 = ptrtoint ptr %actual to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %actual, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usbtmc_read.__UNIQUE_ID_ddebug266, ptr noundef %dev3, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.47, i32 noundef %call26, i32 noundef %64) #12
  br label %do.end42

do.end42:                                         ; preds = %if.then39, %if.end22
  %bTag = getelementptr inbounds %struct.usbtmc_device_data, ptr %5, i32 0, i32 6
  %65 = ptrtoint ptr %bTag to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %bTag, align 4
  %bTag_last_read = getelementptr inbounds %struct.usbtmc_device_data, ptr %5, i32 0, i32 8
  %67 = ptrtoint ptr %bTag_last_read to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %66, ptr %bTag_last_read, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %cmp43 = icmp slt i32 %call26, 0
  br i1 %cmp43, label %if.then44, label %if.end50

if.then44:                                        ; preds = %do.end42
  %auto_abort45 = getelementptr inbounds %struct.usbtmc_file_data, ptr %3, i32 0, i32 10
  %68 = ptrtoint ptr %auto_abort45 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %auto_abort45, align 4, !range !459
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %tobool46.not = icmp eq i8 %69, 0
  br i1 %tobool46.not, label %if.then44.exit_crit_edge, label %if.then47

if.then44.exit_crit_edge:                         ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit

if.then47:                                        ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #14
  %call.i262 = call fastcc i32 @usbtmc_ioctl_abort_bulk_in_tag(ptr noundef %5, i8 noundef zeroext %66) #12
  br label %exit

if.end50:                                         ; preds = %do.end42
  %70 = ptrtoint ptr %actual to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %actual, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %71)
  %cmp51 = icmp slt i32 %71, 12
  br i1 %cmp51, label %do.end55, label %if.end61

do.end55:                                         ; preds = %if.end50
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3, ptr noundef nonnull @.str.50, i32 noundef %71, i32 noundef 12) #16
  %auto_abort56 = getelementptr inbounds %struct.usbtmc_file_data, ptr %3, i32 0, i32 10
  %72 = ptrtoint ptr %auto_abort56 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %auto_abort56, align 4, !range !459
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %73)
  %tobool57.not = icmp eq i8 %73, 0
  br i1 %tobool57.not, label %do.end55.exit_crit_edge, label %if.then58

do.end55.exit_crit_edge:                          ; preds = %do.end55
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit

if.then58:                                        ; preds = %do.end55
  call void @__sanitizer_cov_trace_pc() #14
  %74 = ptrtoint ptr %bTag_last_read to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %bTag_last_read, align 2
  %call.i264 = call fastcc i32 @usbtmc_ioctl_abort_bulk_in_tag(ptr noundef %5, i8 noundef zeroext %75) #12
  br label %exit

if.end61:                                         ; preds = %if.end50
  %76 = ptrtoint ptr %call7.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %call7.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %77)
  %cmp62.not = icmp eq i8 %77, 2
  br i1 %cmp62.not, label %if.end75, label %do.end67

do.end67:                                         ; preds = %if.end61
  %conv = zext i8 %77 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3, ptr noundef nonnull @.str.52, i32 noundef %conv) #16
  %auto_abort70 = getelementptr inbounds %struct.usbtmc_file_data, ptr %3, i32 0, i32 10
  %78 = ptrtoint ptr %auto_abort70 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %auto_abort70, align 4, !range !459
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %79)
  %tobool71.not = icmp eq i8 %79, 0
  br i1 %tobool71.not, label %do.end67.exit_crit_edge, label %if.then72

do.end67.exit_crit_edge:                          ; preds = %do.end67
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit

if.then72:                                        ; preds = %do.end67
  call void @__sanitizer_cov_trace_pc() #14
  %80 = ptrtoint ptr %bTag_last_read to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %bTag_last_read, align 2
  %call.i266 = call fastcc i32 @usbtmc_ioctl_abort_bulk_in_tag(ptr noundef %5, i8 noundef zeroext %81) #12
  br label %exit

if.end75:                                         ; preds = %if.end61
  %arrayidx76 = getelementptr i8, ptr %call7.i, i32 1
  %82 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %arrayidx76, align 1
  %bTag_last_write = getelementptr inbounds %struct.usbtmc_device_data, ptr %5, i32 0, i32 7
  %84 = ptrtoint ptr %bTag_last_write to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %bTag_last_write, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %83, i8 %85)
  %cmp79.not = icmp eq i8 %83, %85
  br i1 %cmp79.not, label %if.end94, label %do.end84

do.end84:                                         ; preds = %if.end75
  %conv78 = zext i8 %85 to i32
  %conv77 = zext i8 %83 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3, ptr noundef nonnull @.str.55, i32 noundef %conv77, i32 noundef %conv78) #16
  %auto_abort89 = getelementptr inbounds %struct.usbtmc_file_data, ptr %3, i32 0, i32 10
  %86 = ptrtoint ptr %auto_abort89 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %auto_abort89, align 4, !range !459
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %87)
  %tobool90.not = icmp eq i8 %87, 0
  br i1 %tobool90.not, label %do.end84.exit_crit_edge, label %if.then91

do.end84.exit_crit_edge:                          ; preds = %do.end84
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit

if.then91:                                        ; preds = %do.end84
  call void @__sanitizer_cov_trace_pc() #14
  %88 = ptrtoint ptr %bTag_last_read to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %bTag_last_read, align 2
  %call.i268 = call fastcc i32 @usbtmc_ioctl_abort_bulk_in_tag(ptr noundef %5, i8 noundef zeroext %89) #12
  br label %exit

if.end94:                                         ; preds = %if.end75
  %arrayidx95 = getelementptr i8, ptr %call7.i, i32 4
  %90 = ptrtoint ptr %arrayidx95 to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %arrayidx95, align 4
  %conv96 = zext i8 %91 to i32
  %arrayidx97 = getelementptr i8, ptr %call7.i, i32 5
  %92 = ptrtoint ptr %arrayidx97 to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %arrayidx97, align 1
  %conv98 = zext i8 %93 to i32
  %shl = shl nuw nsw i32 %conv98, 8
  %add = or i32 %shl, %conv96
  %arrayidx99 = getelementptr i8, ptr %call7.i, i32 6
  %94 = ptrtoint ptr %arrayidx99 to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %arrayidx99, align 2
  %conv100 = zext i8 %95 to i32
  %shl101 = shl nuw nsw i32 %conv100, 16
  %add102 = or i32 %add, %shl101
  %arrayidx103 = getelementptr i8, ptr %call7.i, i32 7
  %96 = ptrtoint ptr %arrayidx103 to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %arrayidx103, align 1
  %conv104 = zext i8 %97 to i32
  %shl105 = shl nuw i32 %conv104, 24
  %add106 = or i32 %add102, %shl105
  %arrayidx107 = getelementptr i8, ptr %call7.i, i32 8
  %98 = ptrtoint ptr %arrayidx107 to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %arrayidx107, align 8
  %bmTransferAttributes = getelementptr inbounds %struct.usbtmc_file_data, ptr %3, i32 0, i32 6
  %100 = ptrtoint ptr %bmTransferAttributes to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 %99, ptr %bmTransferAttributes, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usbtmc_read.__UNIQUE_ID_ddebug267, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usbtmc_read, %if.then120)) #12
          to label %do.end125 [label %if.then120], !srcloc !452

if.then120:                                       ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #14
  %101 = ptrtoint ptr %arrayidx107 to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %arrayidx107, align 8
  %conv122 = zext i8 %102 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usbtmc_read.__UNIQUE_ID_ddebug267, ptr noundef %dev3, ptr noundef nonnull @.str.57, i32 noundef %add106, i32 noundef %conv122) #12
  br label %do.end125

do.end125:                                        ; preds = %if.then120, %if.end94
  call void @__sanitizer_cov_trace_cmp4(i32 %add106, i32 %11)
  %cmp126 = icmp ugt i32 %add106, %11
  br i1 %cmp126, label %do.end131, label %do.body138

do.end131:                                        ; preds = %do.end125
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3, ptr noundef nonnull @.str.59, i32 noundef %add106, i32 noundef %11) #16
  %auto_abort132 = getelementptr inbounds %struct.usbtmc_file_data, ptr %3, i32 0, i32 10
  %103 = ptrtoint ptr %auto_abort132 to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %auto_abort132, align 4, !range !459
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %104)
  %tobool133.not = icmp eq i8 %104, 0
  br i1 %tobool133.not, label %do.end131.exit_crit_edge, label %if.then134

do.end131.exit_crit_edge:                         ; preds = %do.end131
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit

if.then134:                                       ; preds = %do.end131
  call void @__sanitizer_cov_trace_pc() #14
  %105 = ptrtoint ptr %bTag_last_read to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %bTag_last_read, align 2
  %call.i270 = call fastcc i32 @usbtmc_ioctl_abort_bulk_in_tag(ptr noundef %5, i8 noundef zeroext %106) #12
  br label %exit

do.body138:                                       ; preds = %do.end125
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usbtmc_read.__UNIQUE_ID_ddebug268, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usbtmc_read, %if.then150)) #12
          to label %do.end153 [label %if.then150], !srcloc !452

if.then150:                                       ; preds = %do.body138
  call void @__sanitizer_cov_trace_pc() #14
  %107 = ptrtoint ptr %actual to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %actual, align 4
  call void @print_hex_dump(ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.61, i32 noundef 0, i32 noundef 16, i32 noundef 1, ptr noundef nonnull %call7.i, i32 noundef %108, i1 noundef zeroext true) #12
  br label %do.end153

do.end153:                                        ; preds = %if.then150, %do.body138
  %109 = ptrtoint ptr %actual to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %actual, align 4
  %sub = add i32 %110, -12
  %111 = call i32 @llvm.umin.i32(i32 %sub, i32 %add106)
  %112 = ptrtoint ptr %actual to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %111, ptr %actual, align 4
  %sub158 = sub i32 %add106, %111
  %arrayidx159 = getelementptr i8, ptr %call7.i, i32 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 4084, i32 %111)
  %cmp1.i.i = icmp ugt i32 %111, 4084
  br i1 %cmp1.i.i, label %if.then3.i.i, label %if.then.i.i.i, !prof !454

if.then3.i.i:                                     ; preds = %do.end153
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.91, i32 noundef 214, i32 noundef 9, ptr noundef nonnull @.str.92, i32 noundef 4084, i32 noundef %111) #12
  br label %exit

if.then.i.i.i:                                    ; preds = %do.end153
  call void @__check_object_size(ptr noundef %arrayidx159, i32 noundef %111, i1 noundef zeroext true) #12
  call void @__might_fault(ptr noundef nonnull @.str.93, i32 noundef 174) #12
  %call.i.i = call zeroext i1 @should_fail_usercopy() #12
  br i1 %call.i.i, label %if.then.i.i.i.copy_to_user.exit_crit_edge, label %if.end.i.i

if.then.i.i.i.copy_to_user.exit_crit_edge:        ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %copy_to_user.exit

if.end.i.i:                                       ; preds = %if.then.i.i.i
  %113 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 %111, i32 -1226833920) #18, !srcloc !460
  %asmresult.i.i = extractvalue { i32, i32 } %113, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i.copy_to_user.exit_crit_edge

if.end.i.i.copy_to_user.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx159, i32 noundef %111) #12
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %buf, ptr noundef %arrayidx159, i32 noundef %111) #12
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i.copy_to_user.exit_crit_edge, %if.then.i.i.i.copy_to_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ %111, %if.then.i.i.i.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %111, %if.end.i.i.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i)
  %tobool161.not = icmp eq i32 %n.addr.0.i, 0
  br i1 %tobool161.not, label %if.end163, label %copy_to_user.exit.exit_crit_edge

copy_to_user.exit.exit_crit_edge:                 ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit

if.end163:                                        ; preds = %copy_to_user.exit
  %114 = ptrtoint ptr %actual to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %actual, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4084, i32 %115)
  %cmp165 = icmp eq i32 %115, 4084
  br i1 %cmp165, label %if.then167, label %if.end163.if.end173_crit_edge

if.end163.if.end173_crit_edge:                    ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end173

if.then167:                                       ; preds = %if.end163
  %add.ptr = getelementptr i8, ptr %buf, i32 4084
  %call168 = call fastcc i32 @usbtmc_generic_read(ptr noundef %3, ptr noundef %add.ptr, i32 noundef %sub158, ptr noundef nonnull %done, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call168)
  %cmp169 = icmp slt i32 %call168, 0
  br i1 %cmp169, label %if.then167.exit_crit_edge, label %if.then167.if.end173_crit_edge

if.then167.if.end173_crit_edge:                   ; preds = %if.then167
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end173

if.then167.exit_crit_edge:                        ; preds = %if.then167
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit

if.end173:                                        ; preds = %if.then167.if.end173_crit_edge, %if.end163.if.end173_crit_edge
  %116 = ptrtoint ptr %actual to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %actual, align 4
  %118 = ptrtoint ptr %done to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %done, align 4
  %add174 = add i32 %119, %117
  store i32 %add174, ptr %done, align 4
  %120 = ptrtoint ptr %f_pos to i32
  call void @__asan_load8_noabort(i32 %120)
  %121 = load i64, ptr %f_pos, align 8
  %conv175 = zext i32 %add174 to i64
  %add176 = add i64 %121, %conv175
  store i64 %add176, ptr %f_pos, align 8
  br label %exit

exit:                                             ; preds = %if.end173, %if.then167.exit_crit_edge, %copy_to_user.exit.exit_crit_edge, %if.then3.i.i, %if.then134, %do.end131.exit_crit_edge, %if.then91, %do.end84.exit_crit_edge, %if.then72, %do.end67.exit_crit_edge, %if.then58, %do.end55.exit_crit_edge, %if.then47, %if.then44.exit_crit_edge, %if.then19, %if.then17.exit_crit_edge, %if.end.exit_crit_edge
  %retval1.0 = phi i32 [ %retval.0.i259.ph, %if.then19 ], [ %retval.0.i259.ph, %if.then17.exit_crit_edge ], [ %call26, %if.then47 ], [ %call26, %if.then44.exit_crit_edge ], [ %call26, %if.then58 ], [ %call26, %do.end55.exit_crit_edge ], [ %call26, %if.then72 ], [ %call26, %do.end67.exit_crit_edge ], [ %call26, %if.then91 ], [ %call26, %do.end84.exit_crit_edge ], [ %call26, %if.then134 ], [ %call26, %do.end131.exit_crit_edge ], [ %call168, %if.then167.exit_crit_edge ], [ %add174, %if.end173 ], [ -19, %if.end.exit_crit_edge ], [ -14, %copy_to_user.exit.exit_crit_edge ], [ -14, %if.then3.i.i ]
  call void @mutex_unlock(ptr noundef %io_mutex) #12
  call void @kfree(ptr noundef nonnull %call7.i) #12
  br label %cleanup

cleanup:                                          ; preds = %exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval1.0, %exit ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %done) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %actual) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usbtmc_write(ptr nocapture noundef readonly %filp, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef readnone %f_pos) #2 align 64 {
entry:
  %done = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %done) #12
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %io_mutex = getelementptr inbounds %struct.usbtmc_device_data, ptr %3, i32 0, i32 25
  tail call void @mutex_lock_nested(ptr noundef %io_mutex, i32 noundef 0) #12
  %zombie = getelementptr inbounds %struct.usbtmc_device_data, ptr %3, i32 0, i32 22
  %4 = ptrtoint ptr %zombie to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %zombie, align 1, !range !459
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.end, label %entry.exit_crit_edge

entry.exit_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %done to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %done, align 4
  %err_lock = getelementptr inbounds %struct.usbtmc_file_data, ptr %1, i32 0, i32 11
  tail call void @_raw_spin_lock_irq(ptr noundef %err_lock) #12
  %out_transfer_size = getelementptr inbounds %struct.usbtmc_file_data, ptr %1, i32 0, i32 14
  %7 = ptrtoint ptr %out_transfer_size to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %out_transfer_size, align 4
  %out_status = getelementptr inbounds %struct.usbtmc_file_data, ptr %1, i32 0, i32 15
  %8 = ptrtoint ptr %out_status to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %out_status, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %err_lock) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %tobool4.not = icmp eq i32 %count, 0
  br i1 %tobool4.not, label %if.end.exit_crit_edge, label %if.end6

if.end.exit_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit

if.end6:                                          ; preds = %if.end
  %limit_write_sem = getelementptr inbounds %struct.usbtmc_file_data, ptr %1, i32 0, i32 13
  %call = tail call i32 @down_trylock(ptr noundef %limit_write_sem) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool7.not = icmp eq i32 %call, 0
  br i1 %tobool7.not, label %if.end9, label %if.end6.exit_crit_edge

if.end6.exit_crit_edge:                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit

if.end9:                                          ; preds = %if.end6
  %call.i = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #12
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end9.if.then12_crit_edge, label %if.end.i

if.end9.if.then12_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then12

if.end.i:                                         ; preds = %if.end9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %9 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3264, i32 noundef 4096) #15
  %tobool2.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool2.not.i, label %if.then3.i, label %if.end14

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @usb_free_urb(ptr noundef nonnull %call.i) #12
  br label %if.then12

if.then12:                                        ; preds = %if.then3.i, %if.end9.if.then12_crit_edge
  tail call void @up(ptr noundef %limit_write_sem) #12
  br label %exit

if.end14:                                         ; preds = %if.end.i
  %transfer_buffer.i = getelementptr inbounds %struct.urb, ptr %call.i, i32 0, i32 14
  %10 = ptrtoint ptr %transfer_buffer.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call7.i.i, ptr %transfer_buffer.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %call.i, i32 0, i32 19
  %11 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 4096, ptr %transfer_buffer_length.i, align 4
  %transfer_flags.i = getelementptr inbounds %struct.urb, ptr %call.i, i32 0, i32 13
  %12 = ptrtoint ptr %transfer_flags.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %transfer_flags.i, align 4
  %or.i = or i32 %13, 256
  store i32 %or.i, ptr %transfer_flags.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp = icmp slt i32 %count, 0
  br i1 %cmp, label %if.end14.if.end17_crit_edge, label %if.else

if.end14.if.end17_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17

if.else:                                          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  %eom_val = getelementptr inbounds %struct.usbtmc_file_data, ptr %1, i32 0, i32 7
  %14 = ptrtoint ptr %eom_val to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %eom_val, align 1
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.end14.if.end17_crit_edge
  %.sink = phi i8 [ %15, %if.else ], [ 0, %if.end14.if.end17_crit_edge ]
  %transfersize.0 = phi i32 [ %count, %if.else ], [ 2147483647, %if.end14.if.end17_crit_edge ]
  %16 = getelementptr i8, ptr %call7.i.i, i32 8
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %.sink, ptr %16, align 8
  %18 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %call7.i.i, align 8
  %bTag = getelementptr inbounds %struct.usbtmc_device_data, ptr %3, i32 0, i32 6
  %19 = ptrtoint ptr %bTag to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %bTag, align 4
  %arrayidx19 = getelementptr i8, ptr %call7.i.i, i32 1
  %21 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %arrayidx19, align 1
  %22 = load i8, ptr %bTag, align 4
  %neg = xor i8 %22, -1
  %arrayidx22 = getelementptr i8, ptr %call7.i.i, i32 2
  %23 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %neg, ptr %arrayidx22, align 2
  %arrayidx23 = getelementptr i8, ptr %call7.i.i, i32 3
  %24 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %arrayidx23, align 1
  %conv24 = trunc i32 %transfersize.0 to i8
  %arrayidx25 = getelementptr i8, ptr %call7.i.i, i32 4
  %25 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv24, ptr %arrayidx25, align 4
  %shr26 = lshr i32 %transfersize.0, 8
  %conv27 = trunc i32 %shr26 to i8
  %arrayidx28 = getelementptr i8, ptr %call7.i.i, i32 5
  %26 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv27, ptr %arrayidx28, align 1
  %shr29 = lshr i32 %transfersize.0, 16
  %conv30 = trunc i32 %shr29 to i8
  %arrayidx31 = getelementptr i8, ptr %call7.i.i, i32 6
  %27 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv30, ptr %arrayidx31, align 2
  %shr32 = lshr i32 %transfersize.0, 24
  %conv33 = trunc i32 %shr32 to i8
  %arrayidx34 = getelementptr i8, ptr %call7.i.i, i32 7
  %28 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv33, ptr %arrayidx34, align 1
  %arrayidx35 = getelementptr i8, ptr %call7.i.i, i32 9
  %29 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %arrayidx35, align 1
  %arrayidx36 = getelementptr i8, ptr %call7.i.i, i32 10
  %30 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %arrayidx36, align 2
  %arrayidx37 = getelementptr i8, ptr %call7.i.i, i32 11
  %31 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %arrayidx37, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4084, i32 %transfersize.0)
  %cmp38 = icmp ugt i32 %transfersize.0, 4084
  %add42 = add nuw i32 %transfersize.0, 15
  %and = and i32 %add42, -4
  %32 = call i32 @llvm.umin.i32(i32 %transfersize.0, i32 4084)
  %spec.select210 = select i1 %cmp38, i32 4096, i32 %and
  %arrayidx44 = getelementptr i8, ptr %call7.i.i, i32 12
  tail call void @__check_object_size(ptr noundef %arrayidx44, i32 noundef %32, i1 noundef zeroext false) #12
  tail call void @__might_fault(ptr noundef nonnull @.str.93, i32 noundef 156) #12
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #12
  br i1 %call.i.i, label %if.end17.if.then47_crit_edge, label %land.lhs.true.i.i

if.end17.if.then47_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then47

land.lhs.true.i.i:                                ; preds = %if.end17
  %33 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 %32, i32 -1226833920) #18, !srcloc !461
  %asmresult.i.i = extractvalue { i32, i32 } %33, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then47_crit_edge, !prof !455

land.lhs.true.i.i.if.then47_crit_edge:            ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then47

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx44, i32 noundef %32) #12
  %34 = tail call i32 @llvm.read_register.i32(metadata !441) #12
  %and.i.i.i.i.i.i = and i32 %34, -16384
  %35 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %35, i32 0, i32 4
  %36 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #9, !srcloc !462
  %and.i.i.i.i = and i32 %36, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #12, !srcloc !463
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !464
  %call1.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef %arrayidx44, ptr noundef %buf, i32 noundef %32) #12
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %36) #12, !srcloc !463
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !464
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %do.body, label %if.end.i.i.if.then47_crit_edge, !prof !455

if.end.i.i.if.then47_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then47

if.then47:                                        ; preds = %if.end.i.i.if.then47_crit_edge, %land.lhs.true.i.i.if.then47_crit_edge, %if.end17.if.then47_crit_edge
  %res.0.i.i209 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then47_crit_edge ], [ %32, %if.end17.if.then47_crit_edge ], [ %32, %land.lhs.true.i.i.if.then47_crit_edge ]
  %sub.i.i = sub i32 %32, %res.0.i.i209
  %add.ptr.i.i = getelementptr i8, ptr %arrayidx44, i32 %sub.i.i
  %37 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i209)
  tail call void @up(ptr noundef %limit_write_sem) #12
  br label %exit

do.body:                                          ; preds = %if.end.i.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usbtmc_write.__UNIQUE_ID_ddebug269, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usbtmc_write, %if.then54)) #12
          to label %do.body56 [label %if.then54], !srcloc !452

if.then54:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %intf = getelementptr inbounds %struct.usbtmc_device_data, ptr %3, i32 0, i32 2
  %38 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %intf, align 4
  %dev = getelementptr inbounds %struct.usb_interface, ptr %39, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usbtmc_write.__UNIQUE_ID_ddebug269, ptr noundef %dev, ptr noundef nonnull @.str.109, ptr noundef nonnull @.str.108, i32 noundef %32, i32 noundef %spec.select210) #12
  br label %do.body56

do.body56:                                        ; preds = %if.then54, %do.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usbtmc_write.__UNIQUE_ID_ddebug270, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usbtmc_write, %if.then68)) #12
          to label %do.end71 [label %if.then68], !srcloc !452

if.then68:                                        ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @print_hex_dump(ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.61, i32 noundef 0, i32 noundef 16, i32 noundef 1, ptr noundef nonnull %call7.i.i, i32 noundef %spec.select210, i1 noundef zeroext true) #12
  br label %do.end71

do.end71:                                         ; preds = %if.then68, %do.body56
  %usb_dev = getelementptr inbounds %struct.usbtmc_device_data, ptr %3, i32 0, i32 1
  %40 = ptrtoint ptr %usb_dev to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %usb_dev, align 4
  %bulk_out = getelementptr inbounds %struct.usbtmc_device_data, ptr %3, i32 0, i32 5
  %42 = ptrtoint ptr %bulk_out to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %bulk_out, align 4
  %44 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %41, align 8
  %shl.i = shl i32 %45, 8
  %shl1.i = shl i32 %43, 15
  %or.i195 = or i32 %shl1.i, %shl.i
  %or = or i32 %or.i195, -1073741824
  %dev1.i = getelementptr inbounds %struct.urb, ptr %call.i, i32 0, i32 8
  %46 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %41, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %call.i, i32 0, i32 10
  %47 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %or, ptr %pipe2.i, align 4
  %48 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %spec.select210, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %call.i, i32 0, i32 28
  %49 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr @usbtmc_write_bulk_cb, ptr %complete.i, align 4
  %context4.i = getelementptr inbounds %struct.urb, ptr %call.i, i32 0, i32 27
  %50 = ptrtoint ptr %context4.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %1, ptr %context4.i, align 4
  %submitted = getelementptr inbounds %struct.usbtmc_file_data, ptr %1, i32 0, i32 12
  tail call void @usb_anchor_urb(ptr noundef nonnull %call.i, ptr noundef %submitted) #12
  %call75 = tail call i32 @usb_submit_urb(ptr noundef nonnull %call.i, i32 noundef 3264) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %tobool76.not = icmp eq i32 %call75, 0
  br i1 %tobool76.not, label %if.end85, label %if.then83, !prof !455

if.then83:                                        ; preds = %do.end71
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @usb_unanchor_urb(ptr noundef nonnull %call.i) #12
  tail call void @up(ptr noundef %limit_write_sem) #12
  br label %exit

if.end85:                                         ; preds = %do.end71
  %sub86 = sub nsw i32 %transfersize.0, %32
  %51 = ptrtoint ptr %bTag to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %bTag, align 4
  %bTag_last_write = getelementptr inbounds %struct.usbtmc_device_data, ptr %3, i32 0, i32 7
  %53 = ptrtoint ptr %bTag_last_write to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %52, ptr %bTag_last_write, align 1
  %inc = add i8 %52, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %inc)
  %tobool90.not = icmp eq i8 %inc, 0
  %spec.select = select i1 %tobool90.not, i8 1, i8 %inc
  %54 = ptrtoint ptr %bTag to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %spec.select, ptr %bTag, align 4
  %add.ptr = getelementptr i8, ptr %buf, i32 %32
  %call95 = call fastcc i32 @usbtmc_generic_write(ptr noundef %1, ptr noundef %add.ptr, i32 noundef %sub86, ptr noundef nonnull %done, i32 noundef 2)
  %55 = ptrtoint ptr %done to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %done, align 4
  %57 = tail call i32 @llvm.umin.i32(i32 %56, i32 %sub86)
  %add100 = add i32 %57, %32
  %58 = ptrtoint ptr %done to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %add100, ptr %done, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call95)
  %cmp101 = icmp slt i32 %call95, 0
  br i1 %cmp101, label %if.then103, label %if.end85.exit_crit_edge

if.end85.exit_crit_edge:                          ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit

if.then103:                                       ; preds = %if.end85
  tail call void @usb_kill_anchored_urbs(ptr noundef %submitted) #12
  %intf108 = getelementptr inbounds %struct.usbtmc_device_data, ptr %3, i32 0, i32 2
  %59 = ptrtoint ptr %intf108 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %intf108, align 4
  %dev109 = getelementptr inbounds %struct.usb_interface, ptr %60, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev109, ptr noundef nonnull @.str.110, i32 noundef %call95) #16
  %auto_abort = getelementptr inbounds %struct.usbtmc_file_data, ptr %1, i32 0, i32 10
  %61 = ptrtoint ptr %auto_abort to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %auto_abort, align 4, !range !459
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool110.not = icmp eq i8 %62, 0
  br i1 %tobool110.not, label %if.then103.exit_crit_edge, label %if.then111

if.then103.exit_crit_edge:                        ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit

if.then111:                                       ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #14
  %63 = ptrtoint ptr %bTag_last_write to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %bTag_last_write, align 1
  %call.i197 = tail call fastcc i32 @usbtmc_ioctl_abort_bulk_out_tag(ptr noundef %3, i8 noundef zeroext %64) #12
  br label %exit

exit:                                             ; preds = %if.then111, %if.then103.exit_crit_edge, %if.end85.exit_crit_edge, %if.then83, %if.then47, %if.then12, %if.end6.exit_crit_edge, %if.end.exit_crit_edge, %entry.exit_crit_edge
  %retval1.0 = phi i32 [ -14, %if.then47 ], [ %call75, %if.then83 ], [ %call95, %if.then111 ], [ %call95, %if.then103.exit_crit_edge ], [ -12, %if.then12 ], [ 0, %if.end.exit_crit_edge ], [ -19, %entry.exit_crit_edge ], [ -16, %if.end6.exit_crit_edge ], [ %add100, %if.end85.exit_crit_edge ]
  %urb.0 = phi ptr [ %call.i, %if.then47 ], [ %call.i, %if.then83 ], [ %call.i, %if.then111 ], [ %call.i, %if.then103.exit_crit_edge ], [ null, %if.then12 ], [ null, %if.end.exit_crit_edge ], [ null, %entry.exit_crit_edge ], [ null, %if.end6.exit_crit_edge ], [ %call.i, %if.end85.exit_crit_edge ]
  tail call void @usb_free_urb(ptr noundef %urb.0) #12
  tail call void @mutex_unlock(ptr noundef %io_mutex) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %done) #12
  ret i32 %retval1.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usbtmc_poll(ptr noundef %file, ptr noundef %wait) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %io_mutex = getelementptr inbounds %struct.usbtmc_device_data, ptr %3, i32 0, i32 25
  tail call void @mutex_lock_nested(ptr noundef %io_mutex, i32 noundef 0) #12
  %zombie = getelementptr inbounds %struct.usbtmc_device_data, ptr %3, i32 0, i32 22
  %4 = ptrtoint ptr %zombie to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %zombie, align 1, !range !459
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.end, label %entry.no_poll_crit_edge

entry.no_poll_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %no_poll

if.end:                                           ; preds = %entry
  %waitq = getelementptr inbounds %struct.usbtmc_device_data, ptr %3, i32 0, i32 26
  %tobool.not.i = icmp eq ptr %wait, null
  br i1 %tobool.not.i, label %if.end.poll_wait.exit_crit_edge, label %land.lhs.true.i

if.end.poll_wait.exit_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %poll_wait.exit

land.lhs.true.i:                                  ; preds = %if.end
  %6 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %wait, align 4
  %tobool1.not.i = icmp eq ptr %7, null
  %tobool3.not.i = icmp eq ptr %waitq, null
  %or.cond.i = or i1 %tobool3.not.i, %tobool1.not.i
  br i1 %or.cond.i, label %land.lhs.true.i.poll_wait.exit_crit_edge, label %if.then.i

land.lhs.true.i.poll_wait.exit_crit_edge:         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %poll_wait.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void %7(ptr noundef %file, ptr noundef nonnull %waitq, ptr noundef nonnull %wait) #12
  br label %poll_wait.exit

poll_wait.exit:                                   ; preds = %if.then.i, %land.lhs.true.i.poll_wait.exit_crit_edge, %if.end.poll_wait.exit_crit_edge
  %srq_asserted = getelementptr inbounds %struct.usbtmc_file_data, ptr %1, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %srq_asserted, i32 noundef 4) #12
  %8 = ptrtoint ptr %srq_asserted to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %srq_asserted, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool2.not = icmp eq i32 %9, 0
  %spec.select = select i1 %tobool2.not, i32 0, i32 2
  %submitted = getelementptr inbounds %struct.usbtmc_file_data, ptr %1, i32 0, i32 12
  %call5 = tail call i32 @usb_anchor_empty(ptr noundef %submitted) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  %or8 = or i32 %spec.select, 260
  %mask.1 = select i1 %tobool6.not, i32 %spec.select, i32 %or8
  %in_anchor = getelementptr inbounds %struct.usbtmc_file_data, ptr %1, i32 0, i32 19
  %call10 = tail call i32 @usb_anchor_empty(ptr noundef %in_anchor) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  %or13 = or i32 %mask.1, 65
  %mask.2 = select i1 %tobool11.not, i32 %or13, i32 %mask.1
  %err_lock = getelementptr inbounds %struct.usbtmc_file_data, ptr %1, i32 0, i32 11
  tail call void @_raw_spin_lock_irq(ptr noundef %err_lock) #12
  %in_status = getelementptr inbounds %struct.usbtmc_file_data, ptr %1, i32 0, i32 17
  %10 = ptrtoint ptr %in_status to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %in_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool15.not = icmp eq i32 %11, 0
  br i1 %tobool15.not, label %lor.lhs.false, label %poll_wait.exit.if.then17_crit_edge

poll_wait.exit.if.then17_crit_edge:               ; preds = %poll_wait.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then17

lor.lhs.false:                                    ; preds = %poll_wait.exit
  %out_status = getelementptr inbounds %struct.usbtmc_file_data, ptr %1, i32 0, i32 15
  %12 = ptrtoint ptr %out_status to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %out_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool16.not = icmp eq i32 %13, 0
  br i1 %tobool16.not, label %lor.lhs.false.if.end19_crit_edge, label %lor.lhs.false.if.then17_crit_edge

lor.lhs.false.if.then17_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then17

lor.lhs.false.if.end19_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19

if.then17:                                        ; preds = %lor.lhs.false.if.then17_crit_edge, %poll_wait.exit.if.then17_crit_edge
  %or18 = or i32 %mask.2, 8
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %lor.lhs.false.if.end19_crit_edge
  %mask.3 = phi i32 [ %or18, %if.then17 ], [ %mask.2, %lor.lhs.false.if.end19_crit_edge ]
  tail call void @_raw_spin_unlock_irq(ptr noundef %err_lock) #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usbtmc_poll.__UNIQUE_ID_ddebug283, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usbtmc_poll, %if.then25)) #12
          to label %no_poll [label %if.then25], !srcloc !452

if.then25:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  %intf = getelementptr inbounds %struct.usbtmc_device_data, ptr %3, i32 0, i32 2
  %14 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %intf, align 4
  %dev = getelementptr inbounds %struct.usb_interface, ptr %15, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usbtmc_poll.__UNIQUE_ID_ddebug283, ptr noundef %dev, ptr noundef nonnull @.str.119, i32 noundef %mask.3) #12
  br label %no_poll

no_poll:                                          ; preds = %if.then25, %if.end19, %entry.no_poll_crit_edge
  %mask.4 = phi i32 [ %mask.3, %if.then25 ], [ 24, %entry.no_poll_crit_edge ], [ %mask.3, %if.end19 ]
  tail call void @mutex_unlock(ptr noundef %io_mutex) #12
  ret i32 %mask.4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usbtmc_ioctl(ptr nocapture noundef readonly %file, i32 noundef %cmd, i32 noundef %arg) #2 align 64 {
entry:
  %tmp_byte = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp_byte) #12
  %0 = ptrtoint ptr %tmp_byte to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %tmp_byte, align 1, !annotation !451
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %1 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %private_data, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %io_mutex = getelementptr inbounds %struct.usbtmc_device_data, ptr %4, i32 0, i32 25
  tail call void @mutex_lock_nested(ptr noundef %io_mutex, i32 noundef 0) #12
  %zombie = getelementptr inbounds %struct.usbtmc_device_data, ptr %4, i32 0, i32 22
  %5 = ptrtoint ptr %zombie to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %zombie, align 1, !range !459
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %if.end, label %entry.skip_io_on_zombie_crit_edge

entry.skip_io_on_zombie_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %skip_io_on_zombie

if.end:                                           ; preds = %entry
  %7 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.191)
  switch i32 %cmd, label %if.end.skip_io_on_zombie_crit_edge [
    i32 23302, label %sw.bb
    i32 23303, label %sw.bb3
    i32 23297, label %sw.bb5
    i32 23298, label %sw.bb7
    i32 23299, label %sw.bb9
    i32 23300, label %sw.bb11
    i32 -1072932088, label %sw.bb13
    i32 -2147198199, label %sw.bb15
    i32 1074027274, label %sw.bb17
    i32 1073830667, label %sw.bb19
    i32 1073896204, label %sw.bb21
    i32 -1072669939, label %sw.bb23
    i32 -1072669938, label %sw.bb25
    i32 -1073456369, label %sw.bb27
    i32 -2147198192, label %sw.bb29
    i32 -2147394799, label %sw.bb32
    i32 -2147394798, label %sw.bb48
    i32 1073830675, label %sw.bb50
    i32 23316, label %sw.bb52
    i32 23317, label %sw.bb54
    i32 23318, label %sw.bb56
    i32 1074027287, label %sw.bb58
    i32 -2147394792, label %sw.bb60
    i32 1073830681, label %sw.bb76
    i32 -2147394790, label %sw.bb92
    i32 -2147394789, label %sw.bb113
    i32 23331, label %sw.bb115
    i32 23332, label %sw.bb117
  ]

if.end.skip_io_on_zombie_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %skip_io_on_zombie

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call fastcc i32 @usbtmc_ioctl_clear_out_halt(ptr noundef %4)
  br label %skip_io_on_zombie

sw.bb3:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %call4 = tail call fastcc i32 @usbtmc_ioctl_clear_in_halt(ptr noundef %4)
  br label %skip_io_on_zombie

sw.bb5:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %call6 = tail call fastcc i32 @usbtmc_ioctl_indicator_pulse(ptr noundef %4)
  br label %skip_io_on_zombie

sw.bb7:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %call8 = tail call fastcc i32 @usbtmc_ioctl_clear(ptr noundef %4)
  br label %skip_io_on_zombie

sw.bb9:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %bTag_last_write.i = getelementptr inbounds %struct.usbtmc_device_data, ptr %4, i32 0, i32 7
  %8 = ptrtoint ptr %bTag_last_write.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %bTag_last_write.i, align 1
  %call.i = tail call fastcc i32 @usbtmc_ioctl_abort_bulk_out_tag(ptr noundef %4, i8 noundef zeroext %9) #12
  br label %skip_io_on_zombie

sw.bb11:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %bTag_last_read.i = getelementptr inbounds %struct.usbtmc_device_data, ptr %4, i32 0, i32 8
  %10 = ptrtoint ptr %bTag_last_read.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %bTag_last_read.i, align 2
  %call.i185 = tail call fastcc i32 @usbtmc_ioctl_abort_bulk_in_tag(ptr noundef %4, i8 noundef zeroext %11) #12
  br label %skip_io_on_zombie

sw.bb13:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %12 = inttoptr i32 %arg to ptr
  %call14 = tail call fastcc i32 @usbtmc_ioctl_request(ptr noundef %4, ptr noundef %12)
  br label %skip_io_on_zombie

sw.bb15:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %13 = inttoptr i32 %arg to ptr
  %call16 = tail call fastcc i32 @usbtmc_ioctl_get_timeout(ptr noundef %2, ptr noundef %13)
  br label %skip_io_on_zombie

sw.bb17:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %14 = inttoptr i32 %arg to ptr
  %call18 = tail call fastcc i32 @usbtmc_ioctl_set_timeout(ptr noundef %2, ptr noundef %14)
  br label %skip_io_on_zombie

sw.bb19:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %15 = inttoptr i32 %arg to ptr
  %call20 = tail call fastcc i32 @usbtmc_ioctl_eom_enable(ptr noundef %2, ptr noundef %15)
  br label %skip_io_on_zombie

sw.bb21:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %16 = inttoptr i32 %arg to ptr
  %call22 = tail call fastcc i32 @usbtmc_ioctl_config_termc(ptr noundef %2, ptr noundef %16)
  br label %skip_io_on_zombie

sw.bb23:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %17 = inttoptr i32 %arg to ptr
  %call24 = tail call fastcc i32 @usbtmc_ioctl_generic_write(ptr noundef %2, ptr noundef %17)
  br label %skip_io_on_zombie

sw.bb25:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %18 = inttoptr i32 %arg to ptr
  %call26 = tail call fastcc i32 @usbtmc_ioctl_generic_read(ptr noundef %2, ptr noundef %18)
  br label %skip_io_on_zombie

sw.bb27:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %19 = inttoptr i32 %arg to ptr
  %call28 = tail call fastcc i32 @usbtmc_ioctl_write_result(ptr noundef %2, ptr noundef %19)
  br label %skip_io_on_zombie

sw.bb29:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %20 = inttoptr i32 %arg to ptr
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 2137) #12
  %21 = tail call i32 @llvm.read_register.i32(metadata !441) #12
  %and.i.i.i = and i32 %21, -16384
  %22 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 4
  %23 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #9, !srcloc !462
  %and.i = and i32 %23, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #12, !srcloc !463
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !464
  %24 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %20, i32 3, i32 -1226833921) #12, !srcloc !465
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %23) #12, !srcloc !463
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !464
  br label %skip_io_on_zombie

sw.bb32:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %25 = inttoptr i32 %arg to ptr
  %usb488_caps = getelementptr inbounds %struct.usbtmc_device_data, ptr %4, i32 0, i32 21
  %26 = ptrtoint ptr %usb488_caps to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %usb488_caps, align 2
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 2142) #12
  %28 = tail call i32 @llvm.read_register.i32(metadata !441) #12
  %and.i.i.i169 = and i32 %28, -16384
  %29 = inttoptr i32 %and.i.i.i169 to ptr
  %cpu_domain.i.i170 = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 4
  %30 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i170) #9, !srcloc !462
  %and.i171 = and i32 %30, -13
  %or.i172 = or i32 %and.i171, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i172) #12, !srcloc !463
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !464
  %31 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_1", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %25, i8 %27, i32 -1226833921) #12, !srcloc !466
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %30) #12, !srcloc !463
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !464
  br label %skip_io_on_zombie

sw.bb48:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %32 = inttoptr i32 %arg to ptr
  %call49 = tail call fastcc i32 @usbtmc488_ioctl_read_stb(ptr noundef %2, ptr noundef %32)
  br label %skip_io_on_zombie

sw.bb50:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %33 = inttoptr i32 %arg to ptr
  %call51 = tail call fastcc i32 @usbtmc488_ioctl_simple(ptr noundef %4, ptr noundef %33, i32 noundef 160)
  br label %skip_io_on_zombie

sw.bb52:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %34 = inttoptr i32 %arg to ptr
  %call53 = tail call fastcc i32 @usbtmc488_ioctl_simple(ptr noundef %4, ptr noundef %34, i32 noundef 161)
  br label %skip_io_on_zombie

sw.bb54:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %35 = inttoptr i32 %arg to ptr
  %call55 = tail call fastcc i32 @usbtmc488_ioctl_simple(ptr noundef %4, ptr noundef %35, i32 noundef 162)
  br label %skip_io_on_zombie

sw.bb56:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %call57 = tail call fastcc i32 @usbtmc488_ioctl_trigger(ptr noundef %2)
  br label %skip_io_on_zombie

sw.bb58:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %36 = inttoptr i32 %arg to ptr
  %call59 = tail call fastcc i32 @usbtmc488_ioctl_wait_srq(ptr noundef %2, ptr noundef %36)
  br label %skip_io_on_zombie

sw.bb60:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %37 = inttoptr i32 %arg to ptr
  %bmTransferAttributes = getelementptr inbounds %struct.usbtmc_file_data, ptr %2, i32 0, i32 6
  %38 = ptrtoint ptr %bmTransferAttributes to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %bmTransferAttributes, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 2176) #12
  %40 = tail call i32 @llvm.read_register.i32(metadata !441) #12
  %and.i.i.i173 = and i32 %40, -16384
  %41 = inttoptr i32 %and.i.i.i173 to ptr
  %cpu_domain.i.i174 = getelementptr inbounds %struct.thread_info, ptr %41, i32 0, i32 4
  %42 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i174) #9, !srcloc !462
  %and.i175 = and i32 %42, -13
  %or.i176 = or i32 %and.i175, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i176) #12, !srcloc !463
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !464
  %43 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_1", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %37, i8 %39, i32 -1226833921) #12, !srcloc !467
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %42) #12, !srcloc !463
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !464
  br label %skip_io_on_zombie

sw.bb76:                                          ; preds = %if.end
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 2180) #12
  %44 = inttoptr i32 %arg to ptr
  %45 = tail call i32 @llvm.read_register.i32(metadata !441) #12
  %and.i.i.i177 = and i32 %45, -16384
  %46 = inttoptr i32 %and.i.i.i177 to ptr
  %cpu_domain.i.i178 = getelementptr inbounds %struct.thread_info, ptr %46, i32 0, i32 4
  %47 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i178) #9, !srcloc !462
  %and.i179 = and i32 %47, -13
  %or.i180 = or i32 %and.i179, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i180) #12, !srcloc !463
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !464
  %48 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_1", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %44, i32 -1226833921) #12, !srcloc !468
  %asmresult = extractvalue { i32, i32 } %48, 0
  %asmresult85 = extractvalue { i32, i32 } %48, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %47) #12, !srcloc !463
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !464
  %conv = trunc i32 %asmresult85 to i8
  %49 = ptrtoint ptr %tmp_byte to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %conv, ptr %tmp_byte, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult)
  %cmp = icmp eq i32 %asmresult, 0
  br i1 %cmp, label %if.then88, label %sw.bb76.skip_io_on_zombie_crit_edge

sw.bb76.skip_io_on_zombie_crit_edge:              ; preds = %sw.bb76
  call void @__sanitizer_cov_trace_pc() #14
  br label %skip_io_on_zombie

if.then88:                                        ; preds = %sw.bb76
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv)
  %tobool89 = icmp ne i8 %conv, 0
  %auto_abort = getelementptr inbounds %struct.usbtmc_file_data, ptr %2, i32 0, i32 10
  %frombool = zext i1 %tobool89 to i8
  %50 = ptrtoint ptr %auto_abort to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %frombool, ptr %auto_abort, align 4
  br label %skip_io_on_zombie

sw.bb92:                                          ; preds = %if.end
  %call93 = call fastcc i32 @usbtmc_get_stb(ptr noundef %2, ptr noundef nonnull %tmp_byte)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93)
  %cmp94 = icmp sgt i32 %call93, 0
  br i1 %cmp94, label %if.then96, label %sw.bb92.skip_io_on_zombie_crit_edge

sw.bb92.skip_io_on_zombie_crit_edge:              ; preds = %sw.bb92
  call void @__sanitizer_cov_trace_pc() #14
  br label %skip_io_on_zombie

if.then96:                                        ; preds = %sw.bb92
  call void @__sanitizer_cov_trace_pc() #14
  %51 = inttoptr i32 %arg to ptr
  %52 = ptrtoint ptr %tmp_byte to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %tmp_byte, align 1
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 2188) #12
  %54 = tail call i32 @llvm.read_register.i32(metadata !441) #12
  %and.i.i.i181 = and i32 %54, -16384
  %55 = inttoptr i32 %and.i.i.i181 to ptr
  %cpu_domain.i.i182 = getelementptr inbounds %struct.thread_info, ptr %55, i32 0, i32 4
  %56 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i182) #9, !srcloc !462
  %and.i183 = and i32 %56, -13
  %or.i184 = or i32 %and.i183, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i184) #12, !srcloc !463
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !464
  %57 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_1", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %51, i8 %53, i32 -1226833921) #12, !srcloc !469
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %56) #12, !srcloc !463
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !464
  br label %skip_io_on_zombie

sw.bb113:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %58 = inttoptr i32 %arg to ptr
  %call114 = tail call fastcc i32 @usbtmc_ioctl_get_srq_stb(ptr noundef %2, ptr noundef %58)
  br label %skip_io_on_zombie

sw.bb115:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @usbtmc_ioctl_cancel_io(ptr noundef %2)
  br label %skip_io_on_zombie

sw.bb117:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @usbtmc_ioctl_cleanup_io(ptr noundef %2)
  br label %skip_io_on_zombie

skip_io_on_zombie:                                ; preds = %sw.bb117, %sw.bb115, %sw.bb113, %if.then96, %sw.bb92.skip_io_on_zombie_crit_edge, %if.then88, %sw.bb76.skip_io_on_zombie_crit_edge, %sw.bb60, %sw.bb58, %sw.bb56, %sw.bb54, %sw.bb52, %sw.bb50, %sw.bb48, %sw.bb32, %sw.bb29, %sw.bb27, %sw.bb25, %sw.bb23, %sw.bb21, %sw.bb19, %sw.bb17, %sw.bb15, %sw.bb13, %sw.bb11, %sw.bb9, %sw.bb7, %sw.bb5, %sw.bb3, %sw.bb, %if.end.skip_io_on_zombie_crit_edge, %entry.skip_io_on_zombie_crit_edge
  %retval1.0 = phi i32 [ -56, %if.end.skip_io_on_zombie_crit_edge ], [ 0, %sw.bb117 ], [ 0, %sw.bb115 ], [ %call114, %sw.bb113 ], [ %57, %if.then96 ], [ %call93, %sw.bb92.skip_io_on_zombie_crit_edge ], [ 0, %if.then88 ], [ %asmresult, %sw.bb76.skip_io_on_zombie_crit_edge ], [ %43, %sw.bb60 ], [ %call59, %sw.bb58 ], [ %call57, %sw.bb56 ], [ %call55, %sw.bb54 ], [ %call53, %sw.bb52 ], [ %call51, %sw.bb50 ], [ %call49, %sw.bb48 ], [ %31, %sw.bb32 ], [ %24, %sw.bb29 ], [ %call28, %sw.bb27 ], [ %call26, %sw.bb25 ], [ %call24, %sw.bb23 ], [ %call22, %sw.bb21 ], [ %call20, %sw.bb19 ], [ %call18, %sw.bb17 ], [ %call16, %sw.bb15 ], [ %call14, %sw.bb13 ], [ %call.i185, %sw.bb11 ], [ %call.i, %sw.bb9 ], [ %call8, %sw.bb7 ], [ %call6, %sw.bb5 ], [ %call4, %sw.bb3 ], [ %call, %sw.bb ], [ -19, %entry.skip_io_on_zombie_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %io_mutex) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp_byte) #12
  ret i32 %retval1.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usbtmc_open(ptr nocapture noundef readonly %inode, ptr nocapture noundef writeonly %filp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %i_rdev.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 13
  %0 = ptrtoint ptr %i_rdev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i_rdev.i, align 8
  %and.i = and i32 %1, 1048575
  %call1 = tail call ptr @usb_find_interface(ptr noundef nonnull @usbtmc_driver, i32 noundef %and.i) #12
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %2 = ptrtoint ptr %i_rdev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %i_rdev.i, align 8
  %and.i46 = and i32 %3, 1048575
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.175, i32 noundef %and.i46) #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 432) #15
  %tobool5.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %do.body8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body8:                                         ; preds = %if.end
  %err_lock = getelementptr inbounds %struct.usbtmc_file_data, ptr %call7.i.i, i32 0, i32 11
  tail call void @__raw_spin_lock_init(ptr noundef %err_lock, ptr noundef nonnull @.str.177, ptr noundef nonnull @usbtmc_open.__key, i16 noundef signext 3) #12
  %limit_write_sem = getelementptr inbounds %struct.usbtmc_file_data, ptr %call7.i.i, i32 0, i32 13
  %wait_list1.i = getelementptr inbounds %struct.usbtmc_file_data, ptr %call7.i.i, i32 0, i32 13, i32 2
  %5 = ptrtoint ptr %limit_write_sem to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %limit_write_sem, align 8
  %.compoundliteral.sroa.2.0..sroa_idx.i = getelementptr inbounds %struct.usbtmc_file_data, ptr %call7.i.i, i32 0, i32 13, i32 0, i32 1
  %6 = ptrtoint ptr %.compoundliteral.sroa.2.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -559067475, ptr %.compoundliteral.sroa.2.0..sroa_idx.i, align 4
  %.compoundliteral.sroa.3.0..sroa_idx.i = getelementptr inbounds %struct.usbtmc_file_data, ptr %call7.i.i, i32 0, i32 13, i32 0, i32 2
  %7 = ptrtoint ptr %.compoundliteral.sroa.3.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %.compoundliteral.sroa.3.0..sroa_idx.i, align 8
  %.compoundliteral.sroa.4.0..sroa_idx.i = getelementptr inbounds %struct.usbtmc_file_data, ptr %call7.i.i, i32 0, i32 13, i32 0, i32 3
  %8 = ptrtoint ptr %.compoundliteral.sroa.4.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 -1 to ptr), ptr %.compoundliteral.sroa.4.0..sroa_idx.i, align 4
  %.compoundliteral.sroa.5.0..sroa_idx.i = getelementptr inbounds %struct.usbtmc_file_data, ptr %call7.i.i, i32 0, i32 13, i32 0, i32 4
  %9 = call ptr @memset(ptr %.compoundliteral.sroa.5.0..sroa_idx.i, i32 0, i32 12)
  %.compoundliteral.sroa.6.0..sroa_idx.i = getelementptr inbounds %struct.usbtmc_file_data, ptr %call7.i.i, i32 0, i32 13, i32 0, i32 4, i32 2
  %10 = ptrtoint ptr %.compoundliteral.sroa.6.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @.str.180, ptr %.compoundliteral.sroa.6.0..sroa_idx.i, align 4
  %.compoundliteral.sroa.7.0..sroa_idx.i = getelementptr inbounds %struct.usbtmc_file_data, ptr %call7.i.i, i32 0, i32 13, i32 0, i32 4, i32 3
  %11 = ptrtoint ptr %.compoundliteral.sroa.7.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %.compoundliteral.sroa.7.0..sroa_idx.i, align 8
  %.compoundliteral.sroa.75.0..sroa_idx.i = getelementptr inbounds %struct.usbtmc_file_data, ptr %call7.i.i, i32 0, i32 13, i32 0, i32 4, i32 4
  %12 = ptrtoint ptr %.compoundliteral.sroa.75.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 2, ptr %.compoundliteral.sroa.75.0..sroa_idx.i, align 1
  %.compoundliteral.sroa.8.0..sroa_idx.i = getelementptr inbounds %struct.usbtmc_file_data, ptr %call7.i.i, i32 0, i32 13, i32 0, i32 4, i32 5
  %13 = call ptr @memset(ptr %.compoundliteral.sroa.8.0..sroa_idx.i, i32 0, i32 10)
  %.compoundliteral.sroa.86.0..sroa_idx.i = getelementptr inbounds %struct.usbtmc_file_data, ptr %call7.i.i, i32 0, i32 13, i32 1
  %14 = ptrtoint ptr %.compoundliteral.sroa.86.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 16, ptr %.compoundliteral.sroa.86.0..sroa_idx.i, align 4
  %15 = ptrtoint ptr %wait_list1.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %wait_list1.i, ptr %wait_list1.i, align 8
  %.compoundliteral.sroa.10.0..sroa_idx.i = getelementptr inbounds %struct.usbtmc_file_data, ptr %call7.i.i, i32 0, i32 13, i32 2, i32 1
  %16 = ptrtoint ptr %.compoundliteral.sroa.10.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %wait_list1.i, ptr %.compoundliteral.sroa.10.0..sroa_idx.i, align 4
  tail call void @lockdep_init_map_type(ptr noundef %.compoundliteral.sroa.5.0..sroa_idx.i, ptr noundef nonnull @.str.181, ptr noundef nonnull @sema_init.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #12
  %submitted = getelementptr inbounds %struct.usbtmc_file_data, ptr %call7.i.i, i32 0, i32 12
  %17 = getelementptr inbounds %struct.usbtmc_file_data, ptr %call7.i.i, i32 0, i32 12, i32 1
  %18 = call ptr @memset(ptr %17, i32 0, i32 104)
  %19 = ptrtoint ptr %submitted to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %submitted, ptr %submitted, align 8
  %prev.i.i = getelementptr inbounds %struct.usbtmc_file_data, ptr %call7.i.i, i32 0, i32 12, i32 0, i32 1
  %20 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %submitted, ptr %prev.i.i, align 4
  tail call void @__init_waitqueue_head(ptr noundef %17, ptr noundef nonnull @.str.182, ptr noundef nonnull @init_usb_anchor.__key) #12
  %lock.i = getelementptr inbounds %struct.usbtmc_file_data, ptr %call7.i.i, i32 0, i32 12, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.184, ptr noundef nonnull @init_usb_anchor.__key.183, i16 noundef signext 3) #12
  %in_anchor = getelementptr inbounds %struct.usbtmc_file_data, ptr %call7.i.i, i32 0, i32 19
  %21 = getelementptr inbounds %struct.usbtmc_file_data, ptr %call7.i.i, i32 0, i32 19, i32 1
  %22 = call ptr @memset(ptr %21, i32 0, i32 104)
  %23 = ptrtoint ptr %in_anchor to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %in_anchor, ptr %in_anchor, align 4
  %prev.i.i47 = getelementptr inbounds %struct.usbtmc_file_data, ptr %call7.i.i, i32 0, i32 19, i32 0, i32 1
  %24 = ptrtoint ptr %prev.i.i47 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %in_anchor, ptr %prev.i.i47, align 8
  tail call void @__init_waitqueue_head(ptr noundef %21, ptr noundef nonnull @.str.182, ptr noundef nonnull @init_usb_anchor.__key) #12
  %lock.i49 = getelementptr inbounds %struct.usbtmc_file_data, ptr %call7.i.i, i32 0, i32 19, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i49, ptr noundef nonnull @.str.184, ptr noundef nonnull @init_usb_anchor.__key.183, i16 noundef signext 3) #12
  %wait_bulk_in = getelementptr inbounds %struct.usbtmc_file_data, ptr %call7.i.i, i32 0, i32 20
  tail call void @__init_waitqueue_head(ptr noundef %wait_bulk_in, ptr noundef nonnull @.str.179, ptr noundef nonnull @usbtmc_open.__key.178) #12
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %call1, i32 0, i32 7, i32 8
  %25 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %driver_data.i.i, align 4
  %kref = getelementptr inbounds %struct.usbtmc_device_data, ptr %26, i32 0, i32 24
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #12
  %27 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #12, !srcloc !453
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %27, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %do.body8.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !454

do.body8.if.end15.sink.split.i.i.i.i_crit_edge:   ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %do.body8
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %28 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %28)
  %.not.i.i.i.i = icmp sgt i32 %28, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.kref_get.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !455

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.kref_get.exit_crit_edge:          ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %kref_get.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %do.body8.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %do.body8.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef %.sink.i.i.i.i) #12
  br label %kref_get.exit

kref_get.exit:                                    ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.kref_get.exit_crit_edge
  %io_mutex = getelementptr inbounds %struct.usbtmc_device_data, ptr %26, i32 0, i32 25
  tail call void @mutex_lock_nested(ptr noundef %io_mutex, i32 noundef 0) #12
  %29 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %26, ptr %call7.i.i, align 8
  %closing = getelementptr inbounds %struct.usbtmc_file_data, ptr %call7.i.i, i32 0, i32 5
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %closing, i32 noundef 4) #12
  %30 = ptrtoint ptr %closing to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile i32 0, ptr %closing, align 8
  %timeout = getelementptr inbounds %struct.usbtmc_file_data, ptr %call7.i.i, i32 0, i32 2
  %31 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 5000, ptr %timeout, align 4
  %term_char = getelementptr inbounds %struct.usbtmc_file_data, ptr %call7.i.i, i32 0, i32 8
  %32 = ptrtoint ptr %term_char to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 10, ptr %term_char, align 2
  %term_char_enabled = getelementptr inbounds %struct.usbtmc_file_data, ptr %call7.i.i, i32 0, i32 9
  %33 = ptrtoint ptr %term_char_enabled to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %term_char_enabled, align 1
  %auto_abort = getelementptr inbounds %struct.usbtmc_file_data, ptr %call7.i.i, i32 0, i32 10
  %34 = ptrtoint ptr %auto_abort to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %auto_abort, align 8
  %eom_val = getelementptr inbounds %struct.usbtmc_file_data, ptr %call7.i.i, i32 0, i32 7
  %35 = ptrtoint ptr %eom_val to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 1, ptr %eom_val, align 1
  %file_elem = getelementptr inbounds %struct.usbtmc_file_data, ptr %call7.i.i, i32 0, i32 1
  %36 = ptrtoint ptr %file_elem to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %file_elem, ptr %file_elem, align 4
  %prev.i = getelementptr inbounds %struct.usbtmc_file_data, ptr %call7.i.i, i32 0, i32 1, i32 1
  %37 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %file_elem, ptr %prev.i, align 8
  %dev_lock = getelementptr inbounds %struct.usbtmc_device_data, ptr %26, i32 0, i32 28
  tail call void @_raw_spin_lock_irq(ptr noundef %dev_lock) #12
  %file_list = getelementptr inbounds %struct.usbtmc_device_data, ptr %26, i32 0, i32 3
  %prev.i50 = getelementptr inbounds %struct.usbtmc_device_data, ptr %26, i32 0, i32 3, i32 1
  %38 = ptrtoint ptr %prev.i50 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %prev.i50, align 4
  %call.i.i51 = tail call zeroext i1 @__list_add_valid(ptr noundef %file_elem, ptr noundef %39, ptr noundef %file_list) #12
  br i1 %call.i.i51, label %if.end.i.i, label %kref_get.exit.list_add_tail.exit_crit_edge

kref_get.exit.list_add_tail.exit_crit_edge:       ; preds = %kref_get.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %kref_get.exit
  call void @__sanitizer_cov_trace_pc() #14
  %40 = ptrtoint ptr %prev.i50 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %file_elem, ptr %prev.i50, align 4
  %41 = ptrtoint ptr %file_elem to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %file_list, ptr %file_elem, align 4
  %42 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %39, ptr %prev.i, align 8
  %43 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %file_elem, ptr %39, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %kref_get.exit.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %dev_lock) #12
  tail call void @mutex_unlock(ptr noundef %io_mutex) #12
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %44 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call7.i.i, ptr %private_data, align 4
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ 0, %list_add_tail.exit ], [ -19, %do.end ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usbtmc_flush(ptr nocapture noundef readonly %file, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %closing = getelementptr inbounds %struct.usbtmc_file_data, ptr %1, i32 0, i32 5
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %closing, i32 noundef 4) #12
  %2 = ptrtoint ptr %closing to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile i32 1, ptr %closing, align 4
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  %io_mutex = getelementptr inbounds %struct.usbtmc_device_data, ptr %4, i32 0, i32 25
  tail call void @mutex_lock_nested(ptr noundef %io_mutex, i32 noundef 0) #12
  %submitted.i = getelementptr inbounds %struct.usbtmc_file_data, ptr %1, i32 0, i32 12
  %call.i = tail call i32 @usb_wait_anchor_empty_timeout(ptr noundef %submitted.i, i32 noundef 1000) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end.usbtmc_draw_down.exit_crit_edge

if.end.usbtmc_draw_down.exit_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %usbtmc_draw_down.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @usb_kill_anchored_urbs(ptr noundef %submitted.i) #12
  br label %usbtmc_draw_down.exit

usbtmc_draw_down.exit:                            ; preds = %if.then.i, %if.end.usbtmc_draw_down.exit_crit_edge
  %in_anchor.i = getelementptr inbounds %struct.usbtmc_file_data, ptr %1, i32 0, i32 19
  tail call void @usb_scuttle_anchored_urbs(ptr noundef %in_anchor.i) #12
  %err_lock = getelementptr inbounds %struct.usbtmc_file_data, ptr %1, i32 0, i32 11
  tail call void @_raw_spin_lock_irq(ptr noundef %err_lock) #12
  %out_transfer_size = getelementptr inbounds %struct.usbtmc_file_data, ptr %1, i32 0, i32 14
  %5 = call ptr @memset(ptr %out_transfer_size, i32 0, i32 20)
  tail call void @_raw_spin_unlock_irq(ptr noundef %err_lock) #12
  %waitq = getelementptr inbounds %struct.usbtmc_device_data, ptr %4, i32 0, i32 26
  tail call void @__wake_up(ptr noundef %waitq, i32 noundef 1, i32 noundef 0, ptr noundef null) #12
  tail call void @mutex_unlock(ptr noundef %io_mutex) #12
  br label %cleanup

cleanup:                                          ; preds = %usbtmc_draw_down.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %usbtmc_draw_down.exit ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usbtmc_release(ptr nocapture noundef readnone %inode, ptr nocapture noundef readonly %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %io_mutex = getelementptr inbounds %struct.usbtmc_device_data, ptr %3, i32 0, i32 25
  tail call void @mutex_lock_nested(ptr noundef %io_mutex, i32 noundef 0) #12
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %dev_lock = getelementptr inbounds %struct.usbtmc_device_data, ptr %5, i32 0, i32 28
  tail call void @_raw_spin_lock_irq(ptr noundef %dev_lock) #12
  %file_elem = getelementptr inbounds %struct.usbtmc_file_data, ptr %1, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %file_elem) #12
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del.exit_crit_edge

entry.list_del.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.usbtmc_file_data, ptr %1, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i.i, align 4
  %8 = ptrtoint ptr %file_elem to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %file_elem, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev1.i.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %9, ptr %7, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %entry.list_del.exit_crit_edge
  %12 = ptrtoint ptr %file_elem to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 256 to ptr), ptr %file_elem, align 4
  %prev.i = getelementptr inbounds %struct.usbtmc_file_data, ptr %1, i32 0, i32 1, i32 1
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  %dev_lock3 = getelementptr inbounds %struct.usbtmc_device_data, ptr %15, i32 0, i32 28
  tail call void @_raw_spin_unlock_irq(ptr noundef %dev_lock3) #12
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  %io_mutex5 = getelementptr inbounds %struct.usbtmc_device_data, ptr %17, i32 0, i32 25
  tail call void @mutex_unlock(ptr noundef %io_mutex5) #12
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 4
  %kref = getelementptr inbounds %struct.usbtmc_device_data, ptr %19, i32 0, i32 24
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !456
  tail call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #12
  %20 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #12, !srcloc !457
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %20, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !455

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef 3) #12
  br label %kref_put.exit

if.then.i:                                        ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !458
  %usb_dev.i.i = getelementptr %struct.usbtmc_device_data, ptr %19, i32 0, i32 1
  %21 = ptrtoint ptr %usb_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %usb_dev.i.i, align 4
  tail call void @usb_put_dev(ptr noundef %22) #12
  tail call void @kfree(ptr noundef %19) #12
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %1, align 4
  tail call void @kfree(ptr noundef %1) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usbtmc_fasync(i32 noundef %fd, ptr noundef %file, i32 noundef %on) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %fasync = getelementptr inbounds %struct.usbtmc_device_data, ptr %3, i32 0, i32 27
  %call = tail call i32 @fasync_helper(i32 noundef %fd, ptr noundef %file, i32 noundef %on, ptr noundef %fasync) #12
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_bulk_msg(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_hex_dump(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @usbtmc_generic_read(ptr noundef %file_data, ptr noundef %user_buffer, i32 noundef %transfer_size, ptr nocapture noundef writeonly %transferred, i32 noundef %flags) unnamed_addr #2 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %file_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %file_data, align 4
  %intf = getelementptr inbounds %struct.usbtmc_device_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %intf, align 4
  %dev2 = getelementptr inbounds %struct.usb_interface, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %transferred to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %transferred, align 4
  %and = and i32 %flags, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %wMaxPacketSize = getelementptr inbounds %struct.usbtmc_device_data, ptr %1, i32 0, i32 9
  %5 = ptrtoint ptr %wMaxPacketSize to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %wMaxPacketSize, align 4
  %conv = zext i16 %6 to i32
  %rem = urem i32 %transfer_size, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp = icmp eq i32 %rem, 0
  br i1 %cmp, label %if.then5, label %if.then.if.end15_crit_edge

if.then.if.end15_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %sub = add i32 %transfer_size, -1
  %add = add i32 %sub, %conv
  br label %if.end15

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %transfer_size)
  %cmp8 = icmp ugt i32 %transfer_size, 4096
  %div519 = and i32 %transfer_size, -4096
  %spec.select = select i1 %cmp8, i32 %div519, i32 %transfer_size
  br label %if.end15

if.end15:                                         ; preds = %if.else, %if.then5, %if.then.if.end15_crit_edge
  %max_transfer_size.1 = phi i32 [ %add, %if.then5 ], [ %transfer_size, %if.then.if.end15_crit_edge ], [ %spec.select, %if.else ]
  %remaining.0 = phi i32 [ %transfer_size, %if.then5 ], [ %transfer_size, %if.then.if.end15_crit_edge ], [ %spec.select, %if.else ]
  %err_lock = getelementptr inbounds %struct.usbtmc_file_data, ptr %file_data, i32 0, i32 11
  tail call void @_raw_spin_lock_irq(ptr noundef %err_lock) #12
  %in_status = getelementptr inbounds %struct.usbtmc_file_data, ptr %file_data, i32 0, i32 17
  %7 = ptrtoint ptr %in_status to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %in_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool16.not = icmp eq i32 %8, 0
  br i1 %tobool16.not, label %if.end20, label %if.then17

if.then17:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_raw_spin_unlock_irq(ptr noundef %err_lock) #12
  br label %error

if.end20:                                         ; preds = %if.end15
  %and21 = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %if.end20.if.end35.sink.split_crit_edge, label %if.then23

if.end20.if.end35.sink.split_crit_edge:           ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end35.sink.split

if.then23:                                        ; preds = %if.end20
  %in_anchor = getelementptr inbounds %struct.usbtmc_file_data, ptr %file_data, i32 0, i32 19
  %call = tail call i32 @usb_anchor_empty(ptr noundef %in_anchor) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool24.not = icmp ne i32 %call, 0
  %in_urbs_used = getelementptr inbounds %struct.usbtmc_file_data, ptr %file_data, i32 0, i32 18
  %9 = ptrtoint ptr %in_urbs_used to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %in_urbs_used, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp27 = icmp eq i32 %10, 0
  br i1 %cmp27, label %if.then23.if.end35.sink.split_crit_edge, label %if.then23.if.end35_crit_edge

if.then23.if.end35_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end35

if.then23.if.end35.sink.split_crit_edge:          ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end35.sink.split

if.end35.sink.split:                              ; preds = %if.then23.if.end35.sink.split_crit_edge, %if.end20.if.end35.sink.split_crit_edge
  %again.1.shrunk.ph = phi i1 [ %tobool24.not, %if.then23.if.end35.sink.split_crit_edge ], [ false, %if.end20.if.end35.sink.split_crit_edge ]
  %in_transfer_size = getelementptr inbounds %struct.usbtmc_file_data, ptr %file_data, i32 0, i32 16
  %11 = ptrtoint ptr %in_transfer_size to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %in_transfer_size, align 4
  %12 = ptrtoint ptr %in_status to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %in_status, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.end35.sink.split, %if.then23.if.end35_crit_edge
  %again.1.shrunk = phi i1 [ %tobool24.not, %if.then23.if.end35_crit_edge ], [ %again.1.shrunk.ph, %if.end35.sink.split ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %max_transfer_size.1)
  %cmp36 = icmp eq i32 %max_transfer_size.1, 0
  br i1 %cmp36, label %if.end35.if.end62_crit_edge, label %if.else39

if.end35.if.end62_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end62

if.else39:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #14
  %add42 = add i32 %max_transfer_size.1, 4095
  %div43518 = lshr i32 %add42, 12
  %in_urbs_used46 = getelementptr inbounds %struct.usbtmc_file_data, ptr %file_data, i32 0, i32 18
  %13 = ptrtoint ptr %in_urbs_used46 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %in_urbs_used46, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div43518, i32 %14)
  %cmp47 = icmp sgt i32 %div43518, %14
  %sub51 = sub i32 %div43518, %14
  %bufcount.0 = select i1 %cmp47, i32 %sub51, i32 0
  %add55 = add i32 %bufcount.0, %14
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %add55)
  %cmp56 = icmp sgt i32 %add55, 16
  %sub60 = sub i32 16, %14
  %spec.select523 = select i1 %cmp56, i32 %sub60, i32 %bufcount.0
  br label %if.end62

if.end62:                                         ; preds = %if.else39, %if.end35.if.end62_crit_edge
  %bufcount.1 = phi i32 [ 0, %if.end35.if.end62_crit_edge ], [ %spec.select523, %if.else39 ]
  tail call void @_raw_spin_unlock_irq(ptr noundef %err_lock) #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usbtmc_generic_read.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usbtmc_generic_read, %if.then69)) #12
          to label %do.end [label %if.then69], !srcloc !452

if.then69:                                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #14
  %in_urbs_used70 = getelementptr inbounds %struct.usbtmc_file_data, ptr %file_data, i32 0, i32 18
  %15 = ptrtoint ptr %in_urbs_used70 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %in_urbs_used70, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usbtmc_generic_read.__UNIQUE_ID_ddebug251, ptr noundef %dev2, ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.94, i32 noundef %transfer_size, i32 noundef %flags, i32 noundef %max_transfer_size.1, i32 noundef %bufcount.1, i32 noundef %16) #12
  br label %do.end

do.end:                                           ; preds = %if.then69, %if.end62
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bufcount.1)
  %cmp72650 = icmp sgt i32 %bufcount.1, 0
  br i1 %cmp72650, label %while.body.lr.ph, label %do.end.while.end_crit_edge

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body.lr.ph:                                 ; preds = %do.end
  %usb_dev = getelementptr inbounds %struct.usbtmc_device_data, ptr %1, i32 0, i32 1
  %bulk_in = getelementptr inbounds %struct.usbtmc_device_data, ptr %1, i32 0, i32 4
  %submitted = getelementptr inbounds %struct.usbtmc_file_data, ptr %file_data, i32 0, i32 12
  %in_urbs_used91 = getelementptr inbounds %struct.usbtmc_file_data, ptr %file_data, i32 0, i32 18
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %bufcount.2651 = phi i32 [ %bufcount.1, %while.body.lr.ph ], [ %dec, %cleanup.while.body_crit_edge ]
  %call.i = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #12
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %while.body.error_crit_edge, label %if.end.i551

while.body.error_crit_edge:                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %error

if.end.i551:                                      ; preds = %while.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %17 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %17, i32 noundef 3264, i32 noundef 4096) #15
  %tobool2.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool2.not.i, label %if.then3.i, label %if.end77

if.then3.i:                                       ; preds = %if.end.i551
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @usb_free_urb(ptr noundef nonnull %call.i) #12
  br label %error

if.end77:                                         ; preds = %if.end.i551
  %transfer_buffer.i = getelementptr inbounds %struct.urb, ptr %call.i, i32 0, i32 14
  %18 = ptrtoint ptr %transfer_buffer.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call7.i.i, ptr %transfer_buffer.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %call.i, i32 0, i32 19
  %19 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 4096, ptr %transfer_buffer_length.i, align 4
  %transfer_flags.i = getelementptr inbounds %struct.urb, ptr %call.i, i32 0, i32 13
  %20 = ptrtoint ptr %transfer_flags.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %transfer_flags.i, align 4
  %or.i = or i32 %21, 256
  store i32 %or.i, ptr %transfer_flags.i, align 4
  %22 = ptrtoint ptr %usb_dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %usb_dev, align 4
  %24 = ptrtoint ptr %bulk_in to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %bulk_in, align 4
  %26 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %23, align 8
  %shl.i = shl i32 %27, 8
  %shl1.i = shl i32 %25, 15
  %or.i553 = or i32 %shl1.i, %shl.i
  %or80 = or i32 %or.i553, -1073741696
  %dev1.i = getelementptr inbounds %struct.urb, ptr %call.i, i32 0, i32 8
  %28 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %23, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %call.i, i32 0, i32 10
  %29 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %or80, ptr %pipe2.i, align 4
  store i32 4096, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %call.i, i32 0, i32 28
  %30 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @usbtmc_read_bulk_cb, ptr %complete.i, align 4
  %context4.i = getelementptr inbounds %struct.urb, ptr %call.i, i32 0, i32 27
  %31 = ptrtoint ptr %context4.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %file_data, ptr %context4.i, align 4
  tail call void @usb_anchor_urb(ptr noundef nonnull %call.i, ptr noundef %submitted) #12
  %call81 = tail call i32 @usb_submit_urb(ptr noundef nonnull %call.i, i32 noundef 3264) #12
  tail call void @usb_free_urb(ptr noundef nonnull %call.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81)
  %tobool82.not = icmp eq i32 %call81, 0
  br i1 %tobool82.not, label %cleanup, label %if.then89, !prof !455

if.then89:                                        ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @usb_unanchor_urb(ptr noundef nonnull %call.i) #12
  br label %error

cleanup:                                          ; preds = %if.end77
  %32 = ptrtoint ptr %in_urbs_used91 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %in_urbs_used91, align 4
  %inc = add i32 %33, 1
  store i32 %inc, ptr %in_urbs_used91, align 4
  %dec = add nsw i32 %bufcount.2651, -1
  %cmp72 = icmp sgt i32 %bufcount.2651, 1
  br i1 %cmp72, label %cleanup.while.body_crit_edge, label %cleanup.while.end_crit_edge

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %do.end.while.end_crit_edge
  br i1 %again.1.shrunk, label %do.body95, label %if.end111

do.body95:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usbtmc_generic_read.__UNIQUE_ID_ddebug252, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usbtmc_generic_read, %if.then107)) #12
          to label %cleanup378 [label %if.then107], !srcloc !452

if.then107:                                       ; preds = %do.body95
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usbtmc_generic_read.__UNIQUE_ID_ddebug252, ptr noundef %dev2, ptr noundef nonnull @.str.96, ptr noundef nonnull @.str.94) #12
  br label %cleanup378

if.end111:                                        ; preds = %while.end
  %cmp112 = icmp eq ptr %user_buffer, null
  br i1 %cmp112, label %if.end111.cleanup378_crit_edge, label %if.else.i

if.end111.cleanup378_crit_edge:                   ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup378

if.else.i:                                        ; preds = %if.end111
  %timeout = getelementptr inbounds %struct.usbtmc_file_data, ptr %file_data, i32 0, i32 2
  %34 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %timeout, align 4
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %35) #12
  %in_anchor221589 = getelementptr inbounds %struct.usbtmc_file_data, ptr %file_data, i32 0, i32 19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool151.not = icmp eq i32 %call2.i, 0
  %wait_bulk_in = getelementptr inbounds %struct.usbtmc_file_data, ptr %file_data, i32 0, i32 20
  %in_urbs_used246 = getelementptr inbounds %struct.usbtmc_file_data, ptr %file_data, i32 0, i32 18
  %submitted307 = getelementptr inbounds %struct.usbtmc_file_data, ptr %file_data, i32 0, i32 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %max_transfer_size.1)
  %cmp118.not747 = icmp eq i32 %max_transfer_size.1, 0
  br i1 %cmp118.not747, label %if.else.i.error_crit_edge, label %if.else.i.while.body120_crit_edge

if.else.i.while.body120_crit_edge:                ; preds = %if.else.i
  br label %while.body120

if.else.i.error_crit_edge:                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %error

while.body120:                                    ; preds = %if.end320.while.body120_crit_edge, %if.else.i.while.body120_crit_edge
  %done.0750 = phi i32 [ %add286, %if.end320.while.body120_crit_edge ], [ 0, %if.else.i.while.body120_crit_edge ]
  %remaining.1749 = phi i32 [ %sub285, %if.end320.while.body120_crit_edge ], [ %remaining.0, %if.else.i.while.body120_crit_edge ]
  %max_transfer_size.2748 = phi i32 [ %60, %if.end320.while.body120_crit_edge ], [ %max_transfer_size.1, %if.else.i.while.body120_crit_edge ]
  br i1 %tobool22.not, label %do.body125, label %if.end220.thread

do.body125:                                       ; preds = %while.body120
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usbtmc_generic_read.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usbtmc_generic_read, %if.then137)) #12
          to label %do.end140 [label %if.then137], !srcloc !452

if.then137:                                       ; preds = %do.body125
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usbtmc_generic_read.__UNIQUE_ID_ddebug253, ptr noundef %dev2, ptr noundef nonnull @.str.97, ptr noundef nonnull @.str.94, i32 noundef %call2.i) #12
  br label %do.end140

do.end140:                                        ; preds = %if.then137, %do.body125
  call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 948) #12
  call void @_raw_spin_lock_irq(ptr noundef %err_lock) #12
  %call.i555 = call i32 @usb_anchor_empty(ptr noundef %in_anchor221589) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i555)
  %tobool.not.i556 = icmp eq i32 %call.i555, 0
  br i1 %tobool.not.i556, label %do.end140.lor.end.i_crit_edge, label %lor.rhs.i

do.end140.lor.end.i_crit_edge:                    ; preds = %do.end140
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.end.i

lor.rhs.i:                                        ; preds = %do.end140
  call void @__sanitizer_cov_trace_pc() #14
  %36 = ptrtoint ptr %in_status to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %in_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool1.i = icmp ne i32 %37, 0
  br label %lor.end.i

lor.end.i:                                        ; preds = %lor.rhs.i, %do.end140.lor.end.i_crit_edge
  %38 = phi i1 [ true, %do.end140.lor.end.i_crit_edge ], [ %tobool1.i, %lor.rhs.i ]
  call void @_raw_spin_unlock_irq(ptr noundef %err_lock) #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usbtmc_do_transfer.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usbtmc_generic_read, %if.then.i557)) #12
          to label %usbtmc_do_transfer.exit [label %if.then.i557], !srcloc !452

if.then.i557:                                     ; preds = %lor.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %39 = ptrtoint ptr %file_data to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %file_data, align 4
  %intf.i = getelementptr inbounds %struct.usbtmc_device_data, ptr %40, i32 0, i32 2
  %41 = ptrtoint ptr %intf.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %intf.i, align 4
  %dev.i = getelementptr inbounds %struct.usb_interface, ptr %42, i32 0, i32 7
  %conv.i = zext i1 %38 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usbtmc_do_transfer.__UNIQUE_ID_ddebug250, ptr noundef %dev.i, ptr noundef nonnull @.str.107, ptr noundef nonnull @.str.106, i32 noundef %conv.i) #12
  br label %usbtmc_do_transfer.exit

usbtmc_do_transfer.exit:                          ; preds = %if.then.i557, %lor.end.i
  %43 = select i1 %38, i1 %tobool151.not, i1 false
  %__ret.0 = select i1 %43, i32 1, i32 %call2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret.0)
  %tobool157.not = icmp eq i32 %__ret.0, 0
  %44 = select i1 %38, i1 true, i1 %tobool157.not
  br i1 %44, label %usbtmc_do_transfer.exit.if.end194_crit_edge, label %if.then161

usbtmc_do_transfer.exit.if.end194_crit_edge:      ; preds = %usbtmc_do_transfer.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end194

if.then161:                                       ; preds = %usbtmc_do_transfer.exit
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #12
  %45 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #12
  br label %for.cond

for.cond:                                         ; preds = %cleanup189, %if.then161
  %__ret162.0 = phi i32 [ %call2.i, %if.then161 ], [ %call188, %cleanup189 ]
  %call163 = call i32 @prepare_to_wait_event(ptr noundef %wait_bulk_in, ptr noundef nonnull %__wq_entry, i32 noundef 1) #12
  call void @_raw_spin_lock_irq(ptr noundef %err_lock) #12
  %call.i560 = call i32 @usb_anchor_empty(ptr noundef %in_anchor221589) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i560)
  %tobool.not.i561 = icmp eq i32 %call.i560, 0
  br i1 %tobool.not.i561, label %for.cond.lor.end.i565_crit_edge, label %lor.rhs.i564

for.cond.lor.end.i565_crit_edge:                  ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.end.i565

lor.rhs.i564:                                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  %46 = ptrtoint ptr %in_status to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %in_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool1.i563 = icmp ne i32 %47, 0
  br label %lor.end.i565

lor.end.i565:                                     ; preds = %lor.rhs.i564, %for.cond.lor.end.i565_crit_edge
  %48 = phi i1 [ true, %for.cond.lor.end.i565_crit_edge ], [ %tobool1.i563, %lor.rhs.i564 ]
  call void @_raw_spin_unlock_irq(ptr noundef %err_lock) #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usbtmc_do_transfer.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usbtmc_generic_read, %if.then.i569)) #12
          to label %usbtmc_do_transfer.exit570 [label %if.then.i569], !srcloc !452

if.then.i569:                                     ; preds = %lor.end.i565
  call void @__sanitizer_cov_trace_pc() #14
  %49 = ptrtoint ptr %file_data to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %file_data, align 4
  %intf.i566 = getelementptr inbounds %struct.usbtmc_device_data, ptr %50, i32 0, i32 2
  %51 = ptrtoint ptr %intf.i566 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %intf.i566, align 4
  %dev.i567 = getelementptr inbounds %struct.usb_interface, ptr %52, i32 0, i32 7
  %conv.i568 = zext i1 %48 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usbtmc_do_transfer.__UNIQUE_ID_ddebug250, ptr noundef %dev.i567, ptr noundef nonnull @.str.107, ptr noundef nonnull @.str.106, i32 noundef %conv.i568) #12
  br label %usbtmc_do_transfer.exit570

usbtmc_do_transfer.exit570:                       ; preds = %if.then.i569, %lor.end.i565
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret162.0)
  %tobool170.not = icmp eq i32 %__ret162.0, 0
  %53 = select i1 %48, i1 %tobool170.not, i1 false
  %__ret162.1 = select i1 %53, i32 1, i32 %__ret162.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret162.1)
  %tobool177.not = icmp eq i32 %__ret162.1, 0
  %54 = select i1 %48, i1 true, i1 %tobool177.not
  br i1 %54, label %for.end, label %if.end184

if.end184:                                        ; preds = %usbtmc_do_transfer.exit570
  %tobool185.not = icmp eq i32 %call163, 0
  br i1 %tobool185.not, label %cleanup189, label %if.end184.__out_crit_edge

if.end184.__out_crit_edge:                        ; preds = %if.end184
  call void @__sanitizer_cov_trace_pc() #14
  br label %__out

cleanup189:                                       ; preds = %if.end184
  call void @__sanitizer_cov_trace_pc() #14
  %call188 = call i32 @schedule_timeout(i32 noundef %__ret162.1) #12
  br label %for.cond

for.end:                                          ; preds = %usbtmc_do_transfer.exit570
  call void @__sanitizer_cov_trace_pc() #14
  call void @finish_wait(ptr noundef %wait_bulk_in, ptr noundef nonnull %__wq_entry) #12
  br label %__out

__out:                                            ; preds = %for.end, %if.end184.__out_crit_edge
  %__ret162.2582 = phi i32 [ %__ret162.1, %for.end ], [ %call163, %if.end184.__out_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #12
  br label %if.end194

if.end194:                                        ; preds = %__out, %usbtmc_do_transfer.exit.if.end194_crit_edge
  %__ret.1 = phi i32 [ %__ret.0, %usbtmc_do_transfer.exit.if.end194_crit_edge ], [ %__ret162.2582, %__out ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usbtmc_generic_read.__UNIQUE_ID_ddebug254, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usbtmc_generic_read, %if.then208)) #12
          to label %do.end211 [label %if.then208], !srcloc !452

if.then208:                                       ; preds = %if.end194
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usbtmc_generic_read.__UNIQUE_ID_ddebug254, ptr noundef %dev2, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.94, i32 noundef %__ret.1) #12
  br label %do.end211

do.end211:                                        ; preds = %if.then208, %if.end194
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %__ret.1)
  %cmp212 = icmp slt i32 %__ret.1, 1
  br i1 %cmp212, label %if.then214, label %if.end220

if.then214:                                       ; preds = %do.end211
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret.1)
  %cmp215 = icmp eq i32 %__ret.1, 0
  %spec.select522 = select i1 %cmp215, i32 -110, i32 %__ret.1
  br label %error

if.end220:                                        ; preds = %do.end211
  %call222 = call ptr @usb_get_from_anchor(ptr noundef %in_anchor221589) #12
  %tobool223.not = icmp eq ptr %call222, null
  br i1 %tobool223.not, label %if.end220.error_crit_edge, label %if.end220.if.end245_crit_edge

if.end220.if.end245_crit_edge:                    ; preds = %if.end220
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end245

if.end220.error_crit_edge:                        ; preds = %if.end220
  call void @__sanitizer_cov_trace_pc() #14
  br label %error

if.end220.thread:                                 ; preds = %while.body120
  %call222590 = call ptr @usb_get_from_anchor(ptr noundef %in_anchor221589) #12
  %tobool223.not591 = icmp eq ptr %call222590, null
  br i1 %tobool223.not591, label %if.end228, label %if.end220.thread.if.end245_crit_edge

if.end220.thread.if.end245_crit_edge:             ; preds = %if.end220.thread
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end245

if.end228:                                        ; preds = %if.end220.thread
  call void @__sanitizer_cov_trace_pc() #14
  %55 = ptrtoint ptr %transferred to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %done.0750, ptr %transferred, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usbtmc_generic_read.__UNIQUE_ID_ddebug255, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usbtmc_generic_read, %cleanup321.thread606)) #12
          to label %cleanup378 [label %cleanup321.thread606], !srcloc !452

cleanup321.thread606:                             ; preds = %if.end228
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usbtmc_generic_read.__UNIQUE_ID_ddebug255, ptr noundef %dev2, ptr noundef nonnull @.str.99, ptr noundef nonnull @.str.94, i32 noundef %done.0750) #12
  br label %cleanup378

if.end245:                                        ; preds = %if.end220.thread.if.end245_crit_edge, %if.end220.if.end245_crit_edge
  %call222593 = phi ptr [ %call222590, %if.end220.thread.if.end245_crit_edge ], [ %call222, %if.end220.if.end245_crit_edge ]
  %56 = ptrtoint ptr %in_urbs_used246 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %in_urbs_used246, align 4
  %dec247 = add i32 %57, -1
  store i32 %dec247, ptr %in_urbs_used246, align 4
  %actual_length = getelementptr inbounds %struct.urb, ptr %call222593, i32 0, i32 20
  %58 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %actual_length, align 4
  %60 = call i32 @llvm.usub.sat.i32(i32 %max_transfer_size.2748, i32 %59)
  %61 = call i32 @llvm.umin.i32(i32 %remaining.1749, i32 %59)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usbtmc_generic_read.__UNIQUE_ID_ddebug256, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usbtmc_generic_read, %if.then274)) #12
          to label %do.end279 [label %if.then274], !srcloc !452

if.then274:                                       ; preds = %if.end245
  call void @__sanitizer_cov_trace_pc() #14
  %transfer_buffer275 = getelementptr inbounds %struct.urb, ptr %call222593, i32 0, i32 14
  %62 = ptrtoint ptr %transfer_buffer275 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %transfer_buffer275, align 4
  %64 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %actual_length, align 4
  call void @print_hex_dump(ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.61, i32 noundef 0, i32 noundef 16, i32 noundef 1, ptr noundef %63, i32 noundef %65, i1 noundef zeroext true) #12
  br label %do.end279

do.end279:                                        ; preds = %if.then274, %if.end245
  %add.ptr = getelementptr i8, ptr %user_buffer, i32 %done.0750
  %transfer_buffer280 = getelementptr inbounds %struct.urb, ptr %call222593, i32 0, i32 14
  %66 = ptrtoint ptr %transfer_buffer280 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %transfer_buffer280, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %cmp9.i.i = icmp slt i32 %61, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %do.end279
  %.b71.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i, label %land.rhs16.i.i.if.then283_crit_edge, label %if.then27.i.i, !prof !455

land.rhs16.i.i.if.then283_crit_edge:              ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then283

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.91, i32 noundef 230, i32 noundef 9, ptr noundef null) #12
  br label %if.then283

if.then.i.i.i:                                    ; preds = %do.end279
  call void @__check_object_size(ptr noundef %67, i32 noundef %61, i1 noundef zeroext true) #12
  call void @__might_fault(ptr noundef nonnull @.str.93, i32 noundef 174) #12
  %call.i.i = call zeroext i1 @should_fail_usercopy() #12
  br i1 %call.i.i, label %if.then.i.i.i.copy_to_user.exit_crit_edge, label %if.end.i.i

if.then.i.i.i.copy_to_user.exit_crit_edge:        ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %copy_to_user.exit

if.end.i.i:                                       ; preds = %if.then.i.i.i
  %68 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %add.ptr, i32 %61, i32 -1226833920) #18, !srcloc !460
  %asmresult.i.i = extractvalue { i32, i32 } %68, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i.copy_to_user.exit_crit_edge

if.end.i.i.copy_to_user.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %67, i32 noundef %61) #12
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %add.ptr, ptr noundef %67, i32 noundef %61) #12
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i.copy_to_user.exit_crit_edge, %if.then.i.i.i.copy_to_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ %61, %if.then.i.i.i.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %61, %if.end.i.i.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i)
  %tobool282.not = icmp eq i32 %n.addr.0.i, 0
  br i1 %tobool282.not, label %if.end284, label %copy_to_user.exit.if.then283_crit_edge

copy_to_user.exit.if.then283_crit_edge:           ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then283

if.then283:                                       ; preds = %copy_to_user.exit.if.then283_crit_edge, %if.then27.i.i, %land.rhs16.i.i.if.then283_crit_edge
  call void @usb_free_urb(ptr noundef nonnull %call222593) #12
  br label %error

if.end284:                                        ; preds = %copy_to_user.exit
  %sub285 = sub i32 %remaining.1749, %61
  %add286 = add i32 %61, %done.0750
  call void @_raw_spin_lock_irq(ptr noundef %err_lock) #12
  %status = getelementptr inbounds %struct.urb, ptr %call222593, i32 0, i32 12
  %69 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %tobool288.not = icmp eq i32 %70, 0
  br i1 %tobool288.not, label %if.end292, label %if.then289

if.then289:                                       ; preds = %if.end284
  call void @__sanitizer_cov_trace_pc() #14
  %71 = ptrtoint ptr %in_status to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %in_status, align 4
  call void @_raw_spin_unlock_irq(ptr noundef %err_lock) #12
  call void @usb_free_urb(ptr noundef nonnull %call222593) #12
  br label %error

if.end292:                                        ; preds = %if.end284
  call void @_raw_spin_unlock_irq(ptr noundef %err_lock) #12
  %73 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %actual_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %74)
  %cmp295 = icmp ult i32 %74, 4096
  br i1 %cmp295, label %if.then297, label %if.end298

if.then297:                                       ; preds = %if.end292
  call void @__sanitizer_cov_trace_pc() #14
  call void @usb_free_urb(ptr noundef nonnull %call222593) #12
  br label %error

if.end298:                                        ; preds = %if.end292
  br i1 %tobool22.not, label %land.lhs.true301, label %if.end298.if.end320_crit_edge

if.end298.if.end320_crit_edge:                    ; preds = %if.end298
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end320

land.lhs.true301:                                 ; preds = %if.end298
  %75 = ptrtoint ptr %in_urbs_used246 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %in_urbs_used246, align 4
  %mul303 = shl i32 %76, 12
  call void @__sanitizer_cov_trace_cmp4(i32 %60, i32 %mul303)
  %cmp304 = icmp ugt i32 %60, %mul303
  br i1 %cmp304, label %if.then306, label %land.lhs.true301.if.end320_crit_edge

land.lhs.true301.if.end320_crit_edge:             ; preds = %land.lhs.true301
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end320

if.then306:                                       ; preds = %land.lhs.true301
  call void @usb_anchor_urb(ptr noundef nonnull %call222593, ptr noundef %submitted307) #12
  %call308 = call i32 @usb_submit_urb(ptr noundef nonnull %call222593, i32 noundef 3264) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call308)
  %tobool309.not = icmp eq i32 %call308, 0
  br i1 %tobool309.not, label %if.end317, label %if.then316, !prof !455

if.then316:                                       ; preds = %if.then306
  call void @__sanitizer_cov_trace_pc() #14
  call void @usb_unanchor_urb(ptr noundef nonnull %call222593) #12
  call void @usb_free_urb(ptr noundef nonnull %call222593) #12
  br label %error

if.end317:                                        ; preds = %if.then306
  call void @__sanitizer_cov_trace_pc() #14
  %77 = ptrtoint ptr %in_urbs_used246 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %in_urbs_used246, align 4
  %inc319 = add i32 %78, 1
  store i32 %inc319, ptr %in_urbs_used246, align 4
  br label %if.end320

if.end320:                                        ; preds = %if.end317, %land.lhs.true301.if.end320_crit_edge, %if.end298.if.end320_crit_edge
  call void @usb_free_urb(ptr noundef nonnull %call222593) #12
  %cmp118.not.not = icmp ugt i32 %max_transfer_size.2748, %59
  br i1 %cmp118.not.not, label %if.end320.while.body120_crit_edge, label %if.end320.error_crit_edge

if.end320.error_crit_edge:                        ; preds = %if.end320
  call void @__sanitizer_cov_trace_pc() #14
  br label %error

if.end320.while.body120_crit_edge:                ; preds = %if.end320
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body120

error:                                            ; preds = %if.end320.error_crit_edge, %if.then316, %if.then297, %if.then289, %if.then283, %if.end220.error_crit_edge, %if.then214, %if.else.i.error_crit_edge, %if.then89, %if.then3.i, %while.body.error_crit_edge, %if.then17
  %retval3.6 = phi i32 [ %8, %if.then17 ], [ %call81, %if.then89 ], [ -12, %if.then3.i ], [ %spec.select522, %if.then214 ], [ %call308, %if.then316 ], [ 1, %if.then297 ], [ %72, %if.then289 ], [ -14, %if.then283 ], [ 0, %if.else.i.error_crit_edge ], [ 0, %if.end320.error_crit_edge ], [ -14, %if.end220.error_crit_edge ], [ -12, %while.body.error_crit_edge ]
  %done.2 = phi i32 [ 0, %if.then17 ], [ 0, %if.then89 ], [ 0, %if.then3.i ], [ %done.0750, %if.then214 ], [ %add286, %if.then316 ], [ %add286, %if.then297 ], [ %add286, %if.then289 ], [ %done.0750, %if.then283 ], [ 0, %if.else.i.error_crit_edge ], [ %add286, %if.end320.error_crit_edge ], [ %done.0750, %if.end220.error_crit_edge ], [ 0, %while.body.error_crit_edge ]
  %79 = ptrtoint ptr %transferred to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %done.2, ptr %transferred, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usbtmc_generic_read.__UNIQUE_ID_ddebug257, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usbtmc_generic_read, %if.then338)) #12
          to label %do.end341 [label %if.then338], !srcloc !452

if.then338:                                       ; preds = %error
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usbtmc_generic_read.__UNIQUE_ID_ddebug257, ptr noundef %dev2, ptr noundef nonnull @.str.100, ptr noundef nonnull @.str.94) #12
  br label %do.end341

do.end341:                                        ; preds = %if.then338, %error
  %submitted342 = getelementptr inbounds %struct.usbtmc_file_data, ptr %file_data, i32 0, i32 12
  call void @usb_kill_anchored_urbs(ptr noundef %submitted342) #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usbtmc_generic_read.__UNIQUE_ID_ddebug258, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usbtmc_generic_read, %if.then355)) #12
          to label %do.end358 [label %if.then355], !srcloc !452

if.then355:                                       ; preds = %do.end341
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usbtmc_generic_read.__UNIQUE_ID_ddebug258, ptr noundef %dev2, ptr noundef nonnull @.str.101, ptr noundef nonnull @.str.94) #12
  br label %do.end358

do.end358:                                        ; preds = %if.then355, %do.end341
  %in_anchor359 = getelementptr inbounds %struct.usbtmc_file_data, ptr %file_data, i32 0, i32 19
  call void @usb_scuttle_anchored_urbs(ptr noundef %in_anchor359) #12
  %in_urbs_used360 = getelementptr inbounds %struct.usbtmc_file_data, ptr %file_data, i32 0, i32 18
  %80 = ptrtoint ptr %in_urbs_used360 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 0, ptr %in_urbs_used360, align 4
  %81 = ptrtoint ptr %in_status to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 0, ptr %in_status, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usbtmc_generic_read.__UNIQUE_ID_ddebug259, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usbtmc_generic_read, %if.then374)) #12
          to label %cleanup378 [label %if.then374], !srcloc !452

if.then374:                                       ; preds = %do.end358
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usbtmc_generic_read.__UNIQUE_ID_ddebug259, ptr noundef %dev2, ptr noundef nonnull @.str.102, ptr noundef nonnull @.str.94, i32 noundef %done.2, i32 noundef %retval3.6) #12
  br label %cleanup378

cleanup378:                                       ; preds = %if.then374, %do.end358, %cleanup321.thread606, %if.end228, %if.end111.cleanup378_crit_edge, %if.then107, %do.body95
  %retval.2 = phi i32 [ -11, %if.then107 ], [ -22, %if.end111.cleanup378_crit_edge ], [ %retval3.6, %if.then374 ], [ -11, %do.body95 ], [ 0, %cleanup321.thread606 ], [ %retval3.6, %do.end358 ], [ 0, %if.end228 ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @usbtmc_ioctl_abort_bulk_out_tag(ptr nocapture noundef readonly %data, i8 noundef zeroext %tag) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %intf = getelementptr inbounds %struct.usbtmc_device_data, ptr %data, i32 0, i32 2
  %0 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %intf, align 4
  %dev1 = getelementptr inbounds %struct.usb_interface, ptr %1, i32 0, i32 7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3264, i32 noundef 8) #15
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %usb_dev = getelementptr inbounds %struct.usbtmc_device_data, ptr %data, i32 0, i32 1
  %3 = ptrtoint ptr %usb_dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %usb_dev, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 8
  %shl.i = shl i32 %6, 8
  %or4 = or i32 %shl.i, -2147483520
  %conv = zext i8 %tag to i16
  %bulk_out = getelementptr inbounds %struct.usbtmc_device_data, ptr %data, i32 0, i32 5
  %7 = ptrtoint ptr %bulk_out to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %bulk_out, align 4
  %conv5 = trunc i32 %8 to i16
  %call6 = tail call i32 @usb_control_msg(ptr noundef %4, i32 noundef %or4, i8 noundef zeroext 1, i8 noundef zeroext -94, i16 noundef zeroext %conv, i16 noundef zeroext %conv5, ptr noundef nonnull %call7.i, i16 noundef zeroext 2, i32 noundef 5000) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp = icmp slt i32 %call6, 0
  br i1 %cmp, label %do.end, label %do.body10

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.25, i32 noundef %call6) #16
  br label %exit

do.body10:                                        ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usbtmc_ioctl_abort_bulk_out_tag.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usbtmc_ioctl_abort_bulk_out_tag, %if.then15)) #12
          to label %do.end19 [label %if.then15], !srcloc !452

if.then15:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #14
  %9 = ptrtoint ptr %call7.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %call7.i, align 8
  %conv16 = zext i8 %10 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usbtmc_ioctl_abort_bulk_out_tag.__UNIQUE_ID_ddebug238, ptr noundef %dev1, ptr noundef nonnull @.str.66, i32 noundef %conv16) #12
  br label %do.end19

do.end19:                                         ; preds = %if.then15, %do.body10
  %11 = ptrtoint ptr %call7.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %call7.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %12)
  %cmp22.not = icmp eq i8 %12, 1
  br i1 %cmp22.not, label %do.end19.usbtmc_abort_bulk_out_check_status_crit_edge, label %do.end27

do.end19.usbtmc_abort_bulk_out_check_status_crit_edge: ; preds = %do.end19
  br label %usbtmc_abort_bulk_out_check_status

do.end27:                                         ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #14
  %conv21 = zext i8 %12 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.66, i32 noundef %conv21) #16
  br label %exit

usbtmc_abort_bulk_out_check_status:               ; preds = %land.lhs.true.usbtmc_abort_bulk_out_check_status_crit_edge, %do.end19.usbtmc_abort_bulk_out_check_status_crit_edge
  %n.0 = phi i32 [ %inc, %land.lhs.true.usbtmc_abort_bulk_out_check_status_crit_edge ], [ 0, %do.end19.usbtmc_abort_bulk_out_check_status_crit_edge ]
  tail call void @msleep(i32 noundef 50) #12
  %13 = ptrtoint ptr %usb_dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %usb_dev, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 8
  %shl.i127 = shl i32 %16, 8
  %or35 = or i32 %shl.i127, -2147483520
  %17 = ptrtoint ptr %bulk_out to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %bulk_out, align 4
  %conv37 = trunc i32 %18 to i16
  %call38 = tail call i32 @usb_control_msg(ptr noundef %14, i32 noundef %or35, i8 noundef zeroext 2, i8 noundef zeroext -94, i16 noundef zeroext 0, i16 noundef zeroext %conv37, ptr noundef nonnull %call7.i, i16 noundef zeroext 8, i32 noundef 5000) #12
  %inc = add nuw nsw i32 %n.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %cmp39 = icmp slt i32 %call38, 0
  br i1 %cmp39, label %do.end44, label %do.body46

do.end44:                                         ; preds = %usbtmc_abort_bulk_out_check_status
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.25, i32 noundef %call38) #16
  br label %exit

do.body46:                                        ; preds = %usbtmc_abort_bulk_out_check_status
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usbtmc_ioctl_abort_bulk_out_tag.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usbtmc_ioctl_abort_bulk_out_tag, %if.then58)) #12
          to label %do.end63 [label %if.then58], !srcloc !452

if.then58:                                        ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #14
  %19 = ptrtoint ptr %call7.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %call7.i, align 8
  %conv60 = zext i8 %20 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usbtmc_ioctl_abort_bulk_out_tag.__UNIQUE_ID_ddebug239, ptr noundef %dev1, ptr noundef nonnull @.str.71, i32 noundef %conv60) #12
  br label %do.end63

do.end63:                                         ; preds = %if.then58, %do.body46
  %21 = ptrtoint ptr %call7.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %call7.i, align 8
  %23 = zext i8 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.192)
  switch i8 %22, label %do.end63.exit_crit_edge [
    i8 1, label %usbtmc_abort_bulk_out_clear_halt
    i8 2, label %land.lhs.true
  ]

do.end63.exit_crit_edge:                          ; preds = %do.end63
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit

land.lhs.true:                                    ; preds = %do.end63
  %exitcond.not = icmp eq i32 %inc, 100
  br i1 %exitcond.not, label %land.lhs.true.exit_crit_edge, label %land.lhs.true.usbtmc_abort_bulk_out_check_status_crit_edge

land.lhs.true.usbtmc_abort_bulk_out_check_status_crit_edge: ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %usbtmc_abort_bulk_out_check_status

land.lhs.true.exit_crit_edge:                     ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit

usbtmc_abort_bulk_out_clear_halt:                 ; preds = %do.end63
  %24 = ptrtoint ptr %usb_dev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %usb_dev, align 4
  %26 = ptrtoint ptr %bulk_out to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %bulk_out, align 4
  %28 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %25, align 8
  %shl.i128 = shl i32 %29, 8
  %shl1.i = shl i32 %27, 15
  %or.i = or i32 %shl1.i, %shl.i128
  %or82 = or i32 %or.i, -1073741824
  %call83 = tail call i32 @usb_clear_halt(ptr noundef %25, i32 noundef %or82) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83)
  %cmp84 = icmp slt i32 %call83, 0
  br i1 %cmp84, label %do.end89, label %usbtmc_abort_bulk_out_clear_halt.exit_crit_edge

usbtmc_abort_bulk_out_clear_halt.exit_crit_edge:  ; preds = %usbtmc_abort_bulk_out_clear_halt
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit

do.end89:                                         ; preds = %usbtmc_abort_bulk_out_clear_halt
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.25, i32 noundef %call83) #16
  br label %exit

exit:                                             ; preds = %do.end89, %usbtmc_abort_bulk_out_clear_halt.exit_crit_edge, %land.lhs.true.exit_crit_edge, %do.end63.exit_crit_edge, %do.end44, %do.end27, %do.end
  %rv.0 = phi i32 [ %call6, %do.end ], [ -1, %do.end27 ], [ %call38, %do.end44 ], [ %call83, %do.end89 ], [ 0, %usbtmc_abort_bulk_out_clear_halt.exit_crit_edge ], [ -1, %do.end63.exit_crit_edge ], [ -1, %land.lhs.true.exit_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i) #12
  br label %cleanup

cleanup:                                          ; preds = %exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rv.0, %exit ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_clear_halt(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @usbtmc_ioctl_abort_bulk_in_tag(ptr nocapture noundef readonly %data, i8 noundef zeroext %tag) unnamed_addr #2 align 64 {
entry:
  %actual = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %actual) #12
  %0 = ptrtoint ptr %actual to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %actual, align 4, !annotation !451
  %intf = getelementptr inbounds %struct.usbtmc_device_data, ptr %data, i32 0, i32 2
  %1 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %intf, align 4
  %dev1 = getelementptr inbounds %struct.usb_interface, ptr %2, i32 0, i32 7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3264, i32 noundef 4096) #15
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %usb_dev = getelementptr inbounds %struct.usbtmc_device_data, ptr %data, i32 0, i32 1
  %4 = ptrtoint ptr %usb_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %usb_dev, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 8
  %shl.i = shl i32 %7, 8
  %or4 = or i32 %shl.i, -2147483520
  %conv = zext i8 %tag to i16
  %bulk_in = getelementptr inbounds %struct.usbtmc_device_data, ptr %data, i32 0, i32 4
  %8 = ptrtoint ptr %bulk_in to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bulk_in, align 4
  %conv5 = trunc i32 %9 to i16
  %call6 = tail call i32 @usb_control_msg(ptr noundef %5, i32 noundef %or4, i8 noundef zeroext 3, i8 noundef zeroext -94, i16 noundef zeroext %conv, i16 noundef zeroext %conv5, ptr noundef nonnull %call7.i, i16 noundef zeroext 2, i32 noundef 5000) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp = icmp slt i32 %call6, 0
  br i1 %cmp, label %do.end, label %do.body10

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.25, i32 noundef %call6) #16
  br label %exit

do.body10:                                        ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usbtmc_ioctl_abort_bulk_in_tag.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usbtmc_ioctl_abort_bulk_in_tag, %if.then15)) #12
          to label %do.end21 [label %if.then15], !srcloc !452

if.then15:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #14
  %10 = ptrtoint ptr %call7.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %call7.i, align 8
  %conv16 = zext i8 %11 to i32
  %arrayidx17 = getelementptr i8, ptr %call7.i, i32 1
  %12 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx17, align 1
  %conv18 = zext i8 %13 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usbtmc_ioctl_abort_bulk_in_tag.__UNIQUE_ID_ddebug234, ptr noundef %dev1, ptr noundef nonnull @.str.75, i32 noundef %conv16, i32 noundef %conv18) #12
  br label %do.end21

do.end21:                                         ; preds = %if.then15, %do.body10
  %14 = ptrtoint ptr %call7.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %call7.i, align 8
  %16 = zext i8 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.193)
  switch i8 %15, label %do.end41 [
    i8 -128, label %do.end21.exit_crit_edge
    i8 -127, label %if.then32
    i8 1, label %usbtmc_abort_bulk_in_status.preheader
  ]

do.end21.exit_crit_edge:                          ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit

usbtmc_abort_bulk_in_status.preheader:            ; preds = %do.end21
  %arrayidx156 = getelementptr i8, ptr %call7.i, i32 1
  br label %usbtmc_abort_bulk_in_status

if.then32:                                        ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit

do.end41:                                         ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #14
  %conv23 = zext i8 %15 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.77, i32 noundef %conv23) #16
  br label %exit

usbtmc_abort_bulk_in_status:                      ; preds = %usbtmc_abort_bulk_in_status.backedge, %usbtmc_abort_bulk_in_status.preheader
  %n.0 = phi i32 [ 0, %usbtmc_abort_bulk_in_status.preheader ], [ %inc, %usbtmc_abort_bulk_in_status.backedge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usbtmc_ioctl_abort_bulk_in_tag.__UNIQUE_ID_ddebug235, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usbtmc_ioctl_abort_bulk_in_tag, %if.then57)) #12
          to label %do.end60 [label %if.then57], !srcloc !452

if.then57:                                        ; preds = %usbtmc_abort_bulk_in_status
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usbtmc_ioctl_abort_bulk_in_tag.__UNIQUE_ID_ddebug235, ptr noundef %dev1, ptr noundef nonnull @.str.79) #12
  br label %do.end60

do.end60:                                         ; preds = %if.then57, %usbtmc_abort_bulk_in_status
  %17 = ptrtoint ptr %actual to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %actual, align 4
  %18 = ptrtoint ptr %usb_dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %usb_dev, align 4
  %20 = ptrtoint ptr %bulk_in to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %bulk_in, align 4
  %22 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %19, align 8
  %shl.i216 = shl i32 %23, 8
  %shl1.i = shl i32 %21, 15
  %or.i = or i32 %shl1.i, %shl.i216
  %or66 = or i32 %or.i, -1073741696
  %call67 = call i32 @usb_bulk_msg(ptr noundef %19, i32 noundef %or66, ptr noundef nonnull %call7.i, i32 noundef 4096, ptr noundef nonnull %actual, i32 noundef 300) #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usbtmc_ioctl_abort_bulk_in_tag.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usbtmc_ioctl_abort_bulk_in_tag, %if.then80)) #12
          to label %do.end83 [label %if.then80], !srcloc !452

if.then80:                                        ; preds = %do.end60
  call void @__sanitizer_cov_trace_pc() #14
  %24 = ptrtoint ptr %actual to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %actual, align 4
  call void @print_hex_dump(ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.61, i32 noundef 0, i32 noundef 16, i32 noundef 1, ptr noundef nonnull %call7.i, i32 noundef %25, i1 noundef zeroext true) #12
  br label %do.end83

do.end83:                                         ; preds = %if.then80, %do.end60
  %inc = add i32 %n.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %cmp84 = icmp slt i32 %call67, 0
  br i1 %cmp84, label %do.end89, label %do.end83.if.end94_crit_edge

do.end83.if.end94_crit_edge:                      ; preds = %do.end83
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end94

do.end89:                                         ; preds = %do.end83
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.81, i32 noundef %call67) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -110, i32 %call67)
  %cmp90.not = icmp eq i32 %call67, -110
  br i1 %cmp90.not, label %do.end89.if.end94_crit_edge, label %do.end89.exit_crit_edge

do.end89.exit_crit_edge:                          ; preds = %do.end89
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit

do.end89.if.end94_crit_edge:                      ; preds = %do.end89
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end94

if.end94:                                         ; preds = %do.end89.if.end94_crit_edge, %do.end83.if.end94_crit_edge
  %26 = ptrtoint ptr %actual to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %actual, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %27)
  %cmp95 = icmp eq i32 %27, 4096
  br i1 %cmp95, label %if.end94.usbtmc_abort_bulk_in_status.backedge_crit_edge, label %if.end98

if.end94.usbtmc_abort_bulk_in_status.backedge_crit_edge: ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #14
  br label %usbtmc_abort_bulk_in_status.backedge

usbtmc_abort_bulk_in_status.backedge:             ; preds = %if.end155.usbtmc_abort_bulk_in_status.backedge_crit_edge, %if.end94.usbtmc_abort_bulk_in_status.backedge_crit_edge
  br label %usbtmc_abort_bulk_in_status

if.end98:                                         ; preds = %if.end94
  call void @__sanitizer_cov_trace_const_cmp4(i32 99, i32 %inc)
  %cmp99 = icmp sgt i32 %inc, 99
  br i1 %cmp99, label %do.end104, label %if.end105

do.end104:                                        ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.84, i32 noundef 100) #16
  br label %exit

if.end105:                                        ; preds = %if.end98
  %28 = ptrtoint ptr %usb_dev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %usb_dev, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %29, align 8
  %shl.i217 = shl i32 %31, 8
  %or110 = or i32 %shl.i217, -2147483520
  %32 = ptrtoint ptr %bulk_in to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %bulk_in, align 4
  %conv112 = trunc i32 %33 to i16
  %call113 = call i32 @usb_control_msg(ptr noundef %29, i32 noundef %or110, i8 noundef zeroext 4, i8 noundef zeroext -94, i16 noundef zeroext 0, i16 noundef zeroext %conv112, ptr noundef nonnull %call7.i, i16 noundef zeroext 8, i32 noundef 5000) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call113)
  %cmp114 = icmp slt i32 %call113, 0
  br i1 %cmp114, label %do.end119, label %do.body121

do.end119:                                        ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.25, i32 noundef %call113) #16
  br label %exit

do.body121:                                       ; preds = %if.end105
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usbtmc_ioctl_abort_bulk_in_tag.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usbtmc_ioctl_abort_bulk_in_tag, %if.then133)) #12
          to label %do.end138 [label %if.then133], !srcloc !452

if.then133:                                       ; preds = %do.body121
  call void @__sanitizer_cov_trace_pc() #14
  %34 = ptrtoint ptr %call7.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %call7.i, align 8
  %conv135 = zext i8 %35 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usbtmc_ioctl_abort_bulk_in_tag.__UNIQUE_ID_ddebug237, ptr noundef %dev1, ptr noundef nonnull @.str.88, i32 noundef %conv135) #12
  br label %do.end138

do.end138:                                        ; preds = %if.then133, %do.body121
  %36 = ptrtoint ptr %call7.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %call7.i, align 8
  %38 = zext i8 %37 to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values.194)
  switch i8 %37, label %do.end152 [
    i8 1, label %do.end138.exit_crit_edge
    i8 2, label %if.end155
  ]

do.end138.exit_crit_edge:                         ; preds = %do.end138
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit

do.end152:                                        ; preds = %do.end138
  call void @__sanitizer_cov_trace_pc() #14
  %conv140 = zext i8 %37 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.88, i32 noundef %conv140) #16
  br label %exit

if.end155:                                        ; preds = %do.end138
  %39 = ptrtoint ptr %arrayidx156 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx156, align 1
  %41 = and i8 %40, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %cmp158.not = icmp eq i8 %41, 0
  br i1 %cmp158.not, label %if.end155.exit_crit_edge, label %if.end155.usbtmc_abort_bulk_in_status.backedge_crit_edge

if.end155.usbtmc_abort_bulk_in_status.backedge_crit_edge: ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #14
  br label %usbtmc_abort_bulk_in_status.backedge

if.end155.exit_crit_edge:                         ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit

exit:                                             ; preds = %if.end155.exit_crit_edge, %do.end152, %do.end138.exit_crit_edge, %do.end119, %do.end104, %do.end89.exit_crit_edge, %do.end41, %if.then32, %do.end21.exit_crit_edge, %do.end
  %rv.0 = phi i32 [ %call6, %do.end ], [ -42, %if.then32 ], [ -1, %do.end41 ], [ -1, %do.end104 ], [ %call113, %do.end119 ], [ -1, %do.end152 ], [ 0, %do.end21.exit_crit_edge ], [ -11, %if.end155.exit_crit_edge ], [ 0, %do.end138.exit_crit_edge ], [ %call67, %do.end89.exit_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i) #12
  br label %cleanup

cleanup:                                          ; preds = %exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rv.0, %exit ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %actual) #12
  ret i32 %retval.0
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
declare dso_local i32 @usb_anchor_empty(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @usbtmc_read_bulk_cb(ptr noundef %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %status1 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %2 = ptrtoint ptr %status1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %status1, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.195)
  switch i32 %3, label %do.end [
    i32 0, label %entry.do.body21_crit_edge
    i32 -104, label %entry.do.body7_crit_edge
    i32 -121, label %entry.do.body7_crit_edge75
    i32 -108, label %entry.do.body7_crit_edge76
  ]

entry.do.body7_crit_edge76:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body7

entry.do.body7_crit_edge75:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body7

entry.do.body7_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body7

entry.do.body21_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body21

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %intf = getelementptr inbounds %struct.usbtmc_device_data, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %intf, align 4
  %dev = getelementptr inbounds %struct.usb_interface, ptr %8, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.103, ptr noundef nonnull @.str.104, i32 noundef %3) #16
  br label %do.body7

do.body7:                                         ; preds = %do.end, %entry.do.body7_crit_edge, %entry.do.body7_crit_edge75, %entry.do.body7_crit_edge76
  %err_lock = getelementptr inbounds %struct.usbtmc_file_data, ptr %1, i32 0, i32 11
  %call9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %err_lock) #12
  %in_status = getelementptr inbounds %struct.usbtmc_file_data, ptr %1, i32 0, i32 17
  %9 = ptrtoint ptr %in_status to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %in_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool14.not = icmp eq i32 %10, 0
  br i1 %tobool14.not, label %if.then15, label %do.body7.if.end17_crit_edge

do.body7.if.end17_crit_edge:                      ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17

if.then15:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #14
  %11 = ptrtoint ptr %in_status to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %3, ptr %in_status, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %do.body7.if.end17_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %err_lock, i32 noundef %call9) #12
  br label %do.body21

do.body21:                                        ; preds = %if.end17, %entry.do.body21_crit_edge
  %err_lock27 = getelementptr inbounds %struct.usbtmc_file_data, ptr %1, i32 0, i32 11
  %call29 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %err_lock27) #12
  %actual_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %12 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %actual_length, align 4
  %in_transfer_size = getelementptr inbounds %struct.usbtmc_file_data, ptr %1, i32 0, i32 16
  %14 = ptrtoint ptr %in_transfer_size to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %in_transfer_size, align 4
  %add = add i32 %15, %13
  store i32 %add, ptr %in_transfer_size, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usbtmc_read_bulk_cb.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usbtmc_read_bulk_cb, %if.then40)) #12
          to label %do.end48 [label %if.then40], !srcloc !452

if.then40:                                        ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #14
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  %intf42 = getelementptr inbounds %struct.usbtmc_device_data, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %intf42 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %intf42, align 4
  %dev43 = getelementptr inbounds %struct.usb_interface, ptr %19, i32 0, i32 7
  %20 = ptrtoint ptr %in_transfer_size to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %in_transfer_size, align 4
  %22 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %actual_length, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usbtmc_read_bulk_cb.__UNIQUE_ID_ddebug249, ptr noundef %dev43, ptr noundef nonnull @.str.105, ptr noundef nonnull @.str.104, i32 noundef %21, i32 noundef %23, i32 noundef %3) #12
  br label %do.end48

do.end48:                                         ; preds = %if.then40, %do.body21
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %err_lock27, i32 noundef %call29) #12
  %in_anchor = getelementptr inbounds %struct.usbtmc_file_data, ptr %1, i32 0, i32 19
  tail call void @usb_anchor_urb(ptr noundef %urb, ptr noundef %in_anchor) #12
  %wait_bulk_in = getelementptr inbounds %struct.usbtmc_file_data, ptr %1, i32 0, i32 20
  tail call void @__wake_up(ptr noundef %wait_bulk_in, i32 noundef 1, i32 noundef 1, ptr noundef null) #12
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %1, align 4
  %waitq = getelementptr inbounds %struct.usbtmc_device_data, ptr %25, i32 0, i32 26
  tail call void @__wake_up(ptr noundef %waitq, i32 noundef 1, i32 noundef 1, ptr noundef null) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_anchor_urb(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_unanchor_urb(ptr noundef) local_unnamed_addr #1

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
declare dso_local ptr @usb_get_from_anchor(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_kill_anchored_urbs(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_scuttle_anchored_urbs(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @down_trylock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @up(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @usbtmc_write_bulk_cb(ptr nocapture noundef readonly %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %err_lock = getelementptr inbounds %struct.usbtmc_file_data, ptr %1, i32 0, i32 11
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %err_lock) #12
  %actual_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %2 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %actual_length, align 4
  %out_transfer_size = getelementptr inbounds %struct.usbtmc_file_data, ptr %1, i32 0, i32 14
  %4 = ptrtoint ptr %out_transfer_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %out_transfer_size, align 4
  %add = add i32 %5, %3
  store i32 %add, ptr %out_transfer_size, align 4
  %status = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %6 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %status, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.196)
  switch i32 %7, label %do.end18 [
    i32 0, label %entry.if.end25_crit_edge
    i32 -2, label %entry.if.end_crit_edge
    i32 -104, label %entry.if.end_crit_edge66
    i32 -108, label %entry.if.end_crit_edge67
  ]

entry.if.end_crit_edge67:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

entry.if.end_crit_edge66:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

entry.if.end25_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25

do.end18:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  %intf = getelementptr inbounds %struct.usbtmc_device_data, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %intf, align 4
  %dev = getelementptr inbounds %struct.usb_interface, ptr %12, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.111, ptr noundef nonnull @.str.112, i32 noundef %7) #16
  br label %if.end

if.end:                                           ; preds = %do.end18, %entry.if.end_crit_edge, %entry.if.end_crit_edge66, %entry.if.end_crit_edge67
  %out_status = getelementptr inbounds %struct.usbtmc_file_data, ptr %1, i32 0, i32 15
  %13 = ptrtoint ptr %out_status to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %out_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool20.not = icmp eq i32 %14, 0
  br i1 %tobool20.not, label %if.then21, label %if.end.if.end25_crit_edge

if.end.if.end25_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25

if.then21:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %15 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %status, align 4
  %17 = ptrtoint ptr %out_status to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %out_status, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.then21, %if.end.if.end25_crit_edge, %entry.if.end25_crit_edge
  %tobool44.not = phi i1 [ false, %if.end.if.end25_crit_edge ], [ true, %if.then21 ], [ false, %entry.if.end25_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %err_lock, i32 noundef %call2) #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usbtmc_write_bulk_cb.__UNIQUE_ID_ddebug260, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usbtmc_write_bulk_cb, %if.then33)) #12
          to label %do.end40 [label %if.then33], !srcloc !452

if.then33:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #14
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 4
  %intf35 = getelementptr inbounds %struct.usbtmc_device_data, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %intf35 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %intf35, align 4
  %dev36 = getelementptr inbounds %struct.usb_interface, ptr %21, i32 0, i32 7
  %22 = ptrtoint ptr %out_transfer_size to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %out_transfer_size, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usbtmc_write_bulk_cb.__UNIQUE_ID_ddebug260, ptr noundef %dev36, ptr noundef nonnull @.str.113, ptr noundef nonnull @.str.112, i32 noundef %23) #12
  br label %do.end40

do.end40:                                         ; preds = %if.then33, %if.end25
  %limit_write_sem = getelementptr inbounds %struct.usbtmc_file_data, ptr %1, i32 0, i32 13
  tail call void @up(ptr noundef %limit_write_sem) #12
  %submitted = getelementptr inbounds %struct.usbtmc_file_data, ptr %1, i32 0, i32 12
  %call41 = tail call i32 @usb_anchor_empty(ptr noundef %submitted) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp ne i32 %call41, 0
  %brmerge = or i1 %tobool44.not, %tobool42.not
  br i1 %brmerge, label %if.then45, label %do.end40.if.end47_crit_edge

do.end40.if.end47_crit_edge:                      ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end47

if.then45:                                        ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #14
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %1, align 4
  %waitq = getelementptr inbounds %struct.usbtmc_device_data, ptr %25, i32 0, i32 26
  tail call void @__wake_up(ptr noundef %waitq, i32 noundef 1, i32 noundef 1, ptr noundef null) #12
  br label %if.end47

if.end47:                                         ; preds = %if.then45, %do.end40.if.end47_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @usbtmc_generic_write(ptr noundef %file_data, ptr noundef %user_buffer, i32 noundef %transfer_size, ptr nocapture noundef writeonly %transferred, i32 noundef %flags) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %file_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %file_data, align 4
  %2 = ptrtoint ptr %transferred to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %transferred, align 4
  %intf = getelementptr inbounds %struct.usbtmc_device_data, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %intf, align 4
  %dev3 = getelementptr inbounds %struct.usb_interface, ptr %4, i32 0, i32 7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usbtmc_generic_write.__UNIQUE_ID_ddebug261, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usbtmc_generic_write, %if.then)) #12
          to label %do.end [label %if.then], !srcloc !452

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %count = getelementptr inbounds %struct.usbtmc_file_data, ptr %file_data, i32 0, i32 13, i32 1
  %5 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %count, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usbtmc_generic_write.__UNIQUE_ID_ddebug261, ptr noundef %dev3, ptr noundef nonnull @.str.115, ptr noundef nonnull @.str.114, i32 noundef %transfer_size, i32 noundef %flags, i32 noundef %6) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %and = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  %err_lock11 = getelementptr inbounds %struct.usbtmc_file_data, ptr %file_data, i32 0, i32 11
  tail call void @_raw_spin_lock_irq(ptr noundef %err_lock11) #12
  br i1 %tobool6.not, label %if.else, label %if.then7

if.then7:                                         ; preds = %do.end
  %out_status = getelementptr inbounds %struct.usbtmc_file_data, ptr %file_data, i32 0, i32 15
  %7 = ptrtoint ptr %out_status to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %out_status, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %err_lock11) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp = icmp slt i32 %8, 0
  br i1 %cmp, label %if.then7.cleanup148_crit_edge, label %if.then7.if.end14_crit_edge

if.then7.if.end14_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

if.then7.cleanup148_crit_edge:                    ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup148

if.else:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  %out_transfer_size = getelementptr inbounds %struct.usbtmc_file_data, ptr %file_data, i32 0, i32 14
  %9 = ptrtoint ptr %out_transfer_size to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %out_transfer_size, align 4
  %out_status12 = getelementptr inbounds %struct.usbtmc_file_data, ptr %file_data, i32 0, i32 15
  %10 = ptrtoint ptr %out_status12 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %out_status12, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %err_lock11) #12
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.then7.if.end14_crit_edge
  %11 = tail call i32 @llvm.umin.i32(i32 %transfer_size, i32 2147483647)
  %timeout18 = getelementptr inbounds %struct.usbtmc_file_data, ptr %file_data, i32 0, i32 2
  %12 = ptrtoint ptr %timeout18 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %timeout18, align 4
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %13) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp20.not299 = icmp eq i32 %11, 0
  %.pre335 = and i32 %flags, 1
  br i1 %cmp20.not299, label %if.end14.while.end_crit_edge, label %while.body.lr.ph

if.end14.while.end_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pre335)
  %tobool22.not = icmp eq i32 %.pre335, 0
  %limit_write_sem24 = getelementptr inbounds %struct.usbtmc_file_data, ptr %file_data, i32 0, i32 13
  %err_lock37 = getelementptr inbounds %struct.usbtmc_file_data, ptr %file_data, i32 0, i32 11
  %out_status38 = getelementptr inbounds %struct.usbtmc_file_data, ptr %file_data, i32 0, i32 15
  %usb_dev = getelementptr inbounds %struct.usbtmc_device_data, ptr %1, i32 0, i32 1
  %bulk_out = getelementptr inbounds %struct.usbtmc_device_data, ptr %1, i32 0, i32 5
  %submitted = getelementptr inbounds %struct.usbtmc_file_data, ptr %file_data, i32 0, i32 12
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %done.0301 = phi i32 [ 0, %while.body.lr.ph ], [ %add105, %cleanup.while.body_crit_edge ]
  %remaining.0300 = phi i32 [ %11, %while.body.lr.ph ], [ %sub, %cleanup.while.body_crit_edge ]
  br i1 %tobool22.not, label %if.else30, label %if.then23

if.then23:                                        ; preds = %while.body
  %call25 = tail call i32 @down_trylock(ptr noundef %limit_write_sem24) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.then23.if.end36_crit_edge, label %cleanup.thread259

if.then23.if.end36_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end36

cleanup.thread259:                                ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %done.0301)
  %tobool28.not = icmp eq i32 %done.0301, 0
  %cond = select i1 %tobool28.not, i32 -11, i32 0
  br label %exit

if.else30:                                        ; preds = %while.body
  %call32 = tail call i32 @down_timeout(ptr noundef %limit_write_sem24, i32 noundef %call2.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %cmp33 = icmp slt i32 %call32, 0
  br i1 %cmp33, label %if.else30.error_crit_edge, label %if.else30.if.end36_crit_edge

if.else30.if.end36_crit_edge:                     ; preds = %if.else30
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end36

if.else30.error_crit_edge:                        ; preds = %if.else30
  call void @__sanitizer_cov_trace_pc() #14
  br label %error

if.end36:                                         ; preds = %if.else30.if.end36_crit_edge, %if.then23.if.end36_crit_edge
  tail call void @_raw_spin_lock_irq(ptr noundef %err_lock37) #12
  %14 = ptrtoint ptr %out_status38 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %out_status38, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %err_lock37) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp40 = icmp slt i32 %15, 0
  br i1 %cmp40, label %if.end36.error.sink.split_crit_edge, label %if.end43

if.end36.error.sink.split_crit_edge:              ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #14
  br label %error.sink.split

if.end43:                                         ; preds = %if.end36
  %call.i = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #12
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end43.error.sink.split_crit_edge, label %if.end.i243

if.end43.error.sink.split_crit_edge:              ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #14
  br label %error.sink.split

if.end.i243:                                      ; preds = %if.end43
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %16 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %16, i32 noundef 3264, i32 noundef 4096) #15
  %tobool2.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool2.not.i, label %if.then3.i, label %if.end8.i.i

if.then3.i:                                       ; preds = %if.end.i243
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @usb_free_urb(ptr noundef nonnull %call.i) #12
  br label %error.sink.split

if.end8.i.i:                                      ; preds = %if.end.i243
  %transfer_buffer.i = getelementptr inbounds %struct.urb, ptr %call.i, i32 0, i32 14
  %17 = ptrtoint ptr %transfer_buffer.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call7.i.i, ptr %transfer_buffer.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %call.i, i32 0, i32 19
  %18 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 4096, ptr %transfer_buffer_length.i, align 4
  %transfer_flags.i = getelementptr inbounds %struct.urb, ptr %call.i, i32 0, i32 13
  %19 = ptrtoint ptr %transfer_flags.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %transfer_flags.i, align 4
  %or.i = or i32 %20, 256
  store i32 %or.i, ptr %transfer_flags.i, align 4
  %21 = tail call i32 @llvm.umin.i32(i32 %remaining.0300, i32 4096)
  %add.ptr = getelementptr i8, ptr %user_buffer, i32 %done.0301
  tail call void @__check_object_size(ptr noundef nonnull %call7.i.i, i32 noundef %21, i1 noundef zeroext false) #12
  tail call void @__might_fault(ptr noundef nonnull @.str.93, i32 noundef 156) #12
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #12
  br i1 %call.i.i, label %if.end8.i.i.if.then55_crit_edge, label %land.lhs.true.i.i

if.end8.i.i.if.then55_crit_edge:                  ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then55

land.lhs.true.i.i:                                ; preds = %if.end8.i.i
  %22 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %add.ptr, i32 %21, i32 -1226833920) #18, !srcloc !461
  %asmresult.i.i = extractvalue { i32, i32 } %22, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !455

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call7.i.i, i32 noundef %21) #12
  %23 = tail call i32 @llvm.read_register.i32(metadata !441) #12
  %and.i.i.i.i.i.i = and i32 %23, -16384
  %24 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 4
  %25 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #9, !srcloc !462
  %and.i.i.i.i = and i32 %25, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #12, !srcloc !463
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !464
  %call1.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef nonnull %call7.i.i, ptr noundef %add.ptr, i32 noundef %21) #12
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %25) #12, !srcloc !463
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !464
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %call1.i.i.i, %if.then.i7.i ], [ %21, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %do.body58, label %if.end.i.i.if.then55_crit_edge, !prof !455

if.end.i.i.if.then55_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then55

if.then55:                                        ; preds = %if.end.i.i.if.then55_crit_edge, %if.end8.i.i.if.then55_crit_edge
  %res.0.i.i338 = phi i32 [ %res.0.i.i, %if.end.i.i.if.then55_crit_edge ], [ %21, %if.end8.i.i.if.then55_crit_edge ]
  %sub.i.i232 = sub i32 %21, %res.0.i.i338
  %add.ptr.i.i = getelementptr i8, ptr %call7.i.i, i32 %sub.i.i232
  %26 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i338)
  br label %error.sink.split

do.body58:                                        ; preds = %if.end.i.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usbtmc_generic_write.__UNIQUE_ID_ddebug262, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usbtmc_generic_write, %if.then70)) #12
          to label %do.end73 [label %if.then70], !srcloc !452

if.then70:                                        ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @print_hex_dump(ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.61, i32 noundef 0, i32 noundef 16, i32 noundef 1, ptr noundef nonnull %call7.i.i, i32 noundef %21, i1 noundef zeroext true) #12
  br label %do.end73

do.end73:                                         ; preds = %if.then70, %do.body58
  %add = add nuw nsw i32 %21, 3
  %and74 = and i32 %add, 16380
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usbtmc_generic_write.__UNIQUE_ID_ddebug263, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usbtmc_generic_write, %if.then87)) #12
          to label %do.end90 [label %if.then87], !srcloc !452

if.then87:                                        ; preds = %do.end73
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usbtmc_generic_write.__UNIQUE_ID_ddebug263, ptr noundef %dev3, ptr noundef nonnull @.str.116, i32 noundef %21, i32 noundef %and74, i32 noundef %done.0301) #12
  br label %do.end90

do.end90:                                         ; preds = %if.then87, %do.end73
  %27 = ptrtoint ptr %usb_dev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %usb_dev, align 4
  %29 = ptrtoint ptr %bulk_out to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %bulk_out, align 4
  %31 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %28, align 8
  %shl.i = shl i32 %32, 8
  %shl1.i = shl i32 %30, 15
  %or.i245 = or i32 %shl1.i, %shl.i
  %or = or i32 %or.i245, -1073741824
  %dev1.i = getelementptr inbounds %struct.urb, ptr %call.i, i32 0, i32 8
  %33 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %28, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %call.i, i32 0, i32 10
  %34 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %or, ptr %pipe2.i, align 4
  %35 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %and74, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %call.i, i32 0, i32 28
  %36 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @usbtmc_write_bulk_cb, ptr %complete.i, align 4
  %context4.i = getelementptr inbounds %struct.urb, ptr %call.i, i32 0, i32 27
  %37 = ptrtoint ptr %context4.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %file_data, ptr %context4.i, align 4
  tail call void @usb_anchor_urb(ptr noundef nonnull %call.i, ptr noundef %submitted) #12
  %call94 = tail call i32 @usb_submit_urb(ptr noundef nonnull %call.i, i32 noundef 3264) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call94)
  %tobool95.not = icmp eq i32 %call94, 0
  br i1 %tobool95.not, label %cleanup, label %if.then102, !prof !455

if.then102:                                       ; preds = %do.end90
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @usb_unanchor_urb(ptr noundef nonnull %call.i) #12
  br label %error.sink.split

cleanup:                                          ; preds = %do.end90
  tail call void @usb_free_urb(ptr noundef nonnull %call.i) #12
  %sub = sub i32 %remaining.0300, %21
  %add105 = add i32 %done.0301, %21
  %cmp20.not = icmp eq i32 %sub, 0
  br i1 %cmp20.not, label %cleanup.while.end_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %if.end14.while.end_crit_edge
  %done.0.lcssa = phi i32 [ 0, %if.end14.while.end_crit_edge ], [ %add105, %cleanup.while.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pre335)
  %tobool109.not = icmp eq i32 %.pre335, 0
  br i1 %tobool109.not, label %if.then110, label %while.end.exit_crit_edge

while.end.exit_crit_edge:                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit

if.then110:                                       ; preds = %while.end
  %submitted111 = getelementptr inbounds %struct.usbtmc_file_data, ptr %file_data, i32 0, i32 12
  %call112 = tail call i32 @usb_wait_anchor_empty_timeout(ptr noundef %submitted111, i32 noundef %13) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call112)
  %tobool113.not = icmp eq i32 %call112, 0
  br i1 %tobool113.not, label %if.then110.error_crit_edge, label %if.then110.exit_crit_edge

if.then110.exit_crit_edge:                        ; preds = %if.then110
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit

if.then110.error_crit_edge:                       ; preds = %if.then110
  call void @__sanitizer_cov_trace_pc() #14
  br label %error

error.sink.split:                                 ; preds = %if.then102, %if.then55, %if.then3.i, %if.end43.error.sink.split_crit_edge, %if.end36.error.sink.split_crit_edge
  %retval2.1.ph = phi i32 [ -14, %if.then55 ], [ %call94, %if.then102 ], [ -12, %if.then3.i ], [ %15, %if.end36.error.sink.split_crit_edge ], [ -12, %if.end43.error.sink.split_crit_edge ]
  %urb.2.ph = phi ptr [ %call.i, %if.then55 ], [ %call.i, %if.then102 ], [ null, %if.then3.i ], [ null, %if.end36.error.sink.split_crit_edge ], [ null, %if.end43.error.sink.split_crit_edge ]
  tail call void @up(ptr noundef %limit_write_sem24) #12
  br label %error

error:                                            ; preds = %error.sink.split, %if.then110.error_crit_edge, %if.else30.error_crit_edge
  %.pre.pre-phi = phi i32 [ 0, %if.then110.error_crit_edge ], [ %.pre335, %error.sink.split ], [ 0, %if.else30.error_crit_edge ]
  %done.0275 = phi i32 [ %done.0.lcssa, %if.then110.error_crit_edge ], [ %done.0301, %error.sink.split ], [ %done.0301, %if.else30.error_crit_edge ]
  %retval2.1 = phi i32 [ -110, %if.then110.error_crit_edge ], [ %retval2.1.ph, %error.sink.split ], [ -110, %if.else30.error_crit_edge ]
  %urb.2 = phi ptr [ null, %if.then110.error_crit_edge ], [ %urb.2.ph, %error.sink.split ], [ null, %if.else30.error_crit_edge ]
  %submitted117 = getelementptr inbounds %struct.usbtmc_file_data, ptr %file_data, i32 0, i32 12
  tail call void @usb_kill_anchored_urbs(ptr noundef %submitted117) #12
  br label %exit

exit:                                             ; preds = %error, %if.then110.exit_crit_edge, %while.end.exit_crit_edge, %cleanup.thread259
  %and119.pre-phi = phi i32 [ 1, %cleanup.thread259 ], [ %.pre335, %while.end.exit_crit_edge ], [ 0, %if.then110.exit_crit_edge ], [ %.pre.pre-phi, %error ]
  %done.0274 = phi i32 [ %done.0301, %cleanup.thread259 ], [ %done.0.lcssa, %while.end.exit_crit_edge ], [ %done.0.lcssa, %if.then110.exit_crit_edge ], [ %done.0275, %error ]
  %retval2.2 = phi i32 [ %cond, %cleanup.thread259 ], [ 0, %while.end.exit_crit_edge ], [ 0, %if.then110.exit_crit_edge ], [ %retval2.1, %error ]
  %urb.3 = phi ptr [ null, %cleanup.thread259 ], [ null, %while.end.exit_crit_edge ], [ null, %if.then110.exit_crit_edge ], [ %urb.2, %error ]
  tail call void @usb_free_urb(ptr noundef %urb.3) #12
  %err_lock118 = getelementptr inbounds %struct.usbtmc_file_data, ptr %file_data, i32 0, i32 11
  tail call void @_raw_spin_lock_irq(ptr noundef %err_lock118) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and119.pre-phi)
  %tobool120.not = icmp eq i32 %and119.pre-phi, 0
  br i1 %tobool120.not, label %if.then121, label %exit.if.end123_crit_edge

exit.if.end123_crit_edge:                         ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end123

if.then121:                                       ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #14
  %out_transfer_size122 = getelementptr inbounds %struct.usbtmc_file_data, ptr %file_data, i32 0, i32 14
  %38 = ptrtoint ptr %out_transfer_size122 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %out_transfer_size122, align 4
  br label %if.end123

if.end123:                                        ; preds = %if.then121, %exit.if.end123_crit_edge
  %done.4 = phi i32 [ %done.0274, %exit.if.end123_crit_edge ], [ %39, %if.then121 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval2.2)
  %tobool124.not = icmp eq i32 %retval2.2, 0
  br i1 %tobool124.not, label %land.lhs.true, label %if.end123.if.end129_crit_edge

if.end123.if.end129_crit_edge:                    ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end129

land.lhs.true:                                    ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #14
  %out_status125 = getelementptr inbounds %struct.usbtmc_file_data, ptr %file_data, i32 0, i32 15
  %40 = ptrtoint ptr %out_status125 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %out_status125, align 4
  br label %if.end129

if.end129:                                        ; preds = %land.lhs.true, %if.end123.if.end129_crit_edge
  %retval2.3 = phi i32 [ %retval2.2, %if.end123.if.end129_crit_edge ], [ %41, %land.lhs.true ]
  tail call void @_raw_spin_unlock_irq(ptr noundef %err_lock118) #12
  %42 = ptrtoint ptr %transferred to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %done.4, ptr %transferred, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usbtmc_generic_write.__UNIQUE_ID_ddebug264, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usbtmc_generic_write, %if.then143)) #12
          to label %cleanup148 [label %if.then143], !srcloc !452

if.then143:                                       ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #14
  %out_status144 = getelementptr inbounds %struct.usbtmc_file_data, ptr %file_data, i32 0, i32 15
  %43 = ptrtoint ptr %out_status144 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %out_status144, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usbtmc_generic_write.__UNIQUE_ID_ddebug264, ptr noundef %dev3, ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.114, i32 noundef %done.4, i32 noundef %retval2.3, i32 noundef %44) #12
  br label %cleanup148

cleanup148:                                       ; preds = %if.then143, %if.end129, %if.then7.cleanup148_crit_edge
  %retval.0 = phi i32 [ %8, %if.then7.cleanup148_crit_edge ], [ %retval2.3, %if.then143 ], [ %retval2.3, %if.end129 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @down_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_wait_anchor_empty_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @usbtmc_ioctl_clear_out_halt(ptr nocapture noundef readonly %data) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %usb_dev = getelementptr inbounds %struct.usbtmc_device_data, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %usb_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %usb_dev, align 4
  %bulk_out = getelementptr inbounds %struct.usbtmc_device_data, ptr %data, i32 0, i32 5
  %2 = ptrtoint ptr %bulk_out to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bulk_out, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 8
  %shl.i = shl i32 %5, 8
  %shl1.i = shl i32 %3, 15
  %or.i = or i32 %shl1.i, %shl.i
  %or = or i32 %or.i, -1073741824
  %call2 = tail call i32 @usb_clear_halt(ptr noundef %1, i32 noundef %or) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %6 = ptrtoint ptr %usb_dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %usb_dev, align 4
  %dev = getelementptr inbounds %struct.usb_device, ptr %7, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.120, i32 noundef %call2) #16
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @usbtmc_ioctl_clear_in_halt(ptr nocapture noundef readonly %data) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %usb_dev = getelementptr inbounds %struct.usbtmc_device_data, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %usb_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %usb_dev, align 4
  %bulk_in = getelementptr inbounds %struct.usbtmc_device_data, ptr %data, i32 0, i32 4
  %2 = ptrtoint ptr %bulk_in to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bulk_in, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 8
  %shl.i = shl i32 %5, 8
  %shl1.i = shl i32 %3, 15
  %or.i = or i32 %shl1.i, %shl.i
  %or2 = or i32 %or.i, -1073741696
  %call3 = tail call i32 @usb_clear_halt(ptr noundef %1, i32 noundef %or2) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %6 = ptrtoint ptr %usb_dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %usb_dev, align 4
  %dev = getelementptr inbounds %struct.usb_device, ptr %7, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.121, i32 noundef %call3) #16
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @usbtmc_ioctl_indicator_pulse(ptr nocapture noundef readonly %data) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %intf = getelementptr inbounds %struct.usbtmc_device_data, ptr %data, i32 0, i32 2
  %0 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %intf, align 4
  %dev1 = getelementptr inbounds %struct.usb_interface, ptr %1, i32 0, i32 7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3264, i32 noundef 2) #15
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %usb_dev = getelementptr inbounds %struct.usbtmc_device_data, ptr %data, i32 0, i32 1
  %3 = ptrtoint ptr %usb_dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %usb_dev, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 8
  %shl.i = shl i32 %6, 8
  %or4 = or i32 %shl.i, -2147483520
  %call5 = tail call i32 @usb_control_msg(ptr noundef %4, i32 noundef %or4, i8 noundef zeroext 64, i8 noundef zeroext -95, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %call7.i, i16 noundef zeroext 1, i32 noundef 5000) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp = icmp slt i32 %call5, 0
  br i1 %cmp, label %do.end, label %do.body8

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.25, i32 noundef %call5) #16
  br label %exit

do.body8:                                         ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usbtmc_ioctl_indicator_pulse.__UNIQUE_ID_ddebug282, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usbtmc_ioctl_indicator_pulse, %if.then13)) #12
          to label %do.end16 [label %if.then13], !srcloc !452

if.then13:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #14
  %7 = ptrtoint ptr %call7.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %call7.i, align 8
  %conv = zext i8 %8 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usbtmc_ioctl_indicator_pulse.__UNIQUE_ID_ddebug282, ptr noundef %dev1, ptr noundef nonnull @.str.123, i32 noundef %conv) #12
  br label %do.end16

do.end16:                                         ; preds = %if.then13, %do.body8
  %9 = ptrtoint ptr %call7.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %call7.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %10)
  %cmp19.not = icmp eq i8 %10, 1
  br i1 %cmp19.not, label %do.end16.exit_crit_edge, label %do.end24

do.end16.exit_crit_edge:                          ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit

do.end24:                                         ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #14
  %conv18 = zext i8 %10 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.123, i32 noundef %conv18) #16
  br label %exit

exit:                                             ; preds = %do.end24, %do.end16.exit_crit_edge, %do.end
  %rv.0 = phi i32 [ %call5, %do.end ], [ -1, %do.end24 ], [ 0, %do.end16.exit_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i) #12
  br label %cleanup

cleanup:                                          ; preds = %exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rv.0, %exit ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @usbtmc_ioctl_clear(ptr nocapture noundef readonly %data) unnamed_addr #2 align 64 {
entry:
  %actual = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %actual) #12
  %0 = ptrtoint ptr %actual to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %actual, align 4
  %intf = getelementptr inbounds %struct.usbtmc_device_data, ptr %data, i32 0, i32 2
  %1 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %intf, align 4
  %dev1 = getelementptr inbounds %struct.usb_interface, ptr %2, i32 0, i32 7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usbtmc_ioctl_clear.__UNIQUE_ID_ddebug271, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usbtmc_ioctl_clear, %if.then)) #12
          to label %do.end [label %if.then], !srcloc !452

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usbtmc_ioctl_clear.__UNIQUE_ID_ddebug271, ptr noundef %dev1, ptr noundef nonnull @.str.127) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3264, i32 noundef 4096) #15
  %tobool5.not = icmp eq ptr %call7.i, null
  br i1 %tobool5.not, label %do.end.cleanup_crit_edge, label %if.end7

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end7:                                          ; preds = %do.end
  %usb_dev = getelementptr inbounds %struct.usbtmc_device_data, ptr %data, i32 0, i32 1
  %4 = ptrtoint ptr %usb_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %usb_dev, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 8
  %shl.i = shl i32 %7, 8
  %or10 = or i32 %shl.i, -2147483520
  %call11 = tail call i32 @usb_control_msg(ptr noundef %5, i32 noundef %or10, i8 noundef zeroext 5, i8 noundef zeroext -95, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %call7.i, i16 noundef zeroext 1, i32 noundef 5000) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp = icmp slt i32 %call11, 0
  br i1 %cmp, label %do.end15, label %do.body17

do.end15:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.25, i32 noundef %call11) #16
  br label %exit

do.body17:                                        ; preds = %if.end7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usbtmc_ioctl_clear.__UNIQUE_ID_ddebug272, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usbtmc_ioctl_clear, %if.then29)) #12
          to label %do.end32 [label %if.then29], !srcloc !452

if.then29:                                        ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #14
  %8 = ptrtoint ptr %call7.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %call7.i, align 8
  %conv = zext i8 %9 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usbtmc_ioctl_clear.__UNIQUE_ID_ddebug272, ptr noundef %dev1, ptr noundef nonnull @.str.128, i32 noundef %conv) #12
  br label %do.end32

do.end32:                                         ; preds = %if.then29, %do.body17
  %10 = ptrtoint ptr %call7.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %call7.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %11)
  %cmp35.not = icmp eq i8 %11, 1
  br i1 %cmp35.not, label %usbtmc_clear_check_status.preheader, label %do.end40

usbtmc_clear_check_status.preheader:              ; preds = %do.end32
  %arrayidx108 = getelementptr i8, ptr %call7.i, i32 1
  %bulk_in = getelementptr inbounds %struct.usbtmc_device_data, ptr %data, i32 0, i32 4
  br label %usbtmc_clear_check_status

do.end40:                                         ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #14
  %conv34 = zext i8 %11 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.128, i32 noundef %conv34) #16
  br label %exit

usbtmc_clear_check_status:                        ; preds = %if.end166.usbtmc_clear_check_status_crit_edge, %usbtmc_clear_check_status.preheader
  %n.0 = phi i32 [ %n.2, %if.end166.usbtmc_clear_check_status_crit_edge ], [ 0, %usbtmc_clear_check_status.preheader ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usbtmc_ioctl_clear.__UNIQUE_ID_ddebug273, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usbtmc_ioctl_clear, %if.then56)) #12
          to label %do.end59 [label %if.then56], !srcloc !452

if.then56:                                        ; preds = %usbtmc_clear_check_status
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usbtmc_ioctl_clear.__UNIQUE_ID_ddebug273, ptr noundef %dev1, ptr noundef nonnull @.str.131) #12
  br label %do.end59

do.end59:                                         ; preds = %if.then56, %usbtmc_clear_check_status
  %12 = ptrtoint ptr %usb_dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %usb_dev, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 8
  %shl.i250 = shl i32 %15, 8
  %or64 = or i32 %shl.i250, -2147483520
  %call65 = call i32 @usb_control_msg(ptr noundef %13, i32 noundef %or64, i8 noundef zeroext 6, i8 noundef zeroext -95, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %call7.i, i16 noundef zeroext 2, i32 noundef 5000) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %cmp66 = icmp slt i32 %call65, 0
  br i1 %cmp66, label %do.end71, label %do.body73

do.end71:                                         ; preds = %do.end59
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.25, i32 noundef %call65) #16
  br label %exit

do.body73:                                        ; preds = %do.end59
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usbtmc_ioctl_clear.__UNIQUE_ID_ddebug274, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usbtmc_ioctl_clear, %if.then85)) #12
          to label %do.end90 [label %if.then85], !srcloc !452

if.then85:                                        ; preds = %do.body73
  call void @__sanitizer_cov_trace_pc() #14
  %16 = ptrtoint ptr %call7.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %call7.i, align 8
  %conv87 = zext i8 %17 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usbtmc_ioctl_clear.__UNIQUE_ID_ddebug274, ptr noundef %dev1, ptr noundef nonnull @.str.134, i32 noundef %conv87) #12
  br label %do.end90

do.end90:                                         ; preds = %if.then85, %do.body73
  %18 = ptrtoint ptr %call7.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %call7.i, align 8
  %20 = zext i8 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.197)
  switch i8 %19, label %do.end104 [
    i8 1, label %usbtmc_clear_bulk_out_halt
    i8 2, label %if.end107
  ]

do.end104:                                        ; preds = %do.end90
  call void @__sanitizer_cov_trace_pc() #14
  %conv92 = zext i8 %19 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.134, i32 noundef %conv92) #16
  br label %exit

if.end107:                                        ; preds = %do.end90
  %21 = ptrtoint ptr %arrayidx108 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx108, align 1
  %23 = and i8 %22, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %cmp110.not = icmp eq i8 %23, 0
  br i1 %cmp110.not, label %if.else, label %if.end107.do.body113_crit_edge

if.end107.do.body113_crit_edge:                   ; preds = %if.end107
  br label %do.body113

do.body113:                                       ; preds = %do.cond159.do.body113_crit_edge, %if.end107.do.body113_crit_edge
  %n.1 = phi i32 [ %inc, %do.cond159.do.body113_crit_edge ], [ %n.0, %if.end107.do.body113_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usbtmc_ioctl_clear.__UNIQUE_ID_ddebug275, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usbtmc_ioctl_clear, %if.then126)) #12
          to label %do.end129 [label %if.then126], !srcloc !452

if.then126:                                       ; preds = %do.body113
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usbtmc_ioctl_clear.__UNIQUE_ID_ddebug275, ptr noundef %dev1, ptr noundef nonnull @.str.79) #12
  br label %do.end129

do.end129:                                        ; preds = %if.then126, %do.body113
  %24 = ptrtoint ptr %actual to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %actual, align 4
  %25 = ptrtoint ptr %usb_dev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %usb_dev, align 4
  %27 = ptrtoint ptr %bulk_in to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %bulk_in, align 4
  %29 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %26, align 8
  %shl.i251 = shl i32 %30, 8
  %shl1.i = shl i32 %28, 15
  %or.i = or i32 %shl1.i, %shl.i251
  %or134 = or i32 %or.i, -1073741696
  %call135 = call i32 @usb_bulk_msg(ptr noundef %26, i32 noundef %or134, ptr noundef nonnull %call7.i, i32 noundef 4096, ptr noundef nonnull %actual, i32 noundef 5000) #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usbtmc_ioctl_clear.__UNIQUE_ID_ddebug276, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usbtmc_ioctl_clear, %if.then148)) #12
          to label %do.end151 [label %if.then148], !srcloc !452

if.then148:                                       ; preds = %do.end129
  call void @__sanitizer_cov_trace_pc() #14
  %31 = ptrtoint ptr %actual to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %actual, align 4
  call void @print_hex_dump(ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.61, i32 noundef 0, i32 noundef 16, i32 noundef 1, ptr noundef nonnull %call7.i, i32 noundef %32, i1 noundef zeroext true) #12
  br label %do.end151

do.end151:                                        ; preds = %if.then148, %do.end129
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call135)
  %cmp152 = icmp slt i32 %call135, 0
  br i1 %cmp152, label %do.end157, label %do.cond159

do.end157:                                        ; preds = %do.end151
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.25, i32 noundef %call135) #16
  br label %exit

do.cond159:                                       ; preds = %do.end151
  %inc = add nsw i32 %n.1, 1
  %33 = ptrtoint ptr %actual to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %actual, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %34)
  %cmp160 = icmp eq i32 %34, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 99, i32 %n.1)
  %cmp162 = icmp slt i32 %n.1, 99
  %or.cond = select i1 %cmp160, i1 %cmp162, i1 false
  br i1 %or.cond, label %do.cond159.do.body113_crit_edge, label %do.cond159.if.end166_crit_edge

do.cond159.if.end166_crit_edge:                   ; preds = %do.cond159
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end166

do.cond159.do.body113_crit_edge:                  ; preds = %do.cond159
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body113

if.else:                                          ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #14
  call void @msleep(i32 noundef 50) #12
  %inc165 = add nsw i32 %n.0, 1
  br label %if.end166

if.end166:                                        ; preds = %if.else, %do.cond159.if.end166_crit_edge
  %n.2 = phi i32 [ %inc165, %if.else ], [ %inc, %do.cond159.if.end166_crit_edge ]
  %cmp167 = icmp sgt i32 %n.2, 99
  br i1 %cmp167, label %do.end172, label %if.end166.usbtmc_clear_check_status_crit_edge

if.end166.usbtmc_clear_check_status_crit_edge:    ; preds = %if.end166
  call void @__sanitizer_cov_trace_pc() #14
  br label %usbtmc_clear_check_status

do.end172:                                        ; preds = %if.end166
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.84, i32 noundef 100) #16
  br label %exit

usbtmc_clear_bulk_out_halt:                       ; preds = %do.end90
  %35 = ptrtoint ptr %usb_dev to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %usb_dev, align 4
  %bulk_out = getelementptr inbounds %struct.usbtmc_device_data, ptr %data, i32 0, i32 5
  %37 = ptrtoint ptr %bulk_out to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %bulk_out, align 4
  %39 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %36, align 8
  %shl.i252 = shl i32 %40, 8
  %shl1.i253 = shl i32 %38, 15
  %or.i254 = or i32 %shl1.i253, %shl.i252
  %or177 = or i32 %or.i254, -1073741824
  %call178 = call i32 @usb_clear_halt(ptr noundef %36, i32 noundef %or177) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call178)
  %cmp179 = icmp slt i32 %call178, 0
  br i1 %cmp179, label %do.end184, label %usbtmc_clear_bulk_out_halt.exit_crit_edge

usbtmc_clear_bulk_out_halt.exit_crit_edge:        ; preds = %usbtmc_clear_bulk_out_halt
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit

do.end184:                                        ; preds = %usbtmc_clear_bulk_out_halt
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.142, i32 noundef %call178) #16
  br label %exit

exit:                                             ; preds = %do.end184, %usbtmc_clear_bulk_out_halt.exit_crit_edge, %do.end172, %do.end157, %do.end104, %do.end71, %do.end40, %do.end15
  %rv.0 = phi i32 [ %call11, %do.end15 ], [ -1, %do.end40 ], [ %call65, %do.end71 ], [ %call178, %do.end184 ], [ -1, %do.end104 ], [ %call135, %do.end157 ], [ -1, %do.end172 ], [ 0, %usbtmc_clear_bulk_out_halt.exit_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i) #12
  br label %cleanup

cleanup:                                          ; preds = %exit, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %rv.0, %exit ], [ -12, %do.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %actual) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @usbtmc_ioctl_request(ptr nocapture noundef readonly %data, ptr noundef %arg) unnamed_addr #2 align 64 {
entry:
  %request = alloca %struct.usbtmc_ctrlrequest, align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %intf = getelementptr inbounds %struct.usbtmc_device_data, ptr %data, i32 0, i32 2
  %0 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %intf, align 4
  %dev1 = getelementptr inbounds %struct.usb_interface, ptr %1, i32 0, i32 7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %request) #12
  %2 = getelementptr inbounds %struct.usbtmc_request, ptr %request, i32 0, i32 1
  %3 = getelementptr inbounds %struct.usbtmc_request, ptr %request, i32 0, i32 2
  %4 = getelementptr inbounds %struct.usbtmc_request, ptr %request, i32 0, i32 3
  %5 = getelementptr inbounds %struct.usbtmc_request, ptr %request, i32 0, i32 4
  %6 = getelementptr inbounds %struct.usbtmc_ctrlrequest, ptr %request, i32 0, i32 1
  %7 = call ptr @memset(ptr %request, i32 255, i32 12)
  tail call void @__might_fault(ptr noundef nonnull @.str.93, i32 noundef 156) #12
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #12
  br i1 %call.i.i, label %entry.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.then11.i.i_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %8 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %arg, i32 12, i32 -1226833920) #18, !srcloc !461
  %asmresult.i.i = extractvalue { i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !455

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %request, i32 noundef 12) #12
  %9 = call i32 @llvm.read_register.i32(metadata !441) #12
  %and.i.i.i.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 4
  %11 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #9, !srcloc !462
  %and.i.i.i.i = and i32 %11, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #12, !srcloc !463
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !464
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %request, ptr noundef %arg, i32 noundef 12) #12
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %11) #12, !srcloc !463
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !464
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !455

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %entry.if.then11.i.i_crit_edge
  %res.0.i.i128 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 12, %entry.if.then11.i.i_crit_edge ], [ 12, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 12, %res.0.i.i128
  %add.ptr.i.i = getelementptr i8, ptr %request, i32 %sub.i.i
  %12 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i128)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  %13 = ptrtoint ptr %5 to i32
  call void @__asan_loadN_noabort(i32 %13, i32 2)
  %14 = load i16, ptr %5, align 1
  %conv = zext i16 %14 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 4096, i16 %14)
  %cmp = icmp ugt i16 %14, 4096
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %15 = ptrtoint ptr %request to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %request, align 1
  %17 = and i8 %16, -128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %tobool9.not = icmp eq i16 %14, 0
  br i1 %tobool9.not, label %if.end29, label %if.end8.i

if.end8.i:                                        ; preds = %if.end4
  %call9.i = call noalias align 128 ptr @__kmalloc(i32 noundef %conv, i32 noundef 3264) #17
  %tobool15.not = icmp eq ptr %call9.i, null
  br i1 %tobool15.not, label %if.end8.i.cleanup_crit_edge, label %if.end17

if.end8.i.cleanup_crit_edge:                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end17:                                         ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool18.not = icmp eq i8 %17, 0
  br i1 %tobool18.not, label %if.then19, label %if.end17.if.end37_crit_edge

if.end17.if.end37_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end37

if.then19:                                        ; preds = %if.end17
  %18 = ptrtoint ptr %6 to i32
  call void @__asan_loadN_noabort(i32 %18, i32 4)
  %19 = load ptr, ptr %6, align 1
  %20 = ptrtoint ptr %5 to i32
  call void @__asan_loadN_noabort(i32 %20, i32 2)
  %21 = load i16, ptr %5, align 1
  %conv23 = zext i16 %21 to i32
  call void @__check_object_size(ptr noundef nonnull %call9.i, i32 noundef %conv23, i1 noundef zeroext false) #12
  call void @__might_fault(ptr noundef nonnull @.str.93, i32 noundef 156) #12
  %call.i.i88 = call zeroext i1 @should_fail_usercopy() #12
  br i1 %call.i.i88, label %if.then19.if.end.i.i102_crit_edge, label %land.lhs.true.i.i92

if.then19.if.end.i.i102_crit_edge:                ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i102

land.lhs.true.i.i92:                              ; preds = %if.then19
  %22 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %19, i32 %conv23, i32 -1226833920) #18, !srcloc !461
  %asmresult.i.i90 = extractvalue { i32, i32 } %22, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i90)
  %cmp.i6.i91 = icmp eq i32 %asmresult.i.i90, 0
  br i1 %cmp.i6.i91, label %if.then.i7.i99, label %land.lhs.true.i.i92.if.end.i.i102_crit_edge, !prof !455

land.lhs.true.i.i92.if.end.i.i102_crit_edge:      ; preds = %land.lhs.true.i.i92
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i102

if.then.i7.i99:                                   ; preds = %land.lhs.true.i.i92
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i.i93 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call9.i, i32 noundef %conv23) #12
  %23 = call i32 @llvm.read_register.i32(metadata !441) #12
  %and.i.i.i.i.i.i94 = and i32 %23, -16384
  %24 = inttoptr i32 %and.i.i.i.i.i.i94 to ptr
  %cpu_domain.i.i.i.i.i95 = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 4
  %25 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i95) #9, !srcloc !462
  %and.i.i.i.i96 = and i32 %25, -13
  %or.i.i.i.i97 = or i32 %and.i.i.i.i96, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i97) #12, !srcloc !463
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !464
  %call1.i.i.i98 = call i32 @arm_copy_from_user(ptr noundef nonnull %call9.i, ptr noundef %19, i32 noundef %conv23) #12
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %25) #12, !srcloc !463
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !464
  br label %if.end.i.i102

if.end.i.i102:                                    ; preds = %if.then.i7.i99, %land.lhs.true.i.i92.if.end.i.i102_crit_edge, %if.then19.if.end.i.i102_crit_edge
  %res.0.i.i100 = phi i32 [ %conv23, %if.then19.if.end.i.i102_crit_edge ], [ %call1.i.i.i98, %if.then.i7.i99 ], [ %conv23, %land.lhs.true.i.i92.if.end.i.i102_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i100)
  %tobool4.not.i.i101 = icmp eq i32 %res.0.i.i100, 0
  br i1 %tobool4.not.i.i101, label %if.end.i.i102.if.else_crit_edge, label %if.then11.i.i105, !prof !455

if.end.i.i102.if.else_crit_edge:                  ; preds = %if.end.i.i102
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

if.then11.i.i105:                                 ; preds = %if.end.i.i102
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i103 = sub i32 %conv23, %res.0.i.i100
  %add.ptr.i.i104 = getelementptr i8, ptr %call9.i, i32 %sub.i.i103
  %26 = call ptr @memset(ptr %add.ptr.i.i104, i32 0, i32 %res.0.i.i100)
  br label %exit

if.end29:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool30.not = icmp eq i8 %17, 0
  br i1 %tobool30.not, label %if.end29.if.else_crit_edge, label %if.end29.if.end37_crit_edge

if.end29.if.end37_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end37

if.end29.if.else_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

if.else:                                          ; preds = %if.end29.if.else_crit_edge, %if.end.i.i102.if.else_crit_edge
  %buffer.0136 = phi ptr [ null, %if.end29.if.else_crit_edge ], [ %call9.i, %if.end.i.i102.if.else_crit_edge ]
  br label %if.end37

if.end37:                                         ; preds = %if.else, %if.end29.if.end37_crit_edge, %if.end17.if.end37_crit_edge
  %.sink = phi i32 [ -2147483648, %if.else ], [ -2147483520, %if.end17.if.end37_crit_edge ], [ -2147483520, %if.end29.if.end37_crit_edge ]
  %tobool30.not139 = phi i1 [ true, %if.else ], [ false, %if.end17.if.end37_crit_edge ], [ false, %if.end29.if.end37_crit_edge ]
  %buffer.0135 = phi ptr [ %buffer.0136, %if.else ], [ %call9.i, %if.end17.if.end37_crit_edge ], [ null, %if.end29.if.end37_crit_edge ]
  %usb_dev34 = getelementptr inbounds %struct.usbtmc_device_data, ptr %data, i32 0, i32 1
  %27 = ptrtoint ptr %usb_dev34 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %usb_dev34, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %28, align 8
  %shl.i125 = shl i32 %30, 8
  %or36 = or i32 %shl.i125, %.sink
  %31 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %2, align 1
  %33 = ptrtoint ptr %request to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %request, align 1
  %35 = ptrtoint ptr %3 to i32
  call void @__asan_loadN_noabort(i32 %35, i32 2)
  %36 = load i16, ptr %3, align 1
  %37 = ptrtoint ptr %4 to i32
  call void @__asan_loadN_noabort(i32 %37, i32 2)
  %38 = load i16, ptr %4, align 1
  %39 = ptrtoint ptr %5 to i32
  call void @__asan_loadN_noabort(i32 %39, i32 2)
  %40 = load i16, ptr %5, align 1
  %call46 = call i32 @usb_control_msg(ptr noundef %28, i32 noundef %or36, i8 noundef zeroext %32, i8 noundef zeroext %34, i16 noundef zeroext %36, i16 noundef zeroext %38, ptr noundef %buffer.0135, i16 noundef zeroext %40, i32 noundef 5000) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %cmp47 = icmp slt i32 %call46, 0
  br i1 %cmp47, label %do.end, label %if.end50

do.end:                                           ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.144, ptr noundef nonnull @.str.145, i32 noundef %call46) #16
  br label %exit

if.end50:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool51.not = icmp eq i32 %call46, 0
  %brmerge = or i1 %tobool30.not139, %tobool51.not
  br i1 %brmerge, label %if.end50.exit_crit_edge, label %if.then53

if.end50.exit_crit_edge:                          ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit

if.then53:                                        ; preds = %if.end50
  %41 = ptrtoint ptr %6 to i32
  call void @__asan_loadN_noabort(i32 %41, i32 4)
  %42 = load ptr, ptr %6, align 1
  call void @__check_object_size(ptr noundef %buffer.0135, i32 noundef %call46, i1 noundef zeroext true) #12
  call void @__might_fault(ptr noundef nonnull @.str.93, i32 noundef 174) #12
  %call.i.i117 = call zeroext i1 @should_fail_usercopy() #12
  br i1 %call.i.i117, label %if.then53.exit_crit_edge, label %if.end.i.i121

if.then53.exit_crit_edge:                         ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit

if.end.i.i121:                                    ; preds = %if.then53
  %43 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %42, i32 %call46, i32 -1226833920) #18, !srcloc !460
  %asmresult.i.i119 = extractvalue { i32, i32 } %43, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i119)
  %cmp.i6.i120 = icmp eq i32 %asmresult.i.i119, 0
  br i1 %cmp.i6.i120, label %copy_to_user.exit, label %if.end.i.i121.exit_crit_edge

if.end.i.i121.exit_crit_edge:                     ; preds = %if.end.i.i121
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit

copy_to_user.exit:                                ; preds = %if.end.i.i121
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i.i122 = call zeroext i1 @__kasan_check_read(ptr noundef %buffer.0135, i32 noundef %call46) #12
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %42, ptr noundef %buffer.0135, i32 noundef %call46) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool56.not = icmp eq i32 %call.i12.i.i, 0
  %spec.select150 = select i1 %tobool56.not, i32 %call46, i32 -14
  br label %exit

exit:                                             ; preds = %copy_to_user.exit, %if.end.i.i121.exit_crit_edge, %if.then53.exit_crit_edge, %if.end50.exit_crit_edge, %do.end, %if.then11.i.i105
  %buffer.1 = phi ptr [ %buffer.0135, %do.end ], [ %buffer.0135, %if.end50.exit_crit_edge ], [ %call9.i, %if.then11.i.i105 ], [ %buffer.0135, %if.then53.exit_crit_edge ], [ %buffer.0135, %if.end.i.i121.exit_crit_edge ], [ %buffer.0135, %copy_to_user.exit ]
  %rv.0 = phi i32 [ %call46, %do.end ], [ %call46, %if.end50.exit_crit_edge ], [ -14, %if.then11.i.i105 ], [ -14, %if.then53.exit_crit_edge ], [ -14, %if.end.i.i121.exit_crit_edge ], [ %spec.select150, %copy_to_user.exit ]
  call void @kfree(ptr noundef %buffer.1) #12
  br label %cleanup

cleanup:                                          ; preds = %exit, %if.end8.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then11.i.i
  %retval.0 = phi i32 [ %rv.0, %exit ], [ -90, %if.end.cleanup_crit_edge ], [ -12, %if.end8.i.cleanup_crit_edge ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %request) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @usbtmc_ioctl_get_timeout(ptr nocapture noundef readonly %file_data, ptr noundef %arg) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %timeout1 = getelementptr inbounds %struct.usbtmc_file_data, ptr %file_data, i32 0, i32 2
  %0 = ptrtoint ptr %timeout1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %timeout1, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 1989) #12
  %2 = tail call i32 @llvm.read_register.i32(metadata !441) #12
  %and.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 4
  %4 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #9, !srcloc !462
  %and.i = and i32 %4, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #12, !srcloc !463
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !464
  %5 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %arg, i32 %1, i32 -1226833921) #12, !srcloc !470
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %4) #12, !srcloc !463
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !464
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @usbtmc_ioctl_set_timeout(ptr nocapture noundef writeonly %file_data, ptr noundef %arg) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 2000) #12
  %0 = tail call i32 @llvm.read_register.i32(metadata !441) #12
  %and.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 4
  %2 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #9, !srcloc !462
  %and.i = and i32 %2, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #12, !srcloc !463
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !464
  %3 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %arg, i32 -1226833921) #12, !srcloc !471
  %asmresult = extractvalue { i32, i32 } %3, 0
  %asmresult1 = extractvalue { i32, i32 } %3, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %2) #12, !srcloc !463
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !464
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult)
  %tobool.not = icmp eq i32 %asmresult, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %asmresult1)
  %cmp = icmp ult i32 %asmresult1, 100
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %timeout5 = getelementptr inbounds %struct.usbtmc_file_data, ptr %file_data, i32 0, i32 2
  %4 = ptrtoint ptr %timeout5 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %asmresult1, ptr %timeout5, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end4 ], [ -14, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @usbtmc_ioctl_eom_enable(ptr nocapture noundef writeonly %file_data, ptr noundef %arg) unnamed_addr #2 align 64 {
entry:
  %eom_enable = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %eom_enable) #12
  %0 = ptrtoint ptr %eom_enable to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %eom_enable, align 1, !annotation !451
  tail call void @__might_fault(ptr noundef nonnull @.str.93, i32 noundef 156) #12
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #12
  br i1 %call.i.i, label %entry.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.then11.i.i_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %1 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %arg, i32 1, i32 -1226833920) #18, !srcloc !461
  %asmresult.i.i = extractvalue { i32, i32 } %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !455

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %eom_enable, i32 noundef 1) #12
  %2 = call i32 @llvm.read_register.i32(metadata !441) #12
  %and.i.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 4
  %4 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #9, !srcloc !462
  %and.i.i.i.i = and i32 %4, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #12, !srcloc !463
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !464
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %eom_enable, ptr noundef %arg, i32 noundef 1) #12
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %4) #12, !srcloc !463
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !464
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !455

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %entry.if.then11.i.i_crit_edge
  %res.0.i.i6 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 1, %entry.if.then11.i.i_crit_edge ], [ 1, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 1, %res.0.i.i6
  %add.ptr.i.i = getelementptr i8, ptr %eom_enable, i32 %sub.i.i
  %5 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i6)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  %6 = ptrtoint ptr %eom_enable to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %eom_enable, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %7)
  %cmp = icmp ugt i8 %7, 1
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %eom_val = getelementptr inbounds %struct.usbtmc_file_data, ptr %file_data, i32 0, i32 7
  %8 = ptrtoint ptr %eom_val to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %eom_val, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %if.then11.i.i
  %retval.0 = phi i32 [ 0, %if.end3 ], [ -22, %if.end.cleanup_crit_edge ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %eom_enable) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @usbtmc_ioctl_config_termc(ptr nocapture noundef %file_data, ptr noundef %arg) unnamed_addr #2 align 64 {
entry:
  %termc = alloca %struct.usbtmc_termchar, align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %termc) #12
  %0 = ptrtoint ptr %termc to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %termc, align 1, !annotation !451
  %1 = getelementptr inbounds %struct.usbtmc_termchar, ptr %termc, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %1, align 1, !annotation !451
  tail call void @__might_fault(ptr noundef nonnull @.str.93, i32 noundef 156) #12
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #12
  br i1 %call.i.i, label %entry.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.then11.i.i_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %3 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %arg, i32 2, i32 -1226833920) #18, !srcloc !461
  %asmresult.i.i = extractvalue { i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !455

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %termc, i32 noundef 2) #12
  %4 = call i32 @llvm.read_register.i32(metadata !441) #12
  %and.i.i.i.i.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 4
  %6 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #9, !srcloc !462
  %and.i.i.i.i = and i32 %6, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #12, !srcloc !463
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !464
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %termc, ptr noundef %arg, i32 noundef 2) #12
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %6) #12, !srcloc !463
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !464
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !455

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %entry.if.then11.i.i_crit_edge
  %res.0.i.i17 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 2, %entry.if.then11.i.i_crit_edge ], [ 2, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 2, %res.0.i.i17
  %add.ptr.i.i = getelementptr i8, ptr %termc, i32 %sub.i.i
  %7 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i17)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %9)
  %cmp = icmp ugt i8 %9, 1
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool4.not = icmp eq i8 %9, 0
  br i1 %tobool4.not, label %lor.lhs.false.if.end8_crit_edge, label %land.lhs.true

lor.lhs.false.if.end8_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

land.lhs.true:                                    ; preds = %lor.lhs.false
  %10 = ptrtoint ptr %file_data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %file_data, align 4
  %device_capabilities = getelementptr inbounds %struct.usbtmc_device_data, ptr %11, i32 0, i32 23, i32 1
  %12 = ptrtoint ptr %device_capabilities to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %device_capabilities, align 1
  %14 = and i8 %13, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool6.not = icmp eq i8 %14, 0
  br i1 %tobool6.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end8_crit_edge

land.lhs.true.if.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end8:                                          ; preds = %land.lhs.true.if.end8_crit_edge, %lor.lhs.false.if.end8_crit_edge
  %15 = ptrtoint ptr %termc to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %termc, align 1
  %term_char9 = getelementptr inbounds %struct.usbtmc_file_data, ptr %file_data, i32 0, i32 8
  %17 = ptrtoint ptr %term_char9 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %term_char9, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool11 = icmp ne i8 %9, 0
  %term_char_enabled12 = getelementptr inbounds %struct.usbtmc_file_data, ptr %file_data, i32 0, i32 9
  %frombool = zext i1 %tobool11 to i8
  %18 = ptrtoint ptr %term_char_enabled12 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %frombool, ptr %term_char_enabled12, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %land.lhs.true.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then11.i.i
  %retval.0 = phi i32 [ 0, %if.end8 ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %termc) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @usbtmc_ioctl_generic_write(ptr noundef %file_data, ptr noundef %arg) unnamed_addr #2 align 64 {
entry:
  %msg = alloca %struct.usbtmc_message, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %msg) #12
  %0 = getelementptr inbounds %struct.usbtmc_message, ptr %msg, i32 0, i32 1
  %1 = getelementptr inbounds %struct.usbtmc_message, ptr %msg, i32 0, i32 2
  %2 = getelementptr inbounds %struct.usbtmc_message, ptr %msg, i32 0, i32 3
  %3 = call ptr @memset(ptr %msg, i32 255, i32 16)
  tail call void @__might_fault(ptr noundef nonnull @.str.93, i32 noundef 156) #12
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #12
  br i1 %call.i.i, label %entry.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.then11.i.i_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %4 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %arg, i32 16, i32 -1226833920) #18, !srcloc !461
  %asmresult.i.i = extractvalue { i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !455

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %msg, i32 noundef 16) #12
  %5 = call i32 @llvm.read_register.i32(metadata !441) #12
  %and.i.i.i.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 4
  %7 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #9, !srcloc !462
  %and.i.i.i.i = and i32 %7, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #12, !srcloc !463
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !464
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %msg, ptr noundef %arg, i32 noundef 16) #12
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %7) #12, !srcloc !463
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !464
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !455

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %entry.if.then11.i.i_crit_edge
  %res.0.i.i14 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 16, %entry.if.then11.i.i_crit_edge ], [ 16, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 16, %res.0.i.i14
  %add.ptr.i.i = getelementptr i8, ptr %msg, i32 %sub.i.i
  %8 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i14)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %2, align 4
  %11 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %msg, align 4
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %1, align 4
  %call2 = call fastcc i32 @usbtmc_generic_write(ptr noundef %file_data, ptr noundef %10, i32 noundef %12, ptr noundef %0, i32 noundef %14)
  %transferred3 = getelementptr inbounds %struct.usbtmc_message, ptr %arg, i32 0, i32 1
  %15 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %0, align 4
  call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 1275) #12
  %17 = call i32 @llvm.read_register.i32(metadata !441) #12
  %and.i.i.i = and i32 %17, -16384
  %18 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 4
  %19 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #9, !srcloc !462
  %and.i = and i32 %19, -13
  %or.i = or i32 %and.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #12, !srcloc !463
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !464
  %20 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %transferred3, i32 %16, i32 -1226833921) #12, !srcloc !472
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %19) #12, !srcloc !463
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !464
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool7.not = icmp eq i32 %20, 0
  %call2. = select i1 %tobool7.not, i32 %call2, i32 -14
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then11.i.i
  %retval.0 = phi i32 [ %call2., %if.end ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %msg) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @usbtmc_ioctl_generic_read(ptr noundef %file_data, ptr noundef %arg) unnamed_addr #2 align 64 {
entry:
  %msg = alloca %struct.usbtmc_message, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %msg) #12
  %0 = getelementptr inbounds %struct.usbtmc_message, ptr %msg, i32 0, i32 1
  %1 = getelementptr inbounds %struct.usbtmc_message, ptr %msg, i32 0, i32 2
  %2 = getelementptr inbounds %struct.usbtmc_message, ptr %msg, i32 0, i32 3
  %3 = call ptr @memset(ptr %msg, i32 255, i32 16)
  tail call void @__might_fault(ptr noundef nonnull @.str.93, i32 noundef 156) #12
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #12
  br i1 %call.i.i, label %entry.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.then11.i.i_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %4 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %arg, i32 16, i32 -1226833920) #18, !srcloc !461
  %asmresult.i.i = extractvalue { i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !455

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %msg, i32 noundef 16) #12
  %5 = call i32 @llvm.read_register.i32(metadata !441) #12
  %and.i.i.i.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 4
  %7 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #9, !srcloc !462
  %and.i.i.i.i = and i32 %7, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #12, !srcloc !463
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !464
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %msg, ptr noundef %arg, i32 noundef 16) #12
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %7) #12, !srcloc !463
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !464
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !455

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %entry.if.then11.i.i_crit_edge
  %res.0.i.i14 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 16, %entry.if.then11.i.i_crit_edge ], [ 16, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 16, %res.0.i.i14
  %add.ptr.i.i = getelementptr i8, ptr %msg, i32 %sub.i.i
  %8 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i14)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %2, align 4
  %11 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %msg, align 4
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %1, align 4
  %call2 = call fastcc i32 @usbtmc_generic_read(ptr noundef %file_data, ptr noundef %10, i32 noundef %12, ptr noundef %0, i32 noundef %14)
  %transferred3 = getelementptr inbounds %struct.usbtmc_message, ptr %arg, i32 0, i32 1
  %15 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %0, align 4
  call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 1064) #12
  %17 = call i32 @llvm.read_register.i32(metadata !441) #12
  %and.i.i.i = and i32 %17, -16384
  %18 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 4
  %19 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #9, !srcloc !462
  %and.i = and i32 %19, -13
  %or.i = or i32 %and.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #12, !srcloc !463
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !464
  %20 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %transferred3, i32 %16, i32 -1226833921) #12, !srcloc !473
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %19) #12, !srcloc !463
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !464
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool7.not = icmp eq i32 %20, 0
  %call2. = select i1 %tobool7.not, i32 %call2, i32 -14
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then11.i.i
  %retval.0 = phi i32 [ %call2., %if.end ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %msg) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @usbtmc_ioctl_write_result(ptr noundef %file_data, ptr noundef %arg) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %err_lock = getelementptr inbounds %struct.usbtmc_file_data, ptr %file_data, i32 0, i32 11
  tail call void @_raw_spin_lock_irq(ptr noundef %err_lock) #12
  %out_transfer_size = getelementptr inbounds %struct.usbtmc_file_data, ptr %file_data, i32 0, i32 14
  %0 = ptrtoint ptr %out_transfer_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %out_transfer_size, align 4
  %out_status = getelementptr inbounds %struct.usbtmc_file_data, ptr %file_data, i32 0, i32 15
  %2 = ptrtoint ptr %out_status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %out_status, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %err_lock) #12
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 1295) #12
  %4 = tail call i32 @llvm.read_register.i32(metadata !441) #12
  %and.i.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 4
  %6 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #9, !srcloc !462
  %and.i = and i32 %6, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #12, !srcloc !463
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !464
  %7 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %arg, i32 %1, i32 -1226833921) #12, !srcloc !474
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %6) #12, !srcloc !463
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !464
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  %. = select i1 %tobool.not, i32 %3, i32 -14
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @usbtmc488_ioctl_read_stb(ptr noundef %file_data, ptr noundef %arg) unnamed_addr #2 align 64 {
entry:
  %stb = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stb) #12
  %0 = ptrtoint ptr %stb to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %stb, align 1, !annotation !451
  %call = call fastcc i32 @usbtmc_get_stb(ptr noundef %file_data, ptr noundef nonnull %stb)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp sgt i32 %call, 0
  br i1 %cmp, label %if.then, label %entry.if.end7_crit_edge

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7

if.then:                                          ; preds = %entry
  %srq_asserted1 = getelementptr inbounds %struct.usbtmc_file_data, ptr %file_data, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %srq_asserted1, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !475
  tail call void @llvm.prefetch.p0(ptr %srq_asserted1, i32 1, i32 3, i32 1) #12
  %1 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %srq_asserted1) #12, !srcloc !476
  %asmresult.i.i = extractvalue { i32, i32 } %1, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !477
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %tobool.not = icmp eq i32 %asmresult.i.i, 0
  br i1 %tobool.not, label %if.then.if.end_crit_edge, label %if.then3

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %2 = ptrtoint ptr %stb to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %stb, align 1
  %4 = or i8 %3, 64
  store i8 %4, ptr %stb, align 1
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then.if.end_crit_edge
  %5 = ptrtoint ptr %stb to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %stb, align 1
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 568) #12
  %7 = tail call i32 @llvm.read_register.i32(metadata !441) #12
  %and.i.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 4
  %9 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #9, !srcloc !462
  %and.i = and i32 %9, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #12, !srcloc !463
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !464
  %10 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_1", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %arg, i8 %6, i32 -1226833921) #12, !srcloc !478
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %9) #12, !srcloc !463
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !464
  br label %if.end7

if.end7:                                          ; preds = %if.end, %entry.if.end7_crit_edge
  %rv.0 = phi i32 [ %10, %if.end ], [ %call, %entry.if.end7_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stb) #12
  ret i32 %rv.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @usbtmc488_ioctl_simple(ptr nocapture noundef readonly %data, ptr noundef %arg, i32 noundef %cmd) unnamed_addr #2 align 64 {
entry:
  %val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %intf = getelementptr inbounds %struct.usbtmc_device_data, ptr %data, i32 0, i32 2
  %0 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %intf, align 4
  %dev1 = getelementptr inbounds %struct.usb_interface, ptr %1, i32 0, i32 7
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #12
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %val, align 1, !annotation !451
  %usb488_caps = getelementptr inbounds %struct.usbtmc_device_data, ptr %data, i32 0, i32 21
  %3 = ptrtoint ptr %usb488_caps to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %usb488_caps, align 2
  %5 = and i8 %4, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3264, i32 noundef 8) #15
  %tobool2.not = icmp eq ptr %call7.i, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 160, i32 %cmd)
  %cmp = icmp eq i32 %cmd, 160
  br i1 %cmp, label %if.end8.i.i, label %if.end4.if.end14_crit_edge

if.end4.if.end14_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

if.end8.i.i:                                      ; preds = %if.end4
  tail call void @__might_fault(ptr noundef nonnull @.str.93, i32 noundef 156) #12
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #12
  br i1 %call.i.i, label %if.end8.i.i.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.end8.i.i.if.then11.i.i_crit_edge:              ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.end8.i.i
  %7 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %arg, i32 1, i32 -1226833920) #18, !srcloc !461
  %asmresult.i.i = extractvalue { i32, i32 } %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !455

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %val, i32 noundef 1) #12
  %8 = call i32 @llvm.read_register.i32(metadata !441) #12
  %and.i.i.i.i.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 4
  %10 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #9, !srcloc !462
  %and.i.i.i.i = and i32 %10, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #12, !srcloc !463
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !464
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %val, ptr noundef %arg, i32 noundef 1) #12
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %10) #12, !srcloc !463
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !464
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end10, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !455

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.end8.i.i.if.then11.i.i_crit_edge
  %res.0.i.i64 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 1, %if.end8.i.i.if.then11.i.i_crit_edge ], [ 1, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 1, %res.0.i.i64
  %add.ptr.i.i = getelementptr i8, ptr %val, i32 %sub.i.i
  %11 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i64)
  br label %exit

if.end10:                                         ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %12 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %val, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool12.not = icmp ne i8 %13, 0
  %conv13 = zext i1 %tobool12.not to i16
  br label %if.end14

if.end14:                                         ; preds = %if.end10, %if.end4.if.end14_crit_edge
  %wValue.0 = phi i16 [ %conv13, %if.end10 ], [ 0, %if.end4.if.end14_crit_edge ]
  %usb_dev = getelementptr inbounds %struct.usbtmc_device_data, ptr %data, i32 0, i32 1
  %14 = ptrtoint ptr %usb_dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %usb_dev, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 8
  %shl.i = shl i32 %17, 8
  %or17 = or i32 %shl.i, -2147483520
  %conv18 = trunc i32 %cmd to i8
  %ifnum = getelementptr inbounds %struct.usbtmc_device_data, ptr %data, i32 0, i32 12
  %18 = ptrtoint ptr %ifnum to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %ifnum, align 4
  %call19 = call i32 @usb_control_msg(ptr noundef %15, i32 noundef %or17, i8 noundef zeroext %conv18, i8 noundef zeroext -95, i16 noundef zeroext %wValue.0, i16 noundef zeroext %19, ptr noundef nonnull %call7.i, i16 noundef zeroext 1, i32 noundef 5000) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp20 = icmp slt i32 %call19, 0
  br i1 %cmp20, label %do.end, label %if.else23

do.end:                                           ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.146, i32 noundef %call19) #16
  br label %exit

if.else23:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call19)
  %cmp24.not = icmp eq i32 %call19, 1
  br i1 %cmp24.not, label %if.end31, label %do.end29

do.end29:                                         ; preds = %if.else23
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.149, i32 noundef %call19) #16
  br label %exit

if.end31:                                         ; preds = %if.else23
  %20 = ptrtoint ptr %call7.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %call7.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %21)
  %cmp33.not = icmp eq i8 %21, 1
  br i1 %cmp33.not, label %if.end31.exit_crit_edge, label %do.end38

if.end31.exit_crit_edge:                          ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit

do.end38:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  %conv32 = zext i8 %21 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.152, i32 noundef %conv32) #16
  br label %exit

exit:                                             ; preds = %do.end38, %if.end31.exit_crit_edge, %do.end29, %do.end, %if.then11.i.i
  %rv.0 = phi i32 [ %call19, %do.end ], [ -5, %do.end29 ], [ -5, %do.end38 ], [ 0, %if.end31.exit_crit_edge ], [ -14, %if.then11.i.i ]
  call void @kfree(ptr noundef nonnull %call7.i) #12
  br label %cleanup

cleanup:                                          ; preds = %exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rv.0, %exit ], [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @usbtmc488_ioctl_trigger(ptr nocapture noundef readonly %file_data) unnamed_addr #2 align 64 {
entry:
  %actual = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %file_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %file_data, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %actual) #12
  %2 = ptrtoint ptr %actual to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %actual, align 4, !annotation !451
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 12) #15
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -128, ptr %call7.i.i, align 8
  %bTag = getelementptr inbounds %struct.usbtmc_device_data, ptr %1, i32 0, i32 6
  %5 = ptrtoint ptr %bTag to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %bTag, align 4
  %arrayidx3 = getelementptr i8, ptr %call7.i.i, i32 1
  %7 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %6, ptr %arrayidx3, align 1
  %8 = load i8, ptr %bTag, align 4
  %neg = xor i8 %8, -1
  %arrayidx6 = getelementptr i8, ptr %call7.i.i, i32 2
  %9 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %neg, ptr %arrayidx6, align 2
  %usb_dev = getelementptr inbounds %struct.usbtmc_device_data, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %usb_dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %usb_dev, align 4
  %bulk_out = getelementptr inbounds %struct.usbtmc_device_data, ptr %1, i32 0, i32 5
  %12 = ptrtoint ptr %bulk_out to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bulk_out, align 4
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %11, align 8
  %shl.i = shl i32 %15, 8
  %shl1.i = shl i32 %13, 15
  %or.i = or i32 %shl1.i, %shl.i
  %or = or i32 %or.i, -1073741824
  %timeout = getelementptr inbounds %struct.usbtmc_file_data, ptr %file_data, i32 0, i32 2
  %16 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %timeout, align 4
  %call9 = call i32 @usb_bulk_msg(ptr noundef %11, i32 noundef %or, ptr noundef nonnull %call7.i.i, i32 noundef 12, ptr noundef nonnull %actual, i32 noundef %17) #12
  %18 = ptrtoint ptr %bTag to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %bTag, align 4
  %bTag_last_write = getelementptr inbounds %struct.usbtmc_device_data, ptr %1, i32 0, i32 7
  %20 = ptrtoint ptr %bTag_last_write to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %bTag_last_write, align 1
  %inc = add i8 %19, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %inc)
  %tobool13.not = icmp eq i8 %inc, 0
  %spec.select = select i1 %tobool13.not, i8 1, i8 %inc
  %21 = ptrtoint ptr %bTag to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %spec.select, ptr %bTag, align 4
  call void @kfree(ptr noundef nonnull %call7.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp = icmp slt i32 %call9, 0
  br i1 %cmp, label %do.end, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %intf = getelementptr inbounds %struct.usbtmc_device_data, ptr %1, i32 0, i32 2
  %22 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %intf, align 4
  %dev = getelementptr inbounds %struct.usb_interface, ptr %23, i32 0, i32 7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.154, i32 noundef %call9) #16
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call9, %do.end ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %actual) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @usbtmc488_ioctl_wait_srq(ptr noundef %file_data, ptr noundef %arg) unnamed_addr #2 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %file_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %file_data, align 4
  %intf = getelementptr inbounds %struct.usbtmc_device_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %intf, align 4
  %dev2 = getelementptr inbounds %struct.usb_interface, ptr %3, i32 0, i32 7
  %iin_ep_present = getelementptr inbounds %struct.usbtmc_device_data, ptr %1, i32 0, i32 17
  %4 = ptrtoint ptr %iin_ep_present to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %iin_ep_present, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %do.body, label %if.end7

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usbtmc488_ioctl_wait_srq.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usbtmc488_ioctl_wait_srq, %if.then6)) #12
          to label %cleanup137 [label %if.then6], !srcloc !452

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usbtmc488_ioctl_wait_srq.__UNIQUE_ID_ddebug245, ptr noundef %dev2, ptr noundef nonnull @.str.156) #12
  br label %cleanup137

if.end7:                                          ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 614) #12
  %6 = tail call i32 @llvm.read_register.i32(metadata !441) #12
  %and.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 4
  %8 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #9, !srcloc !462
  %and.i = and i32 %8, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #12, !srcloc !463
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !464
  %9 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %arg, i32 -1226833921) #12, !srcloc !479
  %asmresult = extractvalue { i32, i32 } %9, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %8) #12, !srcloc !463
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !464
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult)
  %tobool12.not = icmp eq i32 %asmresult, 0
  br i1 %tobool12.not, label %if.else.i, label %if.end7.cleanup137_crit_edge

if.end7.cleanup137_crit_edge:                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup137

if.else.i:                                        ; preds = %if.end7
  %asmresult10 = extractvalue { i32, i32 } %9, 1
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %asmresult10) #12
  %io_mutex = getelementptr inbounds %struct.usbtmc_device_data, ptr %1, i32 0, i32 25
  tail call void @mutex_unlock(ptr noundef %io_mutex) #12
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 625) #12
  %srq_asserted = getelementptr inbounds %struct.usbtmc_file_data, ptr %file_data, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %srq_asserted, i32 noundef 4) #12
  %10 = ptrtoint ptr %srq_asserted to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %srq_asserted, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp.not = icmp eq i32 %11, 0
  br i1 %cmp.not, label %lor.end, label %lor.end.thread

lor.end.thread:                                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool27.not183 = icmp eq i32 %call2.i, 0
  %spec.store.select184 = select i1 %tobool27.not183, i32 1, i32 %call2.i
  br label %if.end74

lor.end:                                          ; preds = %if.else.i
  %closing = getelementptr inbounds %struct.usbtmc_file_data, ptr %file_data, i32 0, i32 5
  %call.i.i169 = tail call zeroext i1 @__kasan_check_read(ptr noundef %closing, i32 noundef 4) #12
  %12 = ptrtoint ptr %closing to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %closing, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool24.not = icmp ne i32 %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool27.not = icmp eq i32 %call2.i, 0
  %spec.store.select = select i1 %tobool27.not, i32 1, i32 %call2.i
  %brmerge = select i1 %tobool24.not, i1 true, i1 %tobool27.not
  %spec.store.select.mux = select i1 %tobool24.not, i32 %spec.store.select, i32 0
  br i1 %brmerge, label %lor.end.if.end74_crit_edge, label %if.then38

lor.end.if.end74_crit_edge:                       ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end74

if.then38:                                        ; preds = %lor.end
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #12
  %14 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #12
  %waitq = getelementptr inbounds %struct.usbtmc_device_data, ptr %1, i32 0, i32 26
  %call40217 = call i32 @prepare_to_wait_event(ptr noundef %waitq, ptr noundef nonnull %__wq_entry, i32 noundef 1) #12
  %call.i.i170218 = call zeroext i1 @__kasan_check_read(ptr noundef %srq_asserted, i32 noundef 4) #12
  %15 = ptrtoint ptr %srq_asserted to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %srq_asserted, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp44.not219 = icmp eq i32 %16, 0
  br i1 %cmp44.not219, label %if.then38.lor.end49_crit_edge, label %if.then38.lor.end49.thread_crit_edge

if.then38.lor.end49.thread_crit_edge:             ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.end49.thread

if.then38.lor.end49_crit_edge:                    ; preds = %if.then38
  br label %lor.end49

lor.end49.thread:                                 ; preds = %cleanup.lor.end49.thread_crit_edge, %if.then38.lor.end49.thread_crit_edge
  %__ret39.0.lcssa = phi i32 [ %call2.i, %if.then38.lor.end49.thread_crit_edge ], [ %call71, %cleanup.lor.end49.thread_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret39.0.lcssa)
  %tobool54.not187 = icmp eq i32 %__ret39.0.lcssa, 0
  %spec.store.select142188 = select i1 %tobool54.not187, i32 1, i32 %__ret39.0.lcssa
  br label %for.end

lor.end49:                                        ; preds = %cleanup.lor.end49_crit_edge, %if.then38.lor.end49_crit_edge
  %call40221 = phi i32 [ %call40, %cleanup.lor.end49_crit_edge ], [ %call40217, %if.then38.lor.end49_crit_edge ]
  %__ret39.0220 = phi i32 [ %call71, %cleanup.lor.end49_crit_edge ], [ %call2.i, %if.then38.lor.end49_crit_edge ]
  %call.i.i171 = call zeroext i1 @__kasan_check_read(ptr noundef %closing, i32 noundef 4) #12
  %17 = ptrtoint ptr %closing to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %closing, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool48.not = icmp eq i32 %18, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret39.0220)
  %tobool60.not = icmp eq i32 %__ret39.0220, 0
  br i1 %tobool48.not, label %19, label %for.end.loopexit.split.loop.exit212

19:                                               ; preds = %lor.end49
  br i1 %tobool60.not, label %.for.end_crit_edge, label %if.end67

.for.end_crit_edge:                               ; preds = %19
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

if.end67:                                         ; preds = %19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40221)
  %tobool68.not = icmp eq i32 %call40221, 0
  br i1 %tobool68.not, label %cleanup, label %if.end67.__out_crit_edge

if.end67.__out_crit_edge:                         ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #14
  br label %__out

cleanup:                                          ; preds = %if.end67
  %call71 = call i32 @schedule_timeout(i32 noundef %__ret39.0220) #12
  %call40 = call i32 @prepare_to_wait_event(ptr noundef %waitq, ptr noundef nonnull %__wq_entry, i32 noundef 1) #12
  %call.i.i170 = call zeroext i1 @__kasan_check_read(ptr noundef %srq_asserted, i32 noundef 4) #12
  %20 = ptrtoint ptr %srq_asserted to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %srq_asserted, align 4
  %cmp44.not = icmp eq i32 %21, 0
  br i1 %cmp44.not, label %cleanup.lor.end49_crit_edge, label %cleanup.lor.end49.thread_crit_edge

cleanup.lor.end49.thread_crit_edge:               ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.end49.thread

cleanup.lor.end49_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.end49

for.end.loopexit.split.loop.exit212:              ; preds = %lor.end49
  call void @__sanitizer_cov_trace_pc() #14
  %spec.store.select142.le = select i1 %tobool60.not, i32 1, i32 %__ret39.0220
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit.split.loop.exit212, %.for.end_crit_edge, %lor.end49.thread
  %__ret39.2.ph = phi i32 [ %spec.store.select142188, %lor.end49.thread ], [ %spec.store.select142.le, %for.end.loopexit.split.loop.exit212 ], [ 0, %.for.end_crit_edge ]
  call void @finish_wait(ptr noundef %waitq, ptr noundef nonnull %__wq_entry) #12
  br label %__out

__out:                                            ; preds = %for.end, %if.end67.__out_crit_edge
  %__ret39.2194 = phi i32 [ %__ret39.2.ph, %for.end ], [ %call40221, %if.end67.__out_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #12
  br label %if.end74

if.end74:                                         ; preds = %__out, %lor.end.if.end74_crit_edge, %lor.end.thread
  %__ret.1 = phi i32 [ %__ret39.2194, %__out ], [ %spec.store.select184, %lor.end.thread ], [ %spec.store.select.mux, %lor.end.if.end74_crit_edge ]
  call void @mutex_lock_nested(ptr noundef %io_mutex, i32 noundef 0) #12
  %closing77 = getelementptr inbounds %struct.usbtmc_file_data, ptr %file_data, i32 0, i32 5
  %call.i.i172 = call zeroext i1 @__kasan_check_read(ptr noundef %closing77, i32 noundef 4) #12
  %22 = ptrtoint ptr %closing77 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %closing77, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool79.not = icmp eq i32 %23, 0
  br i1 %tobool79.not, label %lor.lhs.false, label %if.end74.do.body85_crit_edge

if.end74.do.body85_crit_edge:                     ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body85

lor.lhs.false:                                    ; preds = %if.end74
  %zombie = getelementptr inbounds %struct.usbtmc_device_data, ptr %1, i32 0, i32 22
  %24 = ptrtoint ptr %zombie to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %zombie, align 1, !range !459
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool80.not = icmp eq i8 %25, 0
  br i1 %tobool80.not, label %if.end82, label %lor.lhs.false.do.body85_crit_edge

lor.lhs.false.do.body85_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body85

if.end82:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret.1)
  %cmp83 = icmp slt i32 %__ret.1, 0
  br i1 %cmp83, label %if.end82.do.body85_crit_edge, label %if.end101

if.end82.do.body85_crit_edge:                     ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body85

do.body85:                                        ; preds = %if.end82.do.body85_crit_edge, %lor.lhs.false.do.body85_crit_edge, %if.end74.do.body85_crit_edge
  %rv.0201 = phi i32 [ %__ret.1, %if.end82.do.body85_crit_edge ], [ -19, %if.end74.do.body85_crit_edge ], [ -19, %lor.lhs.false.do.body85_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usbtmc488_ioctl_wait_srq.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usbtmc488_ioctl_wait_srq, %if.then97)) #12
          to label %cleanup137 [label %if.then97], !srcloc !452

if.then97:                                        ; preds = %do.body85
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @usbtmc488_ioctl_wait_srq.__UNIQUE_ID_ddebug246, ptr noundef nonnull @.str.158, ptr noundef nonnull @.str.155, i32 noundef %rv.0201) #12
  br label %cleanup137

if.end101:                                        ; preds = %if.end82
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret.1)
  %cmp102 = icmp eq i32 %__ret.1, 0
  br i1 %cmp102, label %do.body104, label %do.body121

do.body104:                                       ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usbtmc488_ioctl_wait_srq.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usbtmc488_ioctl_wait_srq, %if.then116)) #12
          to label %cleanup137 [label %if.then116], !srcloc !452

if.then116:                                       ; preds = %do.body104
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usbtmc488_ioctl_wait_srq.__UNIQUE_ID_ddebug247, ptr noundef %dev2, ptr noundef nonnull @.str.159, ptr noundef nonnull @.str.155) #12
  br label %cleanup137

do.body121:                                       ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usbtmc488_ioctl_wait_srq.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usbtmc488_ioctl_wait_srq, %if.then133)) #12
          to label %cleanup137 [label %if.then133], !srcloc !452

if.then133:                                       ; preds = %do.body121
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usbtmc488_ioctl_wait_srq.__UNIQUE_ID_ddebug248, ptr noundef %dev2, ptr noundef nonnull @.str.160, ptr noundef nonnull @.str.155) #12
  br label %cleanup137

cleanup137:                                       ; preds = %if.then133, %do.body121, %if.then116, %do.body104, %if.then97, %do.body85, %if.end7.cleanup137_crit_edge, %if.then6, %do.body
  %retval.0 = phi i32 [ -14, %if.then6 ], [ -14, %if.end7.cleanup137_crit_edge ], [ %rv.0201, %if.then97 ], [ -110, %if.then116 ], [ 0, %if.then133 ], [ -14, %do.body ], [ %rv.0201, %do.body85 ], [ -110, %do.body104 ], [ 0, %do.body121 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @usbtmc_get_stb(ptr nocapture noundef readonly %file_data, ptr nocapture noundef %stb) unnamed_addr #2 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %file_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %file_data, align 4
  %intf = getelementptr inbounds %struct.usbtmc_device_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %intf, align 4
  %dev2 = getelementptr inbounds %struct.usb_interface, ptr %3, i32 0, i32 7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usbtmc_get_stb.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usbtmc_get_stb, %if.then)) #12
          to label %do.end [label %if.then], !srcloc !452

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %iin_ep_present = getelementptr inbounds %struct.usbtmc_device_data, ptr %1, i32 0, i32 17
  %4 = ptrtoint ptr %iin_ep_present to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %iin_ep_present, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usbtmc_get_stb.__UNIQUE_ID_ddebug240, ptr noundef %dev2, ptr noundef nonnull @.str.162, i32 noundef %5) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3264, i32 noundef 8) #15
  %tobool6.not = icmp eq ptr %call7.i, null
  br i1 %tobool6.not, label %do.end.cleanup175_crit_edge, label %if.end8

do.end.cleanup175_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup175

if.end8:                                          ; preds = %do.end
  %iin_data_valid = getelementptr inbounds %struct.usbtmc_device_data, ptr %1, i32 0, i32 15
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %iin_data_valid, i32 noundef 4) #12
  %7 = ptrtoint ptr %iin_data_valid to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile i32 0, ptr %iin_data_valid, align 4
  %usb_dev = getelementptr inbounds %struct.usbtmc_device_data, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %usb_dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %usb_dev, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 8
  %shl.i = shl i32 %11, 8
  %or11 = or i32 %shl.i, -2147483520
  %iin_bTag = getelementptr inbounds %struct.usbtmc_device_data, ptr %1, i32 0, i32 13
  %12 = ptrtoint ptr %iin_bTag to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %iin_bTag, align 2
  %conv = zext i8 %13 to i16
  %ifnum = getelementptr inbounds %struct.usbtmc_device_data, ptr %1, i32 0, i32 12
  %14 = ptrtoint ptr %ifnum to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %ifnum, align 4
  %call12 = tail call i32 @usb_control_msg(ptr noundef %9, i32 noundef %or11, i8 noundef zeroext -128, i8 noundef zeroext -95, i16 noundef zeroext %conv, i16 noundef zeroext %15, ptr noundef nonnull %call7.i, i16 noundef zeroext 3, i32 noundef 5000) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp = icmp slt i32 %call12, 0
  br i1 %cmp, label %do.end17, label %if.end18

do.end17:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.163, i32 noundef %call12) #16
  br label %exit

if.end18:                                         ; preds = %if.end8
  %16 = ptrtoint ptr %call7.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %call7.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %17)
  %cmp20.not = icmp eq i8 %17, 1
  br i1 %cmp20.not, label %if.end28, label %do.end25

do.end25:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  %conv19 = zext i8 %17 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.165, i32 noundef %conv19) #16
  br label %exit

if.end28:                                         ; preds = %if.end18
  %iin_ep_present29 = getelementptr inbounds %struct.usbtmc_device_data, ptr %1, i32 0, i32 17
  %18 = ptrtoint ptr %iin_ep_present29 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %iin_ep_present29, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool30.not = icmp eq i32 %19, 0
  br i1 %tobool30.not, label %if.else, label %if.then31

if.then31:                                        ; preds = %if.end28
  %timeout = getelementptr inbounds %struct.usbtmc_file_data, ptr %file_data, i32 0, i32 2
  %20 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %timeout, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 517) #12
  %call.i.i230 = tail call zeroext i1 @__kasan_check_read(ptr noundef %iin_data_valid, i32 noundef 4) #12
  %22 = ptrtoint ptr %iin_data_valid to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %iin_data_valid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp40.not = icmp eq i32 %23, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool45.not = icmp eq i32 %21, 0
  %spec.store.select = select i1 %tobool45.not, i32 1, i32 %21
  %__ret.0 = select i1 %cmp40.not, i32 %21, i32 %spec.store.select
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret.0)
  %tobool51.not = icmp eq i32 %__ret.0, 0
  %not.cmp40.not = xor i1 %cmp40.not, true
  %24 = select i1 %not.cmp40.not, i1 true, i1 %tobool51.not
  br i1 %24, label %if.then31.if.end89_crit_edge, label %if.then55

if.then31.if.end89_crit_edge:                     ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end89

if.then55:                                        ; preds = %if.then31
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #12
  %25 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  %26 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %timeout, align 4
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #12
  %waitq = getelementptr inbounds %struct.usbtmc_device_data, ptr %1, i32 0, i32 26
  %call58255 = call i32 @prepare_to_wait_event(ptr noundef %waitq, ptr noundef nonnull %__wq_entry, i32 noundef 1) #12
  %call.i.i231256 = call zeroext i1 @__kasan_check_read(ptr noundef %iin_data_valid, i32 noundef 4) #12
  %28 = ptrtoint ptr %iin_data_valid to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %iin_data_valid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp62.not257 = icmp eq i32 %29, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool68.not258 = icmp eq i32 %27, 0
  %spec.store.select180259 = select i1 %tobool68.not258, i32 1, i32 %27
  %__ret56.1260 = select i1 %cmp62.not257, i32 %27, i32 %spec.store.select180259
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret56.1260)
  %tobool75.not261 = icmp eq i32 %__ret56.1260, 0
  %not.cmp62.not262 = xor i1 %cmp62.not257, true
  %30 = select i1 %not.cmp62.not262, i1 true, i1 %tobool75.not261
  br i1 %30, label %if.then55.for.end_crit_edge, label %if.then55.if.end82_crit_edge

if.then55.if.end82_crit_edge:                     ; preds = %if.then55
  br label %if.end82

if.then55.for.end_crit_edge:                      ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

if.end82:                                         ; preds = %cleanup.if.end82_crit_edge, %if.then55.if.end82_crit_edge
  %__ret56.1264 = phi i32 [ %__ret56.1, %cleanup.if.end82_crit_edge ], [ %__ret56.1260, %if.then55.if.end82_crit_edge ]
  %call58263 = phi i32 [ %call58, %cleanup.if.end82_crit_edge ], [ %call58255, %if.then55.if.end82_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58263)
  %tobool83.not = icmp eq i32 %call58263, 0
  br i1 %tobool83.not, label %cleanup, label %if.end82.__out_crit_edge

if.end82.__out_crit_edge:                         ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #14
  br label %__out

cleanup:                                          ; preds = %if.end82
  %call86 = call i32 @schedule_timeout(i32 noundef %__ret56.1264) #12
  %call58 = call i32 @prepare_to_wait_event(ptr noundef %waitq, ptr noundef nonnull %__wq_entry, i32 noundef 1) #12
  %call.i.i231 = call zeroext i1 @__kasan_check_read(ptr noundef %iin_data_valid, i32 noundef 4) #12
  %31 = ptrtoint ptr %iin_data_valid to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %iin_data_valid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp62.not = icmp eq i32 %32, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86)
  %tobool68.not = icmp eq i32 %call86, 0
  %spec.store.select180 = select i1 %tobool68.not, i32 1, i32 %call86
  %__ret56.1 = select i1 %cmp62.not, i32 %call86, i32 %spec.store.select180
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret56.1)
  %tobool75.not = icmp eq i32 %__ret56.1, 0
  %not.cmp62.not = xor i1 %cmp62.not, true
  %33 = select i1 %not.cmp62.not, i1 true, i1 %tobool75.not
  br i1 %33, label %cleanup.for.end_crit_edge, label %cleanup.if.end82_crit_edge

cleanup.if.end82_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end82

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.then55.for.end_crit_edge
  %__ret56.1.lcssa = phi i32 [ %__ret56.1260, %if.then55.for.end_crit_edge ], [ %__ret56.1, %cleanup.for.end_crit_edge ]
  call void @finish_wait(ptr noundef %waitq, ptr noundef nonnull %__wq_entry) #12
  br label %__out

__out:                                            ; preds = %for.end, %if.end82.__out_crit_edge
  %__ret56.2244 = phi i32 [ %__ret56.1.lcssa, %for.end ], [ %call58263, %if.end82.__out_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #12
  br label %if.end89

if.end89:                                         ; preds = %__out, %if.then31.if.end89_crit_edge
  %__ret.1 = phi i32 [ %__ret.0, %if.then31.if.end89_crit_edge ], [ %__ret56.2244, %__out ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret.1)
  %cmp91 = icmp slt i32 %__ret.1, 0
  br i1 %cmp91, label %do.body94, label %if.end110

do.body94:                                        ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usbtmc_get_stb.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usbtmc_get_stb, %if.then106)) #12
          to label %exit [label %if.then106], !srcloc !452

if.then106:                                       ; preds = %do.body94
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usbtmc_get_stb.__UNIQUE_ID_ddebug241, ptr noundef %dev2, ptr noundef nonnull @.str.167, i32 noundef %__ret.1) #12
  br label %exit

if.end110:                                        ; preds = %if.end89
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret.1)
  %cmp111 = icmp eq i32 %__ret.1, 0
  br i1 %cmp111, label %do.body114, label %if.end130

do.body114:                                       ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usbtmc_get_stb.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usbtmc_get_stb, %if.then126)) #12
          to label %exit [label %if.then126], !srcloc !452

if.then126:                                       ; preds = %do.body114
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usbtmc_get_stb.__UNIQUE_ID_ddebug242, ptr noundef %dev2, ptr noundef nonnull @.str.168) #12
  br label %exit

if.end130:                                        ; preds = %if.end110
  %bNotify1 = getelementptr inbounds %struct.usbtmc_device_data, ptr %1, i32 0, i32 10
  %34 = ptrtoint ptr %bNotify1 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %bNotify1, align 2
  %36 = and i8 %35, 127
  %37 = ptrtoint ptr %iin_bTag to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %iin_bTag, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %36, i8 %38)
  %cmp136.not = icmp eq i8 %36, %38
  br i1 %cmp136.not, label %if.end130.if.end145_crit_edge, label %do.end141

if.end130.if.end145_crit_edge:                    ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end145

do.end141:                                        ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #14
  %conv135 = zext i8 %38 to i32
  %conv133 = zext i8 %36 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.170, i32 noundef %conv135, i32 noundef %conv133) #16
  br label %if.end145

if.end145:                                        ; preds = %do.end141, %if.end130.if.end145_crit_edge
  %bNotify2 = getelementptr inbounds %struct.usbtmc_device_data, ptr %1, i32 0, i32 11
  br label %do.body148

if.else:                                          ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx146 = getelementptr i8, ptr %call7.i, i32 2
  br label %do.body148

do.body148:                                       ; preds = %if.else, %if.end145
  %storemerge.in = phi ptr [ %arrayidx146, %if.else ], [ %bNotify2, %if.end145 ]
  %rv.0 = phi i32 [ %call12, %if.else ], [ %__ret.1, %if.end145 ]
  %39 = ptrtoint ptr %storemerge.in to i32
  call void @__asan_load1_noabort(i32 %39)
  %storemerge = load i8, ptr %storemerge.in, align 1
  %40 = ptrtoint ptr %stb to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %storemerge, ptr %stb, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usbtmc_get_stb.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usbtmc_get_stb, %if.then160)) #12
          to label %exit [label %if.then160], !srcloc !452

if.then160:                                       ; preds = %do.body148
  call void @__sanitizer_cov_trace_pc() #14
  %41 = ptrtoint ptr %stb to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %stb, align 1
  %conv161 = zext i8 %42 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usbtmc_get_stb.__UNIQUE_ID_ddebug243, ptr noundef %dev2, ptr noundef nonnull @.str.172, i32 noundef %conv161, i32 noundef %rv.0) #12
  br label %exit

exit:                                             ; preds = %if.then160, %do.body148, %if.then126, %do.body114, %if.then106, %do.body94, %do.end25, %do.end17
  %rv.1 = phi i32 [ %call12, %do.end17 ], [ -5, %do.end25 ], [ %__ret.1, %if.then106 ], [ %rv.0, %if.then160 ], [ -110, %if.then126 ], [ %__ret.1, %do.body94 ], [ -110, %do.body114 ], [ %rv.0, %do.body148 ]
  %43 = ptrtoint ptr %iin_bTag to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %iin_bTag, align 2
  %add = add i8 %44, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %add)
  %cmp170 = icmp slt i8 %add, 0
  %spec.select = select i1 %cmp170, i8 2, i8 %add
  %45 = ptrtoint ptr %iin_bTag to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %spec.select, ptr %iin_bTag, align 2
  call void @kfree(ptr noundef nonnull %call7.i) #12
  br label %cleanup175

cleanup175:                                       ; preds = %exit, %do.end.cleanup175_crit_edge
  %retval.0 = phi i32 [ %rv.1, %exit ], [ -12, %do.end.cleanup175_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @usbtmc_ioctl_get_srq_stb(ptr noundef %file_data, ptr noundef %arg) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %file_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %file_data, align 4
  %intf = getelementptr inbounds %struct.usbtmc_device_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %intf, align 4
  %dev2 = getelementptr inbounds %struct.usb_interface, ptr %3, i32 0, i32 7
  %dev_lock = getelementptr inbounds %struct.usbtmc_device_data, ptr %1, i32 0, i32 28
  tail call void @_raw_spin_lock_irq(ptr noundef %dev_lock) #12
  %srq_asserted3 = getelementptr inbounds %struct.usbtmc_file_data, ptr %file_data, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %srq_asserted3, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !475
  tail call void @llvm.prefetch.p0(ptr %srq_asserted3, i32 1, i32 3, i32 1) #12
  %4 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %srq_asserted3) #12, !srcloc !476
  %asmresult.i.i = extractvalue { i32, i32 } %4, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !477
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %tobool.not = icmp eq i32 %asmresult.i.i, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %srq_byte = getelementptr inbounds %struct.usbtmc_file_data, ptr %file_data, i32 0, i32 3
  %5 = ptrtoint ptr %srq_byte to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %srq_byte, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %dev_lock) #12
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 589) #12
  %7 = tail call i32 @llvm.read_register.i32(metadata !441) #12
  %and.i.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 4
  %9 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #9, !srcloc !462
  %and.i = and i32 %9, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #12, !srcloc !463
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !464
  %10 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_1", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %arg, i8 %6, i32 -1226833921) #12, !srcloc !480
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %9) #12, !srcloc !463
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !464
  %phi.cast = zext i8 %6 to i32
  br label %do.body8

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_raw_spin_unlock_irq(ptr noundef %dev_lock) #12
  br label %do.body8

do.body8:                                         ; preds = %if.else, %if.then
  %rv.0 = phi i32 [ %10, %if.then ], [ -42, %if.else ]
  %stb.0 = phi i32 [ %phi.cast, %if.then ], [ 0, %if.else ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usbtmc_ioctl_get_srq_stb.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usbtmc_ioctl_get_srq_stb, %if.then14)) #12
          to label %do.end17 [label %if.then14], !srcloc !452

if.then14:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usbtmc_ioctl_get_srq_stb.__UNIQUE_ID_ddebug244, ptr noundef %dev2, ptr noundef nonnull @.str.174, i32 noundef %stb.0, i32 noundef %rv.0) #12
  br label %do.end17

do.end17:                                         ; preds = %if.then14, %do.body8
  ret i32 %rv.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @usbtmc_ioctl_cancel_io(ptr noundef %file_data) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %err_lock = getelementptr inbounds %struct.usbtmc_file_data, ptr %file_data, i32 0, i32 11
  tail call void @_raw_spin_lock_irq(ptr noundef %err_lock) #12
  %in_status = getelementptr inbounds %struct.usbtmc_file_data, ptr %file_data, i32 0, i32 17
  %0 = ptrtoint ptr %in_status to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -125, ptr %in_status, align 4
  %out_status = getelementptr inbounds %struct.usbtmc_file_data, ptr %file_data, i32 0, i32 15
  %1 = ptrtoint ptr %out_status to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -125, ptr %out_status, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %err_lock) #12
  %submitted = getelementptr inbounds %struct.usbtmc_file_data, ptr %file_data, i32 0, i32 12
  tail call void @usb_kill_anchored_urbs(ptr noundef %submitted) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @usbtmc_ioctl_cleanup_io(ptr noundef %file_data) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %submitted = getelementptr inbounds %struct.usbtmc_file_data, ptr %file_data, i32 0, i32 12
  tail call void @usb_kill_anchored_urbs(ptr noundef %submitted) #12
  %in_anchor = getelementptr inbounds %struct.usbtmc_file_data, ptr %file_data, i32 0, i32 19
  tail call void @usb_scuttle_anchored_urbs(ptr noundef %in_anchor) #12
  %err_lock = getelementptr inbounds %struct.usbtmc_file_data, ptr %file_data, i32 0, i32 11
  tail call void @_raw_spin_lock_irq(ptr noundef %err_lock) #12
  %out_transfer_size = getelementptr inbounds %struct.usbtmc_file_data, ptr %file_data, i32 0, i32 14
  %0 = call ptr @memset(ptr %out_transfer_size, i32 0, i32 16)
  tail call void @_raw_spin_unlock_irq(ptr noundef %err_lock) #12
  %in_urbs_used = getelementptr inbounds %struct.usbtmc_file_data, ptr %file_data, i32 0, i32 18
  %1 = ptrtoint ptr %in_urbs_used to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %in_urbs_used, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_find_interface(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fasync_helper(i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_kill_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_put_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister_dev(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @interface_capabilities_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %capabilities = getelementptr inbounds %struct.usbtmc_device_data, ptr %1, i32 0, i32 23
  %2 = ptrtoint ptr %capabilities to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %capabilities, align 4
  %conv = zext i8 %3 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.187, i32 noundef %conv)
  ret i32 %call1
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #11

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @device_capabilities_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %device_capabilities = getelementptr inbounds %struct.usbtmc_device_data, ptr %1, i32 0, i32 23, i32 1
  %2 = ptrtoint ptr %device_capabilities to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %device_capabilities, align 1
  %conv = zext i8 %3 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.187, i32 noundef %conv)
  ret i32 %call1
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usb488_interface_capabilities_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %usb488_interface_capabilities = getelementptr inbounds %struct.usbtmc_device_data, ptr %1, i32 0, i32 23, i32 2
  %2 = ptrtoint ptr %usb488_interface_capabilities to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %usb488_interface_capabilities, align 2
  %conv = zext i8 %3 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.187, i32 noundef %conv)
  ret i32 %call1
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usb488_device_capabilities_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %usb488_device_capabilities = getelementptr inbounds %struct.usbtmc_device_data, ptr %1, i32 0, i32 23, i32 3
  %2 = ptrtoint ptr %usb488_device_capabilities to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %usb488_device_capabilities, align 1
  %conv = zext i8 %3 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.187, i32 noundef %conv)
  ret i32 %call1
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 198)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 198)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind readonly }
attributes #10 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { cold nounwind }
attributes #17 = { nounwind allocsize(0) }
attributes #18 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !7, !9, !11, !12, !13, !14, !16, !17, !19, !20, !22, !23, !25, !26, !27, !28, !29, !31, !32, !34, !35, !37, !38, !40, !41, !42, !44, !45, !46, !48, !49, !50, !52, !53, !55, !56, !57, !58, !60, !61, !63, !64, !66, !67, !69, !70, !72, !73, !75, !76, !78, !79, !80, !82, !83, !85, !86, !87, !88, !90, !91, !92, !94, !95, !97, !98, !99, !101, !103, !105, !107, !108, !109, !111, !112, !114, !115, !116, !118, !119, !120, !122, !123, !124, !126, !127, !129, !130, !131, !133, !134, !135, !137, !138, !139, !140, !142, !143, !144, !146, !147, !149, !150, !152, !153, !155, !156, !158, !159, !161, !162, !163, !165, !166, !168, !169, !170, !172, !173, !175, !177, !178, !179, !181, !182, !183, !185, !186, !188, !189, !191, !192, !194, !195, !197, !199, !201, !202, !203, !205, !206, !208, !209, !211, !212, !214, !215, !217, !219, !220, !222, !223, !225, !226, !228, !229, !230, !231, !233, !234, !236, !237, !238, !240, !241, !242, !244, !246, !247, !248, !250, !251, !252, !253, !255, !256, !258, !259, !260, !262, !264, !265, !267, !268, !270, !271, !272, !274, !275, !276, !278, !279, !280, !282, !283, !284, !286, !287, !289, !290, !292, !293, !294, !296, !297, !299, !300, !302, !303, !305, !306, !308, !309, !311, !312, !314, !315, !317, !319, !321, !322, !324, !325, !327, !328, !329, !331, !332, !333, !334, !336, !337, !338, !339, !341, !342, !343, !345, !346, !347, !349, !350, !351, !353, !354, !355, !357, !358, !359, !361, !362, !364, !365, !367, !368, !369, !371, !372, !373, !375, !376, !377, !379, !380, !382, !383, !385, !386, !387, !389, !390, !392, !393, !394, !396, !397, !398, !399, !401, !402, !404, !405, !407, !409, !411, !413, !414, !416, !417, !419, !420, !421, !423, !425, !426, !428, !430, !431, !432, !434, !435, !437, !438, !440}
!llvm.named.register.sp = !{!441}
!llvm.module.flags = !{!442, !443, !444, !445, !446, !447, !448, !449}
!llvm.ident = !{!450}

!0 = !{ptr @__initcall__kmod_usbtmc__292_2591_usbtmc_driver_init6, !1, !"__initcall__kmod_usbtmc__292_2591_usbtmc_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/usb/class/usbtmc.c", i32 2591, i32 1}
!2 = !{ptr @__exitcall_usbtmc_driver_exit, !1, !"__exitcall_usbtmc_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file293, !4, !"__UNIQUE_ID_file293", i1 false, i1 false}
!4 = !{!"../drivers/usb/class/usbtmc.c", i32 2593, i32 1}
!5 = !{ptr @__UNIQUE_ID_license294, !4, !"__UNIQUE_ID_license294", i1 false, i1 false}
!6 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @usbtmc_driver, !8, !"usbtmc_driver", i1 false, i1 false}
!8 = !{!"../drivers/usb/class/usbtmc.c", i32 2579, i32 26}
!9 = !{ptr @.str.1, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/usb/class/usbtmc.c", i32 2365, i32 2}
!11 = !{ptr @.str.2, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.3, !10, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @usbtmc_probe.__UNIQUE_ID_ddebug287, !10, !"__UNIQUE_ID_ddebug287", i1 false, i1 false}
!14 = !{ptr @usbtmc_probe.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/usb/class/usbtmc.c", i32 2376, i32 2}
!16 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @usbtmc_probe.__key.5, !18, !"__key", i1 false, i1 false}
!18 = !{!"../drivers/usb/class/usbtmc.c", i32 2377, i32 2}
!19 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @usbtmc_probe.__key.7, !21, !"__key", i1 false, i1 false}
!21 = !{!"../drivers/usb/class/usbtmc.c", i32 2380, i32 2}
!22 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.9, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/usb/class/usbtmc.c", i32 2397, i32 3}
!25 = !{ptr @.str.10, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.11, !24, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @usbtmc_probe._entry, !24, !"_entry", i1 false, i1 false}
!28 = !{ptr @usbtmc_probe._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.12, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/usb/class/usbtmc.c", i32 2406, i32 2}
!31 = !{ptr @usbtmc_probe.__UNIQUE_ID_ddebug288, !30, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/usb/class/usbtmc.c", i32 2409, i32 2}
!34 = !{ptr @usbtmc_probe.__UNIQUE_ID_ddebug289, !33, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!35 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/usb/class/usbtmc.c", i32 2418, i32 3}
!37 = !{ptr @usbtmc_probe.__UNIQUE_ID_ddebug290, !36, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!38 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/usb/class/usbtmc.c", i32 2424, i32 3}
!40 = !{ptr @usbtmc_probe._entry.15, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @usbtmc_probe._entry_ptr.17, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/usb/class/usbtmc.c", i32 2454, i32 4}
!44 = !{ptr @usbtmc_probe._entry.18, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @usbtmc_probe._entry_ptr.20, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.22, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/usb/class/usbtmc.c", i32 2461, i32 3}
!48 = !{ptr @usbtmc_probe._entry.21, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @usbtmc_probe._entry_ptr.23, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.24, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/usb/class/usbtmc.c", i32 2466, i32 2}
!52 = !{ptr @usbtmc_probe.__UNIQUE_ID_ddebug291, !51, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!53 = !{ptr @.str.25, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/usb/class/usbtmc.c", i32 1826, i32 3}
!55 = !{ptr @.str.26, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @get_capabilities._entry, !54, !"_entry", i1 false, i1 false}
!57 = !{ptr @get_capabilities._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.27, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/usb/class/usbtmc.c", i32 1830, i32 2}
!60 = !{ptr @get_capabilities.__UNIQUE_ID_ddebug277, !59, !"__UNIQUE_ID_ddebug277", i1 false, i1 false}
!61 = !{ptr @get_capabilities._entry.28, !62, !"_entry", i1 false, i1 false}
!62 = !{!"../drivers/usb/class/usbtmc.c", i32 1832, i32 3}
!63 = !{ptr @get_capabilities._entry_ptr.29, !62, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.30, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/usb/class/usbtmc.c", i32 1836, i32 2}
!66 = !{ptr @get_capabilities.__UNIQUE_ID_ddebug278, !65, !"__UNIQUE_ID_ddebug278", i1 false, i1 false}
!67 = !{ptr @.str.31, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/usb/class/usbtmc.c", i32 1837, i32 2}
!69 = !{ptr @get_capabilities.__UNIQUE_ID_ddebug279, !68, !"__UNIQUE_ID_ddebug279", i1 false, i1 false}
!70 = !{ptr @.str.32, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/usb/class/usbtmc.c", i32 1838, i32 2}
!72 = !{ptr @get_capabilities.__UNIQUE_ID_ddebug280, !71, !"__UNIQUE_ID_ddebug280", i1 false, i1 false}
!73 = !{ptr @.str.33, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/usb/class/usbtmc.c", i32 1839, i32 2}
!75 = !{ptr @get_capabilities.__UNIQUE_ID_ddebug281, !74, !"__UNIQUE_ID_ddebug281", i1 false, i1 false}
!76 = !{ptr @.str.34, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/usb/class/usbtmc.c", i32 2287, i32 2}
!78 = !{ptr @.str.35, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @usbtmc_interrupt.__UNIQUE_ID_ddebug284, !77, !"__UNIQUE_ID_ddebug284", i1 false, i1 false}
!80 = !{ptr @.str.36, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/usb/class/usbtmc.c", i32 2321, i32 4}
!82 = !{ptr @usbtmc_interrupt.__UNIQUE_ID_ddebug285, !81, !"__UNIQUE_ID_ddebug285", i1 false, i1 false}
!83 = !{ptr @.str.37, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/usb/class/usbtmc.c", i32 2327, i32 3}
!85 = !{ptr @.str.38, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @usbtmc_interrupt._entry, !84, !"_entry", i1 false, i1 false}
!87 = !{ptr @usbtmc_interrupt._entry_ptr, !84, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.40, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/usb/class/usbtmc.c", i32 2331, i32 3}
!90 = !{ptr @usbtmc_interrupt._entry.39, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @usbtmc_interrupt._entry_ptr.41, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.42, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/usb/class/usbtmc.c", i32 2336, i32 3}
!94 = !{ptr @usbtmc_interrupt.__UNIQUE_ID_ddebug286, !93, !"__UNIQUE_ID_ddebug286", i1 false, i1 false}
!95 = !{ptr @.str.44, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/usb/class/usbtmc.c", i32 2342, i32 3}
!97 = !{ptr @usbtmc_interrupt._entry.43, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @usbtmc_interrupt._entry_ptr.45, !96, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.46, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/usb/class/usbtmc.c", i32 2275, i32 11}
!101 = !{ptr @usbtmc_class, !102, !"usbtmc_class", i1 false, i1 false}
!102 = !{!"../drivers/usb/class/usbtmc.c", i32 2274, i32 32}
!103 = !{ptr @fops, !104, !"fops", i1 false, i1 false}
!104 = !{!"../drivers/usb/class/usbtmc.c", i32 2260, i32 37}
!105 = !{ptr @.str.47, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/usb/class/usbtmc.c", i32 1392, i32 2}
!107 = !{ptr @.str.48, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @usbtmc_read.__UNIQUE_ID_ddebug265, !106, !"__UNIQUE_ID_ddebug265", i1 false, i1 false}
!109 = !{ptr @.str.49, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/usb/class/usbtmc.c", i32 1413, i32 2}
!111 = !{ptr @usbtmc_read.__UNIQUE_ID_ddebug266, !110, !"__UNIQUE_ID_ddebug266", i1 false, i1 false}
!112 = !{ptr @.str.50, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/usb/class/usbtmc.c", i32 1427, i32 3}
!114 = !{ptr @usbtmc_read._entry, !113, !"_entry", i1 false, i1 false}
!115 = !{ptr @usbtmc_read._entry_ptr, !113, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.52, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/usb/class/usbtmc.c", i32 1435, i32 3}
!118 = !{ptr @usbtmc_read._entry.51, !117, !"_entry", i1 false, i1 false}
!119 = !{ptr @usbtmc_read._entry_ptr.53, !117, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.55, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/usb/class/usbtmc.c", i32 1443, i32 3}
!122 = !{ptr @usbtmc_read._entry.54, !121, !"_entry", i1 false, i1 false}
!123 = !{ptr @usbtmc_read._entry_ptr.56, !121, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.57, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/usb/class/usbtmc.c", i32 1458, i32 2}
!126 = !{ptr @usbtmc_read.__UNIQUE_ID_ddebug267, !125, !"__UNIQUE_ID_ddebug267", i1 false, i1 false}
!127 = !{ptr @.str.59, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/usb/class/usbtmc.c", i32 1462, i32 3}
!129 = !{ptr @usbtmc_read._entry.58, !128, !"_entry", i1 false, i1 false}
!130 = !{ptr @usbtmc_read._entry_ptr.60, !128, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.61, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/usb/class/usbtmc.c", i32 1469, i32 2}
!133 = !{ptr @usbtmc_read.__UNIQUE_ID_ddebug268, !132, !"__UNIQUE_ID_ddebug268", i1 false, i1 false}
!134 = !{ptr @.str.62, !132, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @.str.63, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/usb/class/usbtmc.c", i32 1354, i32 3}
!137 = !{ptr @.str.64, !136, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @send_request_dev_dep_msg_in._entry, !136, !"_entry", i1 false, i1 false}
!139 = !{ptr @send_request_dev_dep_msg_in._entry_ptr, !136, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.65, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/usb/class/usbtmc.c", i32 416, i32 3}
!142 = !{ptr @usbtmc_ioctl_abort_bulk_out_tag._entry, !141, !"_entry", i1 false, i1 false}
!143 = !{ptr @usbtmc_ioctl_abort_bulk_out_tag._entry_ptr, !141, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @.str.66, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/usb/class/usbtmc.c", i32 420, i32 2}
!146 = !{ptr @usbtmc_ioctl_abort_bulk_out_tag.__UNIQUE_ID_ddebug238, !145, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!147 = !{ptr @usbtmc_ioctl_abort_bulk_out_tag._entry.67, !148, !"_entry", i1 false, i1 false}
!148 = !{!"../drivers/usb/class/usbtmc.c", i32 423, i32 3}
!149 = !{ptr @usbtmc_ioctl_abort_bulk_out_tag._entry_ptr.68, !148, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @usbtmc_ioctl_abort_bulk_out_tag._entry.69, !151, !"_entry", i1 false, i1 false}
!151 = !{!"../drivers/usb/class/usbtmc.c", i32 442, i32 3}
!152 = !{ptr @usbtmc_ioctl_abort_bulk_out_tag._entry_ptr.70, !151, !"_entry_ptr", i1 false, i1 false}
!153 = !{ptr @.str.71, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/usb/class/usbtmc.c", i32 446, i32 2}
!155 = !{ptr @usbtmc_ioctl_abort_bulk_out_tag.__UNIQUE_ID_ddebug239, !154, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!156 = !{ptr @usbtmc_ioctl_abort_bulk_out_tag._entry.72, !157, !"_entry", i1 false, i1 false}
!157 = !{!"../drivers/usb/class/usbtmc.c", i32 463, i32 3}
!158 = !{ptr @usbtmc_ioctl_abort_bulk_out_tag._entry_ptr.73, !157, !"_entry_ptr", i1 false, i1 false}
!159 = !{ptr @.str.74, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/usb/class/usbtmc.c", i32 287, i32 3}
!161 = !{ptr @usbtmc_ioctl_abort_bulk_in_tag._entry, !160, !"_entry", i1 false, i1 false}
!162 = !{ptr @usbtmc_ioctl_abort_bulk_in_tag._entry_ptr, !160, !"_entry_ptr", i1 false, i1 false}
!163 = !{ptr @.str.75, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/usb/class/usbtmc.c", i32 291, i32 2}
!165 = !{ptr @usbtmc_ioctl_abort_bulk_in_tag.__UNIQUE_ID_ddebug234, !164, !"__UNIQUE_ID_ddebug234", i1 false, i1 false}
!166 = !{ptr @.str.77, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/usb/class/usbtmc.c", i32 312, i32 3}
!168 = !{ptr @usbtmc_ioctl_abort_bulk_in_tag._entry.76, !167, !"_entry", i1 false, i1 false}
!169 = !{ptr @usbtmc_ioctl_abort_bulk_in_tag._entry_ptr.78, !167, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @.str.79, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/usb/class/usbtmc.c", i32 321, i32 2}
!172 = !{ptr @usbtmc_ioctl_abort_bulk_in_tag.__UNIQUE_ID_ddebug235, !171, !"__UNIQUE_ID_ddebug235", i1 false, i1 false}
!173 = !{ptr @usbtmc_ioctl_abort_bulk_in_tag.__UNIQUE_ID_ddebug236, !174, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!174 = !{!"../drivers/usb/class/usbtmc.c", i32 331, i32 2}
!175 = !{ptr @.str.81, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/usb/class/usbtmc.c", i32 337, i32 3}
!177 = !{ptr @usbtmc_ioctl_abort_bulk_in_tag._entry.80, !176, !"_entry", i1 false, i1 false}
!178 = !{ptr @usbtmc_ioctl_abort_bulk_in_tag._entry_ptr.82, !176, !"_entry_ptr", i1 false, i1 false}
!179 = !{ptr @.str.84, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/usb/class/usbtmc.c", i32 346, i32 3}
!181 = !{ptr @usbtmc_ioctl_abort_bulk_in_tag._entry.83, !180, !"_entry", i1 false, i1 false}
!182 = !{ptr @usbtmc_ioctl_abort_bulk_in_tag._entry_ptr.85, !180, !"_entry_ptr", i1 false, i1 false}
!183 = !{ptr @usbtmc_ioctl_abort_bulk_in_tag._entry.86, !184, !"_entry", i1 false, i1 false}
!184 = !{!"../drivers/usb/class/usbtmc.c", i32 360, i32 3}
!185 = !{ptr @usbtmc_ioctl_abort_bulk_in_tag._entry_ptr.87, !184, !"_entry_ptr", i1 false, i1 false}
!186 = !{ptr @.str.88, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/usb/class/usbtmc.c", i32 364, i32 2}
!188 = !{ptr @usbtmc_ioctl_abort_bulk_in_tag.__UNIQUE_ID_ddebug237, !187, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!189 = !{ptr @usbtmc_ioctl_abort_bulk_in_tag._entry.89, !190, !"_entry", i1 false, i1 false}
!190 = !{!"../drivers/usb/class/usbtmc.c", i32 372, i32 3}
!191 = !{ptr @usbtmc_ioctl_abort_bulk_in_tag._entry_ptr.90, !190, !"_entry_ptr", i1 false, i1 false}
!192 = distinct !{null, !193, !"__already_done", i1 false, i1 false}
!193 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!194 = !{ptr @.str.91, !193, !"<string literal>", i1 false, i1 false}
!195 = !{ptr @.str.92, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!197 = !{ptr @.str.93, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!199 = !{ptr @.str.94, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/usb/class/usbtmc.c", i32 896, i32 2}
!201 = !{ptr @.str.95, !200, !"<string literal>", i1 false, i1 false}
!202 = !{ptr @usbtmc_generic_read.__UNIQUE_ID_ddebug251, !200, !"__UNIQUE_ID_ddebug251", i1 false, i1 false}
!203 = !{ptr @.str.96, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/usb/class/usbtmc.c", i32 929, i32 3}
!205 = !{ptr @usbtmc_generic_read.__UNIQUE_ID_ddebug252, !204, !"__UNIQUE_ID_ddebug252", i1 false, i1 false}
!206 = !{ptr @.str.97, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/usb/class/usbtmc.c", i32 943, i32 4}
!208 = !{ptr @usbtmc_generic_read.__UNIQUE_ID_ddebug253, !207, !"__UNIQUE_ID_ddebug253", i1 false, i1 false}
!209 = !{ptr @.str.98, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/usb/class/usbtmc.c", i32 950, i32 4}
!211 = !{ptr @usbtmc_generic_read.__UNIQUE_ID_ddebug254, !210, !"__UNIQUE_ID_ddebug254", i1 false, i1 false}
!212 = !{ptr @.str.99, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/usb/class/usbtmc.c", i32 970, i32 4}
!214 = !{ptr @usbtmc_generic_read.__UNIQUE_ID_ddebug255, !213, !"__UNIQUE_ID_ddebug255", i1 false, i1 false}
!215 = !{ptr @usbtmc_generic_read.__UNIQUE_ID_ddebug256, !216, !"__UNIQUE_ID_ddebug256", i1 false, i1 false}
!216 = !{!"../drivers/usb/class/usbtmc.c", i32 987, i32 3}
!217 = !{ptr @.str.100, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/usb/class/usbtmc.c", i32 1036, i32 2}
!219 = !{ptr @usbtmc_generic_read.__UNIQUE_ID_ddebug257, !218, !"__UNIQUE_ID_ddebug257", i1 false, i1 false}
!220 = !{ptr @.str.101, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/usb/class/usbtmc.c", i32 1039, i32 2}
!222 = !{ptr @usbtmc_generic_read.__UNIQUE_ID_ddebug258, !221, !"__UNIQUE_ID_ddebug258", i1 false, i1 false}
!223 = !{ptr @.str.102, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/usb/class/usbtmc.c", i32 1043, i32 2}
!225 = !{ptr @usbtmc_generic_read.__UNIQUE_ID_ddebug259, !224, !"__UNIQUE_ID_ddebug259", i1 false, i1 false}
!226 = !{ptr @.str.103, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/usb/class/usbtmc.c", i32 781, i32 4}
!228 = !{ptr @.str.104, !227, !"<string literal>", i1 false, i1 false}
!229 = !{ptr @usbtmc_read_bulk_cb._entry, !227, !"_entry", i1 false, i1 false}
!230 = !{ptr @usbtmc_read_bulk_cb._entry_ptr, !227, !"_entry_ptr", i1 false, i1 false}
!231 = !{ptr @.str.105, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/usb/class/usbtmc.c", i32 793, i32 2}
!233 = !{ptr @usbtmc_read_bulk_cb.__UNIQUE_ID_ddebug249, !232, !"__UNIQUE_ID_ddebug249", i1 false, i1 false}
!234 = !{ptr @.str.106, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/usb/class/usbtmc.c", i32 812, i32 2}
!236 = !{ptr @.str.107, !235, !"<string literal>", i1 false, i1 false}
!237 = !{ptr @usbtmc_do_transfer.__UNIQUE_ID_ddebug250, !235, !"__UNIQUE_ID_ddebug250", i1 false, i1 false}
!238 = !{ptr @.str.108, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/usb/class/usbtmc.c", i32 1594, i32 2}
!240 = !{ptr @.str.109, !239, !"<string literal>", i1 false, i1 false}
!241 = !{ptr @usbtmc_write.__UNIQUE_ID_ddebug269, !239, !"__UNIQUE_ID_ddebug269", i1 false, i1 false}
!242 = !{ptr @usbtmc_write.__UNIQUE_ID_ddebug270, !243, !"__UNIQUE_ID_ddebug270", i1 false, i1 false}
!243 = !{!"../drivers/usb/class/usbtmc.c", i32 1597, i32 2}
!244 = !{ptr @.str.110, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/usb/class/usbtmc.c", i32 1634, i32 3}
!246 = !{ptr @usbtmc_write._entry, !245, !"_entry", i1 false, i1 false}
!247 = !{ptr @usbtmc_write._entry_ptr, !245, !"_entry_ptr", i1 false, i1 false}
!248 = !{ptr @.str.111, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/usb/class/usbtmc.c", i32 1084, i32 4}
!250 = !{ptr @.str.112, !249, !"<string literal>", i1 false, i1 false}
!251 = !{ptr @usbtmc_write_bulk_cb._entry, !249, !"_entry", i1 false, i1 false}
!252 = !{ptr @usbtmc_write_bulk_cb._entry_ptr, !249, !"_entry_ptr", i1 false, i1 false}
!253 = !{ptr @.str.113, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/usb/class/usbtmc.c", i32 1095, i32 2}
!255 = !{ptr @usbtmc_write_bulk_cb.__UNIQUE_ID_ddebug260, !254, !"__UNIQUE_ID_ddebug260", i1 false, i1 false}
!256 = !{ptr @.str.114, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/usb/class/usbtmc.c", i32 1125, i32 2}
!258 = !{ptr @.str.115, !257, !"<string literal>", i1 false, i1 false}
!259 = !{ptr @usbtmc_generic_write.__UNIQUE_ID_ddebug261, !257, !"__UNIQUE_ID_ddebug261", i1 false, i1 false}
!260 = !{ptr @usbtmc_generic_write.__UNIQUE_ID_ddebug262, !261, !"__UNIQUE_ID_ddebug262", i1 false, i1 false}
!261 = !{!"../drivers/usb/class/usbtmc.c", i32 1195, i32 3}
!262 = !{ptr @.str.116, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/usb/class/usbtmc.c", i32 1202, i32 3}
!264 = !{ptr @usbtmc_generic_write.__UNIQUE_ID_ddebug263, !263, !"__UNIQUE_ID_ddebug263", i1 false, i1 false}
!265 = !{ptr @.str.117, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../drivers/usb/class/usbtmc.c", i32 1253, i32 2}
!267 = !{ptr @usbtmc_generic_write.__UNIQUE_ID_ddebug264, !266, !"__UNIQUE_ID_ddebug264", i1 false, i1 false}
!268 = !{ptr @.str.118, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/usb/class/usbtmc.c", i32 2253, i32 2}
!270 = !{ptr @.str.119, !269, !"<string literal>", i1 false, i1 false}
!271 = !{ptr @usbtmc_poll.__UNIQUE_ID_ddebug283, !269, !"__UNIQUE_ID_ddebug283", i1 false, i1 false}
!272 = !{ptr @.str.120, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../drivers/usb/class/usbtmc.c", i32 1770, i32 3}
!274 = !{ptr @usbtmc_ioctl_clear_out_halt._entry, !273, !"_entry", i1 false, i1 false}
!275 = !{ptr @usbtmc_ioctl_clear_out_halt._entry_ptr, !273, !"_entry_ptr", i1 false, i1 false}
!276 = !{ptr @.str.121, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/usb/class/usbtmc.c", i32 1782, i32 3}
!278 = !{ptr @usbtmc_ioctl_clear_in_halt._entry, !277, !"_entry", i1 false, i1 false}
!279 = !{ptr @usbtmc_ioctl_clear_in_halt._entry_ptr, !277, !"_entry_ptr", i1 false, i1 false}
!280 = !{ptr @.str.122, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../drivers/usb/class/usbtmc.c", i32 1897, i32 3}
!282 = !{ptr @usbtmc_ioctl_indicator_pulse._entry, !281, !"_entry", i1 false, i1 false}
!283 = !{ptr @usbtmc_ioctl_indicator_pulse._entry_ptr, !281, !"_entry_ptr", i1 false, i1 false}
!284 = !{ptr @.str.123, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../drivers/usb/class/usbtmc.c", i32 1901, i32 2}
!286 = !{ptr @usbtmc_ioctl_indicator_pulse.__UNIQUE_ID_ddebug282, !285, !"__UNIQUE_ID_ddebug282", i1 false, i1 false}
!287 = !{ptr @usbtmc_ioctl_indicator_pulse._entry.124, !288, !"_entry", i1 false, i1 false}
!288 = !{!"../drivers/usb/class/usbtmc.c", i32 1904, i32 3}
!289 = !{ptr @usbtmc_ioctl_indicator_pulse._entry_ptr.125, !288, !"_entry_ptr", i1 false, i1 false}
!290 = !{ptr @.str.126, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../drivers/usb/class/usbtmc.c", i32 1658, i32 2}
!292 = !{ptr @.str.127, !291, !"<string literal>", i1 false, i1 false}
!293 = !{ptr @usbtmc_ioctl_clear.__UNIQUE_ID_ddebug271, !291, !"__UNIQUE_ID_ddebug271", i1 false, i1 false}
!294 = !{ptr @usbtmc_ioctl_clear._entry, !295, !"_entry", i1 false, i1 false}
!295 = !{!"../drivers/usb/class/usbtmc.c", i32 1670, i32 3}
!296 = !{ptr @usbtmc_ioctl_clear._entry_ptr, !295, !"_entry_ptr", i1 false, i1 false}
!297 = !{ptr @.str.128, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../drivers/usb/class/usbtmc.c", i32 1674, i32 2}
!299 = !{ptr @usbtmc_ioctl_clear.__UNIQUE_ID_ddebug272, !298, !"__UNIQUE_ID_ddebug272", i1 false, i1 false}
!300 = !{ptr @usbtmc_ioctl_clear._entry.129, !301, !"_entry", i1 false, i1 false}
!301 = !{!"../drivers/usb/class/usbtmc.c", i32 1677, i32 3}
!302 = !{ptr @usbtmc_ioctl_clear._entry_ptr.130, !301, !"_entry_ptr", i1 false, i1 false}
!303 = !{ptr @.str.131, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../drivers/usb/class/usbtmc.c", i32 1686, i32 2}
!305 = !{ptr @usbtmc_ioctl_clear.__UNIQUE_ID_ddebug273, !304, !"__UNIQUE_ID_ddebug273", i1 false, i1 false}
!306 = !{ptr @usbtmc_ioctl_clear._entry.132, !307, !"_entry", i1 false, i1 false}
!307 = !{!"../drivers/usb/class/usbtmc.c", i32 1694, i32 3}
!308 = !{ptr @usbtmc_ioctl_clear._entry_ptr.133, !307, !"_entry_ptr", i1 false, i1 false}
!309 = !{ptr @.str.134, !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"../drivers/usb/class/usbtmc.c", i32 1698, i32 2}
!311 = !{ptr @usbtmc_ioctl_clear.__UNIQUE_ID_ddebug274, !310, !"__UNIQUE_ID_ddebug274", i1 false, i1 false}
!312 = !{ptr @usbtmc_ioctl_clear._entry.135, !313, !"_entry", i1 false, i1 false}
!313 = !{!"../drivers/usb/class/usbtmc.c", i32 1704, i32 3}
!314 = !{ptr @usbtmc_ioctl_clear._entry_ptr.136, !313, !"_entry_ptr", i1 false, i1 false}
!315 = !{ptr @usbtmc_ioctl_clear.__UNIQUE_ID_ddebug275, !316, !"__UNIQUE_ID_ddebug275", i1 false, i1 false}
!316 = !{!"../drivers/usb/class/usbtmc.c", i32 1711, i32 4}
!317 = !{ptr @usbtmc_ioctl_clear.__UNIQUE_ID_ddebug276, !318, !"__UNIQUE_ID_ddebug276", i1 false, i1 false}
!318 = !{!"../drivers/usb/class/usbtmc.c", i32 1720, i32 4}
!319 = !{ptr @usbtmc_ioctl_clear._entry.137, !320, !"_entry", i1 false, i1 false}
!320 = !{!"../drivers/usb/class/usbtmc.c", i32 1726, i32 5}
!321 = !{ptr @usbtmc_ioctl_clear._entry_ptr.138, !320, !"_entry_ptr", i1 false, i1 false}
!322 = !{ptr @usbtmc_ioctl_clear._entry.139, !323, !"_entry", i1 false, i1 false}
!323 = !{!"../drivers/usb/class/usbtmc.c", i32 1739, i32 3}
!324 = !{ptr @usbtmc_ioctl_clear._entry_ptr.140, !323, !"_entry_ptr", i1 false, i1 false}
!325 = !{ptr @.str.142, !326, !"<string literal>", i1 false, i1 false}
!326 = !{!"../drivers/usb/class/usbtmc.c", i32 1752, i32 3}
!327 = !{ptr @usbtmc_ioctl_clear._entry.141, !326, !"_entry", i1 false, i1 false}
!328 = !{ptr @usbtmc_ioctl_clear._entry_ptr.143, !326, !"_entry_ptr", i1 false, i1 false}
!329 = !{ptr @.str.144, !330, !"<string literal>", i1 false, i1 false}
!330 = !{!"../drivers/usb/class/usbtmc.c", i32 1963, i32 3}
!331 = !{ptr @.str.145, !330, !"<string literal>", i1 false, i1 false}
!332 = !{ptr @usbtmc_ioctl_request._entry, !330, !"_entry", i1 false, i1 false}
!333 = !{ptr @usbtmc_ioctl_request._entry_ptr, !330, !"_entry_ptr", i1 false, i1 false}
!334 = !{ptr @.str.146, !335, !"<string literal>", i1 false, i1 false}
!335 = !{!"../drivers/usb/class/usbtmc.c", i32 683, i32 3}
!336 = !{ptr @.str.147, !335, !"<string literal>", i1 false, i1 false}
!337 = !{ptr @usbtmc488_ioctl_simple._entry, !335, !"_entry", i1 false, i1 false}
!338 = !{ptr @usbtmc488_ioctl_simple._entry_ptr, !335, !"_entry_ptr", i1 false, i1 false}
!339 = !{ptr @.str.149, !340, !"<string literal>", i1 false, i1 false}
!340 = !{!"../drivers/usb/class/usbtmc.c", i32 686, i32 3}
!341 = !{ptr @usbtmc488_ioctl_simple._entry.148, !340, !"_entry", i1 false, i1 false}
!342 = !{ptr @usbtmc488_ioctl_simple._entry_ptr.150, !340, !"_entry_ptr", i1 false, i1 false}
!343 = !{ptr @.str.152, !344, !"<string literal>", i1 false, i1 false}
!344 = !{!"../drivers/usb/class/usbtmc.c", i32 692, i32 3}
!345 = !{ptr @usbtmc488_ioctl_simple._entry.151, !344, !"_entry", i1 false, i1 false}
!346 = !{ptr @usbtmc488_ioctl_simple._entry_ptr.153, !344, !"_entry_ptr", i1 false, i1 false}
!347 = !{ptr @.str.154, !348, !"<string literal>", i1 false, i1 false}
!348 = !{!"../drivers/usb/class/usbtmc.c", i32 740, i32 3}
!349 = !{ptr @usbtmc488_ioctl_trigger._entry, !348, !"_entry", i1 false, i1 false}
!350 = !{ptr @usbtmc488_ioctl_trigger._entry_ptr, !348, !"_entry_ptr", i1 false, i1 false}
!351 = !{ptr @.str.155, !352, !"<string literal>", i1 false, i1 false}
!352 = !{!"../drivers/usb/class/usbtmc.c", i32 610, i32 3}
!353 = !{ptr @.str.156, !352, !"<string literal>", i1 false, i1 false}
!354 = !{ptr @usbtmc488_ioctl_wait_srq.__UNIQUE_ID_ddebug245, !352, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!355 = !{ptr @.str.157, !356, !"<string literal>", i1 false, i1 false}
!356 = !{!"../drivers/usb/class/usbtmc.c", i32 635, i32 3}
!357 = !{ptr @usbtmc488_ioctl_wait_srq.__UNIQUE_ID_ddebug246, !356, !"__UNIQUE_ID_ddebug246", i1 false, i1 false}
!358 = !{ptr @.str.158, !356, !"<string literal>", i1 false, i1 false}
!359 = !{ptr @.str.159, !360, !"<string literal>", i1 false, i1 false}
!360 = !{!"../drivers/usb/class/usbtmc.c", i32 640, i32 3}
!361 = !{ptr @usbtmc488_ioctl_wait_srq.__UNIQUE_ID_ddebug247, !360, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!362 = !{ptr @.str.160, !363, !"<string literal>", i1 false, i1 false}
!363 = !{!"../drivers/usb/class/usbtmc.c", i32 644, i32 2}
!364 = !{ptr @usbtmc488_ioctl_wait_srq.__UNIQUE_ID_ddebug248, !363, !"__UNIQUE_ID_ddebug248", i1 false, i1 false}
!365 = !{ptr @.str.161, !366, !"<string literal>", i1 false, i1 false}
!366 = !{!"../drivers/usb/class/usbtmc.c", i32 486, i32 2}
!367 = !{ptr @.str.162, !366, !"<string literal>", i1 false, i1 false}
!368 = !{ptr @usbtmc_get_stb.__UNIQUE_ID_ddebug240, !366, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!369 = !{ptr @.str.163, !370, !"<string literal>", i1 false, i1 false}
!370 = !{!"../drivers/usb/class/usbtmc.c", i32 503, i32 3}
!371 = !{ptr @usbtmc_get_stb._entry, !370, !"_entry", i1 false, i1 false}
!372 = !{ptr @usbtmc_get_stb._entry_ptr, !370, !"_entry_ptr", i1 false, i1 false}
!373 = !{ptr @.str.165, !374, !"<string literal>", i1 false, i1 false}
!374 = !{!"../drivers/usb/class/usbtmc.c", i32 508, i32 3}
!375 = !{ptr @usbtmc_get_stb._entry.164, !374, !"_entry", i1 false, i1 false}
!376 = !{ptr @usbtmc_get_stb._entry_ptr.166, !374, !"_entry_ptr", i1 false, i1 false}
!377 = !{ptr @.str.167, !378, !"<string literal>", i1 false, i1 false}
!378 = !{!"../drivers/usb/class/usbtmc.c", i32 519, i32 4}
!379 = !{ptr @usbtmc_get_stb.__UNIQUE_ID_ddebug241, !378, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!380 = !{ptr @.str.168, !381, !"<string literal>", i1 false, i1 false}
!381 = !{!"../drivers/usb/class/usbtmc.c", i32 524, i32 4}
!382 = !{ptr @usbtmc_get_stb.__UNIQUE_ID_ddebug242, !381, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!383 = !{ptr @.str.170, !384, !"<string literal>", i1 false, i1 false}
!384 = !{!"../drivers/usb/class/usbtmc.c", i32 531, i32 4}
!385 = !{ptr @usbtmc_get_stb._entry.169, !384, !"_entry", i1 false, i1 false}
!386 = !{ptr @usbtmc_get_stb._entry_ptr.171, !384, !"_entry_ptr", i1 false, i1 false}
!387 = !{ptr @.str.172, !388, !"<string literal>", i1 false, i1 false}
!388 = !{!"../drivers/usb/class/usbtmc.c", i32 540, i32 2}
!389 = !{ptr @usbtmc_get_stb.__UNIQUE_ID_ddebug243, !388, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!390 = !{ptr @.str.173, !391, !"<string literal>", i1 false, i1 false}
!391 = !{!"../drivers/usb/class/usbtmc.c", i32 595, i32 2}
!392 = !{ptr @.str.174, !391, !"<string literal>", i1 false, i1 false}
!393 = !{ptr @usbtmc_ioctl_get_srq_stb.__UNIQUE_ID_ddebug244, !391, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!394 = !{ptr @.str.175, !395, !"<string literal>", i1 false, i1 false}
!395 = !{!"../drivers/usb/class/usbtmc.c", i32 171, i32 3}
!396 = !{ptr @.str.176, !395, !"<string literal>", i1 false, i1 false}
!397 = !{ptr @usbtmc_open._entry, !395, !"_entry", i1 false, i1 false}
!398 = !{ptr @usbtmc_open._entry_ptr, !395, !"_entry_ptr", i1 false, i1 false}
!399 = !{ptr @usbtmc_open.__key, !400, !"__key", i1 false, i1 false}
!400 = !{!"../drivers/usb/class/usbtmc.c", i32 179, i32 2}
!401 = !{ptr @.str.177, !400, !"<string literal>", i1 false, i1 false}
!402 = !{ptr @usbtmc_open.__key.178, !403, !"__key", i1 false, i1 false}
!403 = !{!"../drivers/usb/class/usbtmc.c", i32 183, i32 2}
!404 = !{ptr @.str.179, !403, !"<string literal>", i1 false, i1 false}
!405 = !{ptr @sema_init.__key, !406, !"__key", i1 false, i1 false}
!406 = !{!"../include/linux/semaphore.h", i32 33, i32 31}
!407 = !{ptr @.str.180, !408, !"<string literal>", i1 false, i1 false}
!408 = !{!"../include/linux/semaphore.h", i32 34, i32 28}
!409 = !{ptr @.str.181, !410, !"<string literal>", i1 false, i1 false}
!410 = !{!"../include/linux/semaphore.h", i32 35, i32 39}
!411 = !{ptr @init_usb_anchor.__key, !412, !"__key", i1 false, i1 false}
!412 = !{!"../include/linux/usb.h", i32 1367, i32 2}
!413 = !{ptr @.str.182, !412, !"<string literal>", i1 false, i1 false}
!414 = !{ptr @init_usb_anchor.__key.183, !415, !"__key", i1 false, i1 false}
!415 = !{!"../include/linux/usb.h", i32 1368, i32 2}
!416 = !{ptr @.str.184, !415, !"<string literal>", i1 false, i1 false}
!417 = !{ptr @.str.185, !418, !"<string literal>", i1 false, i1 false}
!418 = !{!"../drivers/usb/class/usbtmc.c", i32 2543, i32 3}
!419 = !{ptr @usbtmc_resume._entry, !418, !"_entry", i1 false, i1 false}
!420 = !{ptr @usbtmc_resume._entry_ptr, !418, !"_entry_ptr", i1 false, i1 false}
!421 = !{ptr @usbtmc_devices, !422, !"usbtmc_devices", i1 false, i1 false}
!422 = !{!"../drivers/usb/class/usbtmc.c", i32 50, i32 35}
!423 = !{ptr @usbtmc_groups, !424, !"usbtmc_groups", i1 false, i1 false}
!424 = !{!"../drivers/usb/class/usbtmc.c", i32 1876, i32 1}
!425 = !{ptr @usbtmc_group, !424, !"usbtmc_group", i1 false, i1 false}
!426 = !{ptr @usbtmc_attrs, !427, !"usbtmc_attrs", i1 false, i1 false}
!427 = !{!"../drivers/usb/class/usbtmc.c", i32 1869, i32 26}
!428 = !{ptr @.str.186, !429, !"<string literal>", i1 false, i1 false}
!429 = !{!"../drivers/usb/class/usbtmc.c", i32 1864, i32 1}
!430 = !{ptr @dev_attr_interface_capabilities, !429, !"dev_attr_interface_capabilities", i1 false, i1 false}
!431 = !{ptr @.str.187, !429, !"<string literal>", i1 false, i1 false}
!432 = !{ptr @.str.188, !433, !"<string literal>", i1 false, i1 false}
!433 = !{!"../drivers/usb/class/usbtmc.c", i32 1865, i32 1}
!434 = !{ptr @dev_attr_device_capabilities, !433, !"dev_attr_device_capabilities", i1 false, i1 false}
!435 = !{ptr @.str.189, !436, !"<string literal>", i1 false, i1 false}
!436 = !{!"../drivers/usb/class/usbtmc.c", i32 1866, i32 1}
!437 = !{ptr @dev_attr_usb488_interface_capabilities, !436, !"dev_attr_usb488_interface_capabilities", i1 false, i1 false}
!438 = !{ptr @.str.190, !439, !"<string literal>", i1 false, i1 false}
!439 = !{!"../drivers/usb/class/usbtmc.c", i32 1867, i32 1}
!440 = !{ptr @dev_attr_usb488_device_capabilities, !439, !"dev_attr_usb488_device_capabilities", i1 false, i1 false}
!441 = !{!"sp"}
!442 = !{i32 1, !"wchar_size", i32 2}
!443 = !{i32 1, !"min_enum_size", i32 4}
!444 = !{i32 8, !"branch-target-enforcement", i32 0}
!445 = !{i32 8, !"sign-return-address", i32 0}
!446 = !{i32 8, !"sign-return-address-all", i32 0}
!447 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!448 = !{i32 7, !"uwtable", i32 1}
!449 = !{i32 7, !"frame-pointer", i32 2}
!450 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!451 = !{!"auto-init"}
!452 = !{i64 2149013816, i64 2149013821, i64 2149013834, i64 2149013878, i64 2149013912, i64 2149013933}
!453 = !{i64 2148401969, i64 2148402001, i64 2148402030, i64 2148402064, i64 2148402095, i64 2148402118}
!454 = !{!"branch_weights", i32 1, i32 2000}
!455 = !{!"branch_weights", i32 2000, i32 1}
!456 = !{i64 2148489994}
!457 = !{i64 2148404434, i64 2148404466, i64 2148404495, i64 2148404529, i64 2148404560, i64 2148404583}
!458 = !{i64 2149366108}
!459 = !{i8 0, i8 2}
!460 = !{i64 2152465737, i64 2152465762}
!461 = !{i64 2152465056, i64 2152465081}
!462 = !{i64 4960611}
!463 = !{i64 4960808}
!464 = !{i64 2152446041}
!465 = !{i64 2154396494, i64 2154396774, i64 2154397108, i64 2154397442}
!466 = !{i64 2154402299, i64 2154402579, i64 2154402913, i64 2154403247}
!467 = !{i64 2154415485, i64 2154415765, i64 2154416099, i64 2154416433}
!468 = !{i64 2154426633, i64 2154426913, i64 2154427247, i64 2154427581}
!469 = !{i64 2154438072, i64 2154438352, i64 2154438686, i64 2154439020}
!470 = !{i64 2154365613, i64 2154365893, i64 2154366227, i64 2154366561}
!471 = !{i64 2154377184, i64 2154377464, i64 2154377798, i64 2154378132}
!472 = !{i64 2154255774, i64 2154256054, i64 2154256388, i64 2154256722}
!473 = !{i64 2154231157, i64 2154231437, i64 2154231771, i64 2154232105}
!474 = !{i64 2154264648, i64 2154264928, i64 2154265262, i64 2154265596}
!475 = !{i64 2148660339}
!476 = !{i64 907207, i64 907224, i64 907248, i64 907274, i64 907292}
!477 = !{i64 2148660709}
!478 = !{i64 2154139389, i64 2154139669, i64 2154140003, i64 2154140337}
!479 = !{i64 2154172419, i64 2154172699, i64 2154173033, i64 2154173367}
!480 = !{i64 2154152299, i64 2154152579, i64 2154152913, i64 2154153247}
