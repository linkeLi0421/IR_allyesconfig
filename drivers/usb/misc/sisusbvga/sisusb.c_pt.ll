; ModuleID = '/llk/IR_all_yes/drivers/usb/misc/sisusbvga/sisusb.c_pt.bc'
source_filename = "../drivers/usb/misc/sisusbvga/sisusb.c"
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
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.usb_class_driver = type { ptr, ptr, ptr, i32 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sisusb_packet = type <{ i16, i32, i32 }>
%struct.sisusb_usb_data = type { ptr, ptr, %struct.kref, %struct.wait_queue_head, %struct.mutex, i32, i32, i32, i32, i32, i32, [8 x ptr], ptr, i32, i32, [8 x ptr], ptr, [8 x i8], i8, [8 x %struct.sisusb_urb_context], i32, i32, i32, i32, i32, i32, i8, i8, i16, i16, i16 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.sisusb_urb_context = type { ptr, i32, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
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
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.sisusb_info = type { i32, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, [28 x i8] }
%struct.sisusb_command = type { i8, i8, i8, i8, i32, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.70, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.71, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.72, ptr, %struct.address_space, %struct.list_head, %union.anon.73, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.70 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.71 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.72 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.73 = type { ptr }

@sisusb_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str.4, ptr @sisusb_probe, ptr @sisusb_disconnect, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sisusb_table, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 0 }, [44 x i8] zeroinitializer }, align 32
@__initcall__kmod_sisusbvga__237_3224_usb_sisusb_init6 = internal global ptr @usb_sisusb_init, section ".initcall6.init", align 4
@__exitcall_usb_sisusb_exit = internal global ptr @usb_sisusb_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author238 = internal constant [63 x i8] c"sisusbvga.author=Thomas Winischhofer <thomas@winischhofer.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_description239 = internal constant [82 x i8] c"sisusbvga.description=sisusbvga - Driver for Net2280/SiS315-based USB2VGA dongles\00", section ".modinfo", align 1
@__UNIQUE_ID_file240 = internal constant [52 x i8] c"sisusbvga.file=drivers/usb/misc/sisusbvga/sisusbvga\00", section ".modinfo", align 1
@__UNIQUE_ID_license241 = internal constant [22 x i8] c"sisusbvga.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/usb/misc/sisusbvga/sisusb.c\00", [60 x i8] zeroinitializer }, align 32
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sisusb\00", [25 x i8] zeroinitializer }, align 32
@sisusb_table = internal constant { [12 x %struct.usb_device_id], [64 x i8] } { [12 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 1809, i16 1360, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1809, i16 2304, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1809, i16 2305, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1809, i16 2306, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1809, i16 2307, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1809, i16 2328, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1809, i16 2336, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1809, i16 2384, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1809, i16 20992, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6189, i16 540, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6189, i16 617, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [64 x i8] zeroinitializer }, align 32
@sisusb_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str, i32 3019, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"USB2VGA dongle found at address %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sisusb_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sisusb_probe._entry_ptr = internal global ptr @sisusb_probe._entry, section ".printk_index", align 4
@sisusb_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&(sisusb->lock)\00", [16 x i8] zeroinitializer }, align 32
@usb_sisusb_class = internal global { %struct.usb_class_driver, [16 x i8] } { %struct.usb_class_driver { ptr @.str.25, ptr null, ptr @usb_sisusb_fops, i32 133 }, [16 x i8] zeroinitializer }, align 32
@sisusb_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.6, ptr @.str, i32 3042, ptr @.str.12, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to get a minor for device %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@sisusb_probe._entry_ptr.13 = internal global ptr @sisusb_probe._entry.10, section ".printk_index", align 4
@sisusb_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.6, ptr @.str, i32 3091, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Allocated %d output buffers\0A\00", [35 x i8] zeroinitializer }, align 32
@sisusb_probe._entry_ptr.16 = internal global ptr @sisusb_probe._entry.14, section ".printk_index", align 4
@sisusb_probe.__key.17 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.18 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&sisusb->wait_q\00", [16 x i8] zeroinitializer }, align 32
@sisusb_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.6, ptr @.str, i32 3122, ptr @.str.12, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to early initialize device\0A\00", [61 x i8] zeroinitializer }, align 32
@sisusb_probe._entry_ptr.21 = internal global ptr @sisusb_probe._entry.19, section ".printk_index", align 4
@sisusb_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.6, ptr @.str, i32 3126, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Not attached to USB 2.0 hub, deferring init\0A\00", [51 x i8] zeroinitializer }, align 32
@sisusb_probe._entry_ptr.24 = internal global ptr @sisusb_probe._entry.22, section ".printk_index", align 4
@.str.25 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sisusbvga%d\00", [20 x i8] zeroinitializer }, align 32
@usb_sisusb_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @sisusb_lseek, ptr @sisusb_read, ptr @sisusb_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sisusb_ioctl, ptr null, ptr null, i32 0, ptr @sisusb_open, ptr null, ptr @sisusb_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@sisusb_write_mem_bulk.msgcount = internal global { i32, [28 x i8] } zeroinitializer, align 32
@sisusb_write_mem_bulk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str, i32 946, ptr @.str.12, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Wrote %zd of %d bytes, error %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"sisusb_write_mem_bulk\00", [42 x i8] zeroinitializer }, align 32
@sisusb_write_mem_bulk._entry_ptr = internal global ptr @sisusb_write_mem_bulk._entry, section ".printk_index", align 4
@sisusb_write_mem_bulk._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.27, ptr @.str, i32 949, ptr @.str.12, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Too many errors, logging stopped\0A\00", [62 x i8] zeroinitializer }, align 32
@sisusb_write_mem_bulk._entry_ptr.30 = internal global ptr @sisusb_write_mem_bulk._entry.28, section ".printk_index", align 4
@sisusb_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str, i32 2414, ptr @.str.12, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to initialize device\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sisusb_open\00", [20 x i8] zeroinitializer }, align 32
@sisusb_open._entry_ptr = internal global ptr @sisusb_open._entry, section ".printk_index", align 4
@sisusb_open._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.32, ptr @.str, i32 2420, ptr @.str.12, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Device not attached to USB 2.0 hub\0A\00", [60 x i8] zeroinitializer }, align 32
@sisusb_open._entry_ptr.35 = internal global ptr @sisusb_open._entry.33, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@sisusb_init_gfxcore.mclktable = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c";\22\01\8F;\22\01\8F;\22\01\8F;\22\01\8F", [16 x i8] zeroinitializer }, align 32
@sisusb_init_gfxcore.eclktable = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c";\22\01\8F;\22\01\8F;\22\01\8F;\22\01\8F", [16 x i8] zeroinitializer }, align 32
@sisusb_init_gfxcore.ramtypetable1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\00\04``\0F\0F\1F\1F\BA\BA\BA\BA\A9\A9\AC\AC\A0\A0\A0\A8\00\00\02\0200@@", [36 x i8] zeroinitializer }, align 32
@sisusb_init_gfxcore.ramtypetable2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"wwDDwwDD\00\00\00\00[[\AB\AB\00\00\F0\F8", [44 x i8] zeroinitializer }, align 32
@sisusb_init_gfxcore._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str, i32 2039, ptr @.str.12, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"RAM size detection failed, assuming 8MB video RAM\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sisusb_init_gfxcore\00", [44 x i8] zeroinitializer }, align 32
@sisusb_init_gfxcore._entry_ptr = internal global ptr @sisusb_init_gfxcore._entry, section ".printk_index", align 4
@sisusb_init_gfxcore._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.37, ptr @.str, i32 2045, ptr @.str.12, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"DDR RAM device found, assuming 8MB video RAM\0A\00", [50 x i8] zeroinitializer }, align 32
@sisusb_init_gfxcore._entry_ptr.40 = internal global ptr @sisusb_init_gfxcore._entry.38, section ".printk_index", align 4
@sisusb_get_sdram_size.sdramtype = internal constant { [13 x [5 x i8]], [63 x i8] } { [13 x [5 x i8]] [[5 x i8] c"\02\0C\09@5", [5 x i8] c"\01\0D\09@D", [5 x i8] c"\02\0C\08 1", [5 x i8] c"\02\0B\09 %", [5 x i8] c"\01\0C\09 4", [5 x i8] c"\01\0D\08 @", [5 x i8] c"\02\0B\08\10!", [5 x i8] c"\01\0C\08\100", [5 x i8] c"\01\0B\09\10$", [5 x i8] c"\01\0B\08\08 ", [5 x i8] c"\02\09\08\04\01", [5 x i8] c"\01\0A\08\04\10", [5 x i8] c"\01\09\08\02\00"], [63 x i8] zeroinitializer }, align 32
@sisusb_get_ramconfig.ram_datarate = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"SSDD", [28 x i8] zeroinitializer }, align 32
@sisusb_get_ramconfig.ram_dynamictype = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"DGDG", [28 x i8] zeroinitializer }, align 32
@sisusb_get_ramconfig.busSDR = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 64, i32 64, i32 128, i32 128], [16 x i8] zeroinitializer }, align 32
@sisusb_get_ramconfig.busDDR = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 32, i32 32, i32 64, i32 64], [16 x i8] zeroinitializer }, align 32
@sisusb_get_ramconfig.busDDRA = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 96, i32 96, i32 192, i32 192], [16 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"1 ch/1 r\00", [23 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"1 ch/2 r\00", [23 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"asymmetric\00", [21 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"2 channel\00", [22 x i8] zeroinitializer }, align 32
@sisusb_get_ramconfig._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str, i32 2122, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%dMB %s %cDR S%cRAM, bus width %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sisusb_get_ramconfig\00", [43 x i8] zeroinitializer }, align 32
@sisusb_get_ramconfig._entry_ptr = internal global ptr @sisusb_get_ramconfig._entry, section ".printk_index", align 4
@sisusb_set_default_mode.attrdata = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\01\00\00\00", [44 x i8] zeroinitializer }, align 32
@sisusb_set_default_mode.crtcrdata = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"_OP\82T\80\0B>\00@\00\00\00\00\00\00\EA\8C\DF(@\E7\04\A3\FF", [39 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sisusbvga\00", [22 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967186]
@__sancov_gen_cov_switch_values.48 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.49 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.50 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.51 = internal global [5 x i64] [i64 3, i64 32, i64 2147808062, i64 2152002367, i64 3222074173]
@__sancov_gen_cov_switch_values.52 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.53 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.54 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.55 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.56 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.57 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.58 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.59 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.60 = internal global [10 x i64] [i64 8, i64 8, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8]
@___asan_gen_.61 = private unnamed_addr constant [14 x i8] c"sisusb_driver\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 3202, i32 26 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 141, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 230, i32 6 }
@___asan_gen_.71 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 214, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 156, i32 2 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 3203, i32 11 }
@___asan_gen_.79 = private unnamed_addr constant [13 x i8] c"sisusb_table\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 3185, i32 35 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 3018, i32 2 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 3028, i32 2 }
@___asan_gen_.103 = private unnamed_addr constant [17 x i8] c"usb_sisusb_class\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 3005, i32 32 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 3040, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 3090, i32 2 }
@___asan_gen_.121 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 3104, i32 2 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 3121, i32 4 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 3125, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 3006, i32 11 }
@___asan_gen_.142 = private unnamed_addr constant [16 x i8] c"usb_sisusb_fops\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 2992, i32 37 }
@___asan_gen_.145 = private unnamed_addr constant [9 x i8] c"msgcount\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 760, i32 13 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 943, i32 6 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 948, i32 6 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 2413, i32 5 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 2419, i32 4 }
@___asan_gen_.178 = private unnamed_addr constant [10 x i8] c"mclktable\00", align 1
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 1883, i32 20 }
@___asan_gen_.181 = private unnamed_addr constant [10 x i8] c"eclktable\00", align 1
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 1889, i32 20 }
@___asan_gen_.184 = private unnamed_addr constant [14 x i8] c"ramtypetable1\00", align 1
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 1895, i32 20 }
@___asan_gen_.187 = private unnamed_addr constant [14 x i8] c"ramtypetable2\00", align 1
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 1904, i32 20 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 2038, i32 5 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 2044, i32 4 }
@___asan_gen_.205 = private unnamed_addr constant [10 x i8] c"sdramtype\00", align 1
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 1672, i32 18 }
@___asan_gen_.208 = private unnamed_addr constant [13 x i8] c"ram_datarate\00", align 1
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 2082, i32 20 }
@___asan_gen_.211 = private unnamed_addr constant [16 x i8] c"ram_dynamictype\00", align 1
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 2083, i32 20 }
@___asan_gen_.214 = private unnamed_addr constant [7 x i8] c"busSDR\00", align 1
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 2084, i32 19 }
@___asan_gen_.217 = private unnamed_addr constant [7 x i8] c"busDDR\00", align 1
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 2085, i32 19 }
@___asan_gen_.220 = private unnamed_addr constant [8 x i8] c"busDDRA\00", align 1
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 2086, i32 19 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 2095, i32 18 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 2103, i32 18 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 2108, i32 18 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 2113, i32 18 }
@___asan_gen_.235 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 2119, i32 2 }
@___asan_gen_.244 = private unnamed_addr constant [9 x i8] c"attrdata\00", align 1
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 1755, i32 20 }
@___asan_gen_.247 = private unnamed_addr constant [10 x i8] c"crtcrdata\00", align 1
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 1760, i32 20 }
@___asan_gen_.250 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.251 = private constant [39 x i8] c"../drivers/usb/misc/sisusbvga/sisusb.c\00", align 1
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 3216, i32 9 }
@llvm.compiler.used = appending global [83 x ptr] [ptr @__UNIQUE_ID_author238, ptr @__UNIQUE_ID_description239, ptr @__UNIQUE_ID_file240, ptr @__UNIQUE_ID_license241, ptr @__exitcall_usb_sisusb_exit, ptr @__initcall__kmod_sisusbvga__237_3224_usb_sisusb_init6, ptr @sisusb_get_ramconfig._entry, ptr @sisusb_get_ramconfig._entry_ptr, ptr @sisusb_init_gfxcore._entry, ptr @sisusb_init_gfxcore._entry.38, ptr @sisusb_init_gfxcore._entry_ptr, ptr @sisusb_init_gfxcore._entry_ptr.40, ptr @sisusb_open._entry, ptr @sisusb_open._entry.33, ptr @sisusb_open._entry_ptr, ptr @sisusb_open._entry_ptr.35, ptr @sisusb_probe._entry, ptr @sisusb_probe._entry.10, ptr @sisusb_probe._entry.14, ptr @sisusb_probe._entry.19, ptr @sisusb_probe._entry.22, ptr @sisusb_probe._entry_ptr, ptr @sisusb_probe._entry_ptr.13, ptr @sisusb_probe._entry_ptr.16, ptr @sisusb_probe._entry_ptr.21, ptr @sisusb_probe._entry_ptr.24, ptr @sisusb_write_mem_bulk._entry, ptr @sisusb_write_mem_bulk._entry.28, ptr @sisusb_write_mem_bulk._entry_ptr, ptr @sisusb_write_mem_bulk._entry_ptr.30, ptr @usb_sisusb_exit, ptr @sisusb_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @sisusb_table, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @sisusb_probe.__key, ptr @.str.9, ptr @usb_sisusb_class, ptr @.str.11, ptr @.str.12, ptr @.str.15, ptr @sisusb_probe.__key.17, ptr @.str.18, ptr @.str.20, ptr @.str.23, ptr @.str.25, ptr @usb_sisusb_fops, ptr @sisusb_write_mem_bulk.msgcount, ptr @.str.26, ptr @.str.27, ptr @.str.29, ptr @.str.31, ptr @.str.32, ptr @.str.34, ptr @sisusb_init_gfxcore.mclktable, ptr @sisusb_init_gfxcore.eclktable, ptr @sisusb_init_gfxcore.ramtypetable1, ptr @sisusb_init_gfxcore.ramtypetable2, ptr @.str.36, ptr @.str.37, ptr @.str.39, ptr @sisusb_get_sdram_size.sdramtype, ptr @sisusb_get_ramconfig.ram_datarate, ptr @sisusb_get_ramconfig.ram_dynamictype, ptr @sisusb_get_ramconfig.busSDR, ptr @sisusb_get_ramconfig.busDDR, ptr @sisusb_get_ramconfig.busDDRA, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @sisusb_set_default_mode.attrdata, ptr @sisusb_set_default_mode.crtcrdata, ptr @.str.47], section "llvm.metadata"
@0 = internal global [64 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sisusb_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sisusb_table to i32), i32 288, i32 352, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sisusb_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sisusb_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_sisusb_class to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sisusb_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sisusb_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sisusb_probe.__key.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sisusb_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sisusb_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_sisusb_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sisusb_write_mem_bulk.msgcount to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sisusb_write_mem_bulk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sisusb_write_mem_bulk._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sisusb_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sisusb_open._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sisusb_init_gfxcore.mclktable to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sisusb_init_gfxcore.eclktable to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sisusb_init_gfxcore.ramtypetable1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sisusb_init_gfxcore.ramtypetable2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sisusb_init_gfxcore._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sisusb_init_gfxcore._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sisusb_get_sdram_size.sdramtype to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sisusb_get_ramconfig.ram_datarate to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sisusb_get_ramconfig.ram_dynamictype to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sisusb_get_ramconfig.busSDR to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sisusb_get_ramconfig.busDDR to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sisusb_get_ramconfig.busDDRA to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sisusb_get_ramconfig._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sisusb_set_default_mode.attrdata to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sisusb_set_default_mode.crtcrdata to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sisusb_setidxreg(ptr noundef %sisusb, i32 noundef %port, i8 noundef zeroext %index, i8 noundef zeroext %data) local_unnamed_addr #0 align 64 {
entry:
  %bytes_transferred.i.i5 = alloca i32, align 4
  %packet.i6 = alloca %struct.sisusb_packet, align 2
  %bytes_transferred.i.i = alloca i32, align 4
  %packet.i = alloca %struct.sisusb_packet, align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %packet.i) #10
  %0 = getelementptr inbounds %struct.sisusb_packet, ptr %packet.i, i32 0, i32 1
  %1 = getelementptr inbounds %struct.sisusb_packet, ptr %packet.i, i32 0, i32 2
  %and.i = and i32 %port, 3
  %shl.i = shl nuw nsw i32 1, %and.i
  %2 = trunc i32 %shl.i to i16
  %conv.i = or i16 %2, 64
  %3 = ptrtoint ptr %packet.i to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %conv.i, ptr %packet.i, align 2
  %and2.i = and i32 %port, -4
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_storeN_noabort(i32 %4, i32 4)
  store i32 %and2.i, ptr %0, align 2
  %conv3.i = zext i8 %index to i32
  %shl5.i = shl nuw nsw i32 %and.i, 3
  %shl6.i = shl nuw i32 %conv3.i, %shl5.i
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %5, i32 4)
  store i32 %shl6.i, ptr %1, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bytes_transferred.i.i) #10
  %6 = ptrtoint ptr %bytes_transferred.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %bytes_transferred.i.i, align 4
  %call.i.i = tail call fastcc i32 @sisusb_wait_all_out_complete(ptr noundef %sisusb) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %entry.sisusb_write_memio_byte.exit_crit_edge, label %do.body.i.i

entry.sisusb_write_memio_byte.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sisusb_write_memio_byte.exit

do.body.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %packet.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %packet.i, align 2
  %9 = tail call i16 @llvm.bswap.i16(i16 %8) #10
  %10 = ptrtoint ptr %packet.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %packet.i, align 2
  %11 = ptrtoint ptr %0 to i32
  call void @__asan_loadN_noabort(i32 %11, i32 4)
  %12 = load i32, ptr %0, align 2
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #10
  %14 = ptrtoint ptr %0 to i32
  call void @__asan_storeN_noabort(i32 %14, i32 4)
  store i32 %13, ptr %0, align 2
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_loadN_noabort(i32 %15, i32 4)
  %16 = load i32, ptr %1, align 2
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #10
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %18, i32 4)
  store i32 %17, ptr %1, align 2
  %call7.i.i = call fastcc i32 @sisusb_send_bulk_msg(ptr noundef %sisusb, i32 noundef 14, i32 noundef 10, ptr noundef nonnull %packet.i, ptr noundef null, i32 noundef 0, ptr noundef nonnull %bytes_transferred.i.i, i32 noundef 0) #10
  br label %sisusb_write_memio_byte.exit

sisusb_write_memio_byte.exit:                     ; preds = %do.body.i.i, %entry.sisusb_write_memio_byte.exit_crit_edge
  %retval.0.i.i = phi i32 [ 1, %entry.sisusb_write_memio_byte.exit_crit_edge ], [ %call7.i.i, %do.body.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bytes_transferred.i.i) #10
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %packet.i) #10
  %add = add i32 %port, 1
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %packet.i6) #10
  %19 = getelementptr inbounds %struct.sisusb_packet, ptr %packet.i6, i32 0, i32 1
  %20 = getelementptr inbounds %struct.sisusb_packet, ptr %packet.i6, i32 0, i32 2
  %and.i7 = and i32 %add, 3
  %shl.i8 = shl nuw nsw i32 1, %and.i7
  %21 = trunc i32 %shl.i8 to i16
  %conv.i10 = or i16 %21, 64
  %22 = ptrtoint ptr %packet.i6 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %conv.i10, ptr %packet.i6, align 2
  %and2.i11 = and i32 %add, -4
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_storeN_noabort(i32 %23, i32 4)
  store i32 %and2.i11, ptr %19, align 2
  %conv3.i12 = zext i8 %data to i32
  %shl5.i13 = shl nuw nsw i32 %and.i7, 3
  %shl6.i14 = shl nuw i32 %conv3.i12, %shl5.i13
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_storeN_noabort(i32 %24, i32 4)
  store i32 %shl6.i14, ptr %20, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bytes_transferred.i.i5) #10
  %25 = ptrtoint ptr %bytes_transferred.i.i5 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %bytes_transferred.i.i5, align 4
  %call.i.i15 = call fastcc i32 @sisusb_wait_all_out_complete(ptr noundef %sisusb) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i15)
  %tobool.not.i.i16 = icmp eq i32 %call.i.i15, 0
  br i1 %tobool.not.i.i16, label %sisusb_write_memio_byte.exit.sisusb_write_memio_byte.exit20_crit_edge, label %do.body.i.i18

sisusb_write_memio_byte.exit.sisusb_write_memio_byte.exit20_crit_edge: ; preds = %sisusb_write_memio_byte.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sisusb_write_memio_byte.exit20

do.body.i.i18:                                    ; preds = %sisusb_write_memio_byte.exit
  call void @__sanitizer_cov_trace_pc() #12
  %26 = ptrtoint ptr %packet.i6 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %packet.i6, align 2
  %28 = call i16 @llvm.bswap.i16(i16 %27) #10
  %29 = ptrtoint ptr %packet.i6 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %28, ptr %packet.i6, align 2
  %30 = ptrtoint ptr %19 to i32
  call void @__asan_loadN_noabort(i32 %30, i32 4)
  %31 = load i32, ptr %19, align 2
  %32 = call i32 @llvm.bswap.i32(i32 %31) #10
  %33 = ptrtoint ptr %19 to i32
  call void @__asan_storeN_noabort(i32 %33, i32 4)
  store i32 %32, ptr %19, align 2
  %34 = ptrtoint ptr %20 to i32
  call void @__asan_loadN_noabort(i32 %34, i32 4)
  %35 = load i32, ptr %20, align 2
  %36 = call i32 @llvm.bswap.i32(i32 %35) #10
  %37 = ptrtoint ptr %20 to i32
  call void @__asan_storeN_noabort(i32 %37, i32 4)
  store i32 %36, ptr %20, align 2
  %call7.i.i17 = call fastcc i32 @sisusb_send_bulk_msg(ptr noundef %sisusb, i32 noundef 14, i32 noundef 10, ptr noundef nonnull %packet.i6, ptr noundef null, i32 noundef 0, ptr noundef nonnull %bytes_transferred.i.i5, i32 noundef 0) #10
  br label %sisusb_write_memio_byte.exit20

sisusb_write_memio_byte.exit20:                   ; preds = %do.body.i.i18, %sisusb_write_memio_byte.exit.sisusb_write_memio_byte.exit20_crit_edge
  %retval.0.i.i19 = phi i32 [ 1, %sisusb_write_memio_byte.exit.sisusb_write_memio_byte.exit20_crit_edge ], [ %call7.i.i17, %do.body.i.i18 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bytes_transferred.i.i5) #10
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %packet.i6) #10
  %or = or i32 %retval.0.i.i19, %retval.0.i.i
  ret i32 %or
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sisusb_write_memio_byte(ptr noundef %sisusb, i32 noundef %type, i32 noundef %addr, i8 noundef zeroext %data) unnamed_addr #0 align 64 {
entry:
  %bytes_transferred.i = alloca i32, align 4
  %packet = alloca %struct.sisusb_packet, align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %packet) #10
  %0 = getelementptr inbounds %struct.sisusb_packet, ptr %packet, i32 0, i32 1
  %1 = getelementptr inbounds %struct.sisusb_packet, ptr %packet, i32 0, i32 2
  %and = and i32 %addr, 3
  %shl = shl nuw nsw i32 1, %and
  %shl1 = shl i32 %type, 6
  %or = or i32 %shl, %shl1
  %conv = trunc i32 %or to i16
  %2 = ptrtoint ptr %packet to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %conv, ptr %packet, align 2
  %and2 = and i32 %addr, -4
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_storeN_noabort(i32 %3, i32 4)
  store i32 %and2, ptr %0, align 2
  %conv3 = zext i8 %data to i32
  %shl5 = shl nuw nsw i32 %and, 3
  %shl6 = shl nuw i32 %conv3, %shl5
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %4, i32 4)
  store i32 %shl6, ptr %1, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bytes_transferred.i) #10
  %5 = ptrtoint ptr %bytes_transferred.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %bytes_transferred.i, align 4
  %call.i = tail call fastcc i32 @sisusb_wait_all_out_complete(ptr noundef %sisusb) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %entry.sisusb_send_packet.exit_crit_edge, label %do.body.i

entry.sisusb_send_packet.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sisusb_send_packet.exit

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %packet to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %packet, align 2
  %8 = tail call i16 @llvm.bswap.i16(i16 %7) #10
  %9 = ptrtoint ptr %packet to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %8, ptr %packet, align 2
  %10 = ptrtoint ptr %0 to i32
  call void @__asan_loadN_noabort(i32 %10, i32 4)
  %11 = load i32, ptr %0, align 2
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #10
  %13 = ptrtoint ptr %0 to i32
  call void @__asan_storeN_noabort(i32 %13, i32 4)
  store i32 %12, ptr %0, align 2
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %1, align 2
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #10
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %17, i32 4)
  store i32 %16, ptr %1, align 2
  %call7.i = call fastcc i32 @sisusb_send_bulk_msg(ptr noundef %sisusb, i32 noundef 14, i32 noundef 10, ptr noundef nonnull %packet, ptr noundef null, i32 noundef 0, ptr noundef nonnull %bytes_transferred.i, i32 noundef 0) #10
  br label %sisusb_send_packet.exit

sisusb_send_packet.exit:                          ; preds = %do.body.i, %entry.sisusb_send_packet.exit_crit_edge
  %retval.0.i = phi i32 [ 1, %entry.sisusb_send_packet.exit_crit_edge ], [ %call7.i, %do.body.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bytes_transferred.i) #10
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %packet) #10
  ret i32 %retval.0.i
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sisusb_getidxreg(ptr noundef %sisusb, i32 noundef %port, i8 noundef zeroext %index, ptr nocapture noundef writeonly %data) local_unnamed_addr #0 align 64 {
entry:
  %bytes_transferred.i.i = alloca i32, align 4
  %packet.i = alloca %struct.sisusb_packet, align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %packet.i) #10
  %0 = getelementptr inbounds %struct.sisusb_packet, ptr %packet.i, i32 0, i32 1
  %1 = getelementptr inbounds %struct.sisusb_packet, ptr %packet.i, i32 0, i32 2
  %and.i = and i32 %port, 3
  %shl.i = shl nuw nsw i32 1, %and.i
  %2 = trunc i32 %shl.i to i16
  %conv.i = or i16 %2, 64
  %3 = ptrtoint ptr %packet.i to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %conv.i, ptr %packet.i, align 2
  %and2.i = and i32 %port, -4
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_storeN_noabort(i32 %4, i32 4)
  store i32 %and2.i, ptr %0, align 2
  %conv3.i = zext i8 %index to i32
  %shl5.i = shl nuw nsw i32 %and.i, 3
  %shl6.i = shl nuw i32 %conv3.i, %shl5.i
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %5, i32 4)
  store i32 %shl6.i, ptr %1, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bytes_transferred.i.i) #10
  %6 = ptrtoint ptr %bytes_transferred.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %bytes_transferred.i.i, align 4
  %call.i.i = tail call fastcc i32 @sisusb_wait_all_out_complete(ptr noundef %sisusb) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %entry.sisusb_write_memio_byte.exit_crit_edge, label %do.body.i.i

entry.sisusb_write_memio_byte.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sisusb_write_memio_byte.exit

do.body.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %packet.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %packet.i, align 2
  %9 = tail call i16 @llvm.bswap.i16(i16 %8) #10
  %10 = ptrtoint ptr %packet.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %packet.i, align 2
  %11 = ptrtoint ptr %0 to i32
  call void @__asan_loadN_noabort(i32 %11, i32 4)
  %12 = load i32, ptr %0, align 2
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #10
  %14 = ptrtoint ptr %0 to i32
  call void @__asan_storeN_noabort(i32 %14, i32 4)
  store i32 %13, ptr %0, align 2
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_loadN_noabort(i32 %15, i32 4)
  %16 = load i32, ptr %1, align 2
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #10
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %18, i32 4)
  store i32 %17, ptr %1, align 2
  %call7.i.i = call fastcc i32 @sisusb_send_bulk_msg(ptr noundef %sisusb, i32 noundef 14, i32 noundef 10, ptr noundef nonnull %packet.i, ptr noundef null, i32 noundef 0, ptr noundef nonnull %bytes_transferred.i.i, i32 noundef 0) #10
  br label %sisusb_write_memio_byte.exit

sisusb_write_memio_byte.exit:                     ; preds = %do.body.i.i, %entry.sisusb_write_memio_byte.exit_crit_edge
  %retval.0.i.i = phi i32 [ 1, %entry.sisusb_write_memio_byte.exit_crit_edge ], [ %call7.i.i, %do.body.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bytes_transferred.i.i) #10
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %packet.i) #10
  %add = add i32 %port, 1
  %call1 = call fastcc i32 @sisusb_read_memio_byte(ptr noundef %sisusb, i32 noundef 1, i32 noundef %add, ptr noundef %data)
  %or = or i32 %call1, %retval.0.i.i
  ret i32 %or
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sisusb_read_memio_byte(ptr noundef %sisusb, i32 noundef %type, i32 noundef %addr, ptr nocapture noundef writeonly %data) unnamed_addr #0 align 64 {
entry:
  %bytes_transferred.i = alloca i32, align 4
  %tmp.i = alloca i32, align 4
  %packet = alloca %struct.sisusb_packet, align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %packet) #10
  %0 = getelementptr inbounds %struct.sisusb_packet, ptr %packet, i32 0, i32 1
  %1 = getelementptr inbounds %struct.sisusb_packet, ptr %packet, i32 0, i32 2
  %and = and i32 %addr, 3
  %shl = shl nuw nsw i32 1, %and
  %shl1 = shl i32 %type, 6
  %or = or i32 %shl, %shl1
  %conv = trunc i32 %or to i16
  %2 = ptrtoint ptr %packet to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %conv, ptr %packet, align 2
  %and2 = and i32 %addr, -4
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_storeN_noabort(i32 %3, i32 4)
  store i32 %and2, ptr %0, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bytes_transferred.i) #10
  %4 = ptrtoint ptr %bytes_transferred.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %bytes_transferred.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #10
  %5 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %tmp.i, align 4, !annotation !144
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %6, i32 4)
  store i32 0, ptr %1, align 2
  %call.i = tail call fastcc i32 @sisusb_wait_all_out_complete(ptr noundef %sisusb) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %entry.sisusb_send_packet.exit_crit_edge, label %do.body.i

entry.sisusb_send_packet.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sisusb_send_packet.exit

do.body.i:                                        ; preds = %entry
  %7 = ptrtoint ptr %packet to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %packet, align 2
  %9 = tail call i16 @llvm.bswap.i16(i16 %8) #10
  %10 = ptrtoint ptr %packet to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %packet, align 2
  %11 = ptrtoint ptr %0 to i32
  call void @__asan_loadN_noabort(i32 %11, i32 4)
  %12 = load i32, ptr %0, align 2
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #10
  %14 = ptrtoint ptr %0 to i32
  call void @__asan_storeN_noabort(i32 %14, i32 4)
  store i32 %13, ptr %0, align 2
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_loadN_noabort(i32 %15, i32 4)
  %16 = load i32, ptr %1, align 2
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #10
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %18, i32 4)
  store i32 %17, ptr %1, align 2
  %call7.i = call fastcc i32 @sisusb_send_bulk_msg(ptr noundef %sisusb, i32 noundef 14, i32 noundef 6, ptr noundef nonnull %packet, ptr noundef null, i32 noundef 0, ptr noundef nonnull %bytes_transferred.i, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %cmp8.i = icmp eq i32 %call7.i, 0
  br i1 %cmp8.i, label %if.then10.i, label %do.body.i.sisusb_send_packet.exit_crit_edge

do.body.i.sisusb_send_packet.exit_crit_edge:      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sisusb_send_packet.exit

if.then10.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %call11.i = call fastcc i32 @sisusb_recv_bulk_msg(ptr noundef %sisusb, i32 noundef 14, ptr noundef nonnull %tmp.i, ptr noundef nonnull %bytes_transferred.i) #10
  %19 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tmp.i, align 4
  %21 = call i32 @llvm.bswap.i32(i32 %20) #10
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %22, i32 4)
  store i32 %21, ptr %1, align 2
  br label %sisusb_send_packet.exit

sisusb_send_packet.exit:                          ; preds = %if.then10.i, %do.body.i.sisusb_send_packet.exit_crit_edge, %entry.sisusb_send_packet.exit_crit_edge
  %retval.0.i = phi i32 [ 1, %entry.sisusb_send_packet.exit_crit_edge ], [ %call11.i, %if.then10.i ], [ %call7.i, %do.body.i.sisusb_send_packet.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bytes_transferred.i) #10
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_loadN_noabort(i32 %23, i32 4)
  %24 = load i32, ptr %1, align 2
  %shl5 = shl nuw nsw i32 %and, 3
  %shr = lshr i32 %24, %shl5
  %conv6 = trunc i32 %shr to i8
  %25 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv6, ptr %data, align 1
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %packet) #10
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sisusb_setidxregandor(ptr noundef %sisusb, i32 noundef %port, i8 noundef zeroext %idx, i8 noundef zeroext %myand, i8 noundef zeroext %myor) local_unnamed_addr #0 align 64 {
entry:
  %bytes_transferred.i.i19 = alloca i32, align 4
  %packet.i20 = alloca %struct.sisusb_packet, align 2
  %bytes_transferred.i.i = alloca i32, align 4
  %packet.i = alloca %struct.sisusb_packet, align 2
  %tmp = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp) #10
  %0 = ptrtoint ptr %tmp to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %tmp, align 1, !annotation !144
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %packet.i) #10
  %1 = getelementptr inbounds %struct.sisusb_packet, ptr %packet.i, i32 0, i32 1
  %2 = getelementptr inbounds %struct.sisusb_packet, ptr %packet.i, i32 0, i32 2
  %and.i = and i32 %port, 3
  %shl.i = shl nuw nsw i32 1, %and.i
  %3 = trunc i32 %shl.i to i16
  %conv.i = or i16 %3, 64
  %4 = ptrtoint ptr %packet.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %conv.i, ptr %packet.i, align 2
  %and2.i = and i32 %port, -4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %5, i32 4)
  store i32 %and2.i, ptr %1, align 2
  %conv3.i = zext i8 %idx to i32
  %shl5.i = shl nuw nsw i32 %and.i, 3
  %shl6.i = shl nuw i32 %conv3.i, %shl5.i
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_storeN_noabort(i32 %6, i32 4)
  store i32 %shl6.i, ptr %2, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bytes_transferred.i.i) #10
  %7 = ptrtoint ptr %bytes_transferred.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %bytes_transferred.i.i, align 4
  %call.i.i = tail call fastcc i32 @sisusb_wait_all_out_complete(ptr noundef %sisusb) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %entry.sisusb_write_memio_byte.exit_crit_edge, label %do.body.i.i

entry.sisusb_write_memio_byte.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sisusb_write_memio_byte.exit

do.body.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %packet.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %packet.i, align 2
  %10 = tail call i16 @llvm.bswap.i16(i16 %9) #10
  %11 = ptrtoint ptr %packet.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %10, ptr %packet.i, align 2
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %13 = load i32, ptr %1, align 2
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #10
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %15, i32 4)
  store i32 %14, ptr %1, align 2
  %16 = ptrtoint ptr %2 to i32
  call void @__asan_loadN_noabort(i32 %16, i32 4)
  %17 = load i32, ptr %2, align 2
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #10
  %19 = ptrtoint ptr %2 to i32
  call void @__asan_storeN_noabort(i32 %19, i32 4)
  store i32 %18, ptr %2, align 2
  %call7.i.i = call fastcc i32 @sisusb_send_bulk_msg(ptr noundef %sisusb, i32 noundef 14, i32 noundef 10, ptr noundef nonnull %packet.i, ptr noundef null, i32 noundef 0, ptr noundef nonnull %bytes_transferred.i.i, i32 noundef 0) #10
  br label %sisusb_write_memio_byte.exit

sisusb_write_memio_byte.exit:                     ; preds = %do.body.i.i, %entry.sisusb_write_memio_byte.exit_crit_edge
  %retval.0.i.i = phi i32 [ 1, %entry.sisusb_write_memio_byte.exit_crit_edge ], [ %call7.i.i, %do.body.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bytes_transferred.i.i) #10
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %packet.i) #10
  %add = add i32 %port, 1
  %call1 = call fastcc i32 @sisusb_read_memio_byte(ptr noundef %sisusb, i32 noundef 1, i32 noundef %add, ptr noundef nonnull %tmp)
  %20 = ptrtoint ptr %tmp to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %tmp, align 1
  %and17 = and i8 %21, %myand
  %or618 = or i8 %and17, %myor
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %packet.i20) #10
  %22 = getelementptr inbounds %struct.sisusb_packet, ptr %packet.i20, i32 0, i32 1
  %23 = getelementptr inbounds %struct.sisusb_packet, ptr %packet.i20, i32 0, i32 2
  %and.i21 = and i32 %add, 3
  %shl.i22 = shl nuw nsw i32 1, %and.i21
  %24 = trunc i32 %shl.i22 to i16
  %conv.i24 = or i16 %24, 64
  %25 = ptrtoint ptr %packet.i20 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %conv.i24, ptr %packet.i20, align 2
  %and2.i25 = and i32 %add, -4
  %26 = ptrtoint ptr %22 to i32
  call void @__asan_storeN_noabort(i32 %26, i32 4)
  store i32 %and2.i25, ptr %22, align 2
  %conv3.i26 = zext i8 %or618 to i32
  %shl5.i27 = shl nuw nsw i32 %and.i21, 3
  %shl6.i28 = shl nuw i32 %conv3.i26, %shl5.i27
  %27 = ptrtoint ptr %23 to i32
  call void @__asan_storeN_noabort(i32 %27, i32 4)
  store i32 %shl6.i28, ptr %23, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bytes_transferred.i.i19) #10
  %28 = ptrtoint ptr %bytes_transferred.i.i19 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %bytes_transferred.i.i19, align 4
  %call.i.i29 = call fastcc i32 @sisusb_wait_all_out_complete(ptr noundef %sisusb) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i29)
  %tobool.not.i.i30 = icmp eq i32 %call.i.i29, 0
  br i1 %tobool.not.i.i30, label %sisusb_write_memio_byte.exit.sisusb_write_memio_byte.exit34_crit_edge, label %do.body.i.i32

sisusb_write_memio_byte.exit.sisusb_write_memio_byte.exit34_crit_edge: ; preds = %sisusb_write_memio_byte.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sisusb_write_memio_byte.exit34

do.body.i.i32:                                    ; preds = %sisusb_write_memio_byte.exit
  call void @__sanitizer_cov_trace_pc() #12
  %29 = ptrtoint ptr %packet.i20 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %packet.i20, align 2
  %31 = call i16 @llvm.bswap.i16(i16 %30) #10
  %32 = ptrtoint ptr %packet.i20 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %31, ptr %packet.i20, align 2
  %33 = ptrtoint ptr %22 to i32
  call void @__asan_loadN_noabort(i32 %33, i32 4)
  %34 = load i32, ptr %22, align 2
  %35 = call i32 @llvm.bswap.i32(i32 %34) #10
  %36 = ptrtoint ptr %22 to i32
  call void @__asan_storeN_noabort(i32 %36, i32 4)
  store i32 %35, ptr %22, align 2
  %37 = ptrtoint ptr %23 to i32
  call void @__asan_loadN_noabort(i32 %37, i32 4)
  %38 = load i32, ptr %23, align 2
  %39 = call i32 @llvm.bswap.i32(i32 %38) #10
  %40 = ptrtoint ptr %23 to i32
  call void @__asan_storeN_noabort(i32 %40, i32 4)
  store i32 %39, ptr %23, align 2
  %call7.i.i31 = call fastcc i32 @sisusb_send_bulk_msg(ptr noundef %sisusb, i32 noundef 14, i32 noundef 10, ptr noundef nonnull %packet.i20, ptr noundef null, i32 noundef 0, ptr noundef nonnull %bytes_transferred.i.i19, i32 noundef 0) #10
  br label %sisusb_write_memio_byte.exit34

sisusb_write_memio_byte.exit34:                   ; preds = %do.body.i.i32, %sisusb_write_memio_byte.exit.sisusb_write_memio_byte.exit34_crit_edge
  %retval.0.i.i33 = phi i32 [ 1, %sisusb_write_memio_byte.exit.sisusb_write_memio_byte.exit34_crit_edge ], [ %call7.i.i31, %do.body.i.i32 ]
  %or = or i32 %call1, %retval.0.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bytes_transferred.i.i19) #10
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %packet.i20) #10
  %or10 = or i32 %or, %retval.0.i.i33
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp) #10
  ret i32 %or10
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sisusb_setidxregor(ptr noundef %sisusb, i32 noundef %port, i8 noundef zeroext %index, i8 noundef zeroext %myor) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @sisusb_setidxregandor(ptr noundef %sisusb, i32 noundef %port, i8 noundef zeroext %index, i8 noundef zeroext -1, i8 noundef zeroext %myor)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sisusb_setidxregand(ptr noundef %sisusb, i32 noundef %port, i8 noundef zeroext %idx, i8 noundef zeroext %myand) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @sisusb_setidxregandor(ptr noundef %sisusb, i32 noundef %port, i8 noundef zeroext %idx, i8 noundef zeroext %myand, i8 noundef zeroext 0)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sisusb_delete(ptr noundef %kref) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %kref, i32 -8
  %tobool.not = icmp eq ptr %add.ptr, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  tail call void @usb_put_dev(ptr noundef %1) #10
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %add.ptr, align 4
  tail call fastcc void @sisusb_free_buffers(ptr noundef nonnull %add.ptr)
  tail call fastcc void @sisusb_free_urbs(ptr noundef nonnull %add.ptr)
  tail call void @kfree(ptr noundef nonnull %add.ptr) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_put_dev(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sisusb_free_buffers(ptr nocapture noundef %sisusb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.sisusb_usb_data, ptr %sisusb, i32 0, i32 11, i32 0
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  tail call void @kfree(ptr noundef %1) #10
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %arrayidx, align 4
  %arrayidx.1 = getelementptr %struct.sisusb_usb_data, ptr %sisusb, i32 0, i32 11, i32 1
  %3 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx.1, align 4
  tail call void @kfree(ptr noundef %4) #10
  %5 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %arrayidx.1, align 4
  %arrayidx.2 = getelementptr %struct.sisusb_usb_data, ptr %sisusb, i32 0, i32 11, i32 2
  %6 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.2, align 4
  tail call void @kfree(ptr noundef %7) #10
  %8 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %arrayidx.2, align 4
  %arrayidx.3 = getelementptr %struct.sisusb_usb_data, ptr %sisusb, i32 0, i32 11, i32 3
  %9 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.3, align 4
  tail call void @kfree(ptr noundef %10) #10
  %11 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %arrayidx.3, align 4
  %arrayidx.4 = getelementptr %struct.sisusb_usb_data, ptr %sisusb, i32 0, i32 11, i32 4
  %12 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.4, align 4
  tail call void @kfree(ptr noundef %13) #10
  %14 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %arrayidx.4, align 4
  %arrayidx.5 = getelementptr %struct.sisusb_usb_data, ptr %sisusb, i32 0, i32 11, i32 5
  %15 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx.5, align 4
  tail call void @kfree(ptr noundef %16) #10
  %17 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %arrayidx.5, align 4
  %arrayidx.6 = getelementptr %struct.sisusb_usb_data, ptr %sisusb, i32 0, i32 11, i32 6
  %18 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.6, align 4
  tail call void @kfree(ptr noundef %19) #10
  %20 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %arrayidx.6, align 4
  %arrayidx.7 = getelementptr %struct.sisusb_usb_data, ptr %sisusb, i32 0, i32 11, i32 7
  %21 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx.7, align 4
  tail call void @kfree(ptr noundef %22) #10
  %23 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %arrayidx.7, align 4
  %ibuf = getelementptr inbounds %struct.sisusb_usb_data, ptr %sisusb, i32 0, i32 12
  %24 = ptrtoint ptr %ibuf to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ibuf, align 4
  tail call void @kfree(ptr noundef %25) #10
  %26 = ptrtoint ptr %ibuf to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %ibuf, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sisusb_free_urbs(ptr nocapture noundef %sisusb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.sisusb_usb_data, ptr %sisusb, i32 0, i32 15, i32 0
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  tail call void @usb_free_urb(ptr noundef %1) #10
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %arrayidx, align 4
  %arrayidx.1 = getelementptr %struct.sisusb_usb_data, ptr %sisusb, i32 0, i32 15, i32 1
  %3 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx.1, align 4
  tail call void @usb_free_urb(ptr noundef %4) #10
  %5 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %arrayidx.1, align 4
  %arrayidx.2 = getelementptr %struct.sisusb_usb_data, ptr %sisusb, i32 0, i32 15, i32 2
  %6 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.2, align 4
  tail call void @usb_free_urb(ptr noundef %7) #10
  %8 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %arrayidx.2, align 4
  %arrayidx.3 = getelementptr %struct.sisusb_usb_data, ptr %sisusb, i32 0, i32 15, i32 3
  %9 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.3, align 4
  tail call void @usb_free_urb(ptr noundef %10) #10
  %11 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %arrayidx.3, align 4
  %arrayidx.4 = getelementptr %struct.sisusb_usb_data, ptr %sisusb, i32 0, i32 15, i32 4
  %12 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.4, align 4
  tail call void @usb_free_urb(ptr noundef %13) #10
  %14 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %arrayidx.4, align 4
  %arrayidx.5 = getelementptr %struct.sisusb_usb_data, ptr %sisusb, i32 0, i32 15, i32 5
  %15 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx.5, align 4
  tail call void @usb_free_urb(ptr noundef %16) #10
  %17 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %arrayidx.5, align 4
  %arrayidx.6 = getelementptr %struct.sisusb_usb_data, ptr %sisusb, i32 0, i32 15, i32 6
  %18 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.6, align 4
  tail call void @usb_free_urb(ptr noundef %19) #10
  %20 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %arrayidx.6, align 4
  %arrayidx.7 = getelementptr %struct.sisusb_usb_data, ptr %sisusb, i32 0, i32 15, i32 7
  %21 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx.7, align 4
  tail call void @usb_free_urb(ptr noundef %22) #10
  %23 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %arrayidx.7, align 4
  %sisurbin = getelementptr inbounds %struct.sisusb_usb_data, ptr %sisusb, i32 0, i32 16
  %24 = ptrtoint ptr %sisurbin to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %sisurbin, align 4
  tail call void @usb_free_urb(ptr noundef %25) #10
  %26 = ptrtoint ptr %sisurbin to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %sisurbin, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @usb_sisusb_exit() #3 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @usb_deregister(ptr noundef nonnull @sisusb_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @usb_sisusb_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @sisusb_driver, ptr noundef null, ptr noundef nonnull @.str.47) #10
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sisusb_wait_all_out_complete(ptr noundef %sisusb) unnamed_addr #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 142) #10
  %numobufs.i = getelementptr inbounds %struct.sisusb_usb_data, ptr %sisusb, i32 0, i32 10
  %0 = ptrtoint ptr %numobufs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %numobufs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp4.i = icmp sgt i32 %1, 0
  br i1 %cmp4.i, label %entry.for.body.i_crit_edge, label %entry.if.end34_crit_edge

entry.if.end34_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.05.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %1
  br i1 %exitcond.not.i, label %for.cond.i.if.end34_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.cond.i.if.end34_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.05.i = phi i32 [ %inc.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.sisusb_usb_data, ptr %sisusb, i32 0, i32 17, i32 %i.05.i
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx.i, align 1
  %4 = and i8 %3, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.i = icmp eq i8 %4, 0
  br i1 %tobool.not.i, label %for.cond.i, label %if.then9

if.then9:                                         ; preds = %for.body.i
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #10
  %5 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #10
  %wait_q = getelementptr inbounds %struct.sisusb_usb_data, ptr %sisusb, i32 0, i32 3
  %call1178 = call i32 @prepare_to_wait_event(ptr noundef %wait_q, ptr noundef nonnull %__wq_entry, i32 noundef 2) #10
  %6 = ptrtoint ptr %numobufs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %numobufs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp4.i5179 = icmp sgt i32 %7, 0
  br i1 %cmp4.i5179, label %if.then9.for.body.i58.preheader_crit_edge, label %if.then9.for.end_crit_edge

if.then9.for.end_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.then9.for.body.i58.preheader_crit_edge:        ; preds = %if.then9
  br label %for.body.i58.preheader

for.body.i58.preheader:                           ; preds = %cleanup.for.body.i58.preheader_crit_edge, %if.then9.for.body.i58.preheader_crit_edge
  %8 = phi i32 [ %13, %cleanup.for.body.i58.preheader_crit_edge ], [ %7, %if.then9.for.body.i58.preheader_crit_edge ]
  %__ret10.080 = phi i32 [ %call31, %cleanup.for.body.i58.preheader_crit_edge ], [ 500, %if.then9.for.body.i58.preheader_crit_edge ]
  br label %for.body.i58

for.cond.i54:                                     ; preds = %for.body.i58
  %inc.i52 = add nuw nsw i32 %i.05.i55, 1
  %exitcond.not.i53 = icmp eq i32 %inc.i52, %8
  br i1 %exitcond.not.i53, label %for.cond.i54.for.end_crit_edge, label %for.cond.i54.for.body.i58_crit_edge

for.cond.i54.for.body.i58_crit_edge:              ; preds = %for.cond.i54
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i58

for.cond.i54.for.end_crit_edge:                   ; preds = %for.cond.i54
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.i58:                                     ; preds = %for.cond.i54.for.body.i58_crit_edge, %for.body.i58.preheader
  %i.05.i55 = phi i32 [ %inc.i52, %for.cond.i54.for.body.i58_crit_edge ], [ 0, %for.body.i58.preheader ]
  %arrayidx.i56 = getelementptr %struct.sisusb_usb_data, ptr %sisusb, i32 0, i32 17, i32 %i.05.i55
  %9 = ptrtoint ptr %arrayidx.i56 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx.i56, align 1
  %11 = and i8 %10, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i57 = icmp eq i8 %11, 0
  br i1 %tobool.not.i57, label %for.cond.i54, label %sisusb_all_free.exit60

sisusb_all_free.exit60:                           ; preds = %for.body.i58
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret10.080)
  %tobool24.not = icmp eq i32 %__ret10.080, 0
  br i1 %tobool24.not, label %sisusb_all_free.exit60.for.end_crit_edge, label %cleanup

sisusb_all_free.exit60.for.end_crit_edge:         ; preds = %sisusb_all_free.exit60
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

cleanup:                                          ; preds = %sisusb_all_free.exit60
  %call31 = call i32 @schedule_timeout(i32 noundef %__ret10.080) #10
  %call11 = call i32 @prepare_to_wait_event(ptr noundef %wait_q, ptr noundef nonnull %__wq_entry, i32 noundef 2) #10
  %12 = ptrtoint ptr %numobufs.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %numobufs.i, align 4
  %cmp4.i51 = icmp sgt i32 %13, 0
  br i1 %cmp4.i51, label %cleanup.for.body.i58.preheader_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

cleanup.for.body.i58.preheader_crit_edge:         ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i58.preheader

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %sisusb_all_free.exit60.for.end_crit_edge, %for.cond.i54.for.end_crit_edge, %if.then9.for.end_crit_edge
  %retval.0.i5969.ph = phi i32 [ 1, %if.then9.for.end_crit_edge ], [ 1, %for.cond.i54.for.end_crit_edge ], [ 0, %sisusb_all_free.exit60.for.end_crit_edge ], [ 1, %cleanup.for.end_crit_edge ]
  call void @finish_wait(ptr noundef %wait_q, ptr noundef nonnull %__wq_entry) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #10
  br label %if.end34

if.end34:                                         ; preds = %for.end, %for.cond.i.if.end34_crit_edge, %entry.if.end34_crit_edge
  %i.0 = phi i32 [ %retval.0.i5969.ph, %for.end ], [ 1, %entry.if.end34_crit_edge ], [ 1, %for.cond.i.if.end34_crit_edge ]
  ret i32 %i.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sisusb_send_bulk_msg(ptr noundef %sisusb, i32 noundef %ep, i32 noundef %len, ptr noundef readonly %kernbuffer, ptr noundef %userbuffer, i32 noundef %index, ptr nocapture noundef %bytes_written, i32 noundef %async) unnamed_addr #0 align 64 {
entry:
  %__wq_entry.i5 = alloca %struct.wait_queue_entry, align 4
  %__wq_entry.i = alloca %struct.wait_queue_entry, align 4
  %transferred_len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %transferred_len) #10
  %0 = ptrtoint ptr %transferred_len to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %transferred_len, align 4
  %cmp.not = icmp eq ptr %userbuffer, null
  %cmp1.not = icmp eq ptr %kernbuffer, null
  %1 = ptrtoint ptr %bytes_written to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %bytes_written, align 4
  %tobool.not = icmp eq ptr %sisusb, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %present = getelementptr inbounds %struct.sisusb_usb_data, ptr %sisusb, i32 0, i32 8
  %2 = ptrtoint ptr %present to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %present, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool3.not = icmp eq i32 %3, 0
  br i1 %tobool3.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false4

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %4 = ptrtoint ptr %sisusb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sisusb, align 4
  %tobool5.not = icmp eq ptr %5, null
  br i1 %tobool5.not, label %lor.lhs.false4.cleanup_crit_edge, label %if.end

lor.lhs.false4.cleanup_crit_edge:                 ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false4
  %brmerge.demorgan = and i1 %cmp1.not, %cmp.not
  br i1 %brmerge.demorgan, label %if.else, label %if.end.if.end13_crit_edge

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %obufsize = getelementptr inbounds %struct.sisusb_usb_data, ptr %sisusb, i32 0, i32 13
  %6 = ptrtoint ptr %obufsize to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %obufsize, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %len)
  %cmp10 = icmp slt i32 %7, %len
  %spec.select = select i1 %cmp10, i32 0, i32 %async
  br label %if.end13

if.end13:                                         ; preds = %if.else, %if.end.if.end13_crit_edge
  %index.addr.0 = phi i32 [ -1, %if.end.if.end13_crit_edge ], [ %index, %if.else ]
  %async.addr.0 = phi i32 [ %async, %if.end.if.end13_crit_edge ], [ %spec.select, %if.else ]
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %5, align 8
  %shl.i = shl i32 %9, 8
  %shl1.i = shl i32 %ep, 15
  %or.i = or i32 %shl1.i, %shl.i
  %or = or i32 %or.i, -1073741824
  %obufsize15 = getelementptr inbounds %struct.sisusb_usb_data, ptr %sisusb, i32 0, i32 13
  %numobufs.i.i = getelementptr inbounds %struct.sisusb_usb_data, ptr %sisusb, i32 0, i32 10
  %wait_q.i = getelementptr inbounds %struct.sisusb_usb_data, ptr %sisusb, i32 0, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %async.addr.0)
  %tobool43.not = icmp eq i32 %async.addr.0, 0
  %spec.select.i = select i1 %tobool43.not, ptr null, ptr %transferred_len
  %tobool43.not.not = xor i1 %tobool43.not, true
  br label %do.body

do.body:                                          ; preds = %if.end62.do.body_crit_edge, %if.end13
  %userbuffer.addr.0 = phi ptr [ %userbuffer, %if.end13 ], [ %userbuffer.addr.1, %if.end62.do.body_crit_edge ]
  %index.addr.1 = phi i32 [ %index.addr.0, %if.end13 ], [ %index.addr.3, %if.end62.do.body_crit_edge ]
  %kernbuffer.addr.0 = phi ptr [ %kernbuffer, %if.end13 ], [ %kernbuffer.addr.1, %if.end62.do.body_crit_edge ]
  %count.0 = phi i32 [ %len, %if.end13 ], [ %sub63, %if.end62.do.body_crit_edge ]
  %10 = ptrtoint ptr %obufsize15 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %obufsize15, align 4
  %12 = call i32 @llvm.smin.i32(i32 %11, i32 %count.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %index.addr.1)
  %cmp19 = icmp slt i32 %index.addr.1, 0
  br i1 %cmp19, label %if.then20, label %do.body.if.end25_crit_edge

do.body.if.end25_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

if.then20:                                        ; preds = %do.body
  call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 166) #10
  %13 = ptrtoint ptr %numobufs.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %numobufs.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp7.i.i = icmp sgt i32 %14, 0
  br i1 %cmp7.i.i, label %if.then20.for.body.i.i_crit_edge, label %if.then20.if.then8.i_crit_edge

if.then20.if.then8.i_crit_edge:                   ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then8.i

if.then20.for.body.i.i_crit_edge:                 ; preds = %if.then20
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.then20.for.body.i.i_crit_edge
  %i.08.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %if.then20.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.sisusb_usb_data, ptr %sisusb, i32 0, i32 17, i32 %i.08.i.i
  %15 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx.i.i, align 1
  %17 = and i8 %16, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %cmp1.i.i4 = icmp eq i8 %17, 0
  br i1 %cmp1.i.i4, label %for.body.i.i.if.end25_crit_edge, label %for.inc.i.i

for.body.i.i.if.end25_crit_edge:                  ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

for.inc.i.i:                                      ; preds = %for.body.i.i
  %inc.i.i = add nuw nsw i32 %i.08.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %14
  br i1 %exitcond.not.i.i, label %for.inc.i.i.if.then8.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

for.inc.i.i.if.then8.i_crit_edge:                 ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then8.i

if.then8.i:                                       ; preds = %for.inc.i.i.if.then8.i_crit_edge, %if.then20.if.then8.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry.i) #10
  %18 = call ptr @memset(ptr %__wq_entry.i, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry.i, i32 noundef 0) #10
  br label %for.cond.i

for.cond.i:                                       ; preds = %cleanup.i, %if.then8.i
  %__ret9.0.i = phi i32 [ 500, %if.then8.i ], [ %call30.i, %cleanup.i ]
  %call10.i = call i32 @prepare_to_wait_event(ptr noundef %wait_q.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 2) #10
  %19 = ptrtoint ptr %numobufs.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %numobufs.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp7.i50.i = icmp sgt i32 %20, 0
  br i1 %cmp7.i50.i, label %for.cond.i.for.body.i54.i_crit_edge, label %for.cond.i.sisusb_outurb_available.exit59.i_crit_edge

for.cond.i.sisusb_outurb_available.exit59.i_crit_edge: ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sisusb_outurb_available.exit59.i

for.cond.i.for.body.i54.i_crit_edge:              ; preds = %for.cond.i
  br label %for.body.i54.i

for.body.i54.i:                                   ; preds = %for.inc.i57.i.for.body.i54.i_crit_edge, %for.cond.i.for.body.i54.i_crit_edge
  %i.08.i51.i = phi i32 [ %inc.i55.i, %for.inc.i57.i.for.body.i54.i_crit_edge ], [ 0, %for.cond.i.for.body.i54.i_crit_edge ]
  %arrayidx.i52.i = getelementptr %struct.sisusb_usb_data, ptr %sisusb, i32 0, i32 17, i32 %i.08.i51.i
  %21 = ptrtoint ptr %arrayidx.i52.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx.i52.i, align 1
  %23 = and i8 %22, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %cmp1.i53.i = icmp eq i8 %23, 0
  br i1 %cmp1.i53.i, label %for.body.i54.i.sisusb_outurb_available.exit59.i_crit_edge, label %for.inc.i57.i

for.body.i54.i.sisusb_outurb_available.exit59.i_crit_edge: ; preds = %for.body.i54.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sisusb_outurb_available.exit59.i

for.inc.i57.i:                                    ; preds = %for.body.i54.i
  %inc.i55.i = add nuw nsw i32 %i.08.i51.i, 1
  %exitcond.not.i56.i = icmp eq i32 %inc.i55.i, %20
  br i1 %exitcond.not.i56.i, label %for.inc.i57.i.sisusb_outurb_available.exit59.i_crit_edge, label %for.inc.i57.i.for.body.i54.i_crit_edge

for.inc.i57.i.for.body.i54.i_crit_edge:           ; preds = %for.inc.i57.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i54.i

for.inc.i57.i.sisusb_outurb_available.exit59.i_crit_edge: ; preds = %for.inc.i57.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sisusb_outurb_available.exit59.i

sisusb_outurb_available.exit59.i:                 ; preds = %for.inc.i57.i.sisusb_outurb_available.exit59.i_crit_edge, %for.body.i54.i.sisusb_outurb_available.exit59.i_crit_edge, %for.cond.i.sisusb_outurb_available.exit59.i_crit_edge
  %retval.0.i58.i = phi i32 [ -1, %for.cond.i.sisusb_outurb_available.exit59.i_crit_edge ], [ -1, %for.inc.i57.i.sisusb_outurb_available.exit59.i_crit_edge ], [ %i.08.i51.i, %for.body.i54.i.sisusb_outurb_available.exit59.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i58.i)
  %cmp13.i = icmp sgt i32 %retval.0.i58.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret9.0.i)
  %tobool17.not.i = icmp eq i32 %__ret9.0.i, 0
  %24 = select i1 %cmp13.i, i1 %tobool17.not.i, i1 false
  %__ret9.1.i = select i1 %24, i32 1, i32 %__ret9.0.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret9.1.i)
  %tobool23.not.i = icmp eq i32 %__ret9.1.i, 0
  %25 = select i1 %cmp13.i, i1 true, i1 %tobool23.not.i
  br i1 %25, label %if.end22, label %cleanup.i

cleanup.i:                                        ; preds = %sisusb_outurb_available.exit59.i
  call void @__sanitizer_cov_trace_pc() #12
  %call30.i = call i32 @schedule_timeout(i32 noundef %__ret9.1.i) #10
  br label %for.cond.i

if.end22:                                         ; preds = %sisusb_outurb_available.exit59.i
  call void @finish_wait(ptr noundef %wait_q.i, ptr noundef nonnull %__wq_entry.i) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i58.i)
  %cmp23 = icmp slt i32 %retval.0.i58.i, 0
  br i1 %cmp23, label %if.end22.cleanup_crit_edge, label %if.end22.if.end25_crit_edge

if.end22.if.end25_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end25:                                         ; preds = %if.end22.if.end25_crit_edge, %for.body.i.i.if.end25_crit_edge, %do.body.if.end25_crit_edge
  %index.addr.212 = phi i32 [ %retval.0.i58.i, %if.end22.if.end25_crit_edge ], [ %index.addr.1, %do.body.if.end25_crit_edge ], [ %i.08.i.i, %for.body.i.i.if.end25_crit_edge ]
  %arrayidx = getelementptr %struct.sisusb_usb_data, ptr %sisusb, i32 0, i32 11, i32 %index.addr.212
  %26 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx, align 4
  br i1 %cmp.not, label %if.else32, label %if.end8.i.i

if.end8.i.i:                                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp9.i.i = icmp slt i32 %12, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %if.end8.i.i
  %.b71.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i, label %land.rhs16.i.i.cleanup_crit_edge, label %if.then27.i.i, !prof !145

land.rhs16.i.i.cleanup_crit_edge:                 ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 230, i32 noundef 9, ptr noundef null) #10
  br label %cleanup

if.then.i.i.i:                                    ; preds = %if.end8.i.i
  call void @__check_object_size(ptr noundef %27, i32 noundef %12, i1 noundef zeroext false) #10
  call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 156) #10
  %call.i.i = call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i, label %if.then.i.i.i.if.end.i.i_crit_edge, label %land.lhs.true.i.i

if.then.i.i.i.if.end.i.i_crit_edge:               ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i.i.i
  %28 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %userbuffer.addr.0, i32 %12, i32 -1226833920) #13, !srcloc !146
  %asmresult.i.i = extractvalue { i32, i32 } %28, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !145

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %27, i32 noundef %12) #10
  %29 = call i32 @llvm.read_register.i32(metadata !134) #10
  %and.i.i.i.i.i.i = and i32 %29, -16384
  %30 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 4
  %31 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #5, !srcloc !147
  %and.i.i.i.i = and i32 %31, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #10, !srcloc !148
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !149
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef %27, ptr noundef %userbuffer.addr.0, i32 noundef %12) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %31) #10, !srcloc !148
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !149
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %if.then.i.i.i.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %12, %if.then.i.i.i.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %12, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end31, label %if.then11.i.i, !prof !145

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i = sub i32 %12, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %27, i32 %sub.i.i
  %32 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %cleanup

if.end31:                                         ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr = getelementptr i8, ptr %userbuffer.addr.0, i32 %12
  br label %if.end37

if.else32:                                        ; preds = %if.end25
  br i1 %cmp1.not, label %if.else32.if.end37_crit_edge, label %if.then34

if.else32.if.end37_crit_edge:                     ; preds = %if.else32
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37

if.then34:                                        ; preds = %if.else32
  call void @__sanitizer_cov_trace_pc() #12
  %33 = call ptr @memcpy(ptr %27, ptr %kernbuffer.addr.0, i32 %12)
  %add.ptr35 = getelementptr i8, ptr %kernbuffer.addr.0, i32 %12
  br label %if.end37

if.end37:                                         ; preds = %if.then34, %if.else32.if.end37_crit_edge, %if.end31
  %userbuffer.addr.1 = phi ptr [ %add.ptr, %if.end31 ], [ %userbuffer.addr.0, %if.then34 ], [ %userbuffer.addr.0, %if.else32.if.end37_crit_edge ]
  %kernbuffer.addr.1 = phi ptr [ %kernbuffer.addr.0, %if.end31 ], [ %add.ptr35, %if.then34 ], [ %kernbuffer.addr.0, %if.else32.if.end37_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool38.not6268 = icmp eq i32 %12, 0
  br i1 %tobool38.not6268, label %if.end37.if.end62_crit_edge, label %while.body.lr.ph.lr.ph

if.end37.if.end62_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end62

while.body.lr.ph.lr.ph:                           ; preds = %if.end37
  %arrayidx.i = getelementptr %struct.sisusb_usb_data, ptr %sisusb, i32 0, i32 15, i32 %index.addr.212
  %arrayidx2.i = getelementptr %struct.sisusb_usb_data, ptr %sisusb, i32 0, i32 19, i32 %index.addr.212
  %actual_length7.i = getelementptr %struct.sisusb_usb_data, ptr %sisusb, i32 0, i32 19, i32 %index.addr.212, i32 2
  %arrayidx8.i = getelementptr %struct.sisusb_usb_data, ptr %sisusb, i32 0, i32 17, i32 %index.addr.212
  br label %while.body.lr.ph

while.cond.outer:                                 ; preds = %if.then47
  %dec = add nsw i32 %retry.0.ph69, -1
  %tobool38.not62 = icmp eq i32 %thispass.063, 0
  br i1 %tobool38.not62, label %while.cond.outer.cleanup_crit_edge, label %while.cond.outer.while.body.lr.ph_crit_edge

while.cond.outer.while.body.lr.ph_crit_edge:      ; preds = %while.cond.outer
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.lr.ph

while.cond.outer.cleanup_crit_edge:               ; preds = %while.cond.outer
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

while.body.lr.ph:                                 ; preds = %while.cond.outer.while.body.lr.ph_crit_edge, %while.body.lr.ph.lr.ph
  %buffer.0.ph71 = phi ptr [ %27, %while.body.lr.ph.lr.ph ], [ %buffer.064, %while.cond.outer.while.body.lr.ph_crit_edge ]
  %thispass.0.ph70 = phi i32 [ %12, %while.body.lr.ph.lr.ph ], [ %thispass.063, %while.cond.outer.while.body.lr.ph_crit_edge ]
  %retry.0.ph69 = phi i32 [ 5, %while.body.lr.ph.lr.ph ], [ %dec, %while.cond.outer.while.body.lr.ph_crit_edge ]
  br label %while.body

while.body:                                       ; preds = %land.lhs.true.while.body_crit_edge, %while.body.lr.ph
  %buffer.064 = phi ptr [ %buffer.0.ph71, %while.body.lr.ph ], [ %add.ptr57, %land.lhs.true.while.body_crit_edge ]
  %thispass.063 = phi i32 [ %thispass.0.ph70, %while.body.lr.ph ], [ %sub, %land.lhs.true.while.body_crit_edge ]
  %34 = ptrtoint ptr %sisusb to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %sisusb, align 4
  %tobool40.not = icmp eq ptr %35, null
  br i1 %tobool40.not, label %while.body.cleanup_crit_edge, label %if.end42

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end42:                                         ; preds = %while.body
  %36 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx.i, align 4
  %transfer_flags.i = getelementptr inbounds %struct.urb, ptr %37, i32 0, i32 13
  %38 = ptrtoint ptr %transfer_flags.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %transfer_flags.i, align 4
  %39 = ptrtoint ptr %sisusb to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %sisusb, align 4
  %dev1.i.i = getelementptr inbounds %struct.urb, ptr %37, i32 0, i32 8
  %41 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %40, ptr %dev1.i.i, align 4
  %pipe2.i.i = getelementptr inbounds %struct.urb, ptr %37, i32 0, i32 10
  %42 = ptrtoint ptr %pipe2.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %or, ptr %pipe2.i.i, align 4
  %transfer_buffer3.i.i = getelementptr inbounds %struct.urb, ptr %37, i32 0, i32 14
  %43 = ptrtoint ptr %transfer_buffer3.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %buffer.064, ptr %transfer_buffer3.i.i, align 4
  %transfer_buffer_length.i.i = getelementptr inbounds %struct.urb, ptr %37, i32 0, i32 19
  %44 = ptrtoint ptr %transfer_buffer_length.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %thispass.063, ptr %transfer_buffer_length.i.i, align 4
  %complete.i.i = getelementptr inbounds %struct.urb, ptr %37, i32 0, i32 28
  %45 = ptrtoint ptr %complete.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr @sisusb_bulk_completeout, ptr %complete.i.i, align 4
  %context4.i.i = getelementptr inbounds %struct.urb, ptr %37, i32 0, i32 27
  %46 = ptrtoint ptr %context4.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %arrayidx2.i, ptr %context4.i.i, align 4
  %actual_length4.i = getelementptr inbounds %struct.urb, ptr %37, i32 0, i32 20
  %47 = ptrtoint ptr %actual_length4.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %actual_length4.i, align 4
  %48 = ptrtoint ptr %actual_length7.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %spec.select.i, ptr %actual_length7.i, align 4
  %49 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx8.i, align 1
  %51 = or i8 %50, 1
  store i8 %51, ptr %arrayidx8.i, align 1
  %call.i = call i32 @usb_submit_urb(ptr noundef %37, i32 noundef 3264) #10
  %52 = or i32 %call.i, %async.addr.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %if.then.i6, label %if.end42.sisusb_bulkout_msg.exit_crit_edge

if.end42.sisusb_bulkout_msg.exit_crit_edge:       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #12
  br label %sisusb_bulkout_msg.exit

if.then.i6:                                       ; preds = %if.end42
  call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 244) #10
  %54 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx8.i, align 1
  %56 = and i8 %55, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool19.not.i = icmp eq i8 %56, 0
  br i1 %tobool19.not.i, label %if.then.i6.if.end61.i_crit_edge, label %if.then30.i

if.then.i6.if.end61.i_crit_edge:                  ; preds = %if.then.i6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end61.i

if.then30.i:                                      ; preds = %if.then.i6
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry.i5) #10
  %57 = call ptr @memset(ptr %__wq_entry.i5, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry.i5, i32 noundef 0) #10
  %call324.i = call i32 @prepare_to_wait_event(ptr noundef %wait_q.i, ptr noundef nonnull %__wq_entry.i5, i32 noundef 2) #10
  %58 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx8.i, align 1
  %60 = and i8 %59, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %tobool38.not5.i = icmp eq i8 %60, 0
  br i1 %tobool38.not5.i, label %if.then30.i.for.end.i9_crit_edge, label %if.then30.i.cleanup.i8_crit_edge

if.then30.i.cleanup.i8_crit_edge:                 ; preds = %if.then30.i
  br label %cleanup.i8

if.then30.i.for.end.i9_crit_edge:                 ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i9

cleanup.i8:                                       ; preds = %cleanup.i8.cleanup.i8_crit_edge, %if.then30.i.cleanup.i8_crit_edge
  %__ret31.19.i = phi i32 [ %__ret31.1.i, %cleanup.i8.cleanup.i8_crit_edge ], [ 500, %if.then30.i.cleanup.i8_crit_edge ]
  %call58.i = call i32 @schedule_timeout(i32 noundef %__ret31.19.i) #10
  %call32.i = call i32 @prepare_to_wait_event(ptr noundef %wait_q.i, ptr noundef nonnull %__wq_entry.i5, i32 noundef 2) #10
  %61 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx8.i, align 1
  %63 = and i8 %62, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool38.not.i = icmp eq i8 %63, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58.i)
  %tobool44.not.i = icmp eq i32 %call58.i, 0
  %64 = select i1 %tobool38.not.i, i1 %tobool44.not.i, i1 false
  %__ret31.1.i = select i1 %64, i32 1, i32 %call58.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret31.1.i)
  %tobool51.not.i = icmp eq i32 %__ret31.1.i, 0
  %65 = select i1 %tobool38.not.i, i1 true, i1 %tobool51.not.i
  br i1 %65, label %cleanup.i8.for.end.i9_crit_edge, label %cleanup.i8.cleanup.i8_crit_edge

cleanup.i8.cleanup.i8_crit_edge:                  ; preds = %cleanup.i8
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.i8

cleanup.i8.for.end.i9_crit_edge:                  ; preds = %cleanup.i8
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i9

for.end.i9:                                       ; preds = %cleanup.i8.for.end.i9_crit_edge, %if.then30.i.for.end.i9_crit_edge
  call void @finish_wait(ptr noundef %wait_q.i, ptr noundef nonnull %__wq_entry.i5) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i5) #10
  br label %if.end61.i

if.end61.i:                                       ; preds = %for.end.i9, %if.then.i6.if.end61.i_crit_edge
  %66 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %arrayidx8.i, align 1
  %68 = and i8 %67, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %68)
  %tobool67.not.i = icmp eq i8 %68, 0
  br i1 %tobool67.not.i, label %if.else.i, label %sisusb_bulkout_msg.exit.thread

sisusb_bulkout_msg.exit.thread:                   ; preds = %if.end61.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @usb_kill_urb(ptr noundef %37) #10
  %69 = ptrtoint ptr %transferred_len to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 0, ptr %transferred_len, align 4
  br label %if.then47

if.else.i:                                        ; preds = %if.end61.i
  call void @__sanitizer_cov_trace_pc() #12
  %status.i = getelementptr inbounds %struct.urb, ptr %37, i32 0, i32 12
  %70 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %status.i, align 4
  %72 = ptrtoint ptr %actual_length4.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %actual_length4.i, align 4
  br label %sisusb_bulkout_msg.exit

sisusb_bulkout_msg.exit:                          ; preds = %if.else.i, %if.end42.sisusb_bulkout_msg.exit_crit_edge
  %byteswritten.0.i = phi i32 [ %73, %if.else.i ], [ 0, %if.end42.sisusb_bulkout_msg.exit_crit_edge ]
  %retval1.0.i = phi i32 [ %71, %if.else.i ], [ %call.i, %if.end42.sisusb_bulkout_msg.exit_crit_edge ]
  %74 = ptrtoint ptr %transferred_len to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %byteswritten.0.i, ptr %transferred_len, align 4
  %75 = zext i32 %retval1.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %75, ptr @__sancov_gen_cov_switch_values)
  switch i32 %retval1.0.i, label %sisusb_bulkout_msg.exit.cleanup_crit_edge [
    i32 -110, label %sisusb_bulkout_msg.exit.if.then47_crit_edge
    i32 0, label %land.lhs.true
  ]

sisusb_bulkout_msg.exit.if.then47_crit_edge:      ; preds = %sisusb_bulkout_msg.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then47

sisusb_bulkout_msg.exit.cleanup_crit_edge:        ; preds = %sisusb_bulkout_msg.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then47:                                        ; preds = %sisusb_bulkout_msg.exit.if.then47_crit_edge, %sisusb_bulkout_msg.exit.thread
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retry.0.ph69)
  %tobool48.not = icmp eq i32 %retry.0.ph69, 0
  br i1 %tobool48.not, label %if.then47.cleanup_crit_edge, label %while.cond.outer

if.then47.cleanup_crit_edge:                      ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true:                                    ; preds = %sisusb_bulkout_msg.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %byteswritten.0.i)
  %tobool55.not = icmp eq i32 %byteswritten.0.i, 0
  %or.cond = select i1 %tobool43.not.not, i1 true, i1 %tobool55.not
  %sub = sub i32 %thispass.063, %byteswritten.0.i
  %add.ptr57 = getelementptr i8, ptr %buffer.064, i32 %byteswritten.0.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %tobool38.not = icmp eq i32 %sub, 0
  %or.cond139 = select i1 %or.cond, i1 true, i1 %tobool38.not
  br i1 %or.cond139, label %land.lhs.true.if.end62_crit_edge, label %land.lhs.true.while.body_crit_edge

land.lhs.true.while.body_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

land.lhs.true.if.end62_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end62

if.end62:                                         ; preds = %land.lhs.true.if.end62_crit_edge, %if.end37.if.end62_crit_edge
  %76 = ptrtoint ptr %bytes_written to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %bytes_written, align 4
  %add = add i32 %77, %12
  store i32 %add, ptr %bytes_written, align 4
  %sub63 = sub i32 %count.0, %12
  %index.addr.3 = select i1 %brmerge.demorgan, i32 %index.addr.212, i32 -1
  %cmp69 = icmp sgt i32 %sub63, 0
  br i1 %cmp69, label %if.end62.do.body_crit_edge, label %do.end

if.end62.do.body_crit_edge:                       ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

do.end:                                           ; preds = %if.end62
  br i1 %tobool43.not, label %do.end.if.end72_crit_edge, label %if.then71

do.end.if.end72_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end72

if.then71:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %78 = ptrtoint ptr %bytes_written to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %len, ptr %bytes_written, align 4
  br label %if.end72

if.end72:                                         ; preds = %if.then71, %do.end.if.end72_crit_edge
  %79 = ptrtoint ptr %bytes_written to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %bytes_written, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %80, i32 %len)
  %cmp73 = icmp eq i32 %80, %len
  %cond74 = select i1 %cmp73, i32 0, i32 -5
  br label %cleanup

cleanup:                                          ; preds = %if.end72, %if.then47.cleanup_crit_edge, %sisusb_bulkout_msg.exit.cleanup_crit_edge, %while.body.cleanup_crit_edge, %while.cond.outer.cleanup_crit_edge, %if.then11.i.i, %if.then27.i.i, %land.rhs16.i.i.cleanup_crit_edge, %if.end22.cleanup_crit_edge, %lor.lhs.false4.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond74, %if.end72 ], [ -19, %lor.lhs.false4.cleanup_crit_edge ], [ -19, %lor.lhs.false.cleanup_crit_edge ], [ -19, %entry.cleanup_crit_edge ], [ -14, %if.then11.i.i ], [ -14, %if.then27.i.i ], [ -14, %land.rhs16.i.i.cleanup_crit_edge ], [ -19, %while.body.cleanup_crit_edge ], [ %retval1.0.i, %sisusb_bulkout_msg.exit.cleanup_crit_edge ], [ -110, %while.cond.outer.cleanup_crit_edge ], [ -62, %if.then47.cleanup_crit_edge ], [ -5, %if.end22.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %transferred_len) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sisusb_recv_bulk_msg(ptr noundef %sisusb, i32 noundef %ep, ptr nocapture noundef writeonly %kernbuffer, ptr nocapture noundef %bytes_read) unnamed_addr #0 align 64 {
entry:
  %__wq_entry.i = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bytes_read to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %bytes_read, align 4
  %tobool.not = icmp eq ptr %sisusb, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %present = getelementptr inbounds %struct.sisusb_usb_data, ptr %sisusb, i32 0, i32 8
  %1 = ptrtoint ptr %present to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %present, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool1.not = icmp eq i32 %2, 0
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false2

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %3 = ptrtoint ptr %sisusb to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sisusb, align 4
  %tobool3.not = icmp eq ptr %4, null
  br i1 %tobool3.not, label %lor.lhs.false2.cleanup_crit_edge, label %if.end

lor.lhs.false2.cleanup_crit_edge:                 ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false2
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 8
  %shl.i = shl i32 %6, 8
  %shl1.i = shl i32 %ep, 15
  %or.i = or i32 %shl1.i, %shl.i
  %or5 = or i32 %or.i, -1073741696
  %ibuf = getelementptr inbounds %struct.sisusb_usb_data, ptr %sisusb, i32 0, i32 12
  %7 = ptrtoint ptr %ibuf to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ibuf, align 4
  %ibufsize = getelementptr inbounds %struct.sisusb_usb_data, ptr %sisusb, i32 0, i32 14
  %9 = ptrtoint ptr %ibufsize to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ibufsize, align 4
  %call6 = tail call fastcc i32 @sisusb_wait_all_out_complete(ptr noundef nonnull %sisusb)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end.cleanup_crit_edge, label %while.cond.preheader

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

while.cond.preheader:                             ; preds = %if.end
  %sisurbin.i = getelementptr inbounds %struct.sisusb_usb_data, ptr %sisusb, i32 0, i32 16
  %completein.i = getelementptr inbounds %struct.sisusb_usb_data, ptr %sisusb, i32 0, i32 18
  %wait_q.i = getelementptr inbounds %struct.sisusb_usb_data, ptr %sisusb, i32 0, i32 3
  %11 = call i32 @llvm.smin.i32(i32 %10, i32 4)
  br label %while.cond.outer.split

while.cond.outer.split:                           ; preds = %if.then26.while.cond.outer.split_crit_edge, %while.cond.preheader
  %12 = phi i32 [ %11, %while.cond.preheader ], [ %44, %if.then26.while.cond.outer.split_crit_edge ]
  %count.0.ph11 = phi i32 [ 4, %while.cond.preheader ], [ %sub, %if.then26.while.cond.outer.split_crit_edge ]
  %retry.0.ph10 = phi i32 [ 5, %while.cond.preheader ], [ %retry.0, %if.then26.while.cond.outer.split_crit_edge ]
  %kernbuffer.addr.0.ph9 = phi ptr [ %kernbuffer, %while.cond.preheader ], [ %add.ptr34, %if.then26.while.cond.outer.split_crit_edge ]
  br label %while.cond

while.cond:                                       ; preds = %if.then19.while.cond_crit_edge, %while.cond.outer.split
  %retry.0 = phi i32 [ %dec, %if.then19.while.cond_crit_edge ], [ %retry.0.ph10, %while.cond.outer.split ]
  %13 = ptrtoint ptr %sisusb to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sisusb, align 4
  %tobool11.not = icmp eq ptr %14, null
  br i1 %tobool11.not, label %while.cond.cleanup_crit_edge, label %if.end13

while.cond.cleanup_crit_edge:                     ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end13:                                         ; preds = %while.cond
  %15 = ptrtoint ptr %sisurbin.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %sisurbin.i, align 4
  %transfer_flags.i = getelementptr inbounds %struct.urb, ptr %16, i32 0, i32 13
  %17 = ptrtoint ptr %transfer_flags.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %transfer_flags.i, align 4
  %18 = ptrtoint ptr %sisusb to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sisusb, align 4
  %dev1.i.i = getelementptr inbounds %struct.urb, ptr %16, i32 0, i32 8
  %20 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %19, ptr %dev1.i.i, align 4
  %pipe2.i.i = getelementptr inbounds %struct.urb, ptr %16, i32 0, i32 10
  %21 = ptrtoint ptr %pipe2.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %or5, ptr %pipe2.i.i, align 4
  %transfer_buffer3.i.i = getelementptr inbounds %struct.urb, ptr %16, i32 0, i32 14
  %22 = ptrtoint ptr %transfer_buffer3.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %8, ptr %transfer_buffer3.i.i, align 4
  %transfer_buffer_length.i.i = getelementptr inbounds %struct.urb, ptr %16, i32 0, i32 19
  %23 = ptrtoint ptr %transfer_buffer_length.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %12, ptr %transfer_buffer_length.i.i, align 4
  %complete.i.i = getelementptr inbounds %struct.urb, ptr %16, i32 0, i32 28
  %24 = ptrtoint ptr %complete.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @sisusb_bulk_completein, ptr %complete.i.i, align 4
  %context4.i.i = getelementptr inbounds %struct.urb, ptr %16, i32 0, i32 27
  %25 = ptrtoint ptr %context4.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %sisusb, ptr %context4.i.i, align 4
  %actual_length3.i = getelementptr inbounds %struct.urb, ptr %16, i32 0, i32 20
  %26 = ptrtoint ptr %actual_length3.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %actual_length3.i, align 4
  %27 = ptrtoint ptr %completein.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %completein.i, align 4
  %call.i = call i32 @usb_submit_urb(ptr noundef %16, i32 noundef 3264) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.end13.if.else_crit_edge

if.end13.if.else_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

if.then.i:                                        ; preds = %if.end13
  call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 295) #10
  %28 = ptrtoint ptr %completein.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %completein.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool.not.i = icmp eq i8 %29, 0
  br i1 %tobool.not.i, label %if.then14.i, label %if.then.i.sisusb_bulkin_msg.exit_crit_edge

if.then.i.sisusb_bulkin_msg.exit_crit_edge:       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sisusb_bulkin_msg.exit

if.then14.i:                                      ; preds = %if.then.i
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry.i) #10
  %30 = call ptr @memset(ptr %__wq_entry.i, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry.i, i32 noundef 0) #10
  %call165.i = call i32 @prepare_to_wait_event(ptr noundef %wait_q.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 2) #10
  %31 = ptrtoint ptr %completein.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %completein.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool19.not6.not.i = icmp eq i8 %32, 0
  br i1 %tobool19.not6.not.i, label %if.then14.i.cleanup.i_crit_edge, label %if.then14.i.if.end39.i_crit_edge

if.then14.i.if.end39.i_crit_edge:                 ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end39.i

if.then14.i.cleanup.i_crit_edge:                  ; preds = %if.then14.i
  br label %cleanup.i

cleanup.i:                                        ; preds = %cleanup.i.cleanup.i_crit_edge, %if.then14.i.cleanup.i_crit_edge
  %__ret15.18.i = phi i32 [ %__ret15.1.i, %cleanup.i.cleanup.i_crit_edge ], [ 500, %if.then14.i.cleanup.i_crit_edge ]
  %call36.i = call i32 @schedule_timeout(i32 noundef %__ret15.18.i) #10
  %call16.i = call i32 @prepare_to_wait_event(ptr noundef %wait_q.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 2) #10
  %33 = ptrtoint ptr %completein.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %completein.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool19.not.i = icmp eq i8 %34, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36.i)
  %tobool23.not.i = icmp eq i32 %call36.i, 0
  %spec.store.select53.i = select i1 %tobool23.not.i, i32 1, i32 %call36.i
  %__ret15.1.i = select i1 %tobool19.not.i, i32 %call36.i, i32 %spec.store.select53.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret15.1.i)
  %tobool29.not.i = icmp eq i32 %__ret15.1.i, 0
  %not.tobool19.not.i = xor i1 %tobool19.not.i, true
  %35 = select i1 %not.tobool19.not.i, i1 true, i1 %tobool29.not.i
  br i1 %35, label %cleanup.i.if.end39.i_crit_edge, label %cleanup.i.cleanup.i_crit_edge

cleanup.i.cleanup.i_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.i

cleanup.i.if.end39.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end39.i

if.end39.i:                                       ; preds = %cleanup.i.if.end39.i_crit_edge, %if.then14.i.if.end39.i_crit_edge
  call void @finish_wait(ptr noundef %wait_q.i, ptr noundef nonnull %__wq_entry.i) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i) #10
  %36 = ptrtoint ptr %completein.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %.pr.i = load i8, ptr %completein.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr.i)
  %tobool42.not.i = icmp eq i8 %.pr.i, 0
  br i1 %tobool42.not.i, label %if.else.thread, label %if.end39.i.sisusb_bulkin_msg.exit_crit_edge

if.end39.i.sisusb_bulkin_msg.exit_crit_edge:      ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sisusb_bulkin_msg.exit

if.else.thread:                                   ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @usb_kill_urb(ptr noundef %16) #10
  br label %if.then19

sisusb_bulkin_msg.exit:                           ; preds = %if.end39.i.sisusb_bulkin_msg.exit_crit_edge, %if.then.i.sisusb_bulkin_msg.exit_crit_edge
  %status.i = getelementptr inbounds %struct.urb, ptr %16, i32 0, i32 12
  %37 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %status.i, align 4
  %39 = ptrtoint ptr %actual_length3.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %actual_length3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool16.not = icmp eq i32 %40, 0
  br i1 %tobool16.not, label %sisusb_bulkin_msg.exit.if.else_crit_edge, label %if.then26

sisusb_bulkin_msg.exit.if.else_crit_edge:         ; preds = %sisusb_bulkin_msg.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

if.else:                                          ; preds = %sisusb_bulkin_msg.exit.if.else_crit_edge, %if.end13.if.else_crit_edge
  %retval1.0.i4 = phi i32 [ %38, %sisusb_bulkin_msg.exit.if.else_crit_edge ], [ %call.i, %if.end13.if.else_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -110, i32 %retval1.0.i4)
  %cmp18 = icmp eq i32 %retval1.0.i4, -110
  br i1 %cmp18, label %if.else.if.then19_crit_edge, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.else.if.then19_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then19

if.then19:                                        ; preds = %if.else.if.then19_crit_edge, %if.else.thread
  %dec = add i32 %retry.0, -1
  %tobool20.not = icmp eq i32 %retry.0, 0
  br i1 %tobool20.not, label %if.then19.cleanup_crit_edge, label %if.then19.while.cond_crit_edge

if.then19.while.cond_crit_edge:                   ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond

if.then19.cleanup_crit_edge:                      ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then26:                                        ; preds = %sisusb_bulkin_msg.exit
  %41 = ptrtoint ptr %bytes_read to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %bytes_read, align 4
  %add = add i32 %42, %40
  store i32 %add, ptr %bytes_read, align 4
  %sub = sub i32 %count.0.ph11, %40
  %43 = call ptr @memcpy(ptr %kernbuffer.addr.0.ph9, ptr %8, i32 %40)
  %add.ptr34 = getelementptr i8, ptr %kernbuffer.addr.0.ph9, i32 %40
  %cmp = icmp sgt i32 %sub, 0
  %44 = call i32 @llvm.smin.i32(i32 %10, i32 %sub)
  br i1 %cmp, label %if.then26.while.cond.outer.split_crit_edge, label %while.end

if.then26.while.cond.outer.split_crit_edge:       ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.outer.split

while.end:                                        ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #12
  %45 = ptrtoint ptr %bytes_read to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %bytes_read, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %46)
  %cmp37 = icmp eq i32 %46, 4
  %cond38 = select i1 %cmp37, i32 0, i32 -5
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then19.cleanup_crit_edge, %if.else.cleanup_crit_edge, %while.cond.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false2.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond38, %while.end ], [ -19, %lor.lhs.false2.cleanup_crit_edge ], [ -19, %lor.lhs.false.cleanup_crit_edge ], [ -19, %entry.cleanup_crit_edge ], [ -5, %if.end.cleanup_crit_edge ], [ -5, %if.else.cleanup_crit_edge ], [ -62, %if.then19.cleanup_crit_edge ], [ -19, %while.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sisusb_bulk_completeout(ptr nocapture noundef readonly %urb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %context1 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool3.not = icmp eq ptr %3, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %tobool4.not = icmp eq ptr %5, null
  br i1 %tobool4.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false5

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %present = getelementptr inbounds %struct.sisusb_usb_data, ptr %3, i32 0, i32 8
  %6 = ptrtoint ptr %present to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %present, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool6.not = icmp eq i32 %7, 0
  br i1 %tobool6.not, label %lor.lhs.false5.cleanup_crit_edge, label %if.end8

lor.lhs.false5.cleanup_crit_edge:                 ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end8:                                          ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_pc() #12
  %urbindex = getelementptr inbounds %struct.sisusb_urb_context, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %urbindex to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %urbindex, align 4
  %arrayidx = getelementptr %struct.sisusb_usb_data, ptr %3, i32 0, i32 17, i32 %9
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx, align 1
  %12 = and i8 %11, -2
  store i8 %12, ptr %arrayidx, align 1
  %wait_q = getelementptr inbounds %struct.sisusb_usb_data, ptr %3, i32 0, i32 3
  tail call void @__wake_up(ptr noundef %wait_q, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %lor.lhs.false5.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_kill_urb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sisusb_bulk_completein(ptr nocapture noundef readonly %urb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false2

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %present = getelementptr inbounds %struct.sisusb_usb_data, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %present to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %present, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool3.not = icmp eq i32 %5, 0
  br i1 %tobool3.not, label %lor.lhs.false2.cleanup_crit_edge, label %if.end

lor.lhs.false2.cleanup_crit_edge:                 ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #12
  %completein = getelementptr inbounds %struct.sisusb_usb_data, ptr %1, i32 0, i32 18
  %6 = ptrtoint ptr %completein to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %completein, align 4
  %wait_q = getelementptr inbounds %struct.sisusb_usb_data, ptr %1, i32 0, i32 3
  tail call void @__wake_up(ptr noundef %wait_q, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false2.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_urb(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sisusb_probe(ptr noundef %intf, ptr nocapture noundef readnone %id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 -128
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr.i, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1, ptr noundef nonnull @.str.5, i32 noundef %3) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 400) #15
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %kref = getelementptr inbounds %struct.sisusb_usb_data, ptr %call7.i.i, i32 0, i32 2
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #10
  %5 = ptrtoint ptr %kref to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile i32 1, ptr %kref, align 8
  %lock = getelementptr inbounds %struct.sisusb_usb_data, ptr %call7.i.i, i32 0, i32 4
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.9, ptr noundef nonnull @sisusb_probe.__key) #10
  %6 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %add.ptr.i, ptr %call7.i.i, align 8
  %vrambase = getelementptr inbounds %struct.sisusb_usb_data, ptr %call7.i.i, i32 0, i32 21
  %7 = ptrtoint ptr %vrambase to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -805306368, ptr %vrambase, align 4
  %mmiobase = getelementptr inbounds %struct.sisusb_usb_data, ptr %call7.i.i, i32 0, i32 23
  %8 = ptrtoint ptr %mmiobase to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -469762048, ptr %mmiobase, align 4
  %mmiosize = getelementptr inbounds %struct.sisusb_usb_data, ptr %call7.i.i, i32 0, i32 24
  %9 = ptrtoint ptr %mmiosize to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 131072, ptr %mmiosize, align 8
  %ioportbase = getelementptr inbounds %struct.sisusb_usb_data, ptr %call7.i.i, i32 0, i32 25
  %10 = ptrtoint ptr %ioportbase to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 53248, ptr %ioportbase, align 4
  %call7 = tail call i32 @usb_register_dev(ptr noundef %intf, ptr noundef nonnull @usb_sisusb_class) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end16, label %do.end12

do.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %call7.i.i, align 8
  %dev14 = getelementptr inbounds %struct.usb_device, ptr %12, i32 0, i32 15
  %13 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %add.ptr.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev14, ptr noundef nonnull @.str.11, i32 noundef %14) #14
  br label %error_1

if.end16:                                         ; preds = %if.end
  %minor = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 4
  %15 = ptrtoint ptr %minor to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %minor, align 8
  %minor17 = getelementptr inbounds %struct.sisusb_usb_data, ptr %call7.i.i, i32 0, i32 6
  %17 = ptrtoint ptr %minor17 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %minor17, align 8
  %ibufsize = getelementptr inbounds %struct.sisusb_usb_data, ptr %call7.i.i, i32 0, i32 14
  %18 = ptrtoint ptr %ibufsize to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 4096, ptr %ibufsize, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %19 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %19, i32 noundef 3264, i32 noundef 4096) #15
  %ibuf = getelementptr inbounds %struct.sisusb_usb_data, ptr %call7.i.i, i32 0, i32 12
  %20 = ptrtoint ptr %ibuf to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call7.i, ptr %ibuf, align 4
  %tobool20.not = icmp eq ptr %call7.i, null
  br i1 %tobool20.not, label %if.end16.error_2_crit_edge, label %if.end22

if.end16.error_2_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %error_2

if.end22:                                         ; preds = %if.end16
  %numobufs = getelementptr inbounds %struct.sisusb_usb_data, ptr %call7.i.i, i32 0, i32 10
  %21 = ptrtoint ptr %numobufs to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %numobufs, align 8
  %obufsize = getelementptr inbounds %struct.sisusb_usb_data, ptr %call7.i.i, i32 0, i32 13
  %22 = ptrtoint ptr %obufsize to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 65536, ptr %obufsize, align 8
  %call1.i.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 65536, i32 noundef 3264, i32 noundef 4) #16
  %arrayidx = getelementptr %struct.sisusb_usb_data, ptr %call7.i.i, i32 0, i32 11, i32 0
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call1.i.i, ptr %arrayidx, align 4
  %tobool26.not = icmp eq ptr %call1.i.i, null
  br i1 %tobool26.not, label %if.end22.error_3_crit_edge, label %if.end31

if.end22.error_3_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %error_3

if.end31:                                         ; preds = %if.end22
  %24 = ptrtoint ptr %numobufs to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %numobufs, align 8
  %inc = add i32 %25, 1
  store i32 %inc, ptr %numobufs, align 8
  %call1.i.i.1 = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 65536, i32 noundef 3264, i32 noundef 4) #16
  %arrayidx.1 = getelementptr %struct.sisusb_usb_data, ptr %call7.i.i, i32 0, i32 11, i32 1
  %26 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call1.i.i.1, ptr %arrayidx.1, align 8
  %tobool26.not.1 = icmp eq ptr %call1.i.i.1, null
  br i1 %tobool26.not.1, label %if.end31.for.end_crit_edge, label %if.end31.1

if.end31.for.end_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end31.1:                                       ; preds = %if.end31
  %27 = ptrtoint ptr %numobufs to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %numobufs, align 8
  %inc.1 = add i32 %28, 1
  store i32 %inc.1, ptr %numobufs, align 8
  %call1.i.i.2 = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 65536, i32 noundef 3264, i32 noundef 4) #16
  %arrayidx.2 = getelementptr %struct.sisusb_usb_data, ptr %call7.i.i, i32 0, i32 11, i32 2
  %29 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call1.i.i.2, ptr %arrayidx.2, align 4
  %tobool26.not.2 = icmp eq ptr %call1.i.i.2, null
  br i1 %tobool26.not.2, label %if.end31.1.for.end_crit_edge, label %if.end31.2

if.end31.1.for.end_crit_edge:                     ; preds = %if.end31.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end31.2:                                       ; preds = %if.end31.1
  %30 = ptrtoint ptr %numobufs to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %numobufs, align 8
  %inc.2 = add i32 %31, 1
  store i32 %inc.2, ptr %numobufs, align 8
  %call1.i.i.3 = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 65536, i32 noundef 3264, i32 noundef 4) #16
  %arrayidx.3 = getelementptr %struct.sisusb_usb_data, ptr %call7.i.i, i32 0, i32 11, i32 3
  %32 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call1.i.i.3, ptr %arrayidx.3, align 8
  %tobool26.not.3 = icmp eq ptr %call1.i.i.3, null
  br i1 %tobool26.not.3, label %if.end31.2.for.end_crit_edge, label %if.end31.3

if.end31.2.for.end_crit_edge:                     ; preds = %if.end31.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end31.3:                                       ; preds = %if.end31.2
  %33 = ptrtoint ptr %numobufs to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %numobufs, align 8
  %inc.3 = add i32 %34, 1
  store i32 %inc.3, ptr %numobufs, align 8
  %call1.i.i.4 = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 65536, i32 noundef 3264, i32 noundef 4) #16
  %arrayidx.4 = getelementptr %struct.sisusb_usb_data, ptr %call7.i.i, i32 0, i32 11, i32 4
  %35 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call1.i.i.4, ptr %arrayidx.4, align 4
  %tobool26.not.4 = icmp eq ptr %call1.i.i.4, null
  br i1 %tobool26.not.4, label %if.end31.3.for.end_crit_edge, label %if.end31.4

if.end31.3.for.end_crit_edge:                     ; preds = %if.end31.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end31.4:                                       ; preds = %if.end31.3
  %36 = ptrtoint ptr %numobufs to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %numobufs, align 8
  %inc.4 = add i32 %37, 1
  store i32 %inc.4, ptr %numobufs, align 8
  %call1.i.i.5 = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 65536, i32 noundef 3264, i32 noundef 4) #16
  %arrayidx.5 = getelementptr %struct.sisusb_usb_data, ptr %call7.i.i, i32 0, i32 11, i32 5
  %38 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call1.i.i.5, ptr %arrayidx.5, align 8
  %tobool26.not.5 = icmp eq ptr %call1.i.i.5, null
  br i1 %tobool26.not.5, label %if.end31.4.for.end_crit_edge, label %if.end31.5

if.end31.4.for.end_crit_edge:                     ; preds = %if.end31.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end31.5:                                       ; preds = %if.end31.4
  %39 = ptrtoint ptr %numobufs to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %numobufs, align 8
  %inc.5 = add i32 %40, 1
  store i32 %inc.5, ptr %numobufs, align 8
  %call1.i.i.6 = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 65536, i32 noundef 3264, i32 noundef 4) #16
  %arrayidx.6 = getelementptr %struct.sisusb_usb_data, ptr %call7.i.i, i32 0, i32 11, i32 6
  %41 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call1.i.i.6, ptr %arrayidx.6, align 4
  %tobool26.not.6 = icmp eq ptr %call1.i.i.6, null
  br i1 %tobool26.not.6, label %if.end31.5.for.end_crit_edge, label %if.end31.6

if.end31.5.for.end_crit_edge:                     ; preds = %if.end31.5
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end31.6:                                       ; preds = %if.end31.5
  %42 = ptrtoint ptr %numobufs to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %numobufs, align 8
  %inc.6 = add i32 %43, 1
  store i32 %inc.6, ptr %numobufs, align 8
  %call1.i.i.7 = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 65536, i32 noundef 3264, i32 noundef 4) #16
  %arrayidx.7 = getelementptr %struct.sisusb_usb_data, ptr %call7.i.i, i32 0, i32 11, i32 7
  %44 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call1.i.i.7, ptr %arrayidx.7, align 8
  %tobool26.not.7 = icmp eq ptr %call1.i.i.7, null
  br i1 %tobool26.not.7, label %if.end31.6.for.end_crit_edge, label %if.end31.7

if.end31.6.for.end_crit_edge:                     ; preds = %if.end31.6
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end31.7:                                       ; preds = %if.end31.6
  call void @__sanitizer_cov_trace_pc() #12
  %45 = ptrtoint ptr %numobufs to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %numobufs, align 8
  %inc.7 = add i32 %46, 1
  store i32 %inc.7, ptr %numobufs, align 8
  br label %for.end

for.end:                                          ; preds = %if.end31.7, %if.end31.6.for.end_crit_edge, %if.end31.5.for.end_crit_edge, %if.end31.4.for.end_crit_edge, %if.end31.3.for.end_crit_edge, %if.end31.2.for.end_crit_edge, %if.end31.1.for.end_crit_edge, %if.end31.for.end_crit_edge
  %call34 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #10
  %sisurbin = getelementptr inbounds %struct.sisusb_usb_data, ptr %call7.i.i, i32 0, i32 16
  %47 = ptrtoint ptr %sisurbin to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call34, ptr %sisurbin, align 8
  %tobool36.not = icmp eq ptr %call34, null
  br i1 %tobool36.not, label %for.end.error_3_crit_edge, label %if.end38

for.end.error_3_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %error_3

if.end38:                                         ; preds = %for.end
  %completein = getelementptr inbounds %struct.sisusb_usb_data, ptr %call7.i.i, i32 0, i32 18
  %48 = ptrtoint ptr %completein to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 1, ptr %completein, align 4
  %49 = ptrtoint ptr %numobufs to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %numobufs, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %cmp41157 = icmp sgt i32 %50, 0
  br i1 %cmp41157, label %if.end38.for.body42_crit_edge, label %if.end38.do.end60_crit_edge

if.end38.do.end60_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end60

if.end38.for.body42_crit_edge:                    ; preds = %if.end38
  br label %for.body42

for.body42:                                       ; preds = %if.end49.for.body42_crit_edge, %if.end38.for.body42_crit_edge
  %i.1158 = phi i32 [ %inc56, %if.end49.for.body42_crit_edge ], [ 0, %if.end38.for.body42_crit_edge ]
  %call43 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #10
  %arrayidx44 = getelementptr %struct.sisusb_usb_data, ptr %call7.i.i, i32 0, i32 15, i32 %i.1158
  %51 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call43, ptr %arrayidx44, align 4
  %tobool47.not = icmp eq ptr %call43, null
  br i1 %tobool47.not, label %if.then48, label %if.end49

if.then48:                                        ; preds = %for.body42
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @sisusb_free_urbs(ptr noundef nonnull %call7.i.i)
  br label %error_3

if.end49:                                         ; preds = %for.body42
  %arrayidx50 = getelementptr %struct.sisusb_usb_data, ptr %call7.i.i, i32 0, i32 19, i32 %i.1158
  %52 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %call7.i.i, ptr %arrayidx50, align 4
  %urbindex = getelementptr %struct.sisusb_usb_data, ptr %call7.i.i, i32 0, i32 19, i32 %i.1158, i32 1
  %53 = ptrtoint ptr %urbindex to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %i.1158, ptr %urbindex, align 4
  %arrayidx54 = getelementptr %struct.sisusb_usb_data, ptr %call7.i.i, i32 0, i32 17, i32 %i.1158
  %54 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 0, ptr %arrayidx54, align 1
  %inc56 = add nuw nsw i32 %i.1158, 1
  %55 = ptrtoint ptr %numobufs to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %numobufs, align 8
  %cmp41 = icmp slt i32 %inc56, %56
  br i1 %cmp41, label %if.end49.for.body42_crit_edge, label %if.end49.do.end60_crit_edge

if.end49.do.end60_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end60

if.end49.for.body42_crit_edge:                    ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body42

do.end60:                                         ; preds = %if.end49.do.end60_crit_edge, %if.end38.do.end60_crit_edge
  %.lcssa = phi i32 [ %50, %if.end38.do.end60_crit_edge ], [ %56, %if.end49.do.end60_crit_edge ]
  %57 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %call7.i.i, align 8
  %dev62 = getelementptr inbounds %struct.usb_device, ptr %58, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev62, ptr noundef nonnull @.str.15, i32 noundef %.lcssa) #14
  %wait_q = getelementptr inbounds %struct.sisusb_usb_data, ptr %call7.i.i, i32 0, i32 3
  tail call void @__init_waitqueue_head(ptr noundef %wait_q, ptr noundef nonnull @.str.18, ptr noundef nonnull @sisusb_probe.__key.17) #10
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %59 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %60 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %call7.i.i, align 8
  %call68 = tail call ptr @usb_get_dev(ptr noundef %61) #10
  %present = getelementptr inbounds %struct.sisusb_usb_data, ptr %call7.i.i, i32 0, i32 8
  %62 = ptrtoint ptr %present to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 1, ptr %present, align 8
  %speed = getelementptr i8, ptr %1, i32 -100
  %63 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %speed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %64)
  %cmp69 = icmp eq i32 %64, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %64)
  %cmp71 = icmp ugt i32 %64, 4
  %or.cond = or i1 %cmp69, %cmp71
  br i1 %or.cond, label %if.then72, label %do.end84

if.then72:                                        ; preds = %do.end60
  %call73 = tail call fastcc i32 @sisusb_init_gfxdevice(ptr noundef nonnull %call7.i.i, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %tobool74.not = icmp eq i32 %call73, 0
  br i1 %tobool74.not, label %if.then72.if.end87_crit_edge, label %do.end78

if.then72.if.end87_crit_edge:                     ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end87

do.end78:                                         ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #12
  %65 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %call7.i.i, align 8
  %dev80 = getelementptr inbounds %struct.usb_device, ptr %66, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev80, ptr noundef nonnull @.str.20) #14
  br label %if.end87

do.end84:                                         ; preds = %do.end60
  call void @__sanitizer_cov_trace_pc() #12
  %67 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %call7.i.i, align 8
  %dev86 = getelementptr inbounds %struct.usb_device, ptr %68, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev86, ptr noundef nonnull @.str.23) #14
  br label %if.end87

if.end87:                                         ; preds = %do.end84, %do.end78, %if.then72.if.end87_crit_edge
  %ready = getelementptr inbounds %struct.sisusb_usb_data, ptr %call7.i.i, i32 0, i32 9
  %69 = ptrtoint ptr %ready to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 1, ptr %ready, align 4
  br label %cleanup

error_3:                                          ; preds = %if.then48, %for.end.error_3_crit_edge, %if.end22.error_3_crit_edge
  tail call fastcc void @sisusb_free_buffers(ptr noundef nonnull %call7.i.i)
  br label %error_2

error_2:                                          ; preds = %error_3, %if.end16.error_2_crit_edge
  tail call void @usb_deregister_dev(ptr noundef %intf, ptr noundef nonnull @usb_sisusb_class) #10
  br label %error_1

error_1:                                          ; preds = %error_2, %do.end12
  %retval1.2 = phi i32 [ -19, %do.end12 ], [ -12, %error_2 ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %error_1, %if.end87, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval1.2, %error_1 ], [ 0, %if.end87 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sisusb_disconnect(ptr noundef %intf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @usb_deregister_dev(ptr noundef %intf, ptr noundef nonnull @usb_sisusb_class) #10
  %lock = getelementptr inbounds %struct.sisusb_usb_data, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #10
  %call1 = tail call fastcc i32 @sisusb_wait_all_out_complete(ptr noundef nonnull %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.then3, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

if.then3:                                         ; preds = %if.end
  %numobufs.i.i = getelementptr inbounds %struct.sisusb_usb_data, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %numobufs.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %numobufs.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp4.i.i = icmp sgt i32 %3, 0
  br i1 %cmp4.i.i, label %if.then3.for.body.i.i_crit_edge, label %if.then3.if.end4_crit_edge

if.then3.if.end4_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

if.then3.for.body.i.i_crit_edge:                  ; preds = %if.then3
  br label %for.body.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i
  %inc.i.i = add nuw nsw i32 %i.05.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %3
  br i1 %exitcond.not.i.i, label %for.cond.i.i.if.end4_crit_edge, label %for.cond.i.i.for.body.i.i_crit_edge

for.cond.i.i.for.body.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

for.cond.i.i.if.end4_crit_edge:                   ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

for.body.i.i:                                     ; preds = %for.cond.i.i.for.body.i.i_crit_edge, %if.then3.for.body.i.i_crit_edge
  %i.05.i.i = phi i32 [ %inc.i.i, %for.cond.i.i.for.body.i.i_crit_edge ], [ 0, %if.then3.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.sisusb_usb_data, ptr %1, i32 0, i32 17, i32 %i.05.i.i
  %4 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx.i.i, align 1
  %6 = and i8 %5, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.i.i = icmp eq i8 %6, 0
  br i1 %tobool.not.i.i, label %for.cond.i.i, label %for.body.i.i.for.body.i_crit_edge

for.body.i.i.for.body.i_crit_edge:                ; preds = %for.body.i.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.i.i.for.body.i_crit_edge
  %i.015.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.body.i.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.sisusb_usb_data, ptr %1, i32 0, i32 17, i32 %i.015.i
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx.i, align 1
  %9 = and i8 %8, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool1.not.i = icmp eq i8 %9, 0
  br i1 %tobool1.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then2.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.then2.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx3.i = getelementptr %struct.sisusb_usb_data, ptr %1, i32 0, i32 15, i32 %i.015.i
  %10 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx3.i, align 4
  tail call void @usb_kill_urb(ptr noundef %11) #10
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then2.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.015.i, 1
  %12 = ptrtoint ptr %numobufs.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %numobufs.i.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %13
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.if.end4_crit_edge

for.inc.i.if.end4_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

if.end4:                                          ; preds = %for.inc.i.if.end4_crit_edge, %for.cond.i.i.if.end4_crit_edge, %if.then3.if.end4_crit_edge, %if.end.if.end4_crit_edge
  %14 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %driver_data.i.i, align 4
  %present = getelementptr inbounds %struct.sisusb_usb_data, ptr %1, i32 0, i32 8
  %15 = ptrtoint ptr %present to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %present, align 4
  %ready = getelementptr inbounds %struct.sisusb_usb_data, ptr %1, i32 0, i32 9
  %16 = ptrtoint ptr %ready to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %ready, align 4
  tail call void @mutex_unlock(ptr noundef %lock) #10
  %kref = getelementptr inbounds %struct.sisusb_usb_data, ptr %1, i32 0, i32 2
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !150
  tail call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #10
  %17 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #10, !srcloc !151
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %17, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !145

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef 3) #10
  br label %cleanup

if.then.i:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !152
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 4
  tail call void @usb_put_dev(ptr noundef %19) #10
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %1, align 4
  tail call fastcc void @sisusb_free_buffers(ptr noundef nonnull %1) #10
  tail call fastcc void @sisusb_free_urbs(ptr noundef nonnull %1) #10
  tail call void @kfree(ptr noundef nonnull %1) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_dev(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_urb(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_get_dev(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sisusb_init_gfxdevice(ptr noundef %sisusb, i32 noundef %initscreen) unnamed_addr #0 align 64 {
entry:
  %j.i.i = alloca i32, align 4
  %bytes_transferred.i.i.i59.i = alloca i32, align 4
  %packet.i.i60.i = alloca %struct.sisusb_packet, align 2
  %bytes_transferred.i.i.i49.i = alloca i32, align 4
  %packet.i.i50.i = alloca %struct.sisusb_packet, align 2
  %bytes_transferred.i.i.i.i = alloca i32, align 4
  %packet.i.i.i = alloca %struct.sisusb_packet, align 2
  %tmp8.i = alloca i8, align 1
  %tmp82.i = alloca i8, align 1
  %ramtype.i = alloca i8, align 1
  %bytes_transferred.i206.i = alloca i32, align 4
  %bytes_transferred.i.i198.i = alloca i32, align 4
  %packet.i199.i = alloca %struct.sisusb_packet, align 2
  %bytes_transferred.i.i190.i = alloca i32, align 4
  %packet.i191.i = alloca %struct.sisusb_packet, align 2
  %bytes_transferred.i.i182.i = alloca i32, align 4
  %packet.i183.i = alloca %struct.sisusb_packet, align 2
  %bytes_transferred.i.i174.i = alloca i32, align 4
  %packet.i175.i = alloca %struct.sisusb_packet, align 2
  %bytes_transferred.i.i166.i = alloca i32, align 4
  %packet.i167.i = alloca %struct.sisusb_packet, align 2
  %bytes_transferred.i.i158.i = alloca i32, align 4
  %packet.i159.i = alloca %struct.sisusb_packet, align 2
  %bytes_transferred.i.i.i = alloca i32, align 4
  %packet.i.i = alloca %struct.sisusb_packet, align 2
  %bytes_transferred.i147.i = alloca i32, align 4
  %bytes_transferred.i136.i = alloca i32, align 4
  %tmp.i137.i = alloca i32, align 4
  %bytes_transferred.i125.i = alloca i32, align 4
  %bytes_transferred.i114.i = alloca i32, align 4
  %bytes_transferred.i103.i = alloca i32, align 4
  %bytes_transferred.i.i = alloca i32, align 4
  %packet.i = alloca %struct.sisusb_packet, align 2
  %tmp32.i = alloca i32, align 4
  %tmp32 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp32) #10
  %0 = ptrtoint ptr %tmp32 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %tmp32, align 4, !annotation !144
  %devinit = getelementptr inbounds %struct.sisusb_usb_data, ptr %sisusb, i32 0, i32 26
  %1 = ptrtoint ptr %devinit to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %devinit, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %2)
  %cmp = icmp eq i8 %2, 1
  br i1 %cmp, label %if.then, label %entry.if.then36_crit_edge

entry.if.then36_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then36

if.then:                                          ; preds = %entry
  %call = call fastcc i32 @sisusb_read_pci_config(ptr noundef %sisusb, i32 noundef 16, ptr noundef nonnull %tmp32)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %if.then
  %3 = ptrtoint ptr %tmp32 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %tmp32, align 4
  %call7 = call fastcc i32 @sisusb_read_pci_config(ptr noundef %sisusb, i32 noundef 20, ptr noundef nonnull %tmp32)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool9.not = icmp eq i32 %call7, 0
  br i1 %tobool9.not, label %if.end11, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %5 = ptrtoint ptr %tmp32 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %tmp32, align 4
  %call18 = call fastcc i32 @sisusb_read_pci_config(ptr noundef %sisusb, i32 noundef 24, ptr noundef nonnull %tmp32)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool20.not = icmp eq i32 %call18, 0
  br i1 %tobool20.not, label %if.end29, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end29:                                         ; preds = %if.end11
  %and12 = and i32 %6, -16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -469762048, i32 %and12)
  %cmp13 = icmp eq i32 %and12, -469762048
  %and = and i32 %4, -16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -805306368, i32 %and)
  %cmp3 = icmp eq i32 %and, -805306368
  %inc16 = select i1 %cmp3, i32 2, i32 1
  %spec.select = zext i1 %cmp3 to i32
  %spec.select85 = select i1 %cmp13, i32 %inc16, i32 %spec.select
  %7 = ptrtoint ptr %tmp32 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %tmp32, align 4
  %and23 = and i32 %8, -16
  call void @__sanitizer_cov_trace_const_cmp4(i32 53248, i32 %and23)
  %cmp24 = icmp eq i32 %and23, 53248
  %inc27 = zext i1 %cmp24 to i32
  %spec.select86 = add nuw nsw i32 %spec.select85, %inc27
  %9 = ptrtoint ptr %devinit to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %devinit, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %cmp32 = icmp ne i8 %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %spec.select86)
  %cmp34.not = icmp eq i32 %spec.select86, 3
  %or.cond = select i1 %cmp32, i1 %cmp34.not, i1 false
  br i1 %or.cond, label %if.end29.if.then47_crit_edge, label %if.end29.if.then36_crit_edge

if.end29.if.then36_crit_edge:                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then36

if.end29.if.then47_crit_edge:                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then47

if.then36:                                        ; preds = %if.end29.if.then36_crit_edge, %entry.if.then36_crit_edge
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %packet.i) #10
  %11 = getelementptr inbounds %struct.sisusb_packet, ptr %packet.i, i32 0, i32 1
  %12 = getelementptr inbounds %struct.sisusb_packet, ptr %packet.i, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp32.i) #10
  %13 = ptrtoint ptr %tmp32.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %tmp32.i, align 4, !annotation !144
  %14 = ptrtoint ptr %packet.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 31, ptr %packet.i, align 2
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_storeN_noabort(i32 %15, i32 4)
  store i32 804, ptr %11, align 2
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_storeN_noabort(i32 %16, i32 4)
  store i32 4, ptr %12, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bytes_transferred.i.i) #10
  %17 = ptrtoint ptr %bytes_transferred.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %bytes_transferred.i.i, align 4
  %call.i.i = tail call fastcc i32 @sisusb_wait_all_out_complete(ptr noundef %sisusb) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.then36.sisusb_send_bridge_packet.exit.i_crit_edge, label %do.body.i.i

if.then36.sisusb_send_bridge_packet.exit.i_crit_edge: ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #12
  br label %sisusb_send_bridge_packet.exit.i

do.body.i.i:                                      ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #12
  %18 = ptrtoint ptr %packet.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %packet.i, align 2
  %20 = tail call i16 @llvm.bswap.i16(i16 %19) #10
  %21 = ptrtoint ptr %packet.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %20, ptr %packet.i, align 2
  %22 = ptrtoint ptr %11 to i32
  call void @__asan_loadN_noabort(i32 %22, i32 4)
  %23 = load i32, ptr %11, align 2
  %24 = tail call i32 @llvm.bswap.i32(i32 %23) #10
  %25 = ptrtoint ptr %11 to i32
  call void @__asan_storeN_noabort(i32 %25, i32 4)
  store i32 %24, ptr %11, align 2
  %26 = ptrtoint ptr %12 to i32
  call void @__asan_loadN_noabort(i32 %26, i32 4)
  %27 = load i32, ptr %12, align 2
  %28 = tail call i32 @llvm.bswap.i32(i32 %27) #10
  %29 = ptrtoint ptr %12 to i32
  call void @__asan_storeN_noabort(i32 %29, i32 4)
  store i32 %28, ptr %12, align 2
  %call7.i.i = call fastcc i32 @sisusb_send_bulk_msg(ptr noundef %sisusb, i32 noundef 13, i32 noundef 10, ptr noundef nonnull %packet.i, ptr noundef null, i32 noundef 0, ptr noundef nonnull %bytes_transferred.i.i, i32 noundef 0) #10
  br label %sisusb_send_bridge_packet.exit.i

sisusb_send_bridge_packet.exit.i:                 ; preds = %do.body.i.i, %if.then36.sisusb_send_bridge_packet.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ 1, %if.then36.sisusb_send_bridge_packet.exit.i_crit_edge ], [ %call7.i.i, %do.body.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bytes_transferred.i.i) #10
  %30 = ptrtoint ptr %packet.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 31, ptr %packet.i, align 2
  %31 = ptrtoint ptr %11 to i32
  call void @__asan_storeN_noabort(i32 %31, i32 4)
  store i32 868, ptr %11, align 2
  %32 = ptrtoint ptr %12 to i32
  call void @__asan_storeN_noabort(i32 %32, i32 4)
  store i32 4, ptr %12, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bytes_transferred.i103.i) #10
  %33 = ptrtoint ptr %bytes_transferred.i103.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %bytes_transferred.i103.i, align 4
  %call.i105.i = call fastcc i32 @sisusb_wait_all_out_complete(ptr noundef %sisusb) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i105.i)
  %tobool.not.i106.i = icmp eq i32 %call.i105.i, 0
  br i1 %tobool.not.i106.i, label %sisusb_send_bridge_packet.exit.i.sisusb_send_bridge_packet.exit113.i_crit_edge, label %do.body.i111.i

sisusb_send_bridge_packet.exit.i.sisusb_send_bridge_packet.exit113.i_crit_edge: ; preds = %sisusb_send_bridge_packet.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sisusb_send_bridge_packet.exit113.i

do.body.i111.i:                                   ; preds = %sisusb_send_bridge_packet.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %34 = ptrtoint ptr %packet.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %packet.i, align 2
  %36 = call i16 @llvm.bswap.i16(i16 %35) #10
  %37 = ptrtoint ptr %packet.i to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %36, ptr %packet.i, align 2
  %38 = ptrtoint ptr %11 to i32
  call void @__asan_loadN_noabort(i32 %38, i32 4)
  %39 = load i32, ptr %11, align 2
  %40 = call i32 @llvm.bswap.i32(i32 %39) #10
  %41 = ptrtoint ptr %11 to i32
  call void @__asan_storeN_noabort(i32 %41, i32 4)
  store i32 %40, ptr %11, align 2
  %42 = ptrtoint ptr %12 to i32
  call void @__asan_loadN_noabort(i32 %42, i32 4)
  %43 = load i32, ptr %12, align 2
  %44 = call i32 @llvm.bswap.i32(i32 %43) #10
  %45 = ptrtoint ptr %12 to i32
  call void @__asan_storeN_noabort(i32 %45, i32 4)
  store i32 %44, ptr %12, align 2
  %call7.i109.i = call fastcc i32 @sisusb_send_bulk_msg(ptr noundef %sisusb, i32 noundef 13, i32 noundef 10, ptr noundef nonnull %packet.i, ptr noundef null, i32 noundef 0, ptr noundef nonnull %bytes_transferred.i103.i, i32 noundef 0) #10
  br label %sisusb_send_bridge_packet.exit113.i

sisusb_send_bridge_packet.exit113.i:              ; preds = %do.body.i111.i, %sisusb_send_bridge_packet.exit.i.sisusb_send_bridge_packet.exit113.i_crit_edge
  %retval.0.i112.i = phi i32 [ 1, %sisusb_send_bridge_packet.exit.i.sisusb_send_bridge_packet.exit113.i_crit_edge ], [ %call7.i109.i, %do.body.i111.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bytes_transferred.i103.i) #10
  %or.i = or i32 %retval.0.i112.i, %retval.0.i.i
  %46 = ptrtoint ptr %packet.i to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 31, ptr %packet.i, align 2
  %47 = ptrtoint ptr %11 to i32
  call void @__asan_storeN_noabort(i32 %47, i32 4)
  store i32 900, ptr %11, align 2
  %48 = ptrtoint ptr %12 to i32
  call void @__asan_storeN_noabort(i32 %48, i32 4)
  store i32 4, ptr %12, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bytes_transferred.i114.i) #10
  %49 = ptrtoint ptr %bytes_transferred.i114.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %bytes_transferred.i114.i, align 4
  %call.i116.i = call fastcc i32 @sisusb_wait_all_out_complete(ptr noundef %sisusb) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i116.i)
  %tobool.not.i117.i = icmp eq i32 %call.i116.i, 0
  br i1 %tobool.not.i117.i, label %sisusb_send_bridge_packet.exit113.i.sisusb_send_bridge_packet.exit124.i_crit_edge, label %do.body.i122.i

sisusb_send_bridge_packet.exit113.i.sisusb_send_bridge_packet.exit124.i_crit_edge: ; preds = %sisusb_send_bridge_packet.exit113.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sisusb_send_bridge_packet.exit124.i

do.body.i122.i:                                   ; preds = %sisusb_send_bridge_packet.exit113.i
  call void @__sanitizer_cov_trace_pc() #12
  %50 = ptrtoint ptr %packet.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %packet.i, align 2
  %52 = call i16 @llvm.bswap.i16(i16 %51) #10
  %53 = ptrtoint ptr %packet.i to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %52, ptr %packet.i, align 2
  %54 = ptrtoint ptr %11 to i32
  call void @__asan_loadN_noabort(i32 %54, i32 4)
  %55 = load i32, ptr %11, align 2
  %56 = call i32 @llvm.bswap.i32(i32 %55) #10
  %57 = ptrtoint ptr %11 to i32
  call void @__asan_storeN_noabort(i32 %57, i32 4)
  store i32 %56, ptr %11, align 2
  %58 = ptrtoint ptr %12 to i32
  call void @__asan_loadN_noabort(i32 %58, i32 4)
  %59 = load i32, ptr %12, align 2
  %60 = call i32 @llvm.bswap.i32(i32 %59) #10
  %61 = ptrtoint ptr %12 to i32
  call void @__asan_storeN_noabort(i32 %61, i32 4)
  store i32 %60, ptr %12, align 2
  %call7.i120.i = call fastcc i32 @sisusb_send_bulk_msg(ptr noundef %sisusb, i32 noundef 13, i32 noundef 10, ptr noundef nonnull %packet.i, ptr noundef null, i32 noundef 0, ptr noundef nonnull %bytes_transferred.i114.i, i32 noundef 0) #10
  br label %sisusb_send_bridge_packet.exit124.i

sisusb_send_bridge_packet.exit124.i:              ; preds = %do.body.i122.i, %sisusb_send_bridge_packet.exit113.i.sisusb_send_bridge_packet.exit124.i_crit_edge
  %retval.0.i123.i = phi i32 [ 1, %sisusb_send_bridge_packet.exit113.i.sisusb_send_bridge_packet.exit124.i_crit_edge ], [ %call7.i120.i, %do.body.i122.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bytes_transferred.i114.i) #10
  %or9.i = or i32 %or.i, %retval.0.i123.i
  %62 = ptrtoint ptr %packet.i to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 31, ptr %packet.i, align 2
  %63 = ptrtoint ptr %11 to i32
  call void @__asan_storeN_noabort(i32 %63, i32 4)
  store i32 256, ptr %11, align 2
  %64 = ptrtoint ptr %12 to i32
  call void @__asan_storeN_noabort(i32 %64, i32 4)
  store i32 1792, ptr %12, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bytes_transferred.i125.i) #10
  %65 = ptrtoint ptr %bytes_transferred.i125.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 0, ptr %bytes_transferred.i125.i, align 4
  %call.i127.i = call fastcc i32 @sisusb_wait_all_out_complete(ptr noundef %sisusb) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i127.i)
  %tobool.not.i128.i = icmp eq i32 %call.i127.i, 0
  br i1 %tobool.not.i128.i, label %sisusb_send_bridge_packet.exit124.i.sisusb_send_bridge_packet.exit135.i_crit_edge, label %do.body.i133.i

sisusb_send_bridge_packet.exit124.i.sisusb_send_bridge_packet.exit135.i_crit_edge: ; preds = %sisusb_send_bridge_packet.exit124.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sisusb_send_bridge_packet.exit135.i

do.body.i133.i:                                   ; preds = %sisusb_send_bridge_packet.exit124.i
  call void @__sanitizer_cov_trace_pc() #12
  %66 = ptrtoint ptr %packet.i to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %packet.i, align 2
  %68 = call i16 @llvm.bswap.i16(i16 %67) #10
  %69 = ptrtoint ptr %packet.i to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 %68, ptr %packet.i, align 2
  %70 = ptrtoint ptr %11 to i32
  call void @__asan_loadN_noabort(i32 %70, i32 4)
  %71 = load i32, ptr %11, align 2
  %72 = call i32 @llvm.bswap.i32(i32 %71) #10
  %73 = ptrtoint ptr %11 to i32
  call void @__asan_storeN_noabort(i32 %73, i32 4)
  store i32 %72, ptr %11, align 2
  %74 = ptrtoint ptr %12 to i32
  call void @__asan_loadN_noabort(i32 %74, i32 4)
  %75 = load i32, ptr %12, align 2
  %76 = call i32 @llvm.bswap.i32(i32 %75) #10
  %77 = ptrtoint ptr %12 to i32
  call void @__asan_storeN_noabort(i32 %77, i32 4)
  store i32 %76, ptr %12, align 2
  %call7.i131.i = call fastcc i32 @sisusb_send_bulk_msg(ptr noundef %sisusb, i32 noundef 13, i32 noundef 10, ptr noundef nonnull %packet.i, ptr noundef null, i32 noundef 0, ptr noundef nonnull %bytes_transferred.i125.i, i32 noundef 0) #10
  br label %sisusb_send_bridge_packet.exit135.i

sisusb_send_bridge_packet.exit135.i:              ; preds = %do.body.i133.i, %sisusb_send_bridge_packet.exit124.i.sisusb_send_bridge_packet.exit135.i_crit_edge
  %retval.0.i134.i = phi i32 [ 1, %sisusb_send_bridge_packet.exit124.i.sisusb_send_bridge_packet.exit135.i_crit_edge ], [ %call7.i131.i, %do.body.i133.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bytes_transferred.i125.i) #10
  %or14.i = or i32 %or9.i, %retval.0.i134.i
  %78 = ptrtoint ptr %packet.i to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 15, ptr %packet.i, align 2
  %79 = ptrtoint ptr %11 to i32
  call void @__asan_storeN_noabort(i32 %79, i32 4)
  store i32 4, ptr %11, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bytes_transferred.i136.i) #10
  %80 = ptrtoint ptr %bytes_transferred.i136.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 0, ptr %bytes_transferred.i136.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i137.i) #10
  %81 = ptrtoint ptr %tmp.i137.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 -1, ptr %tmp.i137.i, align 4, !annotation !144
  %82 = ptrtoint ptr %12 to i32
  call void @__asan_storeN_noabort(i32 %82, i32 4)
  store i32 0, ptr %12, align 2
  %call.i138.i = call fastcc i32 @sisusb_wait_all_out_complete(ptr noundef %sisusb) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i138.i)
  %tobool.not.i139.i = icmp eq i32 %call.i138.i, 0
  br i1 %tobool.not.i139.i, label %sisusb_send_bridge_packet.exit135.i.sisusb_send_bridge_packet.exit146.i_crit_edge, label %do.body.i144.i

sisusb_send_bridge_packet.exit135.i.sisusb_send_bridge_packet.exit146.i_crit_edge: ; preds = %sisusb_send_bridge_packet.exit135.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sisusb_send_bridge_packet.exit146.i

do.body.i144.i:                                   ; preds = %sisusb_send_bridge_packet.exit135.i
  %83 = ptrtoint ptr %packet.i to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %packet.i, align 2
  %85 = call i16 @llvm.bswap.i16(i16 %84) #10
  %86 = ptrtoint ptr %packet.i to i32
  call void @__asan_store2_noabort(i32 %86)
  store i16 %85, ptr %packet.i, align 2
  %87 = ptrtoint ptr %11 to i32
  call void @__asan_loadN_noabort(i32 %87, i32 4)
  %88 = load i32, ptr %11, align 2
  %89 = call i32 @llvm.bswap.i32(i32 %88) #10
  %90 = ptrtoint ptr %11 to i32
  call void @__asan_storeN_noabort(i32 %90, i32 4)
  store i32 %89, ptr %11, align 2
  %91 = ptrtoint ptr %12 to i32
  call void @__asan_loadN_noabort(i32 %91, i32 4)
  %92 = load i32, ptr %12, align 2
  %93 = call i32 @llvm.bswap.i32(i32 %92) #10
  %94 = ptrtoint ptr %12 to i32
  call void @__asan_storeN_noabort(i32 %94, i32 4)
  store i32 %93, ptr %12, align 2
  %call7.i142.i = call fastcc i32 @sisusb_send_bulk_msg(ptr noundef %sisusb, i32 noundef 13, i32 noundef 6, ptr noundef nonnull %packet.i, ptr noundef null, i32 noundef 0, ptr noundef nonnull %bytes_transferred.i136.i, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i142.i)
  %cmp8.i143.i = icmp eq i32 %call7.i142.i, 0
  br i1 %cmp8.i143.i, label %if.then10.i.i, label %do.body.i144.i.sisusb_send_bridge_packet.exit146.i_crit_edge

do.body.i144.i.sisusb_send_bridge_packet.exit146.i_crit_edge: ; preds = %do.body.i144.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sisusb_send_bridge_packet.exit146.i

if.then10.i.i:                                    ; preds = %do.body.i144.i
  call void @__sanitizer_cov_trace_pc() #12
  %call11.i.i = call fastcc i32 @sisusb_recv_bulk_msg(ptr noundef %sisusb, i32 noundef 13, ptr noundef nonnull %tmp.i137.i, ptr noundef nonnull %bytes_transferred.i136.i) #10
  %95 = ptrtoint ptr %tmp.i137.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %tmp.i137.i, align 4
  %97 = call i32 @llvm.bswap.i32(i32 %96) #10
  %98 = ptrtoint ptr %12 to i32
  call void @__asan_storeN_noabort(i32 %98, i32 4)
  store i32 %97, ptr %12, align 2
  br label %sisusb_send_bridge_packet.exit146.i

sisusb_send_bridge_packet.exit146.i:              ; preds = %if.then10.i.i, %do.body.i144.i.sisusb_send_bridge_packet.exit146.i_crit_edge, %sisusb_send_bridge_packet.exit135.i.sisusb_send_bridge_packet.exit146.i_crit_edge
  %retval.0.i145.i = phi i32 [ 1, %sisusb_send_bridge_packet.exit135.i.sisusb_send_bridge_packet.exit146.i_crit_edge ], [ %call11.i.i, %if.then10.i.i ], [ %call7.i142.i, %do.body.i144.i.sisusb_send_bridge_packet.exit146.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i137.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bytes_transferred.i136.i) #10
  %or18.i = or i32 %or14.i, %retval.0.i145.i
  %99 = ptrtoint ptr %12 to i32
  call void @__asan_loadN_noabort(i32 %99, i32 4)
  %100 = load i32, ptr %12, align 2
  %or20.i = or i32 %100, 23
  store i32 %or20.i, ptr %12, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bytes_transferred.i147.i) #10
  %101 = ptrtoint ptr %bytes_transferred.i147.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 0, ptr %bytes_transferred.i147.i, align 4
  %call.i149.i = call fastcc i32 @sisusb_wait_all_out_complete(ptr noundef %sisusb) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i149.i)
  %tobool.not.i150.i = icmp eq i32 %call.i149.i, 0
  br i1 %tobool.not.i150.i, label %sisusb_send_bridge_packet.exit146.i.sisusb_send_bridge_packet.exit157.i_crit_edge, label %do.body.i155.i

sisusb_send_bridge_packet.exit146.i.sisusb_send_bridge_packet.exit157.i_crit_edge: ; preds = %sisusb_send_bridge_packet.exit146.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sisusb_send_bridge_packet.exit157.i

do.body.i155.i:                                   ; preds = %sisusb_send_bridge_packet.exit146.i
  call void @__sanitizer_cov_trace_pc() #12
  %102 = ptrtoint ptr %packet.i to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %packet.i, align 2
  %104 = call i16 @llvm.bswap.i16(i16 %103) #10
  %105 = ptrtoint ptr %packet.i to i32
  call void @__asan_store2_noabort(i32 %105)
  store i16 %104, ptr %packet.i, align 2
  %106 = ptrtoint ptr %11 to i32
  call void @__asan_loadN_noabort(i32 %106, i32 4)
  %107 = load i32, ptr %11, align 2
  %108 = call i32 @llvm.bswap.i32(i32 %107) #10
  %109 = ptrtoint ptr %11 to i32
  call void @__asan_storeN_noabort(i32 %109, i32 4)
  store i32 %108, ptr %11, align 2
  %110 = ptrtoint ptr %12 to i32
  call void @__asan_loadN_noabort(i32 %110, i32 4)
  %111 = load i32, ptr %12, align 2
  %112 = call i32 @llvm.bswap.i32(i32 %111) #10
  %113 = ptrtoint ptr %12 to i32
  call void @__asan_storeN_noabort(i32 %113, i32 4)
  store i32 %112, ptr %12, align 2
  %call7.i153.i = call fastcc i32 @sisusb_send_bulk_msg(ptr noundef %sisusb, i32 noundef 13, i32 noundef 10, ptr noundef nonnull %packet.i, ptr noundef null, i32 noundef 0, ptr noundef nonnull %bytes_transferred.i147.i, i32 noundef 0) #10
  br label %sisusb_send_bridge_packet.exit157.i

sisusb_send_bridge_packet.exit157.i:              ; preds = %do.body.i155.i, %sisusb_send_bridge_packet.exit146.i.sisusb_send_bridge_packet.exit157.i_crit_edge
  %retval.0.i156.i = phi i32 [ 1, %sisusb_send_bridge_packet.exit146.i.sisusb_send_bridge_packet.exit157.i_crit_edge ], [ %call7.i153.i, %do.body.i155.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bytes_transferred.i147.i) #10
  %or22.i = or i32 %or18.i, %retval.0.i156.i
  %call23.i = call fastcc i32 @sisusb_read_pci_config(ptr noundef %sisusb, i32 noundef 16, ptr noundef nonnull %tmp32.i) #10
  %or24.i = or i32 %or22.i, %call23.i
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %packet.i.i) #10
  %114 = getelementptr inbounds %struct.sisusb_packet, ptr %packet.i.i, i32 0, i32 1
  %115 = getelementptr inbounds %struct.sisusb_packet, ptr %packet.i.i, i32 0, i32 2
  %116 = ptrtoint ptr %packet.i.i to i32
  call void @__asan_store2_noabort(i32 %116)
  store i16 143, ptr %packet.i.i, align 2
  %117 = ptrtoint ptr %114 to i32
  call void @__asan_storeN_noabort(i32 %117, i32 4)
  store i32 65552, ptr %114, align 2
  %118 = ptrtoint ptr %115 to i32
  call void @__asan_storeN_noabort(i32 %118, i32 4)
  store i32 -16, ptr %115, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bytes_transferred.i.i.i) #10
  %119 = ptrtoint ptr %bytes_transferred.i.i.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 0, ptr %bytes_transferred.i.i.i, align 4
  %call.i.i.i = call fastcc i32 @sisusb_wait_all_out_complete(ptr noundef %sisusb) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %sisusb_send_bridge_packet.exit157.i.sisusb_write_pci_config.exit.i_crit_edge, label %do.body.i.i.i

sisusb_send_bridge_packet.exit157.i.sisusb_write_pci_config.exit.i_crit_edge: ; preds = %sisusb_send_bridge_packet.exit157.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sisusb_write_pci_config.exit.i

do.body.i.i.i:                                    ; preds = %sisusb_send_bridge_packet.exit157.i
  call void @__sanitizer_cov_trace_pc() #12
  %120 = ptrtoint ptr %packet.i.i to i32
  call void @__asan_load2_noabort(i32 %120)
  %121 = load i16, ptr %packet.i.i, align 2
  %122 = call i16 @llvm.bswap.i16(i16 %121) #10
  %123 = ptrtoint ptr %packet.i.i to i32
  call void @__asan_store2_noabort(i32 %123)
  store i16 %122, ptr %packet.i.i, align 2
  %124 = ptrtoint ptr %114 to i32
  call void @__asan_loadN_noabort(i32 %124, i32 4)
  %125 = load i32, ptr %114, align 2
  %126 = call i32 @llvm.bswap.i32(i32 %125) #10
  %127 = ptrtoint ptr %114 to i32
  call void @__asan_storeN_noabort(i32 %127, i32 4)
  store i32 %126, ptr %114, align 2
  %128 = ptrtoint ptr %115 to i32
  call void @__asan_loadN_noabort(i32 %128, i32 4)
  %129 = load i32, ptr %115, align 2
  %130 = call i32 @llvm.bswap.i32(i32 %129) #10
  %131 = ptrtoint ptr %115 to i32
  call void @__asan_storeN_noabort(i32 %131, i32 4)
  store i32 %130, ptr %115, align 2
  %call7.i.i.i = call fastcc i32 @sisusb_send_bulk_msg(ptr noundef %sisusb, i32 noundef 14, i32 noundef 10, ptr noundef nonnull %packet.i.i, ptr noundef null, i32 noundef 0, ptr noundef nonnull %bytes_transferred.i.i.i, i32 noundef 0) #10
  br label %sisusb_write_pci_config.exit.i

sisusb_write_pci_config.exit.i:                   ; preds = %do.body.i.i.i, %sisusb_send_bridge_packet.exit157.i.sisusb_write_pci_config.exit.i_crit_edge
  %retval.0.i.i.i = phi i32 [ 1, %sisusb_send_bridge_packet.exit157.i.sisusb_write_pci_config.exit.i_crit_edge ], [ %call7.i.i.i, %do.body.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bytes_transferred.i.i.i) #10
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %packet.i.i) #10
  %or26.i = or i32 %or24.i, %retval.0.i.i.i
  %call27.i = call fastcc i32 @sisusb_read_pci_config(ptr noundef %sisusb, i32 noundef 16, ptr noundef nonnull %tmp32.i) #10
  %or28.i = or i32 %or26.i, %call27.i
  %132 = ptrtoint ptr %tmp32.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %tmp32.i, align 4
  %and.i = and i32 %133, 15
  %or29.i = or i32 %and.i, -805306368
  store i32 %or29.i, ptr %tmp32.i, align 4
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %packet.i159.i) #10
  %134 = getelementptr inbounds %struct.sisusb_packet, ptr %packet.i159.i, i32 0, i32 1
  %135 = getelementptr inbounds %struct.sisusb_packet, ptr %packet.i159.i, i32 0, i32 2
  %136 = ptrtoint ptr %packet.i159.i to i32
  call void @__asan_store2_noabort(i32 %136)
  store i16 143, ptr %packet.i159.i, align 2
  %137 = ptrtoint ptr %134 to i32
  call void @__asan_storeN_noabort(i32 %137, i32 4)
  store i32 65552, ptr %134, align 2
  %138 = ptrtoint ptr %135 to i32
  call void @__asan_storeN_noabort(i32 %138, i32 4)
  store i32 %or29.i, ptr %135, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bytes_transferred.i.i158.i) #10
  %139 = ptrtoint ptr %bytes_transferred.i.i158.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 0, ptr %bytes_transferred.i.i158.i, align 4
  %call.i.i160.i = call fastcc i32 @sisusb_wait_all_out_complete(ptr noundef %sisusb) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i160.i)
  %tobool.not.i.i161.i = icmp eq i32 %call.i.i160.i, 0
  br i1 %tobool.not.i.i161.i, label %sisusb_write_pci_config.exit.i.sisusb_write_pci_config.exit165.i_crit_edge, label %do.body.i.i163.i

sisusb_write_pci_config.exit.i.sisusb_write_pci_config.exit165.i_crit_edge: ; preds = %sisusb_write_pci_config.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sisusb_write_pci_config.exit165.i

do.body.i.i163.i:                                 ; preds = %sisusb_write_pci_config.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %140 = ptrtoint ptr %packet.i159.i to i32
  call void @__asan_load2_noabort(i32 %140)
  %141 = load i16, ptr %packet.i159.i, align 2
  %142 = call i16 @llvm.bswap.i16(i16 %141) #10
  %143 = ptrtoint ptr %packet.i159.i to i32
  call void @__asan_store2_noabort(i32 %143)
  store i16 %142, ptr %packet.i159.i, align 2
  %144 = ptrtoint ptr %134 to i32
  call void @__asan_loadN_noabort(i32 %144, i32 4)
  %145 = load i32, ptr %134, align 2
  %146 = call i32 @llvm.bswap.i32(i32 %145) #10
  %147 = ptrtoint ptr %134 to i32
  call void @__asan_storeN_noabort(i32 %147, i32 4)
  store i32 %146, ptr %134, align 2
  %148 = ptrtoint ptr %135 to i32
  call void @__asan_loadN_noabort(i32 %148, i32 4)
  %149 = load i32, ptr %135, align 2
  %150 = call i32 @llvm.bswap.i32(i32 %149) #10
  %151 = ptrtoint ptr %135 to i32
  call void @__asan_storeN_noabort(i32 %151, i32 4)
  store i32 %150, ptr %135, align 2
  %call7.i.i162.i = call fastcc i32 @sisusb_send_bulk_msg(ptr noundef %sisusb, i32 noundef 14, i32 noundef 10, ptr noundef nonnull %packet.i159.i, ptr noundef null, i32 noundef 0, ptr noundef nonnull %bytes_transferred.i.i158.i, i32 noundef 0) #10
  br label %sisusb_write_pci_config.exit165.i

sisusb_write_pci_config.exit165.i:                ; preds = %do.body.i.i163.i, %sisusb_write_pci_config.exit.i.sisusb_write_pci_config.exit165.i_crit_edge
  %retval.0.i.i164.i = phi i32 [ 1, %sisusb_write_pci_config.exit.i.sisusb_write_pci_config.exit165.i_crit_edge ], [ %call7.i.i162.i, %do.body.i.i163.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bytes_transferred.i.i158.i) #10
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %packet.i159.i) #10
  %or31.i = or i32 %or28.i, %retval.0.i.i164.i
  %call32.i = call fastcc i32 @sisusb_read_pci_config(ptr noundef %sisusb, i32 noundef 20, ptr noundef nonnull %tmp32.i) #10
  %or33.i = or i32 %or31.i, %call32.i
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %packet.i167.i) #10
  %152 = getelementptr inbounds %struct.sisusb_packet, ptr %packet.i167.i, i32 0, i32 1
  %153 = getelementptr inbounds %struct.sisusb_packet, ptr %packet.i167.i, i32 0, i32 2
  %154 = ptrtoint ptr %packet.i167.i to i32
  call void @__asan_store2_noabort(i32 %154)
  store i16 143, ptr %packet.i167.i, align 2
  %155 = ptrtoint ptr %152 to i32
  call void @__asan_storeN_noabort(i32 %155, i32 4)
  store i32 65556, ptr %152, align 2
  %156 = ptrtoint ptr %153 to i32
  call void @__asan_storeN_noabort(i32 %156, i32 4)
  store i32 -16, ptr %153, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bytes_transferred.i.i166.i) #10
  %157 = ptrtoint ptr %bytes_transferred.i.i166.i to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 0, ptr %bytes_transferred.i.i166.i, align 4
  %call.i.i168.i = call fastcc i32 @sisusb_wait_all_out_complete(ptr noundef %sisusb) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i168.i)
  %tobool.not.i.i169.i = icmp eq i32 %call.i.i168.i, 0
  br i1 %tobool.not.i.i169.i, label %sisusb_write_pci_config.exit165.i.sisusb_write_pci_config.exit173.i_crit_edge, label %do.body.i.i171.i

sisusb_write_pci_config.exit165.i.sisusb_write_pci_config.exit173.i_crit_edge: ; preds = %sisusb_write_pci_config.exit165.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sisusb_write_pci_config.exit173.i

do.body.i.i171.i:                                 ; preds = %sisusb_write_pci_config.exit165.i
  call void @__sanitizer_cov_trace_pc() #12
  %158 = ptrtoint ptr %packet.i167.i to i32
  call void @__asan_load2_noabort(i32 %158)
  %159 = load i16, ptr %packet.i167.i, align 2
  %160 = call i16 @llvm.bswap.i16(i16 %159) #10
  %161 = ptrtoint ptr %packet.i167.i to i32
  call void @__asan_store2_noabort(i32 %161)
  store i16 %160, ptr %packet.i167.i, align 2
  %162 = ptrtoint ptr %152 to i32
  call void @__asan_loadN_noabort(i32 %162, i32 4)
  %163 = load i32, ptr %152, align 2
  %164 = call i32 @llvm.bswap.i32(i32 %163) #10
  %165 = ptrtoint ptr %152 to i32
  call void @__asan_storeN_noabort(i32 %165, i32 4)
  store i32 %164, ptr %152, align 2
  %166 = ptrtoint ptr %153 to i32
  call void @__asan_loadN_noabort(i32 %166, i32 4)
  %167 = load i32, ptr %153, align 2
  %168 = call i32 @llvm.bswap.i32(i32 %167) #10
  %169 = ptrtoint ptr %153 to i32
  call void @__asan_storeN_noabort(i32 %169, i32 4)
  store i32 %168, ptr %153, align 2
  %call7.i.i170.i = call fastcc i32 @sisusb_send_bulk_msg(ptr noundef %sisusb, i32 noundef 14, i32 noundef 10, ptr noundef nonnull %packet.i167.i, ptr noundef null, i32 noundef 0, ptr noundef nonnull %bytes_transferred.i.i166.i, i32 noundef 0) #10
  br label %sisusb_write_pci_config.exit173.i

sisusb_write_pci_config.exit173.i:                ; preds = %do.body.i.i171.i, %sisusb_write_pci_config.exit165.i.sisusb_write_pci_config.exit173.i_crit_edge
  %retval.0.i.i172.i = phi i32 [ 1, %sisusb_write_pci_config.exit165.i.sisusb_write_pci_config.exit173.i_crit_edge ], [ %call7.i.i170.i, %do.body.i.i171.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bytes_transferred.i.i166.i) #10
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %packet.i167.i) #10
  %or35.i = or i32 %or33.i, %retval.0.i.i172.i
  %call36.i = call fastcc i32 @sisusb_read_pci_config(ptr noundef %sisusb, i32 noundef 20, ptr noundef nonnull %tmp32.i) #10
  %or37.i = or i32 %or35.i, %call36.i
  %170 = ptrtoint ptr %tmp32.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %tmp32.i, align 4
  %and38.i = and i32 %171, 15
  %or39.i = or i32 %and38.i, -469762048
  store i32 %or39.i, ptr %tmp32.i, align 4
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %packet.i175.i) #10
  %172 = getelementptr inbounds %struct.sisusb_packet, ptr %packet.i175.i, i32 0, i32 1
  %173 = getelementptr inbounds %struct.sisusb_packet, ptr %packet.i175.i, i32 0, i32 2
  %174 = ptrtoint ptr %packet.i175.i to i32
  call void @__asan_store2_noabort(i32 %174)
  store i16 143, ptr %packet.i175.i, align 2
  %175 = ptrtoint ptr %172 to i32
  call void @__asan_storeN_noabort(i32 %175, i32 4)
  store i32 65556, ptr %172, align 2
  %176 = ptrtoint ptr %173 to i32
  call void @__asan_storeN_noabort(i32 %176, i32 4)
  store i32 %or39.i, ptr %173, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bytes_transferred.i.i174.i) #10
  %177 = ptrtoint ptr %bytes_transferred.i.i174.i to i32
  call void @__asan_store4_noabort(i32 %177)
  store i32 0, ptr %bytes_transferred.i.i174.i, align 4
  %call.i.i176.i = call fastcc i32 @sisusb_wait_all_out_complete(ptr noundef %sisusb) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i176.i)
  %tobool.not.i.i177.i = icmp eq i32 %call.i.i176.i, 0
  br i1 %tobool.not.i.i177.i, label %sisusb_write_pci_config.exit173.i.sisusb_write_pci_config.exit181.i_crit_edge, label %do.body.i.i179.i

sisusb_write_pci_config.exit173.i.sisusb_write_pci_config.exit181.i_crit_edge: ; preds = %sisusb_write_pci_config.exit173.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sisusb_write_pci_config.exit181.i

do.body.i.i179.i:                                 ; preds = %sisusb_write_pci_config.exit173.i
  call void @__sanitizer_cov_trace_pc() #12
  %178 = ptrtoint ptr %packet.i175.i to i32
  call void @__asan_load2_noabort(i32 %178)
  %179 = load i16, ptr %packet.i175.i, align 2
  %180 = call i16 @llvm.bswap.i16(i16 %179) #10
  %181 = ptrtoint ptr %packet.i175.i to i32
  call void @__asan_store2_noabort(i32 %181)
  store i16 %180, ptr %packet.i175.i, align 2
  %182 = ptrtoint ptr %172 to i32
  call void @__asan_loadN_noabort(i32 %182, i32 4)
  %183 = load i32, ptr %172, align 2
  %184 = call i32 @llvm.bswap.i32(i32 %183) #10
  %185 = ptrtoint ptr %172 to i32
  call void @__asan_storeN_noabort(i32 %185, i32 4)
  store i32 %184, ptr %172, align 2
  %186 = ptrtoint ptr %173 to i32
  call void @__asan_loadN_noabort(i32 %186, i32 4)
  %187 = load i32, ptr %173, align 2
  %188 = call i32 @llvm.bswap.i32(i32 %187) #10
  %189 = ptrtoint ptr %173 to i32
  call void @__asan_storeN_noabort(i32 %189, i32 4)
  store i32 %188, ptr %173, align 2
  %call7.i.i178.i = call fastcc i32 @sisusb_send_bulk_msg(ptr noundef %sisusb, i32 noundef 14, i32 noundef 10, ptr noundef nonnull %packet.i175.i, ptr noundef null, i32 noundef 0, ptr noundef nonnull %bytes_transferred.i.i174.i, i32 noundef 0) #10
  br label %sisusb_write_pci_config.exit181.i

sisusb_write_pci_config.exit181.i:                ; preds = %do.body.i.i179.i, %sisusb_write_pci_config.exit173.i.sisusb_write_pci_config.exit181.i_crit_edge
  %retval.0.i.i180.i = phi i32 [ 1, %sisusb_write_pci_config.exit173.i.sisusb_write_pci_config.exit181.i_crit_edge ], [ %call7.i.i178.i, %do.body.i.i179.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bytes_transferred.i.i174.i) #10
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %packet.i175.i) #10
  %or41.i = or i32 %or37.i, %retval.0.i.i180.i
  %call42.i = call fastcc i32 @sisusb_read_pci_config(ptr noundef %sisusb, i32 noundef 24, ptr noundef nonnull %tmp32.i) #10
  %or43.i = or i32 %or41.i, %call42.i
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %packet.i183.i) #10
  %190 = getelementptr inbounds %struct.sisusb_packet, ptr %packet.i183.i, i32 0, i32 1
  %191 = getelementptr inbounds %struct.sisusb_packet, ptr %packet.i183.i, i32 0, i32 2
  %192 = ptrtoint ptr %packet.i183.i to i32
  call void @__asan_store2_noabort(i32 %192)
  store i16 143, ptr %packet.i183.i, align 2
  %193 = ptrtoint ptr %190 to i32
  call void @__asan_storeN_noabort(i32 %193, i32 4)
  store i32 65560, ptr %190, align 2
  %194 = ptrtoint ptr %191 to i32
  call void @__asan_storeN_noabort(i32 %194, i32 4)
  store i32 -16, ptr %191, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bytes_transferred.i.i182.i) #10
  %195 = ptrtoint ptr %bytes_transferred.i.i182.i to i32
  call void @__asan_store4_noabort(i32 %195)
  store i32 0, ptr %bytes_transferred.i.i182.i, align 4
  %call.i.i184.i = call fastcc i32 @sisusb_wait_all_out_complete(ptr noundef %sisusb) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i184.i)
  %tobool.not.i.i185.i = icmp eq i32 %call.i.i184.i, 0
  br i1 %tobool.not.i.i185.i, label %sisusb_write_pci_config.exit181.i.sisusb_write_pci_config.exit189.i_crit_edge, label %do.body.i.i187.i

sisusb_write_pci_config.exit181.i.sisusb_write_pci_config.exit189.i_crit_edge: ; preds = %sisusb_write_pci_config.exit181.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sisusb_write_pci_config.exit189.i

do.body.i.i187.i:                                 ; preds = %sisusb_write_pci_config.exit181.i
  call void @__sanitizer_cov_trace_pc() #12
  %196 = ptrtoint ptr %packet.i183.i to i32
  call void @__asan_load2_noabort(i32 %196)
  %197 = load i16, ptr %packet.i183.i, align 2
  %198 = call i16 @llvm.bswap.i16(i16 %197) #10
  %199 = ptrtoint ptr %packet.i183.i to i32
  call void @__asan_store2_noabort(i32 %199)
  store i16 %198, ptr %packet.i183.i, align 2
  %200 = ptrtoint ptr %190 to i32
  call void @__asan_loadN_noabort(i32 %200, i32 4)
  %201 = load i32, ptr %190, align 2
  %202 = call i32 @llvm.bswap.i32(i32 %201) #10
  %203 = ptrtoint ptr %190 to i32
  call void @__asan_storeN_noabort(i32 %203, i32 4)
  store i32 %202, ptr %190, align 2
  %204 = ptrtoint ptr %191 to i32
  call void @__asan_loadN_noabort(i32 %204, i32 4)
  %205 = load i32, ptr %191, align 2
  %206 = call i32 @llvm.bswap.i32(i32 %205) #10
  %207 = ptrtoint ptr %191 to i32
  call void @__asan_storeN_noabort(i32 %207, i32 4)
  store i32 %206, ptr %191, align 2
  %call7.i.i186.i = call fastcc i32 @sisusb_send_bulk_msg(ptr noundef %sisusb, i32 noundef 14, i32 noundef 10, ptr noundef nonnull %packet.i183.i, ptr noundef null, i32 noundef 0, ptr noundef nonnull %bytes_transferred.i.i182.i, i32 noundef 0) #10
  br label %sisusb_write_pci_config.exit189.i

sisusb_write_pci_config.exit189.i:                ; preds = %do.body.i.i187.i, %sisusb_write_pci_config.exit181.i.sisusb_write_pci_config.exit189.i_crit_edge
  %retval.0.i.i188.i = phi i32 [ 1, %sisusb_write_pci_config.exit181.i.sisusb_write_pci_config.exit189.i_crit_edge ], [ %call7.i.i186.i, %do.body.i.i187.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bytes_transferred.i.i182.i) #10
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %packet.i183.i) #10
  %or45.i = or i32 %or43.i, %retval.0.i.i188.i
  %call46.i = call fastcc i32 @sisusb_read_pci_config(ptr noundef %sisusb, i32 noundef 24, ptr noundef nonnull %tmp32.i) #10
  %or47.i = or i32 %or45.i, %call46.i
  %208 = ptrtoint ptr %tmp32.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %tmp32.i, align 4
  %and48.i = and i32 %209, 15
  %or49.i = or i32 %and48.i, 53248
  store i32 %or49.i, ptr %tmp32.i, align 4
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %packet.i191.i) #10
  %210 = getelementptr inbounds %struct.sisusb_packet, ptr %packet.i191.i, i32 0, i32 1
  %211 = getelementptr inbounds %struct.sisusb_packet, ptr %packet.i191.i, i32 0, i32 2
  %212 = ptrtoint ptr %packet.i191.i to i32
  call void @__asan_store2_noabort(i32 %212)
  store i16 143, ptr %packet.i191.i, align 2
  %213 = ptrtoint ptr %210 to i32
  call void @__asan_storeN_noabort(i32 %213, i32 4)
  store i32 65560, ptr %210, align 2
  %214 = ptrtoint ptr %211 to i32
  call void @__asan_storeN_noabort(i32 %214, i32 4)
  store i32 %or49.i, ptr %211, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bytes_transferred.i.i190.i) #10
  %215 = ptrtoint ptr %bytes_transferred.i.i190.i to i32
  call void @__asan_store4_noabort(i32 %215)
  store i32 0, ptr %bytes_transferred.i.i190.i, align 4
  %call.i.i192.i = call fastcc i32 @sisusb_wait_all_out_complete(ptr noundef %sisusb) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i192.i)
  %tobool.not.i.i193.i = icmp eq i32 %call.i.i192.i, 0
  br i1 %tobool.not.i.i193.i, label %sisusb_write_pci_config.exit189.i.sisusb_write_pci_config.exit197.i_crit_edge, label %do.body.i.i195.i

sisusb_write_pci_config.exit189.i.sisusb_write_pci_config.exit197.i_crit_edge: ; preds = %sisusb_write_pci_config.exit189.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sisusb_write_pci_config.exit197.i

do.body.i.i195.i:                                 ; preds = %sisusb_write_pci_config.exit189.i
  call void @__sanitizer_cov_trace_pc() #12
  %216 = ptrtoint ptr %packet.i191.i to i32
  call void @__asan_load2_noabort(i32 %216)
  %217 = load i16, ptr %packet.i191.i, align 2
  %218 = call i16 @llvm.bswap.i16(i16 %217) #10
  %219 = ptrtoint ptr %packet.i191.i to i32
  call void @__asan_store2_noabort(i32 %219)
  store i16 %218, ptr %packet.i191.i, align 2
  %220 = ptrtoint ptr %210 to i32
  call void @__asan_loadN_noabort(i32 %220, i32 4)
  %221 = load i32, ptr %210, align 2
  %222 = call i32 @llvm.bswap.i32(i32 %221) #10
  %223 = ptrtoint ptr %210 to i32
  call void @__asan_storeN_noabort(i32 %223, i32 4)
  store i32 %222, ptr %210, align 2
  %224 = ptrtoint ptr %211 to i32
  call void @__asan_loadN_noabort(i32 %224, i32 4)
  %225 = load i32, ptr %211, align 2
  %226 = call i32 @llvm.bswap.i32(i32 %225) #10
  %227 = ptrtoint ptr %211 to i32
  call void @__asan_storeN_noabort(i32 %227, i32 4)
  store i32 %226, ptr %211, align 2
  %call7.i.i194.i = call fastcc i32 @sisusb_send_bulk_msg(ptr noundef %sisusb, i32 noundef 14, i32 noundef 10, ptr noundef nonnull %packet.i191.i, ptr noundef null, i32 noundef 0, ptr noundef nonnull %bytes_transferred.i.i190.i, i32 noundef 0) #10
  br label %sisusb_write_pci_config.exit197.i

sisusb_write_pci_config.exit197.i:                ; preds = %do.body.i.i195.i, %sisusb_write_pci_config.exit189.i.sisusb_write_pci_config.exit197.i_crit_edge
  %retval.0.i.i196.i = phi i32 [ 1, %sisusb_write_pci_config.exit189.i.sisusb_write_pci_config.exit197.i_crit_edge ], [ %call7.i.i194.i, %do.body.i.i195.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bytes_transferred.i.i190.i) #10
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %packet.i191.i) #10
  %or51.i = or i32 %or47.i, %retval.0.i.i196.i
  %call52.i = call fastcc i32 @sisusb_read_pci_config(ptr noundef %sisusb, i32 noundef 4, ptr noundef nonnull %tmp32.i) #10
  %or53.i = or i32 %or51.i, %call52.i
  %228 = ptrtoint ptr %tmp32.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %tmp32.i, align 4
  %or54.i = or i32 %229, 3
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %packet.i199.i) #10
  %230 = getelementptr inbounds %struct.sisusb_packet, ptr %packet.i199.i, i32 0, i32 1
  %231 = getelementptr inbounds %struct.sisusb_packet, ptr %packet.i199.i, i32 0, i32 2
  %232 = ptrtoint ptr %packet.i199.i to i32
  call void @__asan_store2_noabort(i32 %232)
  store i16 143, ptr %packet.i199.i, align 2
  %233 = ptrtoint ptr %230 to i32
  call void @__asan_storeN_noabort(i32 %233, i32 4)
  store i32 65540, ptr %230, align 2
  %234 = ptrtoint ptr %231 to i32
  call void @__asan_storeN_noabort(i32 %234, i32 4)
  store i32 %or54.i, ptr %231, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bytes_transferred.i.i198.i) #10
  %235 = ptrtoint ptr %bytes_transferred.i.i198.i to i32
  call void @__asan_store4_noabort(i32 %235)
  store i32 0, ptr %bytes_transferred.i.i198.i, align 4
  %call.i.i200.i = call fastcc i32 @sisusb_wait_all_out_complete(ptr noundef %sisusb) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i200.i)
  %tobool.not.i.i201.i = icmp eq i32 %call.i.i200.i, 0
  br i1 %tobool.not.i.i201.i, label %sisusb_write_pci_config.exit197.i.sisusb_write_pci_config.exit205.i_crit_edge, label %do.body.i.i203.i

sisusb_write_pci_config.exit197.i.sisusb_write_pci_config.exit205.i_crit_edge: ; preds = %sisusb_write_pci_config.exit197.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sisusb_write_pci_config.exit205.i

do.body.i.i203.i:                                 ; preds = %sisusb_write_pci_config.exit197.i
  call void @__sanitizer_cov_trace_pc() #12
  %236 = ptrtoint ptr %packet.i199.i to i32
  call void @__asan_load2_noabort(i32 %236)
  %237 = load i16, ptr %packet.i199.i, align 2
  %238 = call i16 @llvm.bswap.i16(i16 %237) #10
  %239 = ptrtoint ptr %packet.i199.i to i32
  call void @__asan_store2_noabort(i32 %239)
  store i16 %238, ptr %packet.i199.i, align 2
  %240 = ptrtoint ptr %230 to i32
  call void @__asan_loadN_noabort(i32 %240, i32 4)
  %241 = load i32, ptr %230, align 2
  %242 = call i32 @llvm.bswap.i32(i32 %241) #10
  %243 = ptrtoint ptr %230 to i32
  call void @__asan_storeN_noabort(i32 %243, i32 4)
  store i32 %242, ptr %230, align 2
  %244 = ptrtoint ptr %231 to i32
  call void @__asan_loadN_noabort(i32 %244, i32 4)
  %245 = load i32, ptr %231, align 2
  %246 = call i32 @llvm.bswap.i32(i32 %245) #10
  %247 = ptrtoint ptr %231 to i32
  call void @__asan_storeN_noabort(i32 %247, i32 4)
  store i32 %246, ptr %231, align 2
  %call7.i.i202.i = call fastcc i32 @sisusb_send_bulk_msg(ptr noundef %sisusb, i32 noundef 14, i32 noundef 10, ptr noundef nonnull %packet.i199.i, ptr noundef null, i32 noundef 0, ptr noundef nonnull %bytes_transferred.i.i198.i, i32 noundef 0) #10
  br label %sisusb_write_pci_config.exit205.i

sisusb_write_pci_config.exit205.i:                ; preds = %do.body.i.i203.i, %sisusb_write_pci_config.exit197.i.sisusb_write_pci_config.exit205.i_crit_edge
  %retval.0.i.i204.i = phi i32 [ 1, %sisusb_write_pci_config.exit197.i.sisusb_write_pci_config.exit205.i_crit_edge ], [ %call7.i.i202.i, %do.body.i.i203.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bytes_transferred.i.i198.i) #10
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %packet.i199.i) #10
  %or56.i = or i32 %or53.i, %retval.0.i.i204.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or56.i)
  %cmp.i = icmp eq i32 %or56.i, 0
  br i1 %cmp.i, label %if.then.i, label %sisusb_do_init_gfxdevice.exit.thread

sisusb_do_init_gfxdevice.exit.thread:             ; preds = %sisusb_write_pci_config.exit205.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp32.i) #10
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %packet.i) #10
  br label %if.end44

if.then.i:                                        ; preds = %sisusb_write_pci_config.exit205.i
  %248 = ptrtoint ptr %packet.i to i32
  call void @__asan_store2_noabort(i32 %248)
  store i16 31, ptr %packet.i, align 2
  %249 = ptrtoint ptr %11 to i32
  call void @__asan_storeN_noabort(i32 %249, i32 4)
  store i32 80, ptr %11, align 2
  %250 = ptrtoint ptr %12 to i32
  call void @__asan_storeN_noabort(i32 %250, i32 4)
  store i32 255, ptr %12, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bytes_transferred.i206.i) #10
  %251 = ptrtoint ptr %bytes_transferred.i206.i to i32
  call void @__asan_store4_noabort(i32 %251)
  store i32 0, ptr %bytes_transferred.i206.i, align 4
  %call.i208.i = call fastcc i32 @sisusb_wait_all_out_complete(ptr noundef %sisusb) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i208.i)
  %tobool.not.i209.i = icmp eq i32 %call.i208.i, 0
  br i1 %tobool.not.i209.i, label %sisusb_do_init_gfxdevice.exit.thread97, label %sisusb_do_init_gfxdevice.exit

sisusb_do_init_gfxdevice.exit.thread97:           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bytes_transferred.i206.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp32.i) #10
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %packet.i) #10
  br label %if.end44

sisusb_do_init_gfxdevice.exit:                    ; preds = %if.then.i
  %252 = ptrtoint ptr %packet.i to i32
  call void @__asan_load2_noabort(i32 %252)
  %253 = load i16, ptr %packet.i, align 2
  %254 = call i16 @llvm.bswap.i16(i16 %253) #10
  %255 = ptrtoint ptr %packet.i to i32
  call void @__asan_store2_noabort(i32 %255)
  store i16 %254, ptr %packet.i, align 2
  %256 = ptrtoint ptr %11 to i32
  call void @__asan_loadN_noabort(i32 %256, i32 4)
  %257 = load i32, ptr %11, align 2
  %258 = call i32 @llvm.bswap.i32(i32 %257) #10
  %259 = ptrtoint ptr %11 to i32
  call void @__asan_storeN_noabort(i32 %259, i32 4)
  store i32 %258, ptr %11, align 2
  %260 = ptrtoint ptr %12 to i32
  call void @__asan_loadN_noabort(i32 %260, i32 4)
  %261 = load i32, ptr %12, align 2
  %262 = call i32 @llvm.bswap.i32(i32 %261) #10
  %263 = ptrtoint ptr %12 to i32
  call void @__asan_storeN_noabort(i32 %263, i32 4)
  store i32 %262, ptr %12, align 2
  %call7.i212.i = call fastcc i32 @sisusb_send_bulk_msg(ptr noundef %sisusb, i32 noundef 13, i32 noundef 10, ptr noundef nonnull %packet.i, ptr noundef null, i32 noundef 0, ptr noundef nonnull %bytes_transferred.i206.i, i32 noundef 0) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bytes_transferred.i206.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp32.i) #10
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %packet.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i212.i)
  %cmp39 = icmp eq i32 %call7.i212.i, 0
  br i1 %cmp39, label %if.then41, label %sisusb_do_init_gfxdevice.exit.if.end44_crit_edge

sisusb_do_init_gfxdevice.exit.if.end44_crit_edge: ; preds = %sisusb_do_init_gfxdevice.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end44

if.then41:                                        ; preds = %sisusb_do_init_gfxdevice.exit
  call void @__sanitizer_cov_trace_pc() #12
  %264 = ptrtoint ptr %devinit to i32
  call void @__asan_store1_noabort(i32 %264)
  store i8 1, ptr %devinit, align 4
  br label %if.then47

if.end44:                                         ; preds = %sisusb_do_init_gfxdevice.exit.if.end44_crit_edge, %sisusb_do_init_gfxdevice.exit.thread97, %sisusb_do_init_gfxdevice.exit.thread
  %ret.1.ph = phi i32 [ 1, %sisusb_do_init_gfxdevice.exit.thread97 ], [ %or56.i, %sisusb_do_init_gfxdevice.exit.thread ], [ %call7.i212.i, %sisusb_do_init_gfxdevice.exit.if.end44_crit_edge ]
  %265 = ptrtoint ptr %devinit to i32
  call void @__asan_load1_noabort(i32 %265)
  %.pr = load i8, ptr %devinit, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %tobool46.not = icmp eq i8 %.pr, 0
  br i1 %tobool46.not, label %if.end44.cleanup_crit_edge, label %if.end44.if.then47_crit_edge

if.end44.if.then47_crit_edge:                     ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then47

if.end44.cleanup_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then47:                                        ; preds = %if.end44.if.then47_crit_edge, %if.then41, %if.end29.if.then47_crit_edge
  %ret.1102 = phi i32 [ %ret.1.ph, %if.end44.if.then47_crit_edge ], [ 0, %if.end29.if.then47_crit_edge ], [ 0, %if.then41 ]
  %call48 = call fastcc i32 @sisusb_init_gfxcore(ptr noundef %sisusb)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %cmp49 = icmp eq i32 %call48, 0
  br i1 %cmp49, label %if.then51, label %if.then47.cleanup_crit_edge

if.then47.cleanup_crit_edge:                      ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then51:                                        ; preds = %if.then47
  %gfxinit = getelementptr inbounds %struct.sisusb_usb_data, ptr %sisusb, i32 0, i32 27
  %266 = ptrtoint ptr %gfxinit to i32
  call void @__asan_store1_noabort(i32 %266)
  store i8 1, ptr %gfxinit, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp8.i) #10
  %267 = ptrtoint ptr %tmp8.i to i32
  call void @__asan_store1_noabort(i32 %267)
  store i8 -1, ptr %tmp8.i, align 1, !annotation !144
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp82.i) #10
  %268 = ptrtoint ptr %tmp82.i to i32
  call void @__asan_store1_noabort(i32 %268)
  store i8 -1, ptr %tmp82.i, align 1, !annotation !144
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ramtype.i) #10
  %269 = ptrtoint ptr %ramtype.i to i32
  call void @__asan_store1_noabort(i32 %269)
  store i8 -1, ptr %ramtype.i, align 1, !annotation !144
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %packet.i.i.i) #10
  %270 = getelementptr inbounds %struct.sisusb_packet, ptr %packet.i.i.i, i32 0, i32 1
  %271 = getelementptr inbounds %struct.sisusb_packet, ptr %packet.i.i.i, i32 0, i32 2
  %272 = ptrtoint ptr %packet.i.i.i to i32
  call void @__asan_store2_noabort(i32 %272)
  store i16 65, ptr %packet.i.i.i, align 2
  %273 = ptrtoint ptr %270 to i32
  call void @__asan_storeN_noabort(i32 %273, i32 4)
  store i32 53316, ptr %270, align 2
  %274 = ptrtoint ptr %271 to i32
  call void @__asan_storeN_noabort(i32 %274, i32 4)
  store i32 20, ptr %271, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bytes_transferred.i.i.i.i) #10
  %275 = ptrtoint ptr %bytes_transferred.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %275)
  store i32 0, ptr %bytes_transferred.i.i.i.i, align 4
  %call.i.i.i.i = call fastcc i32 @sisusb_wait_all_out_complete(ptr noundef %sisusb) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %if.then51.sisusb_getidxreg.exit.i_crit_edge, label %do.body.i.i.i.i

if.then51.sisusb_getidxreg.exit.i_crit_edge:      ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #12
  br label %sisusb_getidxreg.exit.i

do.body.i.i.i.i:                                  ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #12
  %276 = ptrtoint ptr %packet.i.i.i to i32
  call void @__asan_load2_noabort(i32 %276)
  %277 = load i16, ptr %packet.i.i.i, align 2
  %278 = call i16 @llvm.bswap.i16(i16 %277) #10
  %279 = ptrtoint ptr %packet.i.i.i to i32
  call void @__asan_store2_noabort(i32 %279)
  store i16 %278, ptr %packet.i.i.i, align 2
  %280 = ptrtoint ptr %270 to i32
  call void @__asan_loadN_noabort(i32 %280, i32 4)
  %281 = load i32, ptr %270, align 2
  %282 = call i32 @llvm.bswap.i32(i32 %281) #10
  %283 = ptrtoint ptr %270 to i32
  call void @__asan_storeN_noabort(i32 %283, i32 4)
  store i32 %282, ptr %270, align 2
  %284 = ptrtoint ptr %271 to i32
  call void @__asan_loadN_noabort(i32 %284, i32 4)
  %285 = load i32, ptr %271, align 2
  %286 = call i32 @llvm.bswap.i32(i32 %285) #10
  %287 = ptrtoint ptr %271 to i32
  call void @__asan_storeN_noabort(i32 %287, i32 4)
  store i32 %286, ptr %271, align 2
  %call7.i.i.i.i = call fastcc i32 @sisusb_send_bulk_msg(ptr noundef %sisusb, i32 noundef 14, i32 noundef 10, ptr noundef nonnull %packet.i.i.i, ptr noundef null, i32 noundef 0, ptr noundef nonnull %bytes_transferred.i.i.i.i, i32 noundef 0) #10
  br label %sisusb_getidxreg.exit.i

sisusb_getidxreg.exit.i:                          ; preds = %do.body.i.i.i.i, %if.then51.sisusb_getidxreg.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bytes_transferred.i.i.i.i) #10
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %packet.i.i.i) #10
  %call1.i.i = call fastcc i32 @sisusb_read_memio_byte(ptr noundef %sisusb, i32 noundef 1, i32 noundef 53317, ptr noundef nonnull %tmp8.i) #10
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %packet.i.i50.i) #10
  %288 = getelementptr inbounds %struct.sisusb_packet, ptr %packet.i.i50.i, i32 0, i32 1
  %289 = getelementptr inbounds %struct.sisusb_packet, ptr %packet.i.i50.i, i32 0, i32 2
  %290 = ptrtoint ptr %packet.i.i50.i to i32
  call void @__asan_store2_noabort(i32 %290)
  store i16 65, ptr %packet.i.i50.i, align 2
  %291 = ptrtoint ptr %288 to i32
  call void @__asan_storeN_noabort(i32 %291, i32 4)
  store i32 53316, ptr %288, align 2
  %292 = ptrtoint ptr %289 to i32
  call void @__asan_storeN_noabort(i32 %292, i32 4)
  store i32 21, ptr %289, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bytes_transferred.i.i.i49.i) #10
  %293 = ptrtoint ptr %bytes_transferred.i.i.i49.i to i32
  call void @__asan_store4_noabort(i32 %293)
  store i32 0, ptr %bytes_transferred.i.i.i49.i, align 4
  %call.i.i.i51.i = call fastcc i32 @sisusb_wait_all_out_complete(ptr noundef %sisusb) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i51.i)
  %tobool.not.i.i.i52.i = icmp eq i32 %call.i.i.i51.i, 0
  br i1 %tobool.not.i.i.i52.i, label %sisusb_getidxreg.exit.i.sisusb_getidxreg.exit58.i_crit_edge, label %do.body.i.i.i54.i

sisusb_getidxreg.exit.i.sisusb_getidxreg.exit58.i_crit_edge: ; preds = %sisusb_getidxreg.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sisusb_getidxreg.exit58.i

do.body.i.i.i54.i:                                ; preds = %sisusb_getidxreg.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %294 = ptrtoint ptr %packet.i.i50.i to i32
  call void @__asan_load2_noabort(i32 %294)
  %295 = load i16, ptr %packet.i.i50.i, align 2
  %296 = call i16 @llvm.bswap.i16(i16 %295) #10
  %297 = ptrtoint ptr %packet.i.i50.i to i32
  call void @__asan_store2_noabort(i32 %297)
  store i16 %296, ptr %packet.i.i50.i, align 2
  %298 = ptrtoint ptr %288 to i32
  call void @__asan_loadN_noabort(i32 %298, i32 4)
  %299 = load i32, ptr %288, align 2
  %300 = call i32 @llvm.bswap.i32(i32 %299) #10
  %301 = ptrtoint ptr %288 to i32
  call void @__asan_storeN_noabort(i32 %301, i32 4)
  store i32 %300, ptr %288, align 2
  %302 = ptrtoint ptr %289 to i32
  call void @__asan_loadN_noabort(i32 %302, i32 4)
  %303 = load i32, ptr %289, align 2
  %304 = call i32 @llvm.bswap.i32(i32 %303) #10
  %305 = ptrtoint ptr %289 to i32
  call void @__asan_storeN_noabort(i32 %305, i32 4)
  store i32 %304, ptr %289, align 2
  %call7.i.i.i53.i = call fastcc i32 @sisusb_send_bulk_msg(ptr noundef %sisusb, i32 noundef 14, i32 noundef 10, ptr noundef nonnull %packet.i.i50.i, ptr noundef null, i32 noundef 0, ptr noundef nonnull %bytes_transferred.i.i.i49.i, i32 noundef 0) #10
  br label %sisusb_getidxreg.exit58.i

sisusb_getidxreg.exit58.i:                        ; preds = %do.body.i.i.i54.i, %sisusb_getidxreg.exit.i.sisusb_getidxreg.exit58.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bytes_transferred.i.i.i49.i) #10
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %packet.i.i50.i) #10
  %call1.i56.i = call fastcc i32 @sisusb_read_memio_byte(ptr noundef %sisusb, i32 noundef 1, i32 noundef 53317, ptr noundef nonnull %tmp82.i) #10
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %packet.i.i60.i) #10
  %306 = getelementptr inbounds %struct.sisusb_packet, ptr %packet.i.i60.i, i32 0, i32 1
  %307 = getelementptr inbounds %struct.sisusb_packet, ptr %packet.i.i60.i, i32 0, i32 2
  %308 = ptrtoint ptr %packet.i.i60.i to i32
  call void @__asan_store2_noabort(i32 %308)
  store i16 65, ptr %packet.i.i60.i, align 2
  %309 = ptrtoint ptr %306 to i32
  call void @__asan_storeN_noabort(i32 %309, i32 4)
  store i32 53316, ptr %306, align 2
  %310 = ptrtoint ptr %307 to i32
  call void @__asan_storeN_noabort(i32 %310, i32 4)
  store i32 58, ptr %307, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bytes_transferred.i.i.i59.i) #10
  %311 = ptrtoint ptr %bytes_transferred.i.i.i59.i to i32
  call void @__asan_store4_noabort(i32 %311)
  store i32 0, ptr %bytes_transferred.i.i.i59.i, align 4
  %call.i.i.i61.i = call fastcc i32 @sisusb_wait_all_out_complete(ptr noundef %sisusb) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i61.i)
  %tobool.not.i.i.i62.i = icmp eq i32 %call.i.i.i61.i, 0
  br i1 %tobool.not.i.i.i62.i, label %sisusb_getidxreg.exit58.i.sisusb_getidxreg.exit68.i_crit_edge, label %do.body.i.i.i64.i

sisusb_getidxreg.exit58.i.sisusb_getidxreg.exit68.i_crit_edge: ; preds = %sisusb_getidxreg.exit58.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sisusb_getidxreg.exit68.i

do.body.i.i.i64.i:                                ; preds = %sisusb_getidxreg.exit58.i
  call void @__sanitizer_cov_trace_pc() #12
  %312 = ptrtoint ptr %packet.i.i60.i to i32
  call void @__asan_load2_noabort(i32 %312)
  %313 = load i16, ptr %packet.i.i60.i, align 2
  %314 = call i16 @llvm.bswap.i16(i16 %313) #10
  %315 = ptrtoint ptr %packet.i.i60.i to i32
  call void @__asan_store2_noabort(i32 %315)
  store i16 %314, ptr %packet.i.i60.i, align 2
  %316 = ptrtoint ptr %306 to i32
  call void @__asan_loadN_noabort(i32 %316, i32 4)
  %317 = load i32, ptr %306, align 2
  %318 = call i32 @llvm.bswap.i32(i32 %317) #10
  %319 = ptrtoint ptr %306 to i32
  call void @__asan_storeN_noabort(i32 %319, i32 4)
  store i32 %318, ptr %306, align 2
  %320 = ptrtoint ptr %307 to i32
  call void @__asan_loadN_noabort(i32 %320, i32 4)
  %321 = load i32, ptr %307, align 2
  %322 = call i32 @llvm.bswap.i32(i32 %321) #10
  %323 = ptrtoint ptr %307 to i32
  call void @__asan_storeN_noabort(i32 %323, i32 4)
  store i32 %322, ptr %307, align 2
  %call7.i.i.i63.i = call fastcc i32 @sisusb_send_bulk_msg(ptr noundef %sisusb, i32 noundef 14, i32 noundef 10, ptr noundef nonnull %packet.i.i60.i, ptr noundef null, i32 noundef 0, ptr noundef nonnull %bytes_transferred.i.i.i59.i, i32 noundef 0) #10
  br label %sisusb_getidxreg.exit68.i

sisusb_getidxreg.exit68.i:                        ; preds = %do.body.i.i.i64.i, %sisusb_getidxreg.exit58.i.sisusb_getidxreg.exit68.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bytes_transferred.i.i.i59.i) #10
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %packet.i.i60.i) #10
  %call1.i66.i = call fastcc i32 @sisusb_read_memio_byte(ptr noundef %sisusb, i32 noundef 1, i32 noundef 53317, ptr noundef nonnull %ramtype.i) #10
  %324 = ptrtoint ptr %tmp8.i to i32
  call void @__asan_load1_noabort(i32 %324)
  %325 = load i8, ptr %tmp8.i, align 1
  %326 = lshr i8 %325, 4
  %327 = zext i8 %326 to i32
  %mul3.i = shl i32 1048576, %327
  %vramsize.i = getelementptr inbounds %struct.sisusb_usb_data, ptr %sisusb, i32 0, i32 22
  %328 = ptrtoint ptr %vramsize.i to i32
  call void @__asan_store4_noabort(i32 %328)
  store i32 %mul3.i, ptr %vramsize.i, align 4
  %329 = ptrtoint ptr %ramtype.i to i32
  call void @__asan_load1_noabort(i32 %329)
  %330 = load i8, ptr %ramtype.i, align 1
  %conv7.i = zext i8 %325 to i32
  %331 = lshr i32 %conv7.i, 2
  %and9.i = and i32 %331, 3
  %332 = zext i32 %and9.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %332, ptr @__sancov_gen_cov_switch_values.48)
  switch i32 %and9.i, label %entry.unreachabledefault.i [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb14.i
    i32 2, label %sw.bb20.i
    i32 3, label %sw.bb26.i
  ]

sw.bb.i:                                          ; preds = %sisusb_getidxreg.exit68.i
  %333 = ptrtoint ptr %tmp82.i to i32
  call void @__asan_load1_noabort(i32 %333)
  %334 = load i8, ptr %tmp82.i, align 1
  %335 = and i8 %334, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %335)
  %tobool.not.i = icmp eq i8 %335, 0
  br i1 %tobool.not.i, label %if.else.i, label %sw.bb.i.sisusb_get_ramconfig.exit_crit_edge

sw.bb.i.sisusb_get_ramconfig.exit_crit_edge:      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sisusb_get_ramconfig.exit

if.else.i:                                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #12
  %and13.i = and i32 %conv7.i, 3
  %arrayidx.i = getelementptr [4 x i32], ptr @sisusb_get_ramconfig.busSDR, i32 0, i32 %and13.i
  br label %do.end.sink.split.i

sw.bb14.i:                                        ; preds = %sisusb_getidxreg.exit68.i
  call void @__sanitizer_cov_trace_pc() #12
  %shl16.i = shl i32 %mul3.i, 1
  %336 = ptrtoint ptr %vramsize.i to i32
  call void @__asan_store4_noabort(i32 %336)
  store i32 %shl16.i, ptr %vramsize.i, align 4
  %337 = and i8 %325, 3
  %and18.i = zext i8 %337 to i32
  %arrayidx19.i = getelementptr [4 x i32], ptr @sisusb_get_ramconfig.busSDR, i32 0, i32 %and18.i
  br label %do.end.sink.split.i

sw.bb20.i:                                        ; preds = %sisusb_getidxreg.exit68.i
  call void @__sanitizer_cov_trace_pc() #12
  %div48.i = lshr exact i32 %mul3.i, 1
  %add.i = add i32 %div48.i, %mul3.i
  %338 = ptrtoint ptr %vramsize.i to i32
  call void @__asan_store4_noabort(i32 %338)
  store i32 %add.i, ptr %vramsize.i, align 4
  %339 = and i8 %325, 3
  %and24.i = zext i8 %339 to i32
  %arrayidx25.i = getelementptr [4 x i32], ptr @sisusb_get_ramconfig.busDDRA, i32 0, i32 %and24.i
  br label %do.end.sink.split.i

sw.bb26.i:                                        ; preds = %sisusb_getidxreg.exit68.i
  call void @__sanitizer_cov_trace_pc() #12
  %shl28.i = shl i32 %mul3.i, 1
  %340 = ptrtoint ptr %vramsize.i to i32
  call void @__asan_store4_noabort(i32 %340)
  store i32 %shl28.i, ptr %vramsize.i, align 4
  %341 = and i8 %325, 3
  %and30.i = zext i8 %341 to i32
  %arrayidx31.i = getelementptr [4 x i32], ptr @sisusb_get_ramconfig.busDDR, i32 0, i32 %and30.i
  br label %do.end.sink.split.i

entry.unreachabledefault.i:                       ; preds = %sisusb_getidxreg.exit68.i
  unreachable

do.end.sink.split.i:                              ; preds = %sw.bb26.i, %sw.bb20.i, %sw.bb14.i, %if.else.i
  %arrayidx19.sink.i = phi ptr [ %arrayidx19.i, %sw.bb14.i ], [ %arrayidx25.i, %sw.bb20.i ], [ %arrayidx31.i, %sw.bb26.i ], [ %arrayidx.i, %if.else.i ]
  %ramtypetext1.0.ph.i = phi ptr [ @.str.42, %sw.bb14.i ], [ @.str.43, %sw.bb20.i ], [ @.str.44, %sw.bb26.i ], [ @.str.41, %if.else.i ]
  %342 = ptrtoint ptr %arrayidx19.sink.i to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load i32, ptr %arrayidx19.sink.i, align 4
  br label %sisusb_get_ramconfig.exit

sisusb_get_ramconfig.exit:                        ; preds = %do.end.sink.split.i, %sw.bb.i.sisusb_get_ramconfig.exit_crit_edge
  %bw.0.i = phi i32 [ 32, %sw.bb.i.sisusb_get_ramconfig.exit_crit_edge ], [ %343, %do.end.sink.split.i ]
  %ramtypetext1.0.i = phi ptr [ @.str.41, %sw.bb.i.sisusb_get_ramconfig.exit_crit_edge ], [ %ramtypetext1.0.ph.i, %do.end.sink.split.i ]
  %344 = and i8 %330, 3
  %345 = ptrtoint ptr %sisusb to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load ptr, ptr %sisusb, align 4
  %dev.i = getelementptr inbounds %struct.usb_device, ptr %346, i32 0, i32 15
  %347 = ptrtoint ptr %vramsize.i to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load i32, ptr %vramsize.i, align 4
  %shr33.i = lshr i32 %348, 20
  %idxprom.i = zext i8 %344 to i32
  %arrayidx34.i = getelementptr [4 x i8], ptr @sisusb_get_ramconfig.ram_datarate, i32 0, i32 %idxprom.i
  %349 = ptrtoint ptr %arrayidx34.i to i32
  call void @__asan_load1_noabort(i32 %349)
  %350 = load i8, ptr %arrayidx34.i, align 1
  %conv35.i = zext i8 %350 to i32
  %arrayidx37.i = getelementptr [4 x i8], ptr @sisusb_get_ramconfig.ram_dynamictype, i32 0, i32 %idxprom.i
  %351 = ptrtoint ptr %arrayidx37.i to i32
  call void @__asan_load1_noabort(i32 %351)
  %352 = load i8, ptr %arrayidx37.i, align 1
  %conv38.i = zext i8 %352 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i, ptr noundef nonnull @.str.45, i32 noundef %shr33.i, ptr noundef nonnull %ramtypetext1.0.i, i32 noundef %conv35.i, i32 noundef %conv38.i, i32 noundef %bw.0.i) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ramtype.i) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp82.i) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp8.i) #10
  call fastcc void @sisusb_set_default_mode(ptr noundef %sisusb, i32 noundef 1)
  %vrambase.i = getelementptr inbounds %struct.sisusb_usb_data, ptr %sisusb, i32 0, i32 21
  %353 = ptrtoint ptr %vrambase.i to i32
  call void @__asan_load4_noabort(i32 %353)
  %354 = load i32, ptr %vrambase.i, align 4
  %355 = ptrtoint ptr %vramsize.i to i32
  call void @__asan_load4_noabort(i32 %355)
  %356 = load i32, ptr %vramsize.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %j.i.i) #10
  %357 = ptrtoint ptr %j.i.i to i32
  call void @__asan_store4_noabort(i32 %357)
  store i32 -1, ptr %j.i.i, align 4, !annotation !144
  %add.i.i = add i32 %356, %354
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %354)
  %cmp2.not.i.i = icmp ugt i32 %add.i.i, %354
  br i1 %cmp2.not.i.i, label %if.end4.i.i, label %sisusb_get_ramconfig.exit.sisusb_clear_vram.exit.thread.i_crit_edge

sisusb_get_ramconfig.exit.sisusb_clear_vram.exit.thread.i_crit_edge: ; preds = %sisusb_get_ramconfig.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sisusb_clear_vram.exit.thread.i

if.end4.i.i:                                      ; preds = %sisusb_get_ramconfig.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %356)
  %cmp15.i.i = icmp slt i32 %356, 1
  br i1 %cmp15.i.i, label %sisusb_clear_vram.exit.thread3.i, label %if.end17.i.i

sisusb_clear_vram.exit.thread3.i:                 ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %j.i.i) #10
  br label %land.lhs.true.i

if.end17.i.i:                                     ; preds = %if.end4.i.i
  %numobufs.i.i.i.i = getelementptr inbounds %struct.sisusb_usb_data, ptr %sisusb, i32 0, i32 10
  %358 = ptrtoint ptr %numobufs.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load i32, ptr %numobufs.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %359)
  %cmp7.i.i.i.i = icmp sgt i32 %359, 0
  br i1 %cmp7.i.i.i.i, label %if.end17.i.i.for.body.i.i.i.i_crit_edge, label %if.end17.i.i.sisusb_clear_vram.exit.thread.i_crit_edge

if.end17.i.i.sisusb_clear_vram.exit.thread.i_crit_edge: ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sisusb_clear_vram.exit.thread.i

if.end17.i.i.for.body.i.i.i.i_crit_edge:          ; preds = %if.end17.i.i
  br label %for.body.i.i.i.i

for.body.i.i.i.i:                                 ; preds = %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge, %if.end17.i.i.for.body.i.i.i.i_crit_edge
  %i.08.i.i.i.i = phi i32 [ %inc.i.i.i.i, %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge ], [ 0, %if.end17.i.i.for.body.i.i.i.i_crit_edge ]
  %arrayidx.i.i.i.i = getelementptr %struct.sisusb_usb_data, ptr %sisusb, i32 0, i32 17, i32 %i.08.i.i.i.i
  %360 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %360)
  %361 = load i8, ptr %arrayidx.i.i.i.i, align 1
  %362 = and i8 %361, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %362)
  %cmp1.i.i.i.i = icmp eq i8 %362, 0
  br i1 %cmp1.i.i.i.i, label %sisusb_alloc_outbuf.exit.i.i, label %for.inc.i.i.i.i

for.inc.i.i.i.i:                                  ; preds = %for.body.i.i.i.i
  %inc.i.i.i.i = add nuw nsw i32 %i.08.i.i.i.i, 1
  %exitcond.not.i.i.i.i = icmp eq i32 %inc.i.i.i.i, %359
  br i1 %exitcond.not.i.i.i.i, label %for.inc.i.i.i.i.sisusb_clear_vram.exit.thread.i_crit_edge, label %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge

for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge:       ; preds = %for.inc.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i.i.i

for.inc.i.i.i.i.sisusb_clear_vram.exit.thread.i_crit_edge: ; preds = %for.inc.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sisusb_clear_vram.exit.thread.i

sisusb_alloc_outbuf.exit.i.i:                     ; preds = %for.body.i.i.i.i
  %363 = or i8 %361, 2
  %364 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %364)
  store i8 %363, ptr %arrayidx.i.i.i.i, align 1
  %arrayidx.i.i = getelementptr %struct.sisusb_usb_data, ptr %sisusb, i32 0, i32 11, i32 %i.08.i.i.i.i
  %365 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %365)
  %366 = load ptr, ptr %arrayidx.i.i, align 4
  %obufsize.i.i = getelementptr inbounds %struct.sisusb_usb_data, ptr %sisusb, i32 0, i32 13
  %367 = ptrtoint ptr %obufsize.i.i to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load i32, ptr %obufsize.i.i, align 4
  %369 = call ptr @memset(ptr %366, i32 0, i32 %368)
  %call21.i.i = call fastcc i32 @sisusb_write_mem_bulk(ptr noundef %sisusb, i32 noundef %354, i32 noundef %356, ptr noundef null, i32 noundef %i.08.i.i.i.i, ptr noundef nonnull %j.i.i) #10
  %370 = ptrtoint ptr %numobufs.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %370)
  %371 = load i32, ptr %numobufs.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %371, i32 %i.08.i.i.i.i)
  %cmp1.i.i.i = icmp sgt i32 %371, %i.08.i.i.i.i
  br i1 %cmp1.i.i.i, label %if.then.i44.i.i, label %sisusb_alloc_outbuf.exit.i.i.sisusb_clear_vram.exit.i_crit_edge

sisusb_alloc_outbuf.exit.i.i.sisusb_clear_vram.exit.i_crit_edge: ; preds = %sisusb_alloc_outbuf.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sisusb_clear_vram.exit.i

if.then.i44.i.i:                                  ; preds = %sisusb_alloc_outbuf.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %372 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %372)
  %373 = load i8, ptr %arrayidx.i.i.i.i, align 1
  %374 = and i8 %373, -3
  store i8 %374, ptr %arrayidx.i.i.i.i, align 1
  br label %sisusb_clear_vram.exit.i

sisusb_clear_vram.exit.thread.i:                  ; preds = %for.inc.i.i.i.i.sisusb_clear_vram.exit.thread.i_crit_edge, %if.end17.i.i.sisusb_clear_vram.exit.thread.i_crit_edge, %sisusb_get_ramconfig.exit.sisusb_clear_vram.exit.thread.i_crit_edge
  %retval.0.i.ph.i = phi i32 [ -16, %if.end17.i.i.sisusb_clear_vram.exit.thread.i_crit_edge ], [ 1, %sisusb_get_ramconfig.exit.sisusb_clear_vram.exit.thread.i_crit_edge ], [ -16, %for.inc.i.i.i.i.sisusb_clear_vram.exit.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %j.i.i) #10
  br label %sisusb_setup_screen.exit

sisusb_clear_vram.exit.i:                         ; preds = %if.then.i44.i.i, %sisusb_alloc_outbuf.exit.i.i.sisusb_clear_vram.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %j.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i.i)
  %tobool2.not.i = icmp eq i32 %call21.i.i, 0
  br i1 %tobool2.not.i, label %sisusb_clear_vram.exit.i.land.lhs.true.i_crit_edge, label %sisusb_clear_vram.exit.i.sisusb_setup_screen.exit_crit_edge

sisusb_clear_vram.exit.i.sisusb_setup_screen.exit_crit_edge: ; preds = %sisusb_clear_vram.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sisusb_setup_screen.exit

sisusb_clear_vram.exit.i.land.lhs.true.i_crit_edge: ; preds = %sisusb_clear_vram.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %sisusb_clear_vram.exit.i.land.lhs.true.i_crit_edge, %sisusb_clear_vram.exit.thread3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %initscreen)
  %tobool3.not.i = icmp eq i32 %initscreen, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.sisusb_setup_screen.exit_crit_edge, label %land.lhs.true.i.for.body.i_crit_edge

land.lhs.true.i.for.body.i_crit_edge:             ; preds = %land.lhs.true.i
  br label %for.body.i

land.lhs.true.i.sisusb_setup_screen.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sisusb_setup_screen.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %land.lhs.true.i.for.body.i_crit_edge
  %i.010.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %land.lhs.true.i.for.body.i_crit_edge ]
  %ret.09.i = phi i32 [ %or12.i, %for.body.i.for.body.i_crit_edge ], [ 0, %land.lhs.true.i.for.body.i_crit_edge ]
  %375 = ptrtoint ptr %vrambase.i to i32
  call void @__asan_load4_noabort(i32 %375)
  %376 = load i32, ptr %vrambase.i, align 4
  %mul6.i = shl nuw i32 %i.010.i, 1
  %add.i88 = add i32 %376, %mul6.i
  %call7.i = call fastcc i32 @sisusb_write_memio_word(ptr noundef %sisusb, i32 noundef 0, i32 noundef %add.i88, i16 noundef zeroext -3840) #10
  %or.i89 = or i32 %call7.i, %ret.09.i
  %add10.i = add i32 %add.i88, 613120
  %call11.i = call fastcc i32 @sisusb_write_memio_word(ptr noundef %sisusb, i32 noundef 0, i32 noundef %add10.i, i16 noundef zeroext -3840) #10
  %or12.i = or i32 %or.i89, %call11.i
  %inc.i = add nuw nsw i32 %i.010.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 640
  br i1 %exitcond.not.i, label %for.body.i.for.body15.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.body.i.for.body15.i_crit_edge:                ; preds = %for.body.i
  br label %for.body15.i

for.body15.i:                                     ; preds = %for.body15.i.for.body15.i_crit_edge, %for.body.i.for.body15.i_crit_edge
  %i.112.i = phi i32 [ %inc28.i, %for.body15.i.for.body15.i_crit_edge ], [ 0, %for.body.i.for.body15.i_crit_edge ]
  %ret.111.i = phi i32 [ %or26.i90, %for.body15.i.for.body15.i_crit_edge ], [ %or12.i, %for.body.i.for.body15.i_crit_edge ]
  %377 = ptrtoint ptr %vrambase.i to i32
  call void @__asan_load4_noabort(i32 %377)
  %378 = load i32, ptr %vrambase.i, align 4
  %mul18.i = mul nuw nsw i32 %i.112.i, 1280
  %add19.i = add i32 %378, %mul18.i
  %call20.i = call fastcc i32 @sisusb_write_memio_word(ptr noundef %sisusb, i32 noundef 0, i32 noundef %add19.i, i16 noundef zeroext -3840) #10
  %or21.i = or i32 %call20.i, %ret.111.i
  %add24.i = add i32 %add19.i, 1278
  %call25.i = call fastcc i32 @sisusb_write_memio_word(ptr noundef %sisusb, i32 noundef 0, i32 noundef %add24.i, i16 noundef zeroext -3840) #10
  %or26.i90 = or i32 %or21.i, %call25.i
  %inc28.i = add nuw nsw i32 %i.112.i, 1
  %exitcond16.not.i = icmp eq i32 %inc28.i, 480
  br i1 %exitcond16.not.i, label %for.body15.i.sisusb_setup_screen.exit_crit_edge, label %for.body15.i.for.body15.i_crit_edge

for.body15.i.for.body15.i_crit_edge:              ; preds = %for.body15.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body15.i

for.body15.i.sisusb_setup_screen.exit_crit_edge:  ; preds = %for.body15.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sisusb_setup_screen.exit

sisusb_setup_screen.exit:                         ; preds = %for.body15.i.sisusb_setup_screen.exit_crit_edge, %land.lhs.true.i.sisusb_setup_screen.exit_crit_edge, %sisusb_clear_vram.exit.i.sisusb_setup_screen.exit_crit_edge, %sisusb_clear_vram.exit.thread.i
  %ret.2.i = phi i32 [ %call21.i.i, %sisusb_clear_vram.exit.i.sisusb_setup_screen.exit_crit_edge ], [ 0, %land.lhs.true.i.sisusb_setup_screen.exit_crit_edge ], [ %retval.0.i.ph.i, %sisusb_clear_vram.exit.thread.i ], [ %or26.i90, %for.body15.i.sisusb_setup_screen.exit_crit_edge ]
  %or53 = or i32 %ret.2.i, %ret.1102
  br label %cleanup

cleanup:                                          ; preds = %sisusb_setup_screen.exit, %if.then47.cleanup_crit_edge, %if.end44.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then.cleanup_crit_edge ], [ %call7, %if.end.cleanup_crit_edge ], [ %call18, %if.end11.cleanup_crit_edge ], [ %or53, %sisusb_setup_screen.exit ], [ %ret.1102, %if.then47.cleanup_crit_edge ], [ %ret.1.ph, %if.end44.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp32) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister_dev(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @sisusb_lseek(ptr noundef %file, i64 noundef %offset, i32 noundef %orig) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.sisusb_usb_data, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #10
  %present = getelementptr inbounds %struct.sisusb_usb_data, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %present to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %present, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not = icmp eq i32 %3, 0
  br i1 %tobool1.not, label %if.end.cleanup.sink.split_crit_edge, label %lor.lhs.false

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

lor.lhs.false:                                    ; preds = %if.end
  %ready = getelementptr inbounds %struct.sisusb_usb_data, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %ready to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ready, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool2.not = icmp eq i32 %5, 0
  br i1 %tobool2.not, label %lor.lhs.false.cleanup.sink.split_crit_edge, label %lor.lhs.false3

lor.lhs.false.cleanup.sink.split_crit_edge:       ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %tobool4.not = icmp eq ptr %7, null
  br i1 %tobool4.not, label %lor.lhs.false3.cleanup.sink.split_crit_edge, label %if.end7

lor.lhs.false3.cleanup.sink.split_crit_edge:      ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.end7:                                          ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i64 @no_seek_end_llseek(ptr noundef %file, i64 noundef %offset, i32 noundef %orig) #10
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end7, %lor.lhs.false3.cleanup.sink.split_crit_edge, %lor.lhs.false.cleanup.sink.split_crit_edge, %if.end.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i64 [ %call, %if.end7 ], [ -19, %lor.lhs.false3.cleanup.sink.split_crit_edge ], [ -19, %lor.lhs.false.cleanup.sink.split_crit_edge ], [ -19, %if.end.cleanup.sink.split_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i64 [ -19, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i64 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sisusb_read(ptr nocapture noundef readonly %file, ptr noundef %buffer, i32 noundef %count, ptr nocapture noundef %ppos) #0 align 64 {
entry:
  %bytes_read = alloca i32, align 4
  %buf8 = alloca i8, align 1
  %buf16 = alloca i16, align 2
  %buf32 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bytes_read) #10
  %0 = ptrtoint ptr %bytes_read to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %bytes_read, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %buf8) #10
  %1 = ptrtoint ptr %buf8 to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %buf8, align 1, !annotation !144
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf16) #10
  %2 = ptrtoint ptr %buf16 to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %buf16, align 2, !annotation !144
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf32) #10
  %3 = ptrtoint ptr %buf32 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %buf32, align 4, !annotation !144
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %4 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.sisusb_usb_data, ptr %5, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #10
  %present = getelementptr inbounds %struct.sisusb_usb_data, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %present to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %present, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool1.not = icmp eq i32 %7, 0
  br i1 %tobool1.not, label %if.end.cleanup.sink.split_crit_edge, label %lor.lhs.false

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

lor.lhs.false:                                    ; preds = %if.end
  %ready = getelementptr inbounds %struct.sisusb_usb_data, ptr %5, i32 0, i32 9
  %8 = ptrtoint ptr %ready to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ready, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool2.not = icmp eq i32 %9, 0
  br i1 %tobool2.not, label %lor.lhs.false.cleanup.sink.split_crit_edge, label %lor.lhs.false3

lor.lhs.false.cleanup.sink.split_crit_edge:       ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %5, align 4
  %tobool4.not = icmp eq ptr %11, null
  br i1 %tobool4.not, label %lor.lhs.false3.cleanup.sink.split_crit_edge, label %if.end7

lor.lhs.false3.cleanup.sink.split_crit_edge:      ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.end7:                                          ; preds = %lor.lhs.false3
  %12 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %ppos, align 8
  %14 = and i64 %13, -128
  call void @__sanitizer_cov_trace_const_cmp8(i64 53248, i64 %14)
  %15 = icmp eq i64 %14, 53248
  br i1 %15, label %if.then9, label %if.else69

if.then9:                                         ; preds = %if.end7
  %conv = trunc i64 %13 to i32
  %16 = zext i32 %count to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.49)
  switch i32 %count, label %if.then9.if.end141_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb19
    i32 4, label %sw.bb44
  ]

if.then9.if.end141_crit_edge:                     ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end141

sw.bb:                                            ; preds = %if.then9
  %call = call fastcc i32 @sisusb_read_memio_byte(ptr noundef nonnull %5, i32 noundef 1, i32 noundef %conv, ptr noundef nonnull %buf8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool10.not = icmp eq i32 %call, 0
  br i1 %tobool10.not, label %if.else, label %sw.bb.if.end141_crit_edge

sw.bb.if.end141_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end141

if.else:                                          ; preds = %sw.bb
  %17 = ptrtoint ptr %buf8 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %buf8, align 1
  tail call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 2520) #10
  %19 = tail call i32 @llvm.read_register.i32(metadata !134) #10
  %and.i.i.i = and i32 %19, -16384
  %20 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 4
  %21 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #5, !srcloc !147
  %and.i = and i32 %21, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #10, !srcloc !148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !149
  %22 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_1", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %buffer, i8 %18, i32 -1226833921) #10, !srcloc !153
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %21) #10, !srcloc !148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !149
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool14.not = icmp eq i32 %22, 0
  br i1 %tobool14.not, label %if.else16, label %if.else.if.end141_crit_edge

if.else.if.end141_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end141

if.else16:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %23 = ptrtoint ptr %bytes_read to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %bytes_read, align 4
  br label %if.end141

sw.bb19:                                          ; preds = %if.then9
  %call20 = call fastcc i32 @sisusb_read_memio_word(ptr noundef nonnull %5, i32 noundef 1, i32 noundef %conv, ptr noundef nonnull %buf16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.else23, label %sw.bb19.if.end141_crit_edge

sw.bb19.if.end141_crit_edge:                      ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end141

if.else23:                                        ; preds = %sw.bb19
  %24 = ptrtoint ptr %buf16 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %buf16, align 2
  tail call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 2531) #10
  %26 = tail call i32 @llvm.read_register.i32(metadata !134) #10
  %and.i.i.i201 = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i201 to ptr
  %cpu_domain.i.i202 = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 4
  %28 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i202) #5, !srcloc !147
  %and.i203 = and i32 %28, -13
  %or.i204 = or i32 %and.i203, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i204) #10, !srcloc !148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !149
  %29 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_2", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %buffer, i16 %25, i32 -1226833921) #10, !srcloc !154
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %28) #10, !srcloc !148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !149
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool39.not = icmp eq i32 %29, 0
  br i1 %tobool39.not, label %if.else41, label %if.else23.if.end141_crit_edge

if.else23.if.end141_crit_edge:                    ; preds = %if.else23
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end141

if.else41:                                        ; preds = %if.else23
  call void @__sanitizer_cov_trace_pc() #12
  %30 = ptrtoint ptr %bytes_read to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 2, ptr %bytes_read, align 4
  br label %if.end141

sw.bb44:                                          ; preds = %if.then9
  %call45 = call fastcc i32 @sisusb_read_memio_long(ptr noundef nonnull %5, i32 noundef 1, i32 noundef %conv, ptr noundef nonnull %buf32)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.else48, label %sw.bb44.if.end141_crit_edge

sw.bb44.if.end141_crit_edge:                      ; preds = %sw.bb44
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end141

if.else48:                                        ; preds = %sw.bb44
  %31 = ptrtoint ptr %buf32 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %buf32, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 2542) #10
  %33 = tail call i32 @llvm.read_register.i32(metadata !134) #10
  %and.i.i.i205 = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i205 to ptr
  %cpu_domain.i.i206 = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 4
  %35 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i206) #5, !srcloc !147
  %and.i207 = and i32 %35, -13
  %or.i208 = or i32 %and.i207, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i208) #10, !srcloc !148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !149
  %36 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %buffer, i32 %32, i32 -1226833921) #10, !srcloc !155
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %35) #10, !srcloc !148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !149
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool64.not = icmp eq i32 %36, 0
  br i1 %tobool64.not, label %if.else66, label %if.else48.if.end141_crit_edge

if.else48.if.end141_crit_edge:                    ; preds = %if.else48
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end141

if.else66:                                        ; preds = %if.else48
  call void @__sanitizer_cov_trace_pc() #12
  %37 = ptrtoint ptr %bytes_read to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 4, ptr %bytes_read, align 4
  br label %if.end141

if.else69:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_const_cmp8(i64 268435455, i64 %13)
  %cmp70 = icmp sgt i64 %13, 268435455
  br i1 %cmp70, label %land.lhs.true72, label %if.else99

land.lhs.true72:                                  ; preds = %if.else69
  %vramsize = getelementptr inbounds %struct.sisusb_usb_data, ptr %5, i32 0, i32 22
  %38 = ptrtoint ptr %vramsize to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %vramsize, align 4
  %add73 = add i32 %39, 268435456
  %conv74 = zext i32 %add73 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %13, i64 %conv74)
  %cmp75 = icmp ult i64 %13, %conv74
  br i1 %cmp75, label %if.then77, label %if.else85

if.then77:                                        ; preds = %land.lhs.true72
  call void @__sanitizer_cov_trace_pc() #12
  %40 = trunc i64 %13 to i32
  %conv80 = add i32 %40, -1073741824
  %call81 = call fastcc i32 @sisusb_read_mem_bulk(ptr noundef nonnull %5, i32 noundef %conv80, i32 noundef %count, ptr noundef %buffer, ptr noundef nonnull %bytes_read)
  %41 = ptrtoint ptr %bytes_read to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %bytes_read, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool82.not = icmp eq i32 %42, 0
  %spec.select = select i1 %tobool82.not, i32 %call81, i32 %42
  br label %if.end141

if.else85:                                        ; preds = %land.lhs.true72
  %43 = and i64 %13, -131072
  call void @__sanitizer_cov_trace_const_cmp8(i64 536870912, i64 %43)
  %44 = icmp eq i64 %43, 536870912
  br i1 %44, label %if.then91, label %if.else85.if.end141_crit_edge

if.else85.if.end141_crit_edge:                    ; preds = %if.else85
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end141

if.then91:                                        ; preds = %if.else85
  call void @__sanitizer_cov_trace_pc() #12
  %45 = trunc i64 %13 to i32
  %conv94 = add nuw nsw i32 %45, -1006632960
  %call95 = call fastcc i32 @sisusb_read_mem_bulk(ptr noundef nonnull %5, i32 noundef %conv94, i32 noundef %count, ptr noundef %buffer, ptr noundef nonnull %bytes_read)
  %46 = ptrtoint ptr %bytes_read to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %bytes_read, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool96.not = icmp eq i32 %47, 0
  %spec.select199 = select i1 %tobool96.not, i32 %call95, i32 %47
  br label %if.end141

if.else99:                                        ; preds = %if.else69
  %48 = add i64 %13, -65536
  call void @__sanitizer_cov_trace_const_cmp8(i64 93, i64 %48)
  %49 = icmp ult i64 %48, 93
  br i1 %49, label %if.then105, label %if.else99.if.end141_crit_edge

if.else99.if.end141_crit_edge:                    ; preds = %if.else99
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end141

if.then105:                                       ; preds = %if.else99
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %count)
  %cmp106.not = icmp eq i32 %count, 4
  br i1 %cmp106.not, label %if.end110, label %if.then105.cleanup.sink.split_crit_edge

if.then105.cleanup.sink.split_crit_edge:          ; preds = %if.then105
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.end110:                                        ; preds = %if.then105
  %50 = trunc i64 %13 to i32
  %conv112 = add nsw i32 %50, -65536
  %call113 = call fastcc i32 @sisusb_read_pci_config(ptr noundef nonnull %5, i32 noundef %conv112, ptr noundef nonnull %buf32)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call113)
  %tobool114.not = icmp eq i32 %call113, 0
  br i1 %tobool114.not, label %if.else116, label %if.end110.if.end141_crit_edge

if.end110.if.end141_crit_edge:                    ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end141

if.else116:                                       ; preds = %if.end110
  %51 = ptrtoint ptr %buf32 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %buf32, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 2600) #10
  %53 = tail call i32 @llvm.read_register.i32(metadata !134) #10
  %and.i.i.i209 = and i32 %53, -16384
  %54 = inttoptr i32 %and.i.i.i209 to ptr
  %cpu_domain.i.i210 = getelementptr inbounds %struct.thread_info, ptr %54, i32 0, i32 4
  %55 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i210) #5, !srcloc !147
  %and.i211 = and i32 %55, -13
  %or.i212 = or i32 %and.i211, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i212) #10, !srcloc !148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !149
  %56 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %buffer, i32 %52, i32 -1226833921) #10, !srcloc !156
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %55) #10, !srcloc !148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !149
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool132.not = icmp eq i32 %56, 0
  br i1 %tobool132.not, label %if.else134, label %if.else116.if.end141_crit_edge

if.else116.if.end141_crit_edge:                   ; preds = %if.else116
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end141

if.else134:                                       ; preds = %if.else116
  call void @__sanitizer_cov_trace_pc() #12
  %57 = ptrtoint ptr %bytes_read to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 4, ptr %bytes_read, align 4
  br label %if.end141

if.end141:                                        ; preds = %if.else134, %if.else116.if.end141_crit_edge, %if.end110.if.end141_crit_edge, %if.else99.if.end141_crit_edge, %if.then91, %if.else85.if.end141_crit_edge, %if.then77, %if.else66, %if.else48.if.end141_crit_edge, %sw.bb44.if.end141_crit_edge, %if.else41, %if.else23.if.end141_crit_edge, %sw.bb19.if.end141_crit_edge, %if.else16, %if.else.if.end141_crit_edge, %sw.bb.if.end141_crit_edge, %if.then9.if.end141_crit_edge
  %errno.0 = phi i32 [ 0, %if.else66 ], [ 0, %if.else41 ], [ 0, %if.else16 ], [ 0, %if.else134 ], [ -5, %sw.bb.if.end141_crit_edge ], [ -14, %if.else.if.end141_crit_edge ], [ -5, %sw.bb19.if.end141_crit_edge ], [ -14, %if.else23.if.end141_crit_edge ], [ -5, %sw.bb44.if.end141_crit_edge ], [ -14, %if.else48.if.end141_crit_edge ], [ -5, %if.then9.if.end141_crit_edge ], [ %spec.select, %if.then77 ], [ %spec.select199, %if.then91 ], [ -5, %if.end110.if.end141_crit_edge ], [ -14, %if.else116.if.end141_crit_edge ], [ -77, %if.else99.if.end141_crit_edge ], [ -77, %if.else85.if.end141_crit_edge ]
  %58 = ptrtoint ptr %bytes_read to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %bytes_read, align 4
  %conv142 = sext i32 %59 to i64
  %60 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %ppos, align 8
  %add143 = add i64 %61, %conv142
  store i64 %add143, ptr %ppos, align 8
  tail call void @mutex_unlock(ptr noundef %lock) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %errno.0)
  %tobool145.not = icmp eq i32 %errno.0, 0
  %spec.select220 = select i1 %tobool145.not, i32 %59, i32 %errno.0
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.then105.cleanup.sink.split_crit_edge, %lor.lhs.false3.cleanup.sink.split_crit_edge, %lor.lhs.false.cleanup.sink.split_crit_edge, %if.end.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ -19, %lor.lhs.false3.cleanup.sink.split_crit_edge ], [ -19, %lor.lhs.false.cleanup.sink.split_crit_edge ], [ -19, %if.end.cleanup.sink.split_crit_edge ], [ -22, %if.then105.cleanup.sink.split_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end141, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %entry.cleanup_crit_edge ], [ %spec.select220, %if.end141 ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf32) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf16) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %buf8) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bytes_read) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sisusb_write(ptr nocapture noundef readonly %file, ptr noundef %buffer, i32 noundef %count, ptr nocapture noundef %ppos) #0 align 64 {
entry:
  %bytes_written = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bytes_written) #10
  %0 = ptrtoint ptr %bytes_written to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %bytes_written, align 4
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %1 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %private_data, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.sisusb_usb_data, ptr %2, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #10
  %present = getelementptr inbounds %struct.sisusb_usb_data, ptr %2, i32 0, i32 8
  %3 = ptrtoint ptr %present to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %present, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool1.not = icmp eq i32 %4, 0
  br i1 %tobool1.not, label %if.end.cleanup.sink.split_crit_edge, label %lor.lhs.false

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

lor.lhs.false:                                    ; preds = %if.end
  %ready = getelementptr inbounds %struct.sisusb_usb_data, ptr %2, i32 0, i32 9
  %5 = ptrtoint ptr %ready to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ready, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool2.not = icmp eq i32 %6, 0
  br i1 %tobool2.not, label %lor.lhs.false.cleanup.sink.split_crit_edge, label %lor.lhs.false3

lor.lhs.false.cleanup.sink.split_crit_edge:       ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %2, align 4
  %tobool4.not = icmp eq ptr %8, null
  br i1 %tobool4.not, label %lor.lhs.false3.cleanup.sink.split_crit_edge, label %if.end7

lor.lhs.false3.cleanup.sink.split_crit_edge:      ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.end7:                                          ; preds = %lor.lhs.false3
  %9 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %ppos, align 8
  %11 = and i64 %10, -128
  call void @__sanitizer_cov_trace_const_cmp8(i64 53248, i64 %11)
  %12 = icmp eq i64 %11, 53248
  br i1 %12, label %if.then9, label %if.else66

if.then9:                                         ; preds = %if.end7
  %conv = trunc i64 %10 to i32
  %13 = zext i32 %count to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.50)
  switch i32 %count, label %if.then9.if.end135_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb21
    i32 4, label %sw.bb44
  ]

if.then9.if.end135_crit_edge:                     ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end135

sw.bb:                                            ; preds = %if.then9
  tail call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 2653) #10
  %14 = tail call i32 @llvm.read_register.i32(metadata !134) #10
  %and.i.i.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 4
  %16 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #5, !srcloc !147
  %and.i = and i32 %16, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #10, !srcloc !148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !149
  %17 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_1", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %buffer, i32 -1226833921) #10, !srcloc !157
  %asmresult = extractvalue { i32, i32 } %17, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %16) #10, !srcloc !148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !149
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult)
  %tobool13.not = icmp eq i32 %asmresult, 0
  br i1 %tobool13.not, label %if.else, label %sw.bb.if.end135_crit_edge

sw.bb.if.end135_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end135

if.else:                                          ; preds = %sw.bb
  %asmresult10 = extractvalue { i32, i32 } %17, 1
  %conv11 = trunc i32 %asmresult10 to i8
  %call15 = tail call fastcc i32 @sisusb_write_memio_byte(ptr noundef nonnull %2, i32 noundef 1, i32 noundef %conv, i8 noundef zeroext %conv11)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.else18, label %if.else.if.end135_crit_edge

if.else.if.end135_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end135

if.else18:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %18 = ptrtoint ptr %bytes_written to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %bytes_written, align 4
  br label %if.end135

sw.bb21:                                          ; preds = %if.then9
  tail call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 2664) #10
  %19 = tail call i32 @llvm.read_register.i32(metadata !134) #10
  %and.i.i.i196 = and i32 %19, -16384
  %20 = inttoptr i32 %and.i.i.i196 to ptr
  %cpu_domain.i.i197 = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 4
  %21 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i197) #5, !srcloc !147
  %and.i198 = and i32 %21, -13
  %or.i199 = or i32 %and.i198, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i199) #10, !srcloc !148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !149
  %22 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_2", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %buffer, i32 -1226833921) #10, !srcloc !158
  %asmresult31 = extractvalue { i32, i32 } %22, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %21) #10, !srcloc !148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !149
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult31)
  %tobool35.not = icmp eq i32 %asmresult31, 0
  br i1 %tobool35.not, label %if.else37, label %sw.bb21.if.end135_crit_edge

sw.bb21.if.end135_crit_edge:                      ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end135

if.else37:                                        ; preds = %sw.bb21
  %asmresult32 = extractvalue { i32, i32 } %22, 1
  %conv33 = trunc i32 %asmresult32 to i16
  %call38 = tail call fastcc i32 @sisusb_write_memio_word(ptr noundef nonnull %2, i32 noundef 1, i32 noundef %conv, i16 noundef zeroext %conv33)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.else41, label %if.else37.if.end135_crit_edge

if.else37.if.end135_crit_edge:                    ; preds = %if.else37
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end135

if.else41:                                        ; preds = %if.else37
  call void @__sanitizer_cov_trace_pc() #12
  %23 = ptrtoint ptr %bytes_written to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 2, ptr %bytes_written, align 4
  br label %if.end135

sw.bb44:                                          ; preds = %if.then9
  tail call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 2675) #10
  %24 = tail call i32 @llvm.read_register.i32(metadata !134) #10
  %and.i.i.i200 = and i32 %24, -16384
  %25 = inttoptr i32 %and.i.i.i200 to ptr
  %cpu_domain.i.i201 = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 4
  %26 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i201) #5, !srcloc !147
  %and.i202 = and i32 %26, -13
  %or.i203 = or i32 %and.i202, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i203) #10, !srcloc !148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !149
  %27 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %buffer, i32 -1226833921) #10, !srcloc !159
  %asmresult54 = extractvalue { i32, i32 } %27, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %26) #10, !srcloc !148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !149
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult54)
  %tobool57.not = icmp eq i32 %asmresult54, 0
  br i1 %tobool57.not, label %if.else59, label %sw.bb44.if.end135_crit_edge

sw.bb44.if.end135_crit_edge:                      ; preds = %sw.bb44
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end135

if.else59:                                        ; preds = %sw.bb44
  %asmresult55 = extractvalue { i32, i32 } %27, 1
  %call60 = tail call fastcc i32 @sisusb_write_memio_long(ptr noundef nonnull %2, i32 noundef 1, i32 noundef %conv, i32 noundef %asmresult55)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %if.else63, label %if.else59.if.end135_crit_edge

if.else59.if.end135_crit_edge:                    ; preds = %if.else59
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end135

if.else63:                                        ; preds = %if.else59
  call void @__sanitizer_cov_trace_pc() #12
  %28 = ptrtoint ptr %bytes_written to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 4, ptr %bytes_written, align 4
  br label %if.end135

if.else66:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_const_cmp8(i64 268435455, i64 %10)
  %cmp67 = icmp sgt i64 %10, 268435455
  br i1 %cmp67, label %land.lhs.true69, label %if.else96

land.lhs.true69:                                  ; preds = %if.else66
  %vramsize = getelementptr inbounds %struct.sisusb_usb_data, ptr %2, i32 0, i32 22
  %29 = ptrtoint ptr %vramsize to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %vramsize, align 4
  %add70 = add i32 %30, 268435456
  %conv71 = zext i32 %add70 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %10, i64 %conv71)
  %cmp72 = icmp ult i64 %10, %conv71
  br i1 %cmp72, label %if.then74, label %if.else82

if.then74:                                        ; preds = %land.lhs.true69
  call void @__sanitizer_cov_trace_pc() #12
  %31 = trunc i64 %10 to i32
  %conv77 = add i32 %31, -1073741824
  %call78 = call fastcc i32 @sisusb_write_mem_bulk(ptr noundef nonnull %2, i32 noundef %conv77, i32 noundef %count, ptr noundef %buffer, i32 noundef 0, ptr noundef nonnull %bytes_written)
  %32 = ptrtoint ptr %bytes_written to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %bytes_written, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool79.not = icmp eq i32 %33, 0
  %spec.select = select i1 %tobool79.not, i32 %call78, i32 %33
  br label %if.end135

if.else82:                                        ; preds = %land.lhs.true69
  %34 = and i64 %10, -131072
  call void @__sanitizer_cov_trace_const_cmp8(i64 536870912, i64 %34)
  %35 = icmp eq i64 %34, 536870912
  br i1 %35, label %if.then88, label %if.else82.if.end135_crit_edge

if.else82.if.end135_crit_edge:                    ; preds = %if.else82
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end135

if.then88:                                        ; preds = %if.else82
  call void @__sanitizer_cov_trace_pc() #12
  %36 = trunc i64 %10 to i32
  %conv91 = add nuw nsw i32 %36, -1006632960
  %call92 = call fastcc i32 @sisusb_write_mem_bulk(ptr noundef nonnull %2, i32 noundef %conv91, i32 noundef %count, ptr noundef %buffer, i32 noundef 0, ptr noundef nonnull %bytes_written)
  %37 = ptrtoint ptr %bytes_written to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %bytes_written, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool93.not = icmp eq i32 %38, 0
  %spec.select194 = select i1 %tobool93.not, i32 %call92, i32 %38
  br label %if.end135

if.else96:                                        ; preds = %if.else66
  %39 = add i64 %10, -65536
  call void @__sanitizer_cov_trace_const_cmp8(i64 93, i64 %39)
  %40 = icmp ult i64 %39, 93
  br i1 %40, label %if.then102, label %if.else96.if.end135_crit_edge

if.else96.if.end135_crit_edge:                    ; preds = %if.else96
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end135

if.then102:                                       ; preds = %if.else96
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %count)
  %cmp103.not = icmp eq i32 %count, 4
  br i1 %cmp103.not, label %if.end107, label %if.then102.cleanup.sink.split_crit_edge

if.then102.cleanup.sink.split_crit_edge:          ; preds = %if.then102
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.end107:                                        ; preds = %if.then102
  tail call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 2740) #10
  %41 = tail call i32 @llvm.read_register.i32(metadata !134) #10
  %and.i.i.i204 = and i32 %41, -16384
  %42 = inttoptr i32 %and.i.i.i204 to ptr
  %cpu_domain.i.i205 = getelementptr inbounds %struct.thread_info, ptr %42, i32 0, i32 4
  %43 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i205) #5, !srcloc !147
  %and.i206 = and i32 %43, -13
  %or.i207 = or i32 %and.i206, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i207) #10, !srcloc !148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !149
  %44 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %buffer, i32 -1226833921) #10, !srcloc !160
  %asmresult119 = extractvalue { i32, i32 } %44, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %43) #10, !srcloc !148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !149
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult119)
  %tobool122.not = icmp eq i32 %asmresult119, 0
  br i1 %tobool122.not, label %if.else124, label %if.end107.if.end135_crit_edge

if.end107.if.end135_crit_edge:                    ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end135

if.else124:                                       ; preds = %if.end107
  %asmresult120 = extractvalue { i32, i32 } %44, 1
  %45 = trunc i64 %10 to i32
  %conv109 = add nsw i32 %45, -65536
  %call125 = tail call fastcc i32 @sisusb_write_pci_config(ptr noundef nonnull %2, i32 noundef %conv109, i32 noundef %asmresult120)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call125)
  %tobool126.not = icmp eq i32 %call125, 0
  br i1 %tobool126.not, label %if.else128, label %if.else124.if.end135_crit_edge

if.else124.if.end135_crit_edge:                   ; preds = %if.else124
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end135

if.else128:                                       ; preds = %if.else124
  call void @__sanitizer_cov_trace_pc() #12
  %46 = ptrtoint ptr %bytes_written to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 4, ptr %bytes_written, align 4
  br label %if.end135

if.end135:                                        ; preds = %if.else128, %if.else124.if.end135_crit_edge, %if.end107.if.end135_crit_edge, %if.else96.if.end135_crit_edge, %if.then88, %if.else82.if.end135_crit_edge, %if.then74, %if.else63, %if.else59.if.end135_crit_edge, %sw.bb44.if.end135_crit_edge, %if.else41, %if.else37.if.end135_crit_edge, %sw.bb21.if.end135_crit_edge, %if.else18, %if.else.if.end135_crit_edge, %sw.bb.if.end135_crit_edge, %if.then9.if.end135_crit_edge
  %errno.0 = phi i32 [ 0, %if.else63 ], [ 0, %if.else41 ], [ 0, %if.else18 ], [ 0, %if.else128 ], [ -14, %sw.bb.if.end135_crit_edge ], [ -5, %if.else.if.end135_crit_edge ], [ -14, %sw.bb21.if.end135_crit_edge ], [ -5, %if.else37.if.end135_crit_edge ], [ -14, %sw.bb44.if.end135_crit_edge ], [ -5, %if.else59.if.end135_crit_edge ], [ -5, %if.then9.if.end135_crit_edge ], [ %spec.select, %if.then74 ], [ %spec.select194, %if.then88 ], [ -14, %if.end107.if.end135_crit_edge ], [ -5, %if.else124.if.end135_crit_edge ], [ -77, %if.else96.if.end135_crit_edge ], [ -77, %if.else82.if.end135_crit_edge ]
  %47 = ptrtoint ptr %bytes_written to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %bytes_written, align 4
  %conv136 = sext i32 %48 to i64
  %49 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %ppos, align 8
  %add137 = add i64 %50, %conv136
  store i64 %add137, ptr %ppos, align 8
  tail call void @mutex_unlock(ptr noundef %lock) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %errno.0)
  %tobool139.not = icmp eq i32 %errno.0, 0
  %spec.select215 = select i1 %tobool139.not, i32 %48, i32 %errno.0
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.then102.cleanup.sink.split_crit_edge, %lor.lhs.false3.cleanup.sink.split_crit_edge, %lor.lhs.false.cleanup.sink.split_crit_edge, %if.end.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ -19, %lor.lhs.false3.cleanup.sink.split_crit_edge ], [ -19, %lor.lhs.false.cleanup.sink.split_crit_edge ], [ -19, %if.end.cleanup.sink.split_crit_edge ], [ -22, %if.then102.cleanup.sink.split_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end135, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %entry.cleanup_crit_edge ], [ %spec.select215, %if.end135 ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bytes_written) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sisusb_ioctl(ptr nocapture noundef readonly %file, i32 noundef %cmd, i32 noundef %arg) #0 align 64 {
entry:
  %x = alloca %struct.sisusb_info, align 4
  %y = alloca %struct.sisusb_command, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %x) #10
  %0 = call ptr @memset(ptr %x, i32 255, i32 68)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %y) #10
  %1 = inttoptr i32 %arg to ptr
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %2 = call ptr @memset(ptr %y, i32 255, i32 12)
  %3 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %private_data, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.sisusb_usb_data, ptr %4, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #10
  %present = getelementptr inbounds %struct.sisusb_usb_data, ptr %4, i32 0, i32 8
  %5 = ptrtoint ptr %present to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %present, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool2.not = icmp eq i32 %6, 0
  br i1 %tobool2.not, label %if.end.err_out_crit_edge, label %lor.lhs.false

if.end.err_out_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_out

lor.lhs.false:                                    ; preds = %if.end
  %ready = getelementptr inbounds %struct.sisusb_usb_data, ptr %4, i32 0, i32 9
  %7 = ptrtoint ptr %ready to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ready, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool3.not = icmp eq i32 %8, 0
  br i1 %tobool3.not, label %lor.lhs.false.err_out_crit_edge, label %lor.lhs.false4

lor.lhs.false.err_out_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_out

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %9 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %4, align 4
  %tobool5.not = icmp eq ptr %10, null
  br i1 %tobool5.not, label %lor.lhs.false4.err_out_crit_edge, label %if.end7

lor.lhs.false4.err_out_crit_edge:                 ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_out

if.end7:                                          ; preds = %lor.lhs.false4
  %11 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.51)
  switch i32 %cmd, label %if.end7.err_out_crit_edge [
    i32 -2147159234, label %sw.bb
    i32 -2142964929, label %sw.bb12
    i32 -1072893123, label %if.end8.i.i44
  ]

if.end7.err_out_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_out

sw.bb:                                            ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 2926) #10
  %12 = tail call i32 @llvm.read_register.i32(metadata !134) #10
  %and.i.i.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 4
  %14 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #5, !srcloc !147
  %and.i = and i32 %14, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #10, !srcloc !148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !149
  %15 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %1, i32 68, i32 -1226833921) #10, !srcloc !161
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %14) #10, !srcloc !148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !149
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool9.not = icmp eq i32 %15, 0
  %spec.select = select i1 %tobool9.not, i32 0, i32 -14
  br label %err_out

sw.bb12:                                          ; preds = %if.end7
  %16 = ptrtoint ptr %x to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1397314389, ptr %x, align 4
  %sisusb_version = getelementptr inbounds %struct.sisusb_info, ptr %x, i32 0, i32 1
  %17 = ptrtoint ptr %sisusb_version to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %sisusb_version, align 4
  %sisusb_revision = getelementptr inbounds %struct.sisusb_info, ptr %x, i32 0, i32 2
  %18 = ptrtoint ptr %sisusb_revision to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %sisusb_revision, align 1
  %sisusb_patchlevel = getelementptr inbounds %struct.sisusb_info, ptr %x, i32 0, i32 3
  %19 = ptrtoint ptr %sisusb_patchlevel to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 8, ptr %sisusb_patchlevel, align 2
  %gfxinit = getelementptr inbounds %struct.sisusb_usb_data, ptr %4, i32 0, i32 27
  %20 = ptrtoint ptr %gfxinit to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %gfxinit, align 1
  %sisusb_gfxinit = getelementptr inbounds %struct.sisusb_info, ptr %x, i32 0, i32 4
  %22 = ptrtoint ptr %sisusb_gfxinit to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %sisusb_gfxinit, align 1
  %sisusb_vrambase = getelementptr inbounds %struct.sisusb_info, ptr %x, i32 0, i32 5
  %23 = ptrtoint ptr %sisusb_vrambase to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 268435456, ptr %sisusb_vrambase, align 4
  %sisusb_mmiobase = getelementptr inbounds %struct.sisusb_info, ptr %x, i32 0, i32 6
  %24 = ptrtoint ptr %sisusb_mmiobase to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 536870912, ptr %sisusb_mmiobase, align 4
  %sisusb_iobase = getelementptr inbounds %struct.sisusb_info, ptr %x, i32 0, i32 7
  %25 = ptrtoint ptr %sisusb_iobase to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 53248, ptr %sisusb_iobase, align 4
  %sisusb_pcibase = getelementptr inbounds %struct.sisusb_info, ptr %x, i32 0, i32 8
  %26 = ptrtoint ptr %sisusb_pcibase to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 65536, ptr %sisusb_pcibase, align 4
  %vramsize = getelementptr inbounds %struct.sisusb_usb_data, ptr %4, i32 0, i32 22
  %27 = ptrtoint ptr %vramsize to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %vramsize, align 4
  %sisusb_vramsize = getelementptr inbounds %struct.sisusb_info, ptr %x, i32 0, i32 9
  %29 = ptrtoint ptr %sisusb_vramsize to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %sisusb_vramsize, align 4
  %minor = getelementptr inbounds %struct.sisusb_usb_data, ptr %4, i32 0, i32 6
  %30 = ptrtoint ptr %minor to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %minor, align 4
  %sisusb_minor = getelementptr inbounds %struct.sisusb_info, ptr %x, i32 0, i32 10
  %32 = ptrtoint ptr %sisusb_minor to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %sisusb_minor, align 4
  %sisusb_fbdevactive = getelementptr inbounds %struct.sisusb_info, ptr %x, i32 0, i32 11
  %33 = call ptr @memset(ptr %sisusb_fbdevactive, i32 0, i32 36)
  tail call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 174) #10
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i, label %sw.bb12.err_out_crit_edge, label %if.end.i.i

sw.bb12.err_out_crit_edge:                        ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_out

if.end.i.i:                                       ; preds = %sw.bb12
  %34 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 68, i32 -1226833920) #13, !srcloc !162
  %asmresult.i.i = extractvalue { i32, i32 } %34, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %copy_to_user.exit, label %if.end.i.i.err_out_crit_edge

if.end.i.i.err_out_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_out

copy_to_user.exit:                                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %x, i32 noundef 68) #10
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %1, ptr noundef nonnull %x, i32 noundef 68) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool14.not = icmp eq i32 %call.i12.i.i, 0
  %spec.select58 = select i1 %tobool14.not, i32 0, i32 -14
  br label %err_out

if.end8.i.i44:                                    ; preds = %if.end7
  tail call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 156) #10
  %call.i.i45 = tail call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i45, label %if.end8.i.i44.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.end8.i.i44.if.then11.i.i_crit_edge:            ; preds = %if.end8.i.i44
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.end8.i.i44
  %35 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 12, i32 -1226833920) #13, !srcloc !146
  %asmresult.i.i46 = extractvalue { i32, i32 } %35, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i46)
  %cmp.i6.i47 = icmp eq i32 %asmresult.i.i46, 0
  br i1 %cmp.i6.i47, label %if.end.i.i49, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !145

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i

if.end.i.i49:                                     ; preds = %land.lhs.true.i.i
  %call.i.i.i48 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %y, i32 noundef 12) #10
  %36 = call i32 @llvm.read_register.i32(metadata !134) #10
  %and.i.i.i.i.i.i = and i32 %36, -16384
  %37 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %37, i32 0, i32 4
  %38 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #5, !srcloc !147
  %and.i.i.i.i = and i32 %38, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #10, !srcloc !148
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !149
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %y, ptr noundef %1, i32 noundef 12) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %38) #10, !srcloc !148
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !149
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.else, label %if.end.i.i49.if.then11.i.i_crit_edge, !prof !145

if.end.i.i49.if.then11.i.i_crit_edge:             ; preds = %if.end.i.i49
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i49.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.end8.i.i44.if.then11.i.i_crit_edge
  %res.0.i.i55 = phi i32 [ %call1.i.i.i, %if.end.i.i49.if.then11.i.i_crit_edge ], [ 12, %if.end8.i.i44.if.then11.i.i_crit_edge ], [ 12, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 12, %res.0.i.i55
  %add.ptr.i.i = getelementptr i8, ptr %y, i32 %sub.i.i
  %39 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i55)
  br label %err_out

if.else:                                          ; preds = %if.end.i.i49
  call void @__sanitizer_cov_trace_pc() #12
  %call21 = call fastcc i32 @sisusb_handle_command(ptr noundef nonnull %4, ptr noundef nonnull %y, i32 noundef %arg)
  br label %err_out

err_out:                                          ; preds = %if.else, %if.then11.i.i, %copy_to_user.exit, %if.end.i.i.err_out_crit_edge, %sw.bb12.err_out_crit_edge, %sw.bb, %if.end7.err_out_crit_edge, %lor.lhs.false4.err_out_crit_edge, %lor.lhs.false.err_out_crit_edge, %if.end.err_out_crit_edge
  %retval1.0 = phi i32 [ %call21, %if.else ], [ -19, %lor.lhs.false4.err_out_crit_edge ], [ -19, %lor.lhs.false.err_out_crit_edge ], [ -19, %if.end.err_out_crit_edge ], [ %spec.select, %sw.bb ], [ -25, %if.end7.err_out_crit_edge ], [ -14, %sw.bb12.err_out_crit_edge ], [ -14, %if.end.i.i.err_out_crit_edge ], [ -14, %if.then11.i.i ], [ %spec.select58, %copy_to_user.exit ]
  call void @mutex_unlock(ptr noundef %lock) #10
  br label %cleanup

cleanup:                                          ; preds = %err_out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval1.0, %err_out ], [ -19, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %y) #10
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %x) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sisusb_open(ptr nocapture noundef readonly %inode, ptr nocapture noundef writeonly %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %i_rdev.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 13
  %0 = ptrtoint ptr %i_rdev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i_rdev.i, align 8
  %and.i = and i32 %1, 1048575
  %call1 = tail call ptr @usb_find_interface(ptr noundef nonnull @sisusb_driver, i32 noundef %and.i) #10
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %call1, i32 0, i32 7, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %tobool3.not = icmp eq ptr %3, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %lock = getelementptr inbounds %struct.sisusb_usb_data, ptr %3, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #10
  %present = getelementptr inbounds %struct.sisusb_usb_data, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %present to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %present, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool6.not = icmp eq i32 %5, 0
  br i1 %tobool6.not, label %if.end5.if.then8_crit_edge, label %lor.lhs.false

if.end5.if.then8_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then8

lor.lhs.false:                                    ; preds = %if.end5
  %ready = getelementptr inbounds %struct.sisusb_usb_data, ptr %3, i32 0, i32 9
  %6 = ptrtoint ptr %ready to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ready, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool7.not = icmp eq i32 %7, 0
  br i1 %tobool7.not, label %lor.lhs.false.if.then8_crit_edge, label %if.end10

lor.lhs.false.if.then8_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then8

if.then8:                                         ; preds = %lor.lhs.false.if.then8_crit_edge, %if.end5.if.then8_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #10
  br label %cleanup

if.end10:                                         ; preds = %lor.lhs.false
  %isopen = getelementptr inbounds %struct.sisusb_usb_data, ptr %3, i32 0, i32 7
  %8 = ptrtoint ptr %isopen to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %isopen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool11.not = icmp eq i32 %9, 0
  br i1 %tobool11.not, label %if.end14, label %if.then12

if.then12:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mutex_unlock(ptr noundef %lock) #10
  br label %cleanup

if.end14:                                         ; preds = %if.end10
  %devinit = getelementptr inbounds %struct.sisusb_usb_data, ptr %3, i32 0, i32 26
  %10 = ptrtoint ptr %devinit to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %devinit, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool15.not = icmp eq i8 %11, 0
  br i1 %tobool15.not, label %if.then16, label %if.end14.if.end35_crit_edge

if.end14.if.end35_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end35

if.then16:                                        ; preds = %if.end14
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %3, align 4
  %speed = getelementptr inbounds %struct.usb_device, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %speed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %15)
  %cmp = icmp eq i32 %15, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %15)
  %cmp20 = icmp ugt i32 %15, 4
  %or.cond = or i1 %cmp, %cmp20
  br i1 %or.cond, label %if.then21, label %if.else

if.then21:                                        ; preds = %if.then16
  %call22 = tail call fastcc i32 @sisusb_init_gfxdevice(ptr noundef nonnull %3, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.then21.if.end35_crit_edge, label %if.then24

if.then21.if.end35_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end35

if.then24:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mutex_unlock(ptr noundef %lock) #10
  %16 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %3, align 4
  %dev = getelementptr inbounds %struct.usb_device, ptr %17, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.31) #14
  br label %cleanup

if.else:                                          ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mutex_unlock(ptr noundef %lock) #10
  %18 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %3, align 4
  %dev33 = getelementptr inbounds %struct.usb_device, ptr %19, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev33, ptr noundef nonnull @.str.34) #14
  br label %cleanup

if.end35:                                         ; preds = %if.then21.if.end35_crit_edge, %if.end14.if.end35_crit_edge
  %kref = getelementptr inbounds %struct.sisusb_usb_data, ptr %3, i32 0, i32 2
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #10
  %20 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #10, !srcloc !163
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %20, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end35.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !164

if.end35.if.end15.sink.split.i.i.i.i_crit_edge:   ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end35
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %21 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %21)
  %.not.i.i.i.i = icmp sgt i32 %21, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.kref_get.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !145

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.kref_get.exit_crit_edge:          ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %kref_get.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.end35.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.end35.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef %.sink.i.i.i.i) #10
  br label %kref_get.exit

kref_get.exit:                                    ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.kref_get.exit_crit_edge
  %22 = ptrtoint ptr %isopen to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1, ptr %isopen, align 4
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %23 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %3, ptr %private_data, align 4
  tail call void @mutex_unlock(ptr noundef %lock) #10
  br label %cleanup

cleanup:                                          ; preds = %kref_get.exit, %if.else, %if.then24, %if.then12, %if.then8, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %if.then12 ], [ 0, %kref_get.exit ], [ -5, %if.then24 ], [ -5, %if.else ], [ -19, %if.then8 ], [ -19, %entry.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sisusb_release(ptr nocapture noundef readnone %inode, ptr nocapture noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.sisusb_usb_data, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #10
  %present = getelementptr inbounds %struct.sisusb_usb_data, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %present to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %present, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not = icmp eq i32 %3, 0
  br i1 %tobool1.not, label %if.end.if.end6_crit_edge, label %if.then2

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.then2:                                         ; preds = %if.end
  %call = tail call fastcc i32 @sisusb_wait_all_out_complete(ptr noundef nonnull %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %if.then4, label %if.then2.if.end6_crit_edge

if.then2.if.end6_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.then4:                                         ; preds = %if.then2
  %numobufs.i.i = getelementptr inbounds %struct.sisusb_usb_data, ptr %1, i32 0, i32 10
  %4 = ptrtoint ptr %numobufs.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %numobufs.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp4.i.i = icmp sgt i32 %5, 0
  br i1 %cmp4.i.i, label %if.then4.for.body.i.i_crit_edge, label %if.then4.if.end6_crit_edge

if.then4.if.end6_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.then4.for.body.i.i_crit_edge:                  ; preds = %if.then4
  br label %for.body.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i
  %inc.i.i = add nuw nsw i32 %i.05.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %5
  br i1 %exitcond.not.i.i, label %for.cond.i.i.if.end6_crit_edge, label %for.cond.i.i.for.body.i.i_crit_edge

for.cond.i.i.for.body.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

for.cond.i.i.if.end6_crit_edge:                   ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

for.body.i.i:                                     ; preds = %for.cond.i.i.for.body.i.i_crit_edge, %if.then4.for.body.i.i_crit_edge
  %i.05.i.i = phi i32 [ %inc.i.i, %for.cond.i.i.for.body.i.i_crit_edge ], [ 0, %if.then4.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.sisusb_usb_data, ptr %1, i32 0, i32 17, i32 %i.05.i.i
  %6 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.i.i, align 1
  %8 = and i8 %7, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not.i.i = icmp eq i8 %8, 0
  br i1 %tobool.not.i.i, label %for.cond.i.i, label %for.body.i.i.for.body.i_crit_edge

for.body.i.i.for.body.i_crit_edge:                ; preds = %for.body.i.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.i.i.for.body.i_crit_edge
  %i.015.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.body.i.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.sisusb_usb_data, ptr %1, i32 0, i32 17, i32 %i.015.i
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx.i, align 1
  %11 = and i8 %10, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool1.not.i = icmp eq i8 %11, 0
  br i1 %tobool1.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then2.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.then2.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx3.i = getelementptr %struct.sisusb_usb_data, ptr %1, i32 0, i32 15, i32 %i.015.i
  %12 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx3.i, align 4
  tail call void @usb_kill_urb(ptr noundef %13) #10
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then2.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.015.i, 1
  %14 = ptrtoint ptr %numobufs.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %numobufs.i.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %15
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.if.end6_crit_edge

for.inc.i.if.end6_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

if.end6:                                          ; preds = %for.inc.i.if.end6_crit_edge, %for.cond.i.i.if.end6_crit_edge, %if.then4.if.end6_crit_edge, %if.then2.if.end6_crit_edge, %if.end.if.end6_crit_edge
  %isopen = getelementptr inbounds %struct.sisusb_usb_data, ptr %1, i32 0, i32 7
  %16 = ptrtoint ptr %isopen to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %isopen, align 4
  %17 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %private_data, align 4
  tail call void @mutex_unlock(ptr noundef %lock) #10
  %kref = getelementptr inbounds %struct.sisusb_usb_data, ptr %1, i32 0, i32 2
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !150
  tail call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #10
  %18 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #10, !srcloc !151
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %18, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !145

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef 3) #10
  br label %cleanup

if.then.i:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !152
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 4
  tail call void @usb_put_dev(ptr noundef %20) #10
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %1, align 4
  tail call fastcc void @sisusb_free_buffers(ptr noundef nonnull %1) #10
  tail call fastcc void @sisusb_free_urbs(ptr noundef nonnull %1) #10
  tail call void @kfree(ptr noundef nonnull %1) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %entry.cleanup_crit_edge ], [ 0, %if.end5.i.i.i.i.cleanup_crit_edge ], [ 0, %if.then10.i.i.i.i ], [ 0, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @no_seek_end_llseek(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sisusb_read_memio_word(ptr noundef %sisusb, i32 noundef %type, i32 noundef %addr, ptr nocapture noundef %data) unnamed_addr #0 align 64 {
entry:
  %bytes_transferred.i104 = alloca i32, align 4
  %tmp.i105 = alloca i32, align 4
  %bytes_transferred.i90 = alloca i32, align 4
  %tmp.i91 = alloca i32, align 4
  %bytes_transferred.i76 = alloca i32, align 4
  %tmp.i77 = alloca i32, align 4
  %bytes_transferred.i62 = alloca i32, align 4
  %tmp.i63 = alloca i32, align 4
  %bytes_transferred.i = alloca i32, align 4
  %tmp.i = alloca i32, align 4
  %packet = alloca %struct.sisusb_packet, align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %packet) #10
  %0 = getelementptr inbounds %struct.sisusb_packet, ptr %packet, i32 0, i32 1
  %1 = getelementptr inbounds %struct.sisusb_packet, ptr %packet, i32 0, i32 2
  %2 = call ptr @memset(ptr %packet, i32 0, i32 10)
  %and = and i32 %addr, -4
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_storeN_noabort(i32 %3, i32 4)
  store i32 %and, ptr %0, align 2
  %and1 = and i32 %addr, 3
  %4 = zext i32 %and1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.52)
  switch i32 %and1, label %entry.unreachabledefault [
    i32 0, label %sw.bb
    i32 1, label %sw.bb4
    i32 2, label %sw.bb12
    i32 3, label %sw.bb21
  ]

sw.bb:                                            ; preds = %entry
  %type.tr61 = trunc i32 %type to i16
  %5 = shl i16 %type.tr61, 6
  %conv = or i16 %5, 3
  %6 = ptrtoint ptr %packet to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %conv, ptr %packet, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bytes_transferred.i) #10
  %7 = ptrtoint ptr %bytes_transferred.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %bytes_transferred.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #10
  %8 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %tmp.i, align 4, !annotation !144
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %9, i32 4)
  store i32 0, ptr %1, align 2
  %call.i = tail call fastcc i32 @sisusb_wait_all_out_complete(ptr noundef %sisusb) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %sw.bb.sisusb_send_packet.exit_crit_edge, label %do.body.i

sw.bb.sisusb_send_packet.exit_crit_edge:          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %sisusb_send_packet.exit

do.body.i:                                        ; preds = %sw.bb
  %10 = ptrtoint ptr %packet to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %packet, align 2
  %12 = tail call i16 @llvm.bswap.i16(i16 %11) #10
  %13 = ptrtoint ptr %packet to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %12, ptr %packet, align 2
  %14 = ptrtoint ptr %0 to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %0, align 2
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #10
  %17 = ptrtoint ptr %0 to i32
  call void @__asan_storeN_noabort(i32 %17, i32 4)
  store i32 %16, ptr %0, align 2
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_loadN_noabort(i32 %18, i32 4)
  %19 = load i32, ptr %1, align 2
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #10
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %21, i32 4)
  store i32 %20, ptr %1, align 2
  %call7.i = call fastcc i32 @sisusb_send_bulk_msg(ptr noundef %sisusb, i32 noundef 14, i32 noundef 6, ptr noundef nonnull %packet, ptr noundef null, i32 noundef 0, ptr noundef nonnull %bytes_transferred.i, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %cmp8.i = icmp eq i32 %call7.i, 0
  br i1 %cmp8.i, label %if.then10.i, label %do.body.i.sisusb_send_packet.exit_crit_edge

do.body.i.sisusb_send_packet.exit_crit_edge:      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sisusb_send_packet.exit

if.then10.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %call11.i = call fastcc i32 @sisusb_recv_bulk_msg(ptr noundef %sisusb, i32 noundef 14, ptr noundef nonnull %tmp.i, ptr noundef nonnull %bytes_transferred.i) #10
  %22 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %tmp.i, align 4
  %24 = call i32 @llvm.bswap.i32(i32 %23) #10
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %25, i32 4)
  store i32 %24, ptr %1, align 2
  br label %sisusb_send_packet.exit

sisusb_send_packet.exit:                          ; preds = %if.then10.i, %do.body.i.sisusb_send_packet.exit_crit_edge, %sw.bb.sisusb_send_packet.exit_crit_edge
  %retval.0.i = phi i32 [ 1, %sw.bb.sisusb_send_packet.exit_crit_edge ], [ %call11.i, %if.then10.i ], [ %call7.i, %do.body.i.sisusb_send_packet.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bytes_transferred.i) #10
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_loadN_noabort(i32 %26, i32 4)
  %27 = load i32, ptr %1, align 2
  %conv3 = trunc i32 %27 to i16
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  %type.tr60 = trunc i32 %type to i16
  %28 = shl i16 %type.tr60, 6
  %conv7 = or i16 %28, 6
  %29 = ptrtoint ptr %packet to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %conv7, ptr %packet, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bytes_transferred.i62) #10
  %30 = ptrtoint ptr %bytes_transferred.i62 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %bytes_transferred.i62, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i63) #10
  %31 = ptrtoint ptr %tmp.i63 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 -1, ptr %tmp.i63, align 4, !annotation !144
  %32 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %32, i32 4)
  store i32 0, ptr %1, align 2
  %call.i65 = tail call fastcc i32 @sisusb_wait_all_out_complete(ptr noundef %sisusb) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i65)
  %tobool.not.i66 = icmp eq i32 %call.i65, 0
  br i1 %tobool.not.i66, label %sw.bb4.sisusb_send_packet.exit75_crit_edge, label %do.body.i71

sw.bb4.sisusb_send_packet.exit75_crit_edge:       ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #12
  br label %sisusb_send_packet.exit75

do.body.i71:                                      ; preds = %sw.bb4
  %33 = ptrtoint ptr %packet to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %packet, align 2
  %35 = tail call i16 @llvm.bswap.i16(i16 %34) #10
  %36 = ptrtoint ptr %packet to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %35, ptr %packet, align 2
  %37 = ptrtoint ptr %0 to i32
  call void @__asan_loadN_noabort(i32 %37, i32 4)
  %38 = load i32, ptr %0, align 2
  %39 = tail call i32 @llvm.bswap.i32(i32 %38) #10
  %40 = ptrtoint ptr %0 to i32
  call void @__asan_storeN_noabort(i32 %40, i32 4)
  store i32 %39, ptr %0, align 2
  %41 = ptrtoint ptr %1 to i32
  call void @__asan_loadN_noabort(i32 %41, i32 4)
  %42 = load i32, ptr %1, align 2
  %43 = tail call i32 @llvm.bswap.i32(i32 %42) #10
  %44 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %44, i32 4)
  store i32 %43, ptr %1, align 2
  %call7.i69 = call fastcc i32 @sisusb_send_bulk_msg(ptr noundef %sisusb, i32 noundef 14, i32 noundef 6, ptr noundef nonnull %packet, ptr noundef null, i32 noundef 0, ptr noundef nonnull %bytes_transferred.i62, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i69)
  %cmp8.i70 = icmp eq i32 %call7.i69, 0
  br i1 %cmp8.i70, label %if.then10.i73, label %do.body.i71.sisusb_send_packet.exit75_crit_edge

do.body.i71.sisusb_send_packet.exit75_crit_edge:  ; preds = %do.body.i71
  call void @__sanitizer_cov_trace_pc() #12
  br label %sisusb_send_packet.exit75

if.then10.i73:                                    ; preds = %do.body.i71
  call void @__sanitizer_cov_trace_pc() #12
  %call11.i72 = call fastcc i32 @sisusb_recv_bulk_msg(ptr noundef %sisusb, i32 noundef 14, ptr noundef nonnull %tmp.i63, ptr noundef nonnull %bytes_transferred.i62) #10
  %45 = ptrtoint ptr %tmp.i63 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %tmp.i63, align 4
  %47 = call i32 @llvm.bswap.i32(i32 %46) #10
  %48 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %48, i32 4)
  store i32 %47, ptr %1, align 2
  br label %sisusb_send_packet.exit75

sisusb_send_packet.exit75:                        ; preds = %if.then10.i73, %do.body.i71.sisusb_send_packet.exit75_crit_edge, %sw.bb4.sisusb_send_packet.exit75_crit_edge
  %retval.0.i74 = phi i32 [ 1, %sw.bb4.sisusb_send_packet.exit75_crit_edge ], [ %call11.i72, %if.then10.i73 ], [ %call7.i69, %do.body.i71.sisusb_send_packet.exit75_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i63) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bytes_transferred.i62) #10
  %49 = ptrtoint ptr %1 to i32
  call void @__asan_loadN_noabort(i32 %49, i32 4)
  %50 = load i32, ptr %1, align 2
  %shr = lshr i32 %50, 8
  %conv11 = trunc i32 %shr to i16
  br label %sw.epilog

sw.bb12:                                          ; preds = %entry
  %type.tr = trunc i32 %type to i16
  %51 = shl i16 %type.tr, 6
  %conv15 = or i16 %51, 12
  %52 = ptrtoint ptr %packet to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %conv15, ptr %packet, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bytes_transferred.i76) #10
  %53 = ptrtoint ptr %bytes_transferred.i76 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %bytes_transferred.i76, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i77) #10
  %54 = ptrtoint ptr %tmp.i77 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 -1, ptr %tmp.i77, align 4, !annotation !144
  %55 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %55, i32 4)
  store i32 0, ptr %1, align 2
  %call.i79 = tail call fastcc i32 @sisusb_wait_all_out_complete(ptr noundef %sisusb) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i79)
  %tobool.not.i80 = icmp eq i32 %call.i79, 0
  br i1 %tobool.not.i80, label %sw.bb12.sisusb_send_packet.exit89_crit_edge, label %do.body.i85

sw.bb12.sisusb_send_packet.exit89_crit_edge:      ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #12
  br label %sisusb_send_packet.exit89

do.body.i85:                                      ; preds = %sw.bb12
  %56 = ptrtoint ptr %packet to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %packet, align 2
  %58 = tail call i16 @llvm.bswap.i16(i16 %57) #10
  %59 = ptrtoint ptr %packet to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 %58, ptr %packet, align 2
  %60 = ptrtoint ptr %0 to i32
  call void @__asan_loadN_noabort(i32 %60, i32 4)
  %61 = load i32, ptr %0, align 2
  %62 = tail call i32 @llvm.bswap.i32(i32 %61) #10
  %63 = ptrtoint ptr %0 to i32
  call void @__asan_storeN_noabort(i32 %63, i32 4)
  store i32 %62, ptr %0, align 2
  %64 = ptrtoint ptr %1 to i32
  call void @__asan_loadN_noabort(i32 %64, i32 4)
  %65 = load i32, ptr %1, align 2
  %66 = tail call i32 @llvm.bswap.i32(i32 %65) #10
  %67 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %67, i32 4)
  store i32 %66, ptr %1, align 2
  %call7.i83 = call fastcc i32 @sisusb_send_bulk_msg(ptr noundef %sisusb, i32 noundef 14, i32 noundef 6, ptr noundef nonnull %packet, ptr noundef null, i32 noundef 0, ptr noundef nonnull %bytes_transferred.i76, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i83)
  %cmp8.i84 = icmp eq i32 %call7.i83, 0
  br i1 %cmp8.i84, label %if.then10.i87, label %do.body.i85.sisusb_send_packet.exit89_crit_edge

do.body.i85.sisusb_send_packet.exit89_crit_edge:  ; preds = %do.body.i85
  call void @__sanitizer_cov_trace_pc() #12
  br label %sisusb_send_packet.exit89

if.then10.i87:                                    ; preds = %do.body.i85
  call void @__sanitizer_cov_trace_pc() #12
  %call11.i86 = call fastcc i32 @sisusb_recv_bulk_msg(ptr noundef %sisusb, i32 noundef 14, ptr noundef nonnull %tmp.i77, ptr noundef nonnull %bytes_transferred.i76) #10
  %68 = ptrtoint ptr %tmp.i77 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %tmp.i77, align 4
  %70 = call i32 @llvm.bswap.i32(i32 %69) #10
  %71 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %71, i32 4)
  store i32 %70, ptr %1, align 2
  br label %sisusb_send_packet.exit89

sisusb_send_packet.exit89:                        ; preds = %if.then10.i87, %do.body.i85.sisusb_send_packet.exit89_crit_edge, %sw.bb12.sisusb_send_packet.exit89_crit_edge
  %retval.0.i88 = phi i32 [ 1, %sw.bb12.sisusb_send_packet.exit89_crit_edge ], [ %call11.i86, %if.then10.i87 ], [ %call7.i83, %do.body.i85.sisusb_send_packet.exit89_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i77) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bytes_transferred.i76) #10
  %72 = ptrtoint ptr %1 to i32
  call void @__asan_loadN_noabort(i32 %72, i32 4)
  %73 = load i32, ptr %1, align 2
  %shr19 = lshr i32 %73, 16
  %conv20 = trunc i32 %shr19 to i16
  br label %sw.epilog

sw.bb21:                                          ; preds = %entry
  %type.tr118 = trunc i32 %type to i16
  %74 = shl i16 %type.tr118, 6
  %conv24 = or i16 %74, 8
  %75 = ptrtoint ptr %packet to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 %conv24, ptr %packet, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bytes_transferred.i90) #10
  %76 = ptrtoint ptr %bytes_transferred.i90 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 0, ptr %bytes_transferred.i90, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i91) #10
  %77 = ptrtoint ptr %tmp.i91 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 -1, ptr %tmp.i91, align 4, !annotation !144
  %78 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %78, i32 4)
  store i32 0, ptr %1, align 2
  %call.i93 = tail call fastcc i32 @sisusb_wait_all_out_complete(ptr noundef %sisusb) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i93)
  %tobool.not.i94 = icmp eq i32 %call.i93, 0
  br i1 %tobool.not.i94, label %sw.bb21.sisusb_send_packet.exit103_crit_edge, label %do.body.i99

sw.bb21.sisusb_send_packet.exit103_crit_edge:     ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #12
  br label %sisusb_send_packet.exit103

do.body.i99:                                      ; preds = %sw.bb21
  %79 = ptrtoint ptr %packet to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %packet, align 2
  %81 = tail call i16 @llvm.bswap.i16(i16 %80) #10
  %82 = ptrtoint ptr %packet to i32
  call void @__asan_store2_noabort(i32 %82)
  store i16 %81, ptr %packet, align 2
  %83 = ptrtoint ptr %0 to i32
  call void @__asan_loadN_noabort(i32 %83, i32 4)
  %84 = load i32, ptr %0, align 2
  %85 = tail call i32 @llvm.bswap.i32(i32 %84) #10
  %86 = ptrtoint ptr %0 to i32
  call void @__asan_storeN_noabort(i32 %86, i32 4)
  store i32 %85, ptr %0, align 2
  %87 = ptrtoint ptr %1 to i32
  call void @__asan_loadN_noabort(i32 %87, i32 4)
  %88 = load i32, ptr %1, align 2
  %89 = tail call i32 @llvm.bswap.i32(i32 %88) #10
  %90 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %90, i32 4)
  store i32 %89, ptr %1, align 2
  %call7.i97 = call fastcc i32 @sisusb_send_bulk_msg(ptr noundef %sisusb, i32 noundef 14, i32 noundef 6, ptr noundef nonnull %packet, ptr noundef null, i32 noundef 0, ptr noundef nonnull %bytes_transferred.i90, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i97)
  %cmp8.i98 = icmp eq i32 %call7.i97, 0
  br i1 %cmp8.i98, label %if.then10.i101, label %do.body.i99.sisusb_send_packet.exit103_crit_edge

do.body.i99.sisusb_send_packet.exit103_crit_edge: ; preds = %do.body.i99
  call void @__sanitizer_cov_trace_pc() #12
  br label %sisusb_send_packet.exit103

if.then10.i101:                                   ; preds = %do.body.i99
  call void @__sanitizer_cov_trace_pc() #12
  %call11.i100 = call fastcc i32 @sisusb_recv_bulk_msg(ptr noundef %sisusb, i32 noundef 14, ptr noundef nonnull %tmp.i91, ptr noundef nonnull %bytes_transferred.i90) #10
  %91 = ptrtoint ptr %tmp.i91 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %tmp.i91, align 4
  %93 = call i32 @llvm.bswap.i32(i32 %92) #10
  %94 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %94, i32 4)
  store i32 %93, ptr %1, align 2
  br label %sisusb_send_packet.exit103

sisusb_send_packet.exit103:                       ; preds = %if.then10.i101, %do.body.i99.sisusb_send_packet.exit103_crit_edge, %sw.bb21.sisusb_send_packet.exit103_crit_edge
  %retval.0.i102 = phi i32 [ 1, %sw.bb21.sisusb_send_packet.exit103_crit_edge ], [ %call11.i100, %if.then10.i101 ], [ %call7.i97, %do.body.i99.sisusb_send_packet.exit103_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i91) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bytes_transferred.i90) #10
  %95 = ptrtoint ptr %1 to i32
  call void @__asan_loadN_noabort(i32 %95, i32 4)
  %96 = load i32, ptr %1, align 2
  %shr28 = lshr i32 %96, 24
  %conv29 = trunc i32 %shr28 to i16
  %97 = ptrtoint ptr %data to i32
  call void @__asan_store2_noabort(i32 %97)
  store i16 %conv29, ptr %data, align 2
  %conv32 = or i16 %74, 1
  %98 = ptrtoint ptr %packet to i32
  call void @__asan_store2_noabort(i32 %98)
  store i16 %conv32, ptr %packet, align 2
  %add = add i32 %and, 4
  %99 = ptrtoint ptr %0 to i32
  call void @__asan_storeN_noabort(i32 %99, i32 4)
  store i32 %add, ptr %0, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bytes_transferred.i104) #10
  %100 = ptrtoint ptr %bytes_transferred.i104 to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 0, ptr %bytes_transferred.i104, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i105) #10
  %101 = ptrtoint ptr %tmp.i105 to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 -1, ptr %tmp.i105, align 4, !annotation !144
  %102 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %102, i32 4)
  store i32 0, ptr %1, align 2
  %call.i107 = call fastcc i32 @sisusb_wait_all_out_complete(ptr noundef %sisusb) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i107)
  %tobool.not.i108 = icmp eq i32 %call.i107, 0
  br i1 %tobool.not.i108, label %sisusb_send_packet.exit103.sisusb_send_packet.exit117_crit_edge, label %do.body.i113

sisusb_send_packet.exit103.sisusb_send_packet.exit117_crit_edge: ; preds = %sisusb_send_packet.exit103
  call void @__sanitizer_cov_trace_pc() #12
  br label %sisusb_send_packet.exit117

do.body.i113:                                     ; preds = %sisusb_send_packet.exit103
  %103 = ptrtoint ptr %packet to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %packet, align 2
  %105 = call i16 @llvm.bswap.i16(i16 %104) #10
  %106 = ptrtoint ptr %packet to i32
  call void @__asan_store2_noabort(i32 %106)
  store i16 %105, ptr %packet, align 2
  %107 = ptrtoint ptr %0 to i32
  call void @__asan_loadN_noabort(i32 %107, i32 4)
  %108 = load i32, ptr %0, align 2
  %109 = call i32 @llvm.bswap.i32(i32 %108) #10
  %110 = ptrtoint ptr %0 to i32
  call void @__asan_storeN_noabort(i32 %110, i32 4)
  store i32 %109, ptr %0, align 2
  %111 = ptrtoint ptr %1 to i32
  call void @__asan_loadN_noabort(i32 %111, i32 4)
  %112 = load i32, ptr %1, align 2
  %113 = call i32 @llvm.bswap.i32(i32 %112) #10
  %114 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %114, i32 4)
  store i32 %113, ptr %1, align 2
  %call7.i111 = call fastcc i32 @sisusb_send_bulk_msg(ptr noundef %sisusb, i32 noundef 14, i32 noundef 6, ptr noundef nonnull %packet, ptr noundef null, i32 noundef 0, ptr noundef nonnull %bytes_transferred.i104, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i111)
  %cmp8.i112 = icmp eq i32 %call7.i111, 0
  br i1 %cmp8.i112, label %if.then10.i115, label %do.body.i113.sisusb_send_packet.exit117_crit_edge

do.body.i113.sisusb_send_packet.exit117_crit_edge: ; preds = %do.body.i113
  call void @__sanitizer_cov_trace_pc() #12
  br label %sisusb_send_packet.exit117

if.then10.i115:                                   ; preds = %do.body.i113
  call void @__sanitizer_cov_trace_pc() #12
  %call11.i114 = call fastcc i32 @sisusb_recv_bulk_msg(ptr noundef %sisusb, i32 noundef 14, ptr noundef nonnull %tmp.i105, ptr noundef nonnull %bytes_transferred.i104) #10
  %115 = ptrtoint ptr %tmp.i105 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %tmp.i105, align 4
  %117 = call i32 @llvm.bswap.i32(i32 %116) #10
  %118 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %118, i32 4)
  store i32 %117, ptr %1, align 2
  br label %sisusb_send_packet.exit117

sisusb_send_packet.exit117:                       ; preds = %if.then10.i115, %do.body.i113.sisusb_send_packet.exit117_crit_edge, %sisusb_send_packet.exit103.sisusb_send_packet.exit117_crit_edge
  %retval.0.i116 = phi i32 [ 1, %sisusb_send_packet.exit103.sisusb_send_packet.exit117_crit_edge ], [ %call11.i114, %if.then10.i115 ], [ %call7.i111, %do.body.i113.sisusb_send_packet.exit117_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i105) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bytes_transferred.i104) #10
  %or37 = or i32 %retval.0.i116, %retval.0.i102
  %119 = ptrtoint ptr %1 to i32
  call void @__asan_loadN_noabort(i32 %119, i32 4)
  %120 = load i32, ptr %1, align 2
  %121 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %121)
  %122 = load i16, ptr %data, align 2
  %.tr = trunc i32 %120 to i16
  %123 = shl i16 %.tr, 8
  %conv44 = or i16 %123, %122
  br label %sw.epilog

entry.unreachabledefault:                         ; preds = %entry
  unreachable

sw.epilog:                                        ; preds = %sisusb_send_packet.exit117, %sisusb_send_packet.exit89, %sisusb_send_packet.exit75, %sisusb_send_packet.exit
  %conv44.sink = phi i16 [ %conv44, %sisusb_send_packet.exit117 ], [ %conv20, %sisusb_send_packet.exit89 ], [ %conv11, %sisusb_send_packet.exit75 ], [ %conv3, %sisusb_send_packet.exit ]
  %ret.0 = phi i32 [ %or37, %sisusb_send_packet.exit117 ], [ %retval.0.i88, %sisusb_send_packet.exit89 ], [ %retval.0.i74, %sisusb_send_packet.exit75 ], [ %retval.0.i, %sisusb_send_packet.exit ]
  %124 = ptrtoint ptr %data to i32
  call void @__asan_store2_noabort(i32 %124)
  store i16 %conv44.sink, ptr %data, align 2
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %packet) #10
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sisusb_read_memio_long(ptr noundef %sisusb, i32 noundef %type, i32 noundef %addr, ptr nocapture noundef %data) unnamed_addr #0 align 64 {
entry:
  %bytes_transferred.i156 = alloca i32, align 4
  %tmp.i157 = alloca i32, align 4
  %bytes_transferred.i142 = alloca i32, align 4
  %tmp.i143 = alloca i32, align 4
  %bytes_transferred.i128 = alloca i32, align 4
  %tmp.i129 = alloca i32, align 4
  %bytes_transferred.i114 = alloca i32, align 4
  %tmp.i115 = alloca i32, align 4
  %bytes_transferred.i100 = alloca i32, align 4
  %tmp.i101 = alloca i32, align 4
  %bytes_transferred.i86 = alloca i32, align 4
  %tmp.i87 = alloca i32, align 4
  %bytes_transferred.i = alloca i32, align 4
  %tmp.i = alloca i32, align 4
  %packet = alloca %struct.sisusb_packet, align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %packet) #10
  %0 = getelementptr inbounds %struct.sisusb_packet, ptr %packet, i32 0, i32 1
  %1 = getelementptr inbounds %struct.sisusb_packet, ptr %packet, i32 0, i32 2
  %and = and i32 %addr, -4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_storeN_noabort(i32 %2, i32 4)
  store i32 %and, ptr %0, align 2
  %and1 = and i32 %addr, 3
  %3 = zext i32 %and1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.53)
  switch i32 %and1, label %entry.unreachabledefault [
    i32 0, label %sw.bb
    i32 1, label %sw.bb3
    i32 2, label %sw.bb21
    i32 3, label %sw.bb41
  ]

sw.bb:                                            ; preds = %entry
  %type.tr = trunc i32 %type to i16
  %4 = shl i16 %type.tr, 6
  %conv = or i16 %4, 15
  %5 = ptrtoint ptr %packet to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %conv, ptr %packet, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bytes_transferred.i) #10
  %6 = ptrtoint ptr %bytes_transferred.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %bytes_transferred.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #10
  %7 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %tmp.i, align 4, !annotation !144
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %8, i32 4)
  store i32 0, ptr %1, align 2
  %call.i = tail call fastcc i32 @sisusb_wait_all_out_complete(ptr noundef %sisusb) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %sw.bb.sisusb_send_packet.exit_crit_edge, label %do.body.i

sw.bb.sisusb_send_packet.exit_crit_edge:          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %sisusb_send_packet.exit

do.body.i:                                        ; preds = %sw.bb
  %9 = ptrtoint ptr %packet to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %packet, align 2
  %11 = tail call i16 @llvm.bswap.i16(i16 %10) #10
  %12 = ptrtoint ptr %packet to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %packet, align 2
  %13 = ptrtoint ptr %0 to i32
  call void @__asan_loadN_noabort(i32 %13, i32 4)
  %14 = load i32, ptr %0, align 2
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #10
  %16 = ptrtoint ptr %0 to i32
  call void @__asan_storeN_noabort(i32 %16, i32 4)
  store i32 %15, ptr %0, align 2
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_loadN_noabort(i32 %17, i32 4)
  %18 = load i32, ptr %1, align 2
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #10
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %20, i32 4)
  store i32 %19, ptr %1, align 2
  %call7.i = call fastcc i32 @sisusb_send_bulk_msg(ptr noundef %sisusb, i32 noundef 14, i32 noundef 6, ptr noundef nonnull %packet, ptr noundef null, i32 noundef 0, ptr noundef nonnull %bytes_transferred.i, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %cmp8.i = icmp eq i32 %call7.i, 0
  br i1 %cmp8.i, label %if.then10.i, label %do.body.i.sisusb_send_packet.exit_crit_edge

do.body.i.sisusb_send_packet.exit_crit_edge:      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sisusb_send_packet.exit

if.then10.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %call11.i = call fastcc i32 @sisusb_recv_bulk_msg(ptr noundef %sisusb, i32 noundef 14, ptr noundef nonnull %tmp.i, ptr noundef nonnull %bytes_transferred.i) #10
  %21 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %tmp.i, align 4
  %23 = call i32 @llvm.bswap.i32(i32 %22) #10
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %24, i32 4)
  store i32 %23, ptr %1, align 2
  br label %sisusb_send_packet.exit

sisusb_send_packet.exit:                          ; preds = %if.then10.i, %do.body.i.sisusb_send_packet.exit_crit_edge, %sw.bb.sisusb_send_packet.exit_crit_edge
  %retval.0.i = phi i32 [ 1, %sw.bb.sisusb_send_packet.exit_crit_edge ], [ %call11.i, %if.then10.i ], [ %call7.i, %do.body.i.sisusb_send_packet.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bytes_transferred.i) #10
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_loadN_noabort(i32 %25, i32 4)
  %26 = load i32, ptr %1, align 2
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  %type.tr172 = trunc i32 %type to i16
  %27 = shl i16 %type.tr172, 6
  %conv6 = or i16 %27, 14
  %28 = ptrtoint ptr %packet to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %conv6, ptr %packet, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bytes_transferred.i86) #10
  %29 = ptrtoint ptr %bytes_transferred.i86 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %bytes_transferred.i86, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i87) #10
  %30 = ptrtoint ptr %tmp.i87 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 -1, ptr %tmp.i87, align 4, !annotation !144
  %31 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %31, i32 4)
  store i32 0, ptr %1, align 2
  %call.i89 = tail call fastcc i32 @sisusb_wait_all_out_complete(ptr noundef %sisusb) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i89)
  %tobool.not.i90 = icmp eq i32 %call.i89, 0
  br i1 %tobool.not.i90, label %sw.bb3.sisusb_send_packet.exit99_crit_edge, label %do.body.i95

sw.bb3.sisusb_send_packet.exit99_crit_edge:       ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #12
  br label %sisusb_send_packet.exit99

do.body.i95:                                      ; preds = %sw.bb3
  %32 = ptrtoint ptr %packet to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %packet, align 2
  %34 = tail call i16 @llvm.bswap.i16(i16 %33) #10
  %35 = ptrtoint ptr %packet to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %34, ptr %packet, align 2
  %36 = ptrtoint ptr %0 to i32
  call void @__asan_loadN_noabort(i32 %36, i32 4)
  %37 = load i32, ptr %0, align 2
  %38 = tail call i32 @llvm.bswap.i32(i32 %37) #10
  %39 = ptrtoint ptr %0 to i32
  call void @__asan_storeN_noabort(i32 %39, i32 4)
  store i32 %38, ptr %0, align 2
  %40 = ptrtoint ptr %1 to i32
  call void @__asan_loadN_noabort(i32 %40, i32 4)
  %41 = load i32, ptr %1, align 2
  %42 = tail call i32 @llvm.bswap.i32(i32 %41) #10
  %43 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %43, i32 4)
  store i32 %42, ptr %1, align 2
  %call7.i93 = call fastcc i32 @sisusb_send_bulk_msg(ptr noundef %sisusb, i32 noundef 14, i32 noundef 6, ptr noundef nonnull %packet, ptr noundef null, i32 noundef 0, ptr noundef nonnull %bytes_transferred.i86, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i93)
  %cmp8.i94 = icmp eq i32 %call7.i93, 0
  br i1 %cmp8.i94, label %if.then10.i97, label %do.body.i95.sisusb_send_packet.exit99_crit_edge

do.body.i95.sisusb_send_packet.exit99_crit_edge:  ; preds = %do.body.i95
  call void @__sanitizer_cov_trace_pc() #12
  br label %sisusb_send_packet.exit99

if.then10.i97:                                    ; preds = %do.body.i95
  call void @__sanitizer_cov_trace_pc() #12
  %call11.i96 = call fastcc i32 @sisusb_recv_bulk_msg(ptr noundef %sisusb, i32 noundef 14, ptr noundef nonnull %tmp.i87, ptr noundef nonnull %bytes_transferred.i86) #10
  %44 = ptrtoint ptr %tmp.i87 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %tmp.i87, align 4
  %46 = call i32 @llvm.bswap.i32(i32 %45) #10
  %47 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %47, i32 4)
  store i32 %46, ptr %1, align 2
  br label %sisusb_send_packet.exit99

sisusb_send_packet.exit99:                        ; preds = %if.then10.i97, %do.body.i95.sisusb_send_packet.exit99_crit_edge, %sw.bb3.sisusb_send_packet.exit99_crit_edge
  %retval.0.i98 = phi i32 [ 1, %sw.bb3.sisusb_send_packet.exit99_crit_edge ], [ %call11.i96, %if.then10.i97 ], [ %call7.i93, %do.body.i95.sisusb_send_packet.exit99_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i87) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bytes_transferred.i86) #10
  %48 = ptrtoint ptr %1 to i32
  call void @__asan_loadN_noabort(i32 %48, i32 4)
  %49 = load i32, ptr %1, align 2
  %shr = lshr i32 %49, 8
  %50 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %shr, ptr %data, align 4
  %conv12 = or i16 %27, 1
  %51 = ptrtoint ptr %packet to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %conv12, ptr %packet, align 2
  %add = add i32 %and, 4
  %52 = ptrtoint ptr %0 to i32
  call void @__asan_storeN_noabort(i32 %52, i32 4)
  store i32 %add, ptr %0, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bytes_transferred.i100) #10
  %53 = ptrtoint ptr %bytes_transferred.i100 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %bytes_transferred.i100, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i101) #10
  %54 = ptrtoint ptr %tmp.i101 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 -1, ptr %tmp.i101, align 4, !annotation !144
  %55 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %55, i32 4)
  store i32 0, ptr %1, align 2
  %call.i103 = call fastcc i32 @sisusb_wait_all_out_complete(ptr noundef %sisusb) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i103)
  %tobool.not.i104 = icmp eq i32 %call.i103, 0
  br i1 %tobool.not.i104, label %sisusb_send_packet.exit99.sisusb_send_packet.exit113_crit_edge, label %do.body.i109

sisusb_send_packet.exit99.sisusb_send_packet.exit113_crit_edge: ; preds = %sisusb_send_packet.exit99
  call void @__sanitizer_cov_trace_pc() #12
  br label %sisusb_send_packet.exit113

do.body.i109:                                     ; preds = %sisusb_send_packet.exit99
  %56 = ptrtoint ptr %packet to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %packet, align 2
  %58 = call i16 @llvm.bswap.i16(i16 %57) #10
  %59 = ptrtoint ptr %packet to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 %58, ptr %packet, align 2
  %60 = ptrtoint ptr %0 to i32
  call void @__asan_loadN_noabort(i32 %60, i32 4)
  %61 = load i32, ptr %0, align 2
  %62 = call i32 @llvm.bswap.i32(i32 %61) #10
  %63 = ptrtoint ptr %0 to i32
  call void @__asan_storeN_noabort(i32 %63, i32 4)
  store i32 %62, ptr %0, align 2
  %64 = ptrtoint ptr %1 to i32
  call void @__asan_loadN_noabort(i32 %64, i32 4)
  %65 = load i32, ptr %1, align 2
  %66 = call i32 @llvm.bswap.i32(i32 %65) #10
  %67 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %67, i32 4)
  store i32 %66, ptr %1, align 2
  %call7.i107 = call fastcc i32 @sisusb_send_bulk_msg(ptr noundef %sisusb, i32 noundef 14, i32 noundef 6, ptr noundef nonnull %packet, ptr noundef null, i32 noundef 0, ptr noundef nonnull %bytes_transferred.i100, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i107)
  %cmp8.i108 = icmp eq i32 %call7.i107, 0
  br i1 %cmp8.i108, label %if.then10.i111, label %do.body.i109.sisusb_send_packet.exit113_crit_edge

do.body.i109.sisusb_send_packet.exit113_crit_edge: ; preds = %do.body.i109
  call void @__sanitizer_cov_trace_pc() #12
  br label %sisusb_send_packet.exit113

if.then10.i111:                                   ; preds = %do.body.i109
  call void @__sanitizer_cov_trace_pc() #12
  %call11.i110 = call fastcc i32 @sisusb_recv_bulk_msg(ptr noundef %sisusb, i32 noundef 14, ptr noundef nonnull %tmp.i101, ptr noundef nonnull %bytes_transferred.i100) #10
  %68 = ptrtoint ptr %tmp.i101 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %tmp.i101, align 4
  %70 = call i32 @llvm.bswap.i32(i32 %69) #10
  %71 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %71, i32 4)
  store i32 %70, ptr %1, align 2
  br label %sisusb_send_packet.exit113

sisusb_send_packet.exit113:                       ; preds = %if.then10.i111, %do.body.i109.sisusb_send_packet.exit113_crit_edge, %sisusb_send_packet.exit99.sisusb_send_packet.exit113_crit_edge
  %retval.0.i112 = phi i32 [ 1, %sisusb_send_packet.exit99.sisusb_send_packet.exit113_crit_edge ], [ %call11.i110, %if.then10.i111 ], [ %call7.i107, %do.body.i109.sisusb_send_packet.exit113_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i101) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bytes_transferred.i100) #10
  %or17 = or i32 %retval.0.i112, %retval.0.i98
  %72 = ptrtoint ptr %1 to i32
  call void @__asan_loadN_noabort(i32 %72, i32 4)
  %73 = load i32, ptr %1, align 2
  %shl19 = shl i32 %73, 24
  %74 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %data, align 4
  %or20 = or i32 %75, %shl19
  br label %sw.epilog

sw.bb21:                                          ; preds = %entry
  %type.tr171 = trunc i32 %type to i16
  %76 = shl i16 %type.tr171, 6
  %conv24 = or i16 %76, 12
  %77 = ptrtoint ptr %packet to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 %conv24, ptr %packet, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bytes_transferred.i114) #10
  %78 = ptrtoint ptr %bytes_transferred.i114 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 0, ptr %bytes_transferred.i114, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i115) #10
  %79 = ptrtoint ptr %tmp.i115 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 -1, ptr %tmp.i115, align 4, !annotation !144
  %80 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %80, i32 4)
  store i32 0, ptr %1, align 2
  %call.i117 = tail call fastcc i32 @sisusb_wait_all_out_complete(ptr noundef %sisusb) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i117)
  %tobool.not.i118 = icmp eq i32 %call.i117, 0
  br i1 %tobool.not.i118, label %sw.bb21.sisusb_send_packet.exit127_crit_edge, label %do.body.i123

sw.bb21.sisusb_send_packet.exit127_crit_edge:     ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #12
  br label %sisusb_send_packet.exit127

do.body.i123:                                     ; preds = %sw.bb21
  %81 = ptrtoint ptr %packet to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %packet, align 2
  %83 = tail call i16 @llvm.bswap.i16(i16 %82) #10
  %84 = ptrtoint ptr %packet to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 %83, ptr %packet, align 2
  %85 = ptrtoint ptr %0 to i32
  call void @__asan_loadN_noabort(i32 %85, i32 4)
  %86 = load i32, ptr %0, align 2
  %87 = tail call i32 @llvm.bswap.i32(i32 %86) #10
  %88 = ptrtoint ptr %0 to i32
  call void @__asan_storeN_noabort(i32 %88, i32 4)
  store i32 %87, ptr %0, align 2
  %89 = ptrtoint ptr %1 to i32
  call void @__asan_loadN_noabort(i32 %89, i32 4)
  %90 = load i32, ptr %1, align 2
  %91 = tail call i32 @llvm.bswap.i32(i32 %90) #10
  %92 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %92, i32 4)
  store i32 %91, ptr %1, align 2
  %call7.i121 = call fastcc i32 @sisusb_send_bulk_msg(ptr noundef %sisusb, i32 noundef 14, i32 noundef 6, ptr noundef nonnull %packet, ptr noundef null, i32 noundef 0, ptr noundef nonnull %bytes_transferred.i114, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i121)
  %cmp8.i122 = icmp eq i32 %call7.i121, 0
  br i1 %cmp8.i122, label %if.then10.i125, label %do.body.i123.sisusb_send_packet.exit127_crit_edge

do.body.i123.sisusb_send_packet.exit127_crit_edge: ; preds = %do.body.i123
  call void @__sanitizer_cov_trace_pc() #12
  br label %sisusb_send_packet.exit127

if.then10.i125:                                   ; preds = %do.body.i123
  call void @__sanitizer_cov_trace_pc() #12
  %call11.i124 = call fastcc i32 @sisusb_recv_bulk_msg(ptr noundef %sisusb, i32 noundef 14, ptr noundef nonnull %tmp.i115, ptr noundef nonnull %bytes_transferred.i114) #10
  %93 = ptrtoint ptr %tmp.i115 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %tmp.i115, align 4
  %95 = call i32 @llvm.bswap.i32(i32 %94) #10
  %96 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %96, i32 4)
  store i32 %95, ptr %1, align 2
  br label %sisusb_send_packet.exit127

sisusb_send_packet.exit127:                       ; preds = %if.then10.i125, %do.body.i123.sisusb_send_packet.exit127_crit_edge, %sw.bb21.sisusb_send_packet.exit127_crit_edge
  %retval.0.i126 = phi i32 [ 1, %sw.bb21.sisusb_send_packet.exit127_crit_edge ], [ %call11.i124, %if.then10.i125 ], [ %call7.i121, %do.body.i123.sisusb_send_packet.exit127_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i115) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bytes_transferred.i114) #10
  %97 = ptrtoint ptr %1 to i32
  call void @__asan_loadN_noabort(i32 %97, i32 4)
  %98 = load i32, ptr %1, align 2
  %shr28 = lshr i32 %98, 16
  %99 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %shr28, ptr %data, align 4
  %conv31 = or i16 %76, 3
  %100 = ptrtoint ptr %packet to i32
  call void @__asan_store2_noabort(i32 %100)
  store i16 %conv31, ptr %packet, align 2
  %add34 = add i32 %and, 4
  %101 = ptrtoint ptr %0 to i32
  call void @__asan_storeN_noabort(i32 %101, i32 4)
  store i32 %add34, ptr %0, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bytes_transferred.i128) #10
  %102 = ptrtoint ptr %bytes_transferred.i128 to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 0, ptr %bytes_transferred.i128, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i129) #10
  %103 = ptrtoint ptr %tmp.i129 to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 -1, ptr %tmp.i129, align 4, !annotation !144
  %104 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %104, i32 4)
  store i32 0, ptr %1, align 2
  %call.i131 = call fastcc i32 @sisusb_wait_all_out_complete(ptr noundef %sisusb) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i131)
  %tobool.not.i132 = icmp eq i32 %call.i131, 0
  br i1 %tobool.not.i132, label %sisusb_send_packet.exit127.sisusb_send_packet.exit141_crit_edge, label %do.body.i137

sisusb_send_packet.exit127.sisusb_send_packet.exit141_crit_edge: ; preds = %sisusb_send_packet.exit127
  call void @__sanitizer_cov_trace_pc() #12
  br label %sisusb_send_packet.exit141

do.body.i137:                                     ; preds = %sisusb_send_packet.exit127
  %105 = ptrtoint ptr %packet to i32
  call void @__asan_load2_noabort(i32 %105)
  %106 = load i16, ptr %packet, align 2
  %107 = call i16 @llvm.bswap.i16(i16 %106) #10
  %108 = ptrtoint ptr %packet to i32
  call void @__asan_store2_noabort(i32 %108)
  store i16 %107, ptr %packet, align 2
  %109 = ptrtoint ptr %0 to i32
  call void @__asan_loadN_noabort(i32 %109, i32 4)
  %110 = load i32, ptr %0, align 2
  %111 = call i32 @llvm.bswap.i32(i32 %110) #10
  %112 = ptrtoint ptr %0 to i32
  call void @__asan_storeN_noabort(i32 %112, i32 4)
  store i32 %111, ptr %0, align 2
  %113 = ptrtoint ptr %1 to i32
  call void @__asan_loadN_noabort(i32 %113, i32 4)
  %114 = load i32, ptr %1, align 2
  %115 = call i32 @llvm.bswap.i32(i32 %114) #10
  %116 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %116, i32 4)
  store i32 %115, ptr %1, align 2
  %call7.i135 = call fastcc i32 @sisusb_send_bulk_msg(ptr noundef %sisusb, i32 noundef 14, i32 noundef 6, ptr noundef nonnull %packet, ptr noundef null, i32 noundef 0, ptr noundef nonnull %bytes_transferred.i128, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i135)
  %cmp8.i136 = icmp eq i32 %call7.i135, 0
  br i1 %cmp8.i136, label %if.then10.i139, label %do.body.i137.sisusb_send_packet.exit141_crit_edge

do.body.i137.sisusb_send_packet.exit141_crit_edge: ; preds = %do.body.i137
  call void @__sanitizer_cov_trace_pc() #12
  br label %sisusb_send_packet.exit141

if.then10.i139:                                   ; preds = %do.body.i137
  call void @__sanitizer_cov_trace_pc() #12
  %call11.i138 = call fastcc i32 @sisusb_recv_bulk_msg(ptr noundef %sisusb, i32 noundef 14, ptr noundef nonnull %tmp.i129, ptr noundef nonnull %bytes_transferred.i128) #10
  %117 = ptrtoint ptr %tmp.i129 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %tmp.i129, align 4
  %119 = call i32 @llvm.bswap.i32(i32 %118) #10
  %120 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %120, i32 4)
  store i32 %119, ptr %1, align 2
  br label %sisusb_send_packet.exit141

sisusb_send_packet.exit141:                       ; preds = %if.then10.i139, %do.body.i137.sisusb_send_packet.exit141_crit_edge, %sisusb_send_packet.exit127.sisusb_send_packet.exit141_crit_edge
  %retval.0.i140 = phi i32 [ 1, %sisusb_send_packet.exit127.sisusb_send_packet.exit141_crit_edge ], [ %call11.i138, %if.then10.i139 ], [ %call7.i135, %do.body.i137.sisusb_send_packet.exit141_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i129) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bytes_transferred.i128) #10
  %or37 = or i32 %retval.0.i140, %retval.0.i126
  %121 = ptrtoint ptr %1 to i32
  call void @__asan_loadN_noabort(i32 %121, i32 4)
  %122 = load i32, ptr %1, align 2
  %shl39 = shl i32 %122, 16
  %123 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %data, align 4
  %or40 = or i32 %124, %shl39
  br label %sw.epilog

sw.bb41:                                          ; preds = %entry
  %type.tr170 = trunc i32 %type to i16
  %125 = shl i16 %type.tr170, 6
  %conv44 = or i16 %125, 8
  %126 = ptrtoint ptr %packet to i32
  call void @__asan_store2_noabort(i32 %126)
  store i16 %conv44, ptr %packet, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bytes_transferred.i142) #10
  %127 = ptrtoint ptr %bytes_transferred.i142 to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 0, ptr %bytes_transferred.i142, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i143) #10
  %128 = ptrtoint ptr %tmp.i143 to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 -1, ptr %tmp.i143, align 4, !annotation !144
  %129 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %129, i32 4)
  store i32 0, ptr %1, align 2
  %call.i145 = tail call fastcc i32 @sisusb_wait_all_out_complete(ptr noundef %sisusb) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i145)
  %tobool.not.i146 = icmp eq i32 %call.i145, 0
  br i1 %tobool.not.i146, label %sw.bb41.sisusb_send_packet.exit155_crit_edge, label %do.body.i151

sw.bb41.sisusb_send_packet.exit155_crit_edge:     ; preds = %sw.bb41
  call void @__sanitizer_cov_trace_pc() #12
  br label %sisusb_send_packet.exit155

do.body.i151:                                     ; preds = %sw.bb41
  %130 = ptrtoint ptr %packet to i32
  call void @__asan_load2_noabort(i32 %130)
  %131 = load i16, ptr %packet, align 2
  %132 = tail call i16 @llvm.bswap.i16(i16 %131) #10
  %133 = ptrtoint ptr %packet to i32
  call void @__asan_store2_noabort(i32 %133)
  store i16 %132, ptr %packet, align 2
  %134 = ptrtoint ptr %0 to i32
  call void @__asan_loadN_noabort(i32 %134, i32 4)
  %135 = load i32, ptr %0, align 2
  %136 = tail call i32 @llvm.bswap.i32(i32 %135) #10
  %137 = ptrtoint ptr %0 to i32
  call void @__asan_storeN_noabort(i32 %137, i32 4)
  store i32 %136, ptr %0, align 2
  %138 = ptrtoint ptr %1 to i32
  call void @__asan_loadN_noabort(i32 %138, i32 4)
  %139 = load i32, ptr %1, align 2
  %140 = tail call i32 @llvm.bswap.i32(i32 %139) #10
  %141 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %141, i32 4)
  store i32 %140, ptr %1, align 2
  %call7.i149 = call fastcc i32 @sisusb_send_bulk_msg(ptr noundef %sisusb, i32 noundef 14, i32 noundef 6, ptr noundef nonnull %packet, ptr noundef null, i32 noundef 0, ptr noundef nonnull %bytes_transferred.i142, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i149)
  %cmp8.i150 = icmp eq i32 %call7.i149, 0
  br i1 %cmp8.i150, label %if.then10.i153, label %do.body.i151.sisusb_send_packet.exit155_crit_edge

do.body.i151.sisusb_send_packet.exit155_crit_edge: ; preds = %do.body.i151
  call void @__sanitizer_cov_trace_pc() #12
  br label %sisusb_send_packet.exit155

if.then10.i153:                                   ; preds = %do.body.i151
  call void @__sanitizer_cov_trace_pc() #12
  %call11.i152 = call fastcc i32 @sisusb_recv_bulk_msg(ptr noundef %sisusb, i32 noundef 14, ptr noundef nonnull %tmp.i143, ptr noundef nonnull %bytes_transferred.i142) #10
  %142 = ptrtoint ptr %tmp.i143 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %tmp.i143, align 4
  %144 = call i32 @llvm.bswap.i32(i32 %143) #10
  %145 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %145, i32 4)
  store i32 %144, ptr %1, align 2
  br label %sisusb_send_packet.exit155

sisusb_send_packet.exit155:                       ; preds = %if.then10.i153, %do.body.i151.sisusb_send_packet.exit155_crit_edge, %sw.bb41.sisusb_send_packet.exit155_crit_edge
  %retval.0.i154 = phi i32 [ 1, %sw.bb41.sisusb_send_packet.exit155_crit_edge ], [ %call11.i152, %if.then10.i153 ], [ %call7.i149, %do.body.i151.sisusb_send_packet.exit155_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i143) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bytes_transferred.i142) #10
  %146 = ptrtoint ptr %1 to i32
  call void @__asan_loadN_noabort(i32 %146, i32 4)
  %147 = load i32, ptr %1, align 2
  %shr48 = lshr i32 %147, 24
  %148 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 %shr48, ptr %data, align 4
  %conv51 = or i16 %125, 7
  %149 = ptrtoint ptr %packet to i32
  call void @__asan_store2_noabort(i32 %149)
  store i16 %conv51, ptr %packet, align 2
  %add54 = add i32 %and, 4
  %150 = ptrtoint ptr %0 to i32
  call void @__asan_storeN_noabort(i32 %150, i32 4)
  store i32 %add54, ptr %0, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bytes_transferred.i156) #10
  %151 = ptrtoint ptr %bytes_transferred.i156 to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 0, ptr %bytes_transferred.i156, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i157) #10
  %152 = ptrtoint ptr %tmp.i157 to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 -1, ptr %tmp.i157, align 4, !annotation !144
  %153 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %153, i32 4)
  store i32 0, ptr %1, align 2
  %call.i159 = call fastcc i32 @sisusb_wait_all_out_complete(ptr noundef %sisusb) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i159)
  %tobool.not.i160 = icmp eq i32 %call.i159, 0
  br i1 %tobool.not.i160, label %sisusb_send_packet.exit155.sisusb_send_packet.exit169_crit_edge, label %do.body.i165

sisusb_send_packet.exit155.sisusb_send_packet.exit169_crit_edge: ; preds = %sisusb_send_packet.exit155
  call void @__sanitizer_cov_trace_pc() #12
  br label %sisusb_send_packet.exit169

do.body.i165:                                     ; preds = %sisusb_send_packet.exit155
  %154 = ptrtoint ptr %packet to i32
  call void @__asan_load2_noabort(i32 %154)
  %155 = load i16, ptr %packet, align 2
  %156 = call i16 @llvm.bswap.i16(i16 %155) #10
  %157 = ptrtoint ptr %packet to i32
  call void @__asan_store2_noabort(i32 %157)
  store i16 %156, ptr %packet, align 2
  %158 = ptrtoint ptr %0 to i32
  call void @__asan_loadN_noabort(i32 %158, i32 4)
  %159 = load i32, ptr %0, align 2
  %160 = call i32 @llvm.bswap.i32(i32 %159) #10
  %161 = ptrtoint ptr %0 to i32
  call void @__asan_storeN_noabort(i32 %161, i32 4)
  store i32 %160, ptr %0, align 2
  %162 = ptrtoint ptr %1 to i32
  call void @__asan_loadN_noabort(i32 %162, i32 4)
  %163 = load i32, ptr %1, align 2
  %164 = call i32 @llvm.bswap.i32(i32 %163) #10
  %165 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %165, i32 4)
  store i32 %164, ptr %1, align 2
  %call7.i163 = call fastcc i32 @sisusb_send_bulk_msg(ptr noundef %sisusb, i32 noundef 14, i32 noundef 6, ptr noundef nonnull %packet, ptr noundef null, i32 noundef 0, ptr noundef nonnull %bytes_transferred.i156, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i163)
  %cmp8.i164 = icmp eq i32 %call7.i163, 0
  br i1 %cmp8.i164, label %if.then10.i167, label %do.body.i165.sisusb_send_packet.exit169_crit_edge

do.body.i165.sisusb_send_packet.exit169_crit_edge: ; preds = %do.body.i165
  call void @__sanitizer_cov_trace_pc() #12
  br label %sisusb_send_packet.exit169

if.then10.i167:                                   ; preds = %do.body.i165
  call void @__sanitizer_cov_trace_pc() #12
  %call11.i166 = call fastcc i32 @sisusb_recv_bulk_msg(ptr noundef %sisusb, i32 noundef 14, ptr noundef nonnull %tmp.i157, ptr noundef nonnull %bytes_transferred.i156) #10
  %166 = ptrtoint ptr %tmp.i157 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %tmp.i157, align 4
  %168 = call i32 @llvm.bswap.i32(i32 %167) #10
  %169 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %169, i32 4)
  store i32 %168, ptr %1, align 2
  br label %sisusb_send_packet.exit169

sisusb_send_packet.exit169:                       ; preds = %if.then10.i167, %do.body.i165.sisusb_send_packet.exit169_crit_edge, %sisusb_send_packet.exit155.sisusb_send_packet.exit169_crit_edge
  %retval.0.i168 = phi i32 [ 1, %sisusb_send_packet.exit155.sisusb_send_packet.exit169_crit_edge ], [ %call11.i166, %if.then10.i167 ], [ %call7.i163, %do.body.i165.sisusb_send_packet.exit169_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i157) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bytes_transferred.i156) #10
  %or57 = or i32 %retval.0.i168, %retval.0.i154
  %170 = ptrtoint ptr %1 to i32
  call void @__asan_loadN_noabort(i32 %170, i32 4)
  %171 = load i32, ptr %1, align 2
  %shl59 = shl i32 %171, 8
  %172 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %data, align 4
  %or60 = or i32 %173, %shl59
  br label %sw.epilog

entry.unreachabledefault:                         ; preds = %entry
  unreachable

sw.epilog:                                        ; preds = %sisusb_send_packet.exit169, %sisusb_send_packet.exit141, %sisusb_send_packet.exit113, %sisusb_send_packet.exit
  %or60.sink = phi i32 [ %or60, %sisusb_send_packet.exit169 ], [ %or40, %sisusb_send_packet.exit141 ], [ %or20, %sisusb_send_packet.exit113 ], [ %26, %sisusb_send_packet.exit ]
  %ret.0 = phi i32 [ %or57, %sisusb_send_packet.exit169 ], [ %or37, %sisusb_send_packet.exit141 ], [ %or17, %sisusb_send_packet.exit113 ], [ %retval.0.i, %sisusb_send_packet.exit ]
  %174 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %174)
  store i32 %or60.sink, ptr %data, align 4
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %packet) #10
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sisusb_read_mem_bulk(ptr noundef %sisusb, i32 noundef %addr, i32 noundef %length, ptr noundef %userbuffer, ptr nocapture noundef %bytes_read) unnamed_addr #0 align 64 {
entry:
  %bytes_transferred.i57.i = alloca i32, align 4
  %tmp.i58.i = alloca i32, align 4
  %bytes_transferred.i43.i = alloca i32, align 4
  %tmp.i44.i = alloca i32, align 4
  %bytes_transferred.i29.i = alloca i32, align 4
  %tmp.i30.i = alloca i32, align 4
  %bytes_transferred.i15.i = alloca i32, align 4
  %tmp.i16.i = alloca i32, align 4
  %bytes_transferred.i1.i = alloca i32, align 4
  %tmp.i2.i = alloca i32, align 4
  %bytes_transferred.i.i = alloca i32, align 4
  %tmp.i.i = alloca i32, align 4
  %packet.i = alloca %struct.sisusb_packet, align 2
  %buf = alloca [4 x i8], align 4
  %swap16 = alloca i16, align 2
  %swap32 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf) #10
  %0 = getelementptr inbounds [4 x i8], ptr %buf, i32 0, i32 1
  %1 = getelementptr inbounds [4 x i8], ptr %buf, i32 0, i32 2
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %buf, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %swap16) #10
  %3 = ptrtoint ptr %swap16 to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 -1, ptr %swap16, align 2, !annotation !144
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %swap32) #10
  %4 = ptrtoint ptr %swap32 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %swap32, align 4, !annotation !144
  %5 = ptrtoint ptr %bytes_read to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %bytes_read, align 4
  %and = and i32 %length, 16777215
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %entry
  %userbuffer.addr.0 = phi ptr [ %userbuffer, %entry ], [ %userbuffer.addr.1, %sw.epilog ]
  %length.addr.0 = phi i32 [ %and, %entry ], [ %sub, %sw.epilog ]
  %kernbuffer.addr.0 = phi ptr [ null, %entry ], [ %kernbuffer.addr.1, %sw.epilog ]
  %addr.addr.0 = phi i32 [ %addr, %entry ], [ %add100, %sw.epilog ]
  %6 = zext i32 %length.addr.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.54)
  switch i32 %length.addr.0, label %sw.default [
    i32 0, label %while.cond.cleanup_crit_edge
    i32 1, label %sw.bb
    i32 2, label %sw.bb13
    i32 3, label %sw.bb41
  ]

while.cond.cleanup_crit_edge:                     ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %while.cond
  %call = call fastcc i32 @sisusb_read_memio_byte(ptr noundef %sisusb, i32 noundef 0, i32 noundef %addr.addr.0, ptr noundef nonnull %buf)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.then, label %sw.bb.if.end12_crit_edge

sw.bb.if.end12_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

if.then:                                          ; preds = %sw.bb
  %7 = ptrtoint ptr %bytes_read to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %bytes_read, align 4
  %inc = add i32 %8, 1
  store i32 %inc, ptr %bytes_read, align 4
  %tobool2.not = icmp eq ptr %userbuffer.addr.0, null
  %9 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %buf, align 4
  br i1 %tobool2.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.then
  tail call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 1127) #10
  %11 = tail call i32 @llvm.read_register.i32(metadata !134) #10
  %and.i.i.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 4
  %13 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #5, !srcloc !147
  %and.i = and i32 %13, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #10, !srcloc !148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !149
  %14 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_1", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr nonnull %userbuffer.addr.0, i8 %10, i32 -1226833921) #10, !srcloc !165
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %13) #10, !srcloc !148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !149
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool7.not = icmp eq i32 %14, 0
  br i1 %tobool7.not, label %if.then3.if.end12_crit_edge, label %if.then3.cleanup_crit_edge

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then3.if.end12_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %15 = ptrtoint ptr %kernbuffer.addr.0 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %10, ptr %kernbuffer.addr.0, align 1
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.then3.if.end12_crit_edge, %sw.bb.if.end12_crit_edge
  br label %cleanup

sw.bb13:                                          ; preds = %while.cond
  %call14 = call fastcc i32 @sisusb_read_memio_word(ptr noundef %sisusb, i32 noundef 0, i32 noundef %addr.addr.0, ptr noundef nonnull %swap16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool16.not = icmp eq i32 %call14, 0
  br i1 %tobool16.not, label %if.then17, label %sw.bb13.if.end40_crit_edge

sw.bb13.if.end40_crit_edge:                       ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end40

if.then17:                                        ; preds = %sw.bb13
  %16 = ptrtoint ptr %bytes_read to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %bytes_read, align 4
  %add = add i32 %17, 2
  store i32 %add, ptr %bytes_read, align 4
  %tobool18.not = icmp eq ptr %userbuffer.addr.0, null
  %18 = ptrtoint ptr %swap16 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %swap16, align 2
  br i1 %tobool18.not, label %if.else38, label %if.then19

if.then19:                                        ; preds = %if.then17
  tail call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 1140) #10
  %20 = tail call i32 @llvm.read_register.i32(metadata !134) #10
  %and.i.i.i1 = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i1 to ptr
  %cpu_domain.i.i2 = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 4
  %22 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i2) #5, !srcloc !147
  %and.i3 = and i32 %22, -13
  %or.i4 = or i32 %and.i3, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i4) #10, !srcloc !148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !149
  %23 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_2", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr nonnull %userbuffer.addr.0, i16 %19, i32 -1226833921) #10, !srcloc !166
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %22) #10, !srcloc !148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !149
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool35.not = icmp eq i32 %23, 0
  br i1 %tobool35.not, label %if.then19.if.end40_crit_edge, label %if.then19.cleanup_crit_edge

if.then19.cleanup_crit_edge:                      ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then19.if.end40_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end40

if.else38:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #12
  %24 = ptrtoint ptr %kernbuffer.addr.0 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %19, ptr %kernbuffer.addr.0, align 2
  br label %if.end40

if.end40:                                         ; preds = %if.else38, %if.then19.if.end40_crit_edge, %sw.bb13.if.end40_crit_edge
  br label %cleanup

sw.bb41:                                          ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %packet.i) #10
  %25 = getelementptr inbounds %struct.sisusb_packet, ptr %packet.i, i32 0, i32 1
  %26 = getelementptr inbounds %struct.sisusb_packet, ptr %packet.i, i32 0, i32 2
  %and.i9 = and i32 %addr.addr.0, -4
  %27 = ptrtoint ptr %25 to i32
  call void @__asan_storeN_noabort(i32 %27, i32 4)
  store i32 %and.i9, ptr %25, align 2
  %and1.i = and i32 %addr.addr.0, 3
  %28 = zext i32 %and1.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.55)
  switch i32 %and1.i, label %entry.unreachabledefault.i [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb4.i
    i32 2, label %sw.bb11.i
    i32 3, label %sw.bb31.i
  ]

sw.bb.i:                                          ; preds = %sw.bb41
  %29 = ptrtoint ptr %packet.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 7, ptr %packet.i, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bytes_transferred.i.i) #10
  %30 = ptrtoint ptr %bytes_transferred.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %bytes_transferred.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i) #10
  %31 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 -1, ptr %tmp.i.i, align 4, !annotation !144
  %32 = ptrtoint ptr %26 to i32
  call void @__asan_storeN_noabort(i32 %32, i32 4)
  store i32 0, ptr %26, align 2
  %call.i.i10 = tail call fastcc i32 @sisusb_wait_all_out_complete(ptr noundef %sisusb) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i10)
  %tobool.not.i.i = icmp eq i32 %call.i.i10, 0
  br i1 %tobool.not.i.i, label %sw.bb.i.sisusb_send_packet.exit.i_crit_edge, label %do.body.i.i

sw.bb.i.sisusb_send_packet.exit.i_crit_edge:      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sisusb_send_packet.exit.i

do.body.i.i:                                      ; preds = %sw.bb.i
  %33 = ptrtoint ptr %packet.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %packet.i, align 2
  %35 = tail call i16 @llvm.bswap.i16(i16 %34) #10
  %36 = ptrtoint ptr %packet.i to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %35, ptr %packet.i, align 2
  %37 = ptrtoint ptr %25 to i32
  call void @__asan_loadN_noabort(i32 %37, i32 4)
  %38 = load i32, ptr %25, align 2
  %39 = tail call i32 @llvm.bswap.i32(i32 %38) #10
  %40 = ptrtoint ptr %25 to i32
  call void @__asan_storeN_noabort(i32 %40, i32 4)
  store i32 %39, ptr %25, align 2
  %41 = ptrtoint ptr %26 to i32
  call void @__asan_loadN_noabort(i32 %41, i32 4)
  %42 = load i32, ptr %26, align 2
  %43 = tail call i32 @llvm.bswap.i32(i32 %42) #10
  %44 = ptrtoint ptr %26 to i32
  call void @__asan_storeN_noabort(i32 %44, i32 4)
  store i32 %43, ptr %26, align 2
  %call7.i.i = call fastcc i32 @sisusb_send_bulk_msg(ptr noundef %sisusb, i32 noundef 14, i32 noundef 6, ptr noundef nonnull %packet.i, ptr noundef null, i32 noundef 0, ptr noundef nonnull %bytes_transferred.i.i, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.i)
  %cmp8.i.i = icmp eq i32 %call7.i.i, 0
  br i1 %cmp8.i.i, label %if.then10.i.i, label %do.body.i.i.sisusb_send_packet.exit.i_crit_edge

do.body.i.i.sisusb_send_packet.exit.i_crit_edge:  ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sisusb_send_packet.exit.i

if.then10.i.i:                                    ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call11.i.i = call fastcc i32 @sisusb_recv_bulk_msg(ptr noundef %sisusb, i32 noundef 14, ptr noundef nonnull %tmp.i.i, ptr noundef nonnull %bytes_transferred.i.i) #10
  %45 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %tmp.i.i, align 4
  %47 = call i32 @llvm.bswap.i32(i32 %46) #10
  %48 = ptrtoint ptr %26 to i32
  call void @__asan_storeN_noabort(i32 %48, i32 4)
  store i32 %47, ptr %26, align 2
  br label %sisusb_send_packet.exit.i

sisusb_send_packet.exit.i:                        ; preds = %if.then10.i.i, %do.body.i.i.sisusb_send_packet.exit.i_crit_edge, %sw.bb.i.sisusb_send_packet.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ 1, %sw.bb.i.sisusb_send_packet.exit.i_crit_edge ], [ %call11.i.i, %if.then10.i.i ], [ %call7.i.i, %do.body.i.i.sisusb_send_packet.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bytes_transferred.i.i) #10
  %49 = ptrtoint ptr %26 to i32
  call void @__asan_loadN_noabort(i32 %49, i32 4)
  %50 = load i32, ptr %26, align 2
  %and3.i = and i32 %50, 16777215
  br label %sisusb_read_memio_24bit.exit

sw.bb4.i:                                         ; preds = %sw.bb41
  %51 = ptrtoint ptr %packet.i to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 14, ptr %packet.i, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bytes_transferred.i1.i) #10
  %52 = ptrtoint ptr %bytes_transferred.i1.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %bytes_transferred.i1.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i2.i) #10
  %53 = ptrtoint ptr %tmp.i2.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 -1, ptr %tmp.i2.i, align 4, !annotation !144
  %54 = ptrtoint ptr %26 to i32
  call void @__asan_storeN_noabort(i32 %54, i32 4)
  store i32 0, ptr %26, align 2
  %call.i4.i = tail call fastcc i32 @sisusb_wait_all_out_complete(ptr noundef %sisusb) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i4.i)
  %tobool.not.i5.i = icmp eq i32 %call.i4.i, 0
  br i1 %tobool.not.i5.i, label %sw.bb4.i.sisusb_send_packet.exit14.i_crit_edge, label %do.body.i10.i

sw.bb4.i.sisusb_send_packet.exit14.i_crit_edge:   ; preds = %sw.bb4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sisusb_send_packet.exit14.i

do.body.i10.i:                                    ; preds = %sw.bb4.i
  %55 = ptrtoint ptr %packet.i to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %packet.i, align 2
  %57 = tail call i16 @llvm.bswap.i16(i16 %56) #10
  %58 = ptrtoint ptr %packet.i to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 %57, ptr %packet.i, align 2
  %59 = ptrtoint ptr %25 to i32
  call void @__asan_loadN_noabort(i32 %59, i32 4)
  %60 = load i32, ptr %25, align 2
  %61 = tail call i32 @llvm.bswap.i32(i32 %60) #10
  %62 = ptrtoint ptr %25 to i32
  call void @__asan_storeN_noabort(i32 %62, i32 4)
  store i32 %61, ptr %25, align 2
  %63 = ptrtoint ptr %26 to i32
  call void @__asan_loadN_noabort(i32 %63, i32 4)
  %64 = load i32, ptr %26, align 2
  %65 = tail call i32 @llvm.bswap.i32(i32 %64) #10
  %66 = ptrtoint ptr %26 to i32
  call void @__asan_storeN_noabort(i32 %66, i32 4)
  store i32 %65, ptr %26, align 2
  %call7.i8.i = call fastcc i32 @sisusb_send_bulk_msg(ptr noundef %sisusb, i32 noundef 14, i32 noundef 6, ptr noundef nonnull %packet.i, ptr noundef null, i32 noundef 0, ptr noundef nonnull %bytes_transferred.i1.i, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i8.i)
  %cmp8.i9.i = icmp eq i32 %call7.i8.i, 0
  br i1 %cmp8.i9.i, label %if.then10.i12.i, label %do.body.i10.i.sisusb_send_packet.exit14.i_crit_edge

do.body.i10.i.sisusb_send_packet.exit14.i_crit_edge: ; preds = %do.body.i10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sisusb_send_packet.exit14.i

if.then10.i12.i:                                  ; preds = %do.body.i10.i
  call void @__sanitizer_cov_trace_pc() #12
  %call11.i11.i = call fastcc i32 @sisusb_recv_bulk_msg(ptr noundef %sisusb, i32 noundef 14, ptr noundef nonnull %tmp.i2.i, ptr noundef nonnull %bytes_transferred.i1.i) #10
  %67 = ptrtoint ptr %tmp.i2.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %tmp.i2.i, align 4
  %69 = call i32 @llvm.bswap.i32(i32 %68) #10
  %70 = ptrtoint ptr %26 to i32
  call void @__asan_storeN_noabort(i32 %70, i32 4)
  store i32 %69, ptr %26, align 2
  br label %sisusb_send_packet.exit14.i

sisusb_send_packet.exit14.i:                      ; preds = %if.then10.i12.i, %do.body.i10.i.sisusb_send_packet.exit14.i_crit_edge, %sw.bb4.i.sisusb_send_packet.exit14.i_crit_edge
  %retval.0.i13.i = phi i32 [ 1, %sw.bb4.i.sisusb_send_packet.exit14.i_crit_edge ], [ %call11.i11.i, %if.then10.i12.i ], [ %call7.i8.i, %do.body.i10.i.sisusb_send_packet.exit14.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i2.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bytes_transferred.i1.i) #10
  %71 = ptrtoint ptr %26 to i32
  call void @__asan_loadN_noabort(i32 %71, i32 4)
  %72 = load i32, ptr %26, align 2
  %shr.i = lshr i32 %72, 8
  br label %sisusb_read_memio_24bit.exit

sw.bb11.i:                                        ; preds = %sw.bb41
  %73 = ptrtoint ptr %packet.i to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 12, ptr %packet.i, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bytes_transferred.i15.i) #10
  %74 = ptrtoint ptr %bytes_transferred.i15.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 0, ptr %bytes_transferred.i15.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i16.i) #10
  %75 = ptrtoint ptr %tmp.i16.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 -1, ptr %tmp.i16.i, align 4, !annotation !144
  %76 = ptrtoint ptr %26 to i32
  call void @__asan_storeN_noabort(i32 %76, i32 4)
  store i32 0, ptr %26, align 2
  %call.i18.i = tail call fastcc i32 @sisusb_wait_all_out_complete(ptr noundef %sisusb) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i18.i)
  %tobool.not.i19.i = icmp eq i32 %call.i18.i, 0
  br i1 %tobool.not.i19.i, label %sw.bb11.i.sisusb_send_packet.exit28.i_crit_edge, label %do.body.i24.i

sw.bb11.i.sisusb_send_packet.exit28.i_crit_edge:  ; preds = %sw.bb11.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sisusb_send_packet.exit28.i

do.body.i24.i:                                    ; preds = %sw.bb11.i
  %77 = ptrtoint ptr %packet.i to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %packet.i, align 2
  %79 = tail call i16 @llvm.bswap.i16(i16 %78) #10
  %80 = ptrtoint ptr %packet.i to i32
  call void @__asan_store2_noabort(i32 %80)
  store i16 %79, ptr %packet.i, align 2
  %81 = ptrtoint ptr %25 to i32
  call void @__asan_loadN_noabort(i32 %81, i32 4)
  %82 = load i32, ptr %25, align 2
  %83 = tail call i32 @llvm.bswap.i32(i32 %82) #10
  %84 = ptrtoint ptr %25 to i32
  call void @__asan_storeN_noabort(i32 %84, i32 4)
  store i32 %83, ptr %25, align 2
  %85 = ptrtoint ptr %26 to i32
  call void @__asan_loadN_noabort(i32 %85, i32 4)
  %86 = load i32, ptr %26, align 2
  %87 = tail call i32 @llvm.bswap.i32(i32 %86) #10
  %88 = ptrtoint ptr %26 to i32
  call void @__asan_storeN_noabort(i32 %88, i32 4)
  store i32 %87, ptr %26, align 2
  %call7.i22.i = call fastcc i32 @sisusb_send_bulk_msg(ptr noundef %sisusb, i32 noundef 14, i32 noundef 6, ptr noundef nonnull %packet.i, ptr noundef null, i32 noundef 0, ptr noundef nonnull %bytes_transferred.i15.i, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i22.i)
  %cmp8.i23.i = icmp eq i32 %call7.i22.i, 0
  br i1 %cmp8.i23.i, label %if.then10.i26.i, label %do.body.i24.i.sisusb_send_packet.exit28.i_crit_edge

do.body.i24.i.sisusb_send_packet.exit28.i_crit_edge: ; preds = %do.body.i24.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sisusb_send_packet.exit28.i

if.then10.i26.i:                                  ; preds = %do.body.i24.i
  call void @__sanitizer_cov_trace_pc() #12
  %call11.i25.i = call fastcc i32 @sisusb_recv_bulk_msg(ptr noundef %sisusb, i32 noundef 14, ptr noundef nonnull %tmp.i16.i, ptr noundef nonnull %bytes_transferred.i15.i) #10
  %89 = ptrtoint ptr %tmp.i16.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %tmp.i16.i, align 4
  %91 = call i32 @llvm.bswap.i32(i32 %90) #10
  %92 = ptrtoint ptr %26 to i32
  call void @__asan_storeN_noabort(i32 %92, i32 4)
  store i32 %91, ptr %26, align 2
  br label %sisusb_send_packet.exit28.i

sisusb_send_packet.exit28.i:                      ; preds = %if.then10.i26.i, %do.body.i24.i.sisusb_send_packet.exit28.i_crit_edge, %sw.bb11.i.sisusb_send_packet.exit28.i_crit_edge
  %retval.0.i27.i = phi i32 [ 1, %sw.bb11.i.sisusb_send_packet.exit28.i_crit_edge ], [ %call11.i25.i, %if.then10.i26.i ], [ %call7.i22.i, %do.body.i24.i.sisusb_send_packet.exit28.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i16.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bytes_transferred.i15.i) #10
  %93 = ptrtoint ptr %26 to i32
  call void @__asan_loadN_noabort(i32 %93, i32 4)
  %94 = load i32, ptr %26, align 2
  %shr18.i = lshr i32 %94, 16
  %95 = ptrtoint ptr %swap32 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %shr18.i, ptr %swap32, align 4
  %96 = ptrtoint ptr %packet.i to i32
  call void @__asan_store2_noabort(i32 %96)
  store i16 1, ptr %packet.i, align 2
  %add.i = add i32 %and.i9, 4
  %97 = ptrtoint ptr %25 to i32
  call void @__asan_storeN_noabort(i32 %97, i32 4)
  store i32 %add.i, ptr %25, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bytes_transferred.i29.i) #10
  %98 = ptrtoint ptr %bytes_transferred.i29.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 0, ptr %bytes_transferred.i29.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i30.i) #10
  %99 = ptrtoint ptr %tmp.i30.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 -1, ptr %tmp.i30.i, align 4, !annotation !144
  %100 = ptrtoint ptr %26 to i32
  call void @__asan_storeN_noabort(i32 %100, i32 4)
  store i32 0, ptr %26, align 2
  %call.i32.i = call fastcc i32 @sisusb_wait_all_out_complete(ptr noundef %sisusb) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i32.i)
  %tobool.not.i33.i = icmp eq i32 %call.i32.i, 0
  br i1 %tobool.not.i33.i, label %sisusb_send_packet.exit28.i.sisusb_send_packet.exit42.i_crit_edge, label %do.body.i38.i

sisusb_send_packet.exit28.i.sisusb_send_packet.exit42.i_crit_edge: ; preds = %sisusb_send_packet.exit28.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sisusb_send_packet.exit42.i

do.body.i38.i:                                    ; preds = %sisusb_send_packet.exit28.i
  %101 = ptrtoint ptr %packet.i to i32
  call void @__asan_load2_noabort(i32 %101)
  %102 = load i16, ptr %packet.i, align 2
  %103 = call i16 @llvm.bswap.i16(i16 %102) #10
  %104 = ptrtoint ptr %packet.i to i32
  call void @__asan_store2_noabort(i32 %104)
  store i16 %103, ptr %packet.i, align 2
  %105 = ptrtoint ptr %25 to i32
  call void @__asan_loadN_noabort(i32 %105, i32 4)
  %106 = load i32, ptr %25, align 2
  %107 = call i32 @llvm.bswap.i32(i32 %106) #10
  %108 = ptrtoint ptr %25 to i32
  call void @__asan_storeN_noabort(i32 %108, i32 4)
  store i32 %107, ptr %25, align 2
  %109 = ptrtoint ptr %26 to i32
  call void @__asan_loadN_noabort(i32 %109, i32 4)
  %110 = load i32, ptr %26, align 2
  %111 = call i32 @llvm.bswap.i32(i32 %110) #10
  %112 = ptrtoint ptr %26 to i32
  call void @__asan_storeN_noabort(i32 %112, i32 4)
  store i32 %111, ptr %26, align 2
  %call7.i36.i = call fastcc i32 @sisusb_send_bulk_msg(ptr noundef %sisusb, i32 noundef 14, i32 noundef 6, ptr noundef nonnull %packet.i, ptr noundef null, i32 noundef 0, ptr noundef nonnull %bytes_transferred.i29.i, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i36.i)
  %cmp8.i37.i = icmp eq i32 %call7.i36.i, 0
  br i1 %cmp8.i37.i, label %if.then10.i40.i, label %do.body.i38.i.sisusb_send_packet.exit42.i_crit_edge

do.body.i38.i.sisusb_send_packet.exit42.i_crit_edge: ; preds = %do.body.i38.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sisusb_send_packet.exit42.i

if.then10.i40.i:                                  ; preds = %do.body.i38.i
  call void @__sanitizer_cov_trace_pc() #12
  %call11.i39.i = call fastcc i32 @sisusb_recv_bulk_msg(ptr noundef %sisusb, i32 noundef 14, ptr noundef nonnull %tmp.i30.i, ptr noundef nonnull %bytes_transferred.i29.i) #10
  %113 = ptrtoint ptr %tmp.i30.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %tmp.i30.i, align 4
  %115 = call i32 @llvm.bswap.i32(i32 %114) #10
  %116 = ptrtoint ptr %26 to i32
  call void @__asan_storeN_noabort(i32 %116, i32 4)
  store i32 %115, ptr %26, align 2
  br label %sisusb_send_packet.exit42.i

sisusb_send_packet.exit42.i:                      ; preds = %if.then10.i40.i, %do.body.i38.i.sisusb_send_packet.exit42.i_crit_edge, %sisusb_send_packet.exit28.i.sisusb_send_packet.exit42.i_crit_edge
  %retval.0.i41.i = phi i32 [ 1, %sisusb_send_packet.exit28.i.sisusb_send_packet.exit42.i_crit_edge ], [ %call11.i39.i, %if.then10.i40.i ], [ %call7.i36.i, %do.body.i38.i.sisusb_send_packet.exit42.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i30.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bytes_transferred.i29.i) #10
  %or26.i = or i32 %retval.0.i41.i, %retval.0.i27.i
  %117 = ptrtoint ptr %26 to i32
  call void @__asan_loadN_noabort(i32 %117, i32 4)
  %118 = load i32, ptr %26, align 2
  %and28.i = shl i32 %118, 16
  %shl29.i = and i32 %and28.i, 16711680
  %or30.i = or i32 %shl29.i, %shr18.i
  br label %sisusb_read_memio_24bit.exit

sw.bb31.i:                                        ; preds = %sw.bb41
  %119 = ptrtoint ptr %packet.i to i32
  call void @__asan_store2_noabort(i32 %119)
  store i16 8, ptr %packet.i, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bytes_transferred.i43.i) #10
  %120 = ptrtoint ptr %bytes_transferred.i43.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 0, ptr %bytes_transferred.i43.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i44.i) #10
  %121 = ptrtoint ptr %tmp.i44.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 -1, ptr %tmp.i44.i, align 4, !annotation !144
  %122 = ptrtoint ptr %26 to i32
  call void @__asan_storeN_noabort(i32 %122, i32 4)
  store i32 0, ptr %26, align 2
  %call.i46.i = tail call fastcc i32 @sisusb_wait_all_out_complete(ptr noundef %sisusb) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i46.i)
  %tobool.not.i47.i = icmp eq i32 %call.i46.i, 0
  br i1 %tobool.not.i47.i, label %sw.bb31.i.sisusb_send_packet.exit56.i_crit_edge, label %do.body.i52.i

sw.bb31.i.sisusb_send_packet.exit56.i_crit_edge:  ; preds = %sw.bb31.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sisusb_send_packet.exit56.i

do.body.i52.i:                                    ; preds = %sw.bb31.i
  %123 = ptrtoint ptr %packet.i to i32
  call void @__asan_load2_noabort(i32 %123)
  %124 = load i16, ptr %packet.i, align 2
  %125 = tail call i16 @llvm.bswap.i16(i16 %124) #10
  %126 = ptrtoint ptr %packet.i to i32
  call void @__asan_store2_noabort(i32 %126)
  store i16 %125, ptr %packet.i, align 2
  %127 = ptrtoint ptr %25 to i32
  call void @__asan_loadN_noabort(i32 %127, i32 4)
  %128 = load i32, ptr %25, align 2
  %129 = tail call i32 @llvm.bswap.i32(i32 %128) #10
  %130 = ptrtoint ptr %25 to i32
  call void @__asan_storeN_noabort(i32 %130, i32 4)
  store i32 %129, ptr %25, align 2
  %131 = ptrtoint ptr %26 to i32
  call void @__asan_loadN_noabort(i32 %131, i32 4)
  %132 = load i32, ptr %26, align 2
  %133 = tail call i32 @llvm.bswap.i32(i32 %132) #10
  %134 = ptrtoint ptr %26 to i32
  call void @__asan_storeN_noabort(i32 %134, i32 4)
  store i32 %133, ptr %26, align 2
  %call7.i50.i = call fastcc i32 @sisusb_send_bulk_msg(ptr noundef %sisusb, i32 noundef 14, i32 noundef 6, ptr noundef nonnull %packet.i, ptr noundef null, i32 noundef 0, ptr noundef nonnull %bytes_transferred.i43.i, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i50.i)
  %cmp8.i51.i = icmp eq i32 %call7.i50.i, 0
  br i1 %cmp8.i51.i, label %if.then10.i54.i, label %do.body.i52.i.sisusb_send_packet.exit56.i_crit_edge

do.body.i52.i.sisusb_send_packet.exit56.i_crit_edge: ; preds = %do.body.i52.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sisusb_send_packet.exit56.i

if.then10.i54.i:                                  ; preds = %do.body.i52.i
  call void @__sanitizer_cov_trace_pc() #12
  %call11.i53.i = call fastcc i32 @sisusb_recv_bulk_msg(ptr noundef %sisusb, i32 noundef 14, ptr noundef nonnull %tmp.i44.i, ptr noundef nonnull %bytes_transferred.i43.i) #10
  %135 = ptrtoint ptr %tmp.i44.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %tmp.i44.i, align 4
  %137 = call i32 @llvm.bswap.i32(i32 %136) #10
  %138 = ptrtoint ptr %26 to i32
  call void @__asan_storeN_noabort(i32 %138, i32 4)
  store i32 %137, ptr %26, align 2
  br label %sisusb_send_packet.exit56.i

sisusb_send_packet.exit56.i:                      ; preds = %if.then10.i54.i, %do.body.i52.i.sisusb_send_packet.exit56.i_crit_edge, %sw.bb31.i.sisusb_send_packet.exit56.i_crit_edge
  %retval.0.i55.i = phi i32 [ 1, %sw.bb31.i.sisusb_send_packet.exit56.i_crit_edge ], [ %call11.i53.i, %if.then10.i54.i ], [ %call7.i50.i, %do.body.i52.i.sisusb_send_packet.exit56.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i44.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bytes_transferred.i43.i) #10
  %139 = ptrtoint ptr %26 to i32
  call void @__asan_loadN_noabort(i32 %139, i32 4)
  %140 = load i32, ptr %26, align 2
  %shr38.i = lshr i32 %140, 24
  %141 = ptrtoint ptr %swap32 to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 %shr38.i, ptr %swap32, align 4
  %142 = ptrtoint ptr %packet.i to i32
  call void @__asan_store2_noabort(i32 %142)
  store i16 3, ptr %packet.i, align 2
  %add44.i = add i32 %and.i9, 4
  %143 = ptrtoint ptr %25 to i32
  call void @__asan_storeN_noabort(i32 %143, i32 4)
  store i32 %add44.i, ptr %25, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bytes_transferred.i57.i) #10
  %144 = ptrtoint ptr %bytes_transferred.i57.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 0, ptr %bytes_transferred.i57.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i58.i) #10
  %145 = ptrtoint ptr %tmp.i58.i to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 -1, ptr %tmp.i58.i, align 4, !annotation !144
  %146 = ptrtoint ptr %26 to i32
  call void @__asan_storeN_noabort(i32 %146, i32 4)
  store i32 0, ptr %26, align 2
  %call.i60.i = call fastcc i32 @sisusb_wait_all_out_complete(ptr noundef %sisusb) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i60.i)
  %tobool.not.i61.i = icmp eq i32 %call.i60.i, 0
  br i1 %tobool.not.i61.i, label %sisusb_send_packet.exit56.i.sisusb_send_packet.exit70.i_crit_edge, label %do.body.i66.i

sisusb_send_packet.exit56.i.sisusb_send_packet.exit70.i_crit_edge: ; preds = %sisusb_send_packet.exit56.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sisusb_send_packet.exit70.i

do.body.i66.i:                                    ; preds = %sisusb_send_packet.exit56.i
  %147 = ptrtoint ptr %packet.i to i32
  call void @__asan_load2_noabort(i32 %147)
  %148 = load i16, ptr %packet.i, align 2
  %149 = call i16 @llvm.bswap.i16(i16 %148) #10
  %150 = ptrtoint ptr %packet.i to i32
  call void @__asan_store2_noabort(i32 %150)
  store i16 %149, ptr %packet.i, align 2
  %151 = ptrtoint ptr %25 to i32
  call void @__asan_loadN_noabort(i32 %151, i32 4)
  %152 = load i32, ptr %25, align 2
  %153 = call i32 @llvm.bswap.i32(i32 %152) #10
  %154 = ptrtoint ptr %25 to i32
  call void @__asan_storeN_noabort(i32 %154, i32 4)
  store i32 %153, ptr %25, align 2
  %155 = ptrtoint ptr %26 to i32
  call void @__asan_loadN_noabort(i32 %155, i32 4)
  %156 = load i32, ptr %26, align 2
  %157 = call i32 @llvm.bswap.i32(i32 %156) #10
  %158 = ptrtoint ptr %26 to i32
  call void @__asan_storeN_noabort(i32 %158, i32 4)
  store i32 %157, ptr %26, align 2
  %call7.i64.i = call fastcc i32 @sisusb_send_bulk_msg(ptr noundef %sisusb, i32 noundef 14, i32 noundef 6, ptr noundef nonnull %packet.i, ptr noundef null, i32 noundef 0, ptr noundef nonnull %bytes_transferred.i57.i, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i64.i)
  %cmp8.i65.i = icmp eq i32 %call7.i64.i, 0
  br i1 %cmp8.i65.i, label %if.then10.i68.i, label %do.body.i66.i.sisusb_send_packet.exit70.i_crit_edge

do.body.i66.i.sisusb_send_packet.exit70.i_crit_edge: ; preds = %do.body.i66.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sisusb_send_packet.exit70.i

if.then10.i68.i:                                  ; preds = %do.body.i66.i
  call void @__sanitizer_cov_trace_pc() #12
  %call11.i67.i = call fastcc i32 @sisusb_recv_bulk_msg(ptr noundef %sisusb, i32 noundef 14, ptr noundef nonnull %tmp.i58.i, ptr noundef nonnull %bytes_transferred.i57.i) #10
  %159 = ptrtoint ptr %tmp.i58.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %tmp.i58.i, align 4
  %161 = call i32 @llvm.bswap.i32(i32 %160) #10
  %162 = ptrtoint ptr %26 to i32
  call void @__asan_storeN_noabort(i32 %162, i32 4)
  store i32 %161, ptr %26, align 2
  br label %sisusb_send_packet.exit70.i

sisusb_send_packet.exit70.i:                      ; preds = %if.then10.i68.i, %do.body.i66.i.sisusb_send_packet.exit70.i_crit_edge, %sisusb_send_packet.exit56.i.sisusb_send_packet.exit70.i_crit_edge
  %retval.0.i69.i = phi i32 [ 1, %sisusb_send_packet.exit56.i.sisusb_send_packet.exit70.i_crit_edge ], [ %call11.i67.i, %if.then10.i68.i ], [ %call7.i64.i, %do.body.i66.i.sisusb_send_packet.exit70.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i58.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bytes_transferred.i57.i) #10
  %or47.i = or i32 %retval.0.i69.i, %retval.0.i55.i
  %163 = ptrtoint ptr %26 to i32
  call void @__asan_loadN_noabort(i32 %163, i32 4)
  %164 = load i32, ptr %26, align 2
  %and49.i = shl i32 %164, 8
  %shl50.i = and i32 %and49.i, 16776960
  %or51.i = or i32 %shl50.i, %shr38.i
  br label %sisusb_read_memio_24bit.exit

entry.unreachabledefault.i:                       ; preds = %sw.bb41
  unreachable

sisusb_read_memio_24bit.exit:                     ; preds = %sisusb_send_packet.exit70.i, %sisusb_send_packet.exit42.i, %sisusb_send_packet.exit14.i, %sisusb_send_packet.exit.i
  %or51.sink.i = phi i32 [ %or51.i, %sisusb_send_packet.exit70.i ], [ %or30.i, %sisusb_send_packet.exit42.i ], [ %shr.i, %sisusb_send_packet.exit14.i ], [ %and3.i, %sisusb_send_packet.exit.i ]
  %ret.0.i = phi i32 [ %or47.i, %sisusb_send_packet.exit70.i ], [ %or26.i, %sisusb_send_packet.exit42.i ], [ %retval.0.i13.i, %sisusb_send_packet.exit14.i ], [ %retval.0.i.i, %sisusb_send_packet.exit.i ]
  %165 = ptrtoint ptr %swap32 to i32
  call void @__asan_store4_noabort(i32 %165)
  store i32 %or51.sink.i, ptr %swap32, align 4
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %packet.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %tobool44.not = icmp eq i32 %ret.0.i, 0
  br i1 %tobool44.not, label %if.then45, label %sisusb_read_memio_24bit.exit.if.end71_crit_edge

sisusb_read_memio_24bit.exit.if.end71_crit_edge:  ; preds = %sisusb_read_memio_24bit.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end71

if.then45:                                        ; preds = %sisusb_read_memio_24bit.exit
  %166 = ptrtoint ptr %bytes_read to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %bytes_read, align 4
  %add46 = add i32 %167, 3
  store i32 %add46, ptr %bytes_read, align 4
  %shr = lshr i32 %or51.sink.i, 16
  %conv = trunc i32 %shr to i8
  %168 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %168)
  store i8 %conv, ptr %buf, align 4
  %shr49 = lshr i32 %or51.sink.i, 8
  %conv51 = trunc i32 %shr49 to i8
  %169 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %169)
  store i8 %conv51, ptr %0, align 1
  %conv54 = trunc i32 %or51.sink.i to i8
  %170 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %170)
  store i8 %conv54, ptr %1, align 2
  %tobool56.not = icmp eq ptr %userbuffer.addr.0, null
  br i1 %tobool56.not, label %if.else63, label %if.end8.i.i

if.end8.i.i:                                      ; preds = %if.then45
  call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 174) #10
  %call.i.i = call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i, label %if.end8.i.i.cleanup_crit_edge, label %if.end.i.i

if.end8.i.i.cleanup_crit_edge:                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end8.i.i
  %171 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr nonnull %userbuffer.addr.0, i32 3, i32 -1226833920) #13, !srcloc !162
  %asmresult.i.i = extractvalue { i32, i32 } %171, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %copy_to_user.exit, label %if.end.i.i.cleanup_crit_edge

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

copy_to_user.exit:                                ; preds = %if.end.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %buf, i32 noundef 3) #10
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef nonnull %userbuffer.addr.0, ptr noundef nonnull %buf, i32 noundef 3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool60.not = icmp eq i32 %call.i12.i.i, 0
  br i1 %tobool60.not, label %copy_to_user.exit.if.end71_crit_edge, label %copy_to_user.exit.cleanup_crit_edge

copy_to_user.exit.cleanup_crit_edge:              ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

copy_to_user.exit.if.end71_crit_edge:             ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end71

if.else63:                                        ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #12
  %172 = ptrtoint ptr %kernbuffer.addr.0 to i32
  call void @__asan_store1_noabort(i32 %172)
  store i8 %conv, ptr %kernbuffer.addr.0, align 1
  %173 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %173)
  %174 = load i8, ptr %0, align 1
  %arrayidx67 = getelementptr i8, ptr %kernbuffer.addr.0, i32 1
  %175 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_store1_noabort(i32 %175)
  store i8 %174, ptr %arrayidx67, align 1
  %176 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %176)
  %177 = load i8, ptr %1, align 2
  %arrayidx69 = getelementptr i8, ptr %kernbuffer.addr.0, i32 2
  %178 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_store1_noabort(i32 %178)
  store i8 %177, ptr %arrayidx69, align 1
  br label %if.end71

if.end71:                                         ; preds = %if.else63, %copy_to_user.exit.if.end71_crit_edge, %sisusb_read_memio_24bit.exit.if.end71_crit_edge
  br label %cleanup

sw.default:                                       ; preds = %while.cond
  %call72 = call fastcc i32 @sisusb_read_memio_long(ptr noundef %sisusb, i32 noundef 0, i32 noundef %addr.addr.0, ptr noundef nonnull %swap32)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %tobool74.not = icmp eq i32 %call72, 0
  br i1 %tobool74.not, label %if.then75, label %sw.default.cleanup_crit_edge

sw.default.cleanup_crit_edge:                     ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then75:                                        ; preds = %sw.default
  %179 = ptrtoint ptr %bytes_read to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %bytes_read, align 4
  %add76 = add i32 %180, 4
  store i32 %add76, ptr %bytes_read, align 4
  %tobool77.not = icmp eq ptr %userbuffer.addr.0, null
  %181 = ptrtoint ptr %swap32 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %swap32, align 4
  br i1 %tobool77.not, label %if.else97, label %if.then78

if.then78:                                        ; preds = %if.then75
  tail call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 1180) #10
  %183 = tail call i32 @llvm.read_register.i32(metadata !134) #10
  %and.i.i.i5 = and i32 %183, -16384
  %184 = inttoptr i32 %and.i.i.i5 to ptr
  %cpu_domain.i.i6 = getelementptr inbounds %struct.thread_info, ptr %184, i32 0, i32 4
  %185 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i6) #5, !srcloc !147
  %and.i7 = and i32 %185, -13
  %or.i8 = or i32 %and.i7, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i8) #10, !srcloc !148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !149
  %186 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr nonnull %userbuffer.addr.0, i32 %182, i32 -1226833921) #10, !srcloc !167
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %185) #10, !srcloc !148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !149
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %186)
  %tobool94.not = icmp eq i32 %186, 0
  br i1 %tobool94.not, label %if.end96, label %if.then78.cleanup_crit_edge

if.then78.cleanup_crit_edge:                      ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end96:                                         ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr = getelementptr i8, ptr %userbuffer.addr.0, i32 4
  br label %sw.epilog

if.else97:                                        ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #12
  %187 = ptrtoint ptr %kernbuffer.addr.0 to i32
  call void @__asan_store4_noabort(i32 %187)
  store i32 %182, ptr %kernbuffer.addr.0, align 4
  %add.ptr98 = getelementptr i8, ptr %kernbuffer.addr.0, i32 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.else97, %if.end96
  %userbuffer.addr.1 = phi ptr [ %add.ptr, %if.end96 ], [ null, %if.else97 ]
  %kernbuffer.addr.1 = phi ptr [ %kernbuffer.addr.0, %if.end96 ], [ %add.ptr98, %if.else97 ]
  %add100 = add i32 %addr.addr.0, 4
  %sub = add i32 %length.addr.0, -4
  br label %while.cond

cleanup:                                          ; preds = %if.then78.cleanup_crit_edge, %sw.default.cleanup_crit_edge, %if.end71, %copy_to_user.exit.cleanup_crit_edge, %if.end.i.i.cleanup_crit_edge, %if.end8.i.i.cleanup_crit_edge, %if.end40, %if.then19.cleanup_crit_edge, %if.end12, %if.then3.cleanup_crit_edge, %while.cond.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0.i, %if.end71 ], [ %call14, %if.end40 ], [ %call, %if.end12 ], [ -14, %if.then3.cleanup_crit_edge ], [ -14, %if.then19.cleanup_crit_edge ], [ -14, %copy_to_user.exit.cleanup_crit_edge ], [ -14, %if.end8.i.i.cleanup_crit_edge ], [ -14, %if.end.i.i.cleanup_crit_edge ], [ %call72, %sw.default.cleanup_crit_edge ], [ %length.addr.0, %while.cond.cleanup_crit_edge ], [ -14, %if.then78.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %swap32) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %swap16) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sisusb_read_pci_config(ptr noundef %sisusb, i32 noundef %regnum, ptr nocapture noundef writeonly %data) unnamed_addr #0 align 64 {
entry:
  %bytes_transferred.i = alloca i32, align 4
  %tmp.i = alloca i32, align 4
  %packet = alloca %struct.sisusb_packet, align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %packet) #10
  %0 = getelementptr inbounds %struct.sisusb_packet, ptr %packet, i32 0, i32 1
  %1 = getelementptr inbounds %struct.sisusb_packet, ptr %packet, i32 0, i32 2
  %2 = ptrtoint ptr %packet to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 143, ptr %packet, align 2
  %or = or i32 %regnum, 65536
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_storeN_noabort(i32 %3, i32 4)
  store i32 %or, ptr %0, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bytes_transferred.i) #10
  %4 = ptrtoint ptr %bytes_transferred.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %bytes_transferred.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #10
  %5 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %tmp.i, align 4, !annotation !144
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %6, i32 4)
  store i32 0, ptr %1, align 2
  %call.i = tail call fastcc i32 @sisusb_wait_all_out_complete(ptr noundef %sisusb) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %entry.sisusb_send_packet.exit_crit_edge, label %do.body.i

entry.sisusb_send_packet.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sisusb_send_packet.exit

do.body.i:                                        ; preds = %entry
  %7 = ptrtoint ptr %packet to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %packet, align 2
  %9 = tail call i16 @llvm.bswap.i16(i16 %8) #10
  %10 = ptrtoint ptr %packet to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %packet, align 2
  %11 = ptrtoint ptr %0 to i32
  call void @__asan_loadN_noabort(i32 %11, i32 4)
  %12 = load i32, ptr %0, align 2
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #10
  %14 = ptrtoint ptr %0 to i32
  call void @__asan_storeN_noabort(i32 %14, i32 4)
  store i32 %13, ptr %0, align 2
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_loadN_noabort(i32 %15, i32 4)
  %16 = load i32, ptr %1, align 2
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #10
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %18, i32 4)
  store i32 %17, ptr %1, align 2
  %call7.i = call fastcc i32 @sisusb_send_bulk_msg(ptr noundef %sisusb, i32 noundef 14, i32 noundef 6, ptr noundef nonnull %packet, ptr noundef null, i32 noundef 0, ptr noundef nonnull %bytes_transferred.i, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %cmp8.i = icmp eq i32 %call7.i, 0
  br i1 %cmp8.i, label %if.then10.i, label %do.body.i.sisusb_send_packet.exit_crit_edge

do.body.i.sisusb_send_packet.exit_crit_edge:      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sisusb_send_packet.exit

if.then10.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %call11.i = call fastcc i32 @sisusb_recv_bulk_msg(ptr noundef %sisusb, i32 noundef 14, ptr noundef nonnull %tmp.i, ptr noundef nonnull %bytes_transferred.i) #10
  %19 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tmp.i, align 4
  %21 = call i32 @llvm.bswap.i32(i32 %20) #10
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %22, i32 4)
  store i32 %21, ptr %1, align 2
  br label %sisusb_send_packet.exit

sisusb_send_packet.exit:                          ; preds = %if.then10.i, %do.body.i.sisusb_send_packet.exit_crit_edge, %entry.sisusb_send_packet.exit_crit_edge
  %retval.0.i = phi i32 [ 1, %entry.sisusb_send_packet.exit_crit_edge ], [ %call11.i, %if.then10.i ], [ %call7.i, %do.body.i.sisusb_send_packet.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bytes_transferred.i) #10
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_loadN_noabort(i32 %23, i32 4)
  %24 = load i32, ptr %1, align 2
  %25 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %data, align 4
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %packet) #10
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sisusb_write_memio_word(ptr noundef %sisusb, i32 noundef %type, i32 noundef %addr, i16 noundef zeroext %data) unnamed_addr #0 align 64 {
entry:
  %bytes_transferred.i91 = alloca i32, align 4
  %bytes_transferred.i80 = alloca i32, align 4
  %bytes_transferred.i69 = alloca i32, align 4
  %bytes_transferred.i58 = alloca i32, align 4
  %bytes_transferred.i = alloca i32, align 4
  %packet = alloca %struct.sisusb_packet, align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %packet) #10
  %0 = getelementptr inbounds %struct.sisusb_packet, ptr %packet, i32 0, i32 1
  %1 = getelementptr inbounds %struct.sisusb_packet, ptr %packet, i32 0, i32 2
  %and = and i32 %addr, -4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_storeN_noabort(i32 %2, i32 4)
  store i32 %and, ptr %0, align 2
  %and1 = and i32 %addr, 3
  %3 = zext i32 %and1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.56)
  switch i32 %and1, label %entry.unreachabledefault [
    i32 0, label %sw.bb
    i32 1, label %sw.bb4
    i32 2, label %sw.bb13
    i32 3, label %sw.bb22
  ]

sw.bb:                                            ; preds = %entry
  %type.tr57 = trunc i32 %type to i16
  %4 = shl i16 %type.tr57, 6
  %conv = or i16 %4, 3
  %5 = ptrtoint ptr %packet to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %conv, ptr %packet, align 2
  %conv2 = zext i16 %data to i32
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %6, i32 4)
  store i32 %conv2, ptr %1, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bytes_transferred.i) #10
  %7 = ptrtoint ptr %bytes_transferred.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %bytes_transferred.i, align 4
  %call.i = tail call fastcc i32 @sisusb_wait_all_out_complete(ptr noundef %sisusb) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %sw.bb.sisusb_send_packet.exit_crit_edge, label %do.body.i

sw.bb.sisusb_send_packet.exit_crit_edge:          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %sisusb_send_packet.exit

do.body.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %packet to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %packet, align 2
  %10 = tail call i16 @llvm.bswap.i16(i16 %9) #10
  %11 = ptrtoint ptr %packet to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %10, ptr %packet, align 2
  %12 = ptrtoint ptr %0 to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %13 = load i32, ptr %0, align 2
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #10
  %15 = ptrtoint ptr %0 to i32
  call void @__asan_storeN_noabort(i32 %15, i32 4)
  store i32 %14, ptr %0, align 2
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_loadN_noabort(i32 %16, i32 4)
  %17 = load i32, ptr %1, align 2
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #10
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %19, i32 4)
  store i32 %18, ptr %1, align 2
  %call7.i = call fastcc i32 @sisusb_send_bulk_msg(ptr noundef %sisusb, i32 noundef 14, i32 noundef 10, ptr noundef nonnull %packet, ptr noundef null, i32 noundef 0, ptr noundef nonnull %bytes_transferred.i, i32 noundef 0) #10
  br label %sisusb_send_packet.exit

sisusb_send_packet.exit:                          ; preds = %do.body.i, %sw.bb.sisusb_send_packet.exit_crit_edge
  %retval.0.i = phi i32 [ 1, %sw.bb.sisusb_send_packet.exit_crit_edge ], [ %call7.i, %do.body.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bytes_transferred.i) #10
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  %type.tr56 = trunc i32 %type to i16
  %20 = shl i16 %type.tr56, 6
  %conv7 = or i16 %20, 6
  %21 = ptrtoint ptr %packet to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %conv7, ptr %packet, align 2
  %conv9 = zext i16 %data to i32
  %shl10 = shl nuw nsw i32 %conv9, 8
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %22, i32 4)
  store i32 %shl10, ptr %1, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bytes_transferred.i58) #10
  %23 = ptrtoint ptr %bytes_transferred.i58 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %bytes_transferred.i58, align 4
  %call.i60 = tail call fastcc i32 @sisusb_wait_all_out_complete(ptr noundef %sisusb) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i60)
  %tobool.not.i61 = icmp eq i32 %call.i60, 0
  br i1 %tobool.not.i61, label %sw.bb4.sisusb_send_packet.exit68_crit_edge, label %do.body.i66

sw.bb4.sisusb_send_packet.exit68_crit_edge:       ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #12
  br label %sisusb_send_packet.exit68

do.body.i66:                                      ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #12
  %24 = ptrtoint ptr %packet to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %packet, align 2
  %26 = tail call i16 @llvm.bswap.i16(i16 %25) #10
  %27 = ptrtoint ptr %packet to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %26, ptr %packet, align 2
  %28 = ptrtoint ptr %0 to i32
  call void @__asan_loadN_noabort(i32 %28, i32 4)
  %29 = load i32, ptr %0, align 2
  %30 = tail call i32 @llvm.bswap.i32(i32 %29) #10
  %31 = ptrtoint ptr %0 to i32
  call void @__asan_storeN_noabort(i32 %31, i32 4)
  store i32 %30, ptr %0, align 2
  %32 = ptrtoint ptr %1 to i32
  call void @__asan_loadN_noabort(i32 %32, i32 4)
  %33 = load i32, ptr %1, align 2
  %34 = tail call i32 @llvm.bswap.i32(i32 %33) #10
  %35 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %35, i32 4)
  store i32 %34, ptr %1, align 2
  %call7.i64 = call fastcc i32 @sisusb_send_bulk_msg(ptr noundef %sisusb, i32 noundef 14, i32 noundef 10, ptr noundef nonnull %packet, ptr noundef null, i32 noundef 0, ptr noundef nonnull %bytes_transferred.i58, i32 noundef 0) #10
  br label %sisusb_send_packet.exit68

sisusb_send_packet.exit68:                        ; preds = %do.body.i66, %sw.bb4.sisusb_send_packet.exit68_crit_edge
  %retval.0.i67 = phi i32 [ 1, %sw.bb4.sisusb_send_packet.exit68_crit_edge ], [ %call7.i64, %do.body.i66 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bytes_transferred.i58) #10
  br label %sw.epilog

sw.bb13:                                          ; preds = %entry
  %type.tr = trunc i32 %type to i16
  %36 = shl i16 %type.tr, 6
  %conv16 = or i16 %36, 12
  %37 = ptrtoint ptr %packet to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %conv16, ptr %packet, align 2
  %conv18 = zext i16 %data to i32
  %shl19 = shl nuw i32 %conv18, 16
  %38 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %38, i32 4)
  store i32 %shl19, ptr %1, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bytes_transferred.i69) #10
  %39 = ptrtoint ptr %bytes_transferred.i69 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %bytes_transferred.i69, align 4
  %call.i71 = tail call fastcc i32 @sisusb_wait_all_out_complete(ptr noundef %sisusb) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i71)
  %tobool.not.i72 = icmp eq i32 %call.i71, 0
  br i1 %tobool.not.i72, label %sw.bb13.sisusb_send_packet.exit79_crit_edge, label %do.body.i77

sw.bb13.sisusb_send_packet.exit79_crit_edge:      ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #12
  br label %sisusb_send_packet.exit79

do.body.i77:                                      ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #12
  %40 = ptrtoint ptr %packet to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %packet, align 2
  %42 = tail call i16 @llvm.bswap.i16(i16 %41) #10
  %43 = ptrtoint ptr %packet to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %42, ptr %packet, align 2
  %44 = ptrtoint ptr %0 to i32
  call void @__asan_loadN_noabort(i32 %44, i32 4)
  %45 = load i32, ptr %0, align 2
  %46 = tail call i32 @llvm.bswap.i32(i32 %45) #10
  %47 = ptrtoint ptr %0 to i32
  call void @__asan_storeN_noabort(i32 %47, i32 4)
  store i32 %46, ptr %0, align 2
  %48 = ptrtoint ptr %1 to i32
  call void @__asan_loadN_noabort(i32 %48, i32 4)
  %49 = load i32, ptr %1, align 2
  %50 = tail call i32 @llvm.bswap.i32(i32 %49) #10
  %51 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %51, i32 4)
  store i32 %50, ptr %1, align 2
  %call7.i75 = call fastcc i32 @sisusb_send_bulk_msg(ptr noundef %sisusb, i32 noundef 14, i32 noundef 10, ptr noundef nonnull %packet, ptr noundef null, i32 noundef 0, ptr noundef nonnull %bytes_transferred.i69, i32 noundef 0) #10
  br label %sisusb_send_packet.exit79

sisusb_send_packet.exit79:                        ; preds = %do.body.i77, %sw.bb13.sisusb_send_packet.exit79_crit_edge
  %retval.0.i78 = phi i32 [ 1, %sw.bb13.sisusb_send_packet.exit79_crit_edge ], [ %call7.i75, %do.body.i77 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bytes_transferred.i69) #10
  br label %sw.epilog

sw.bb22:                                          ; preds = %entry
  %type.tr102 = trunc i32 %type to i16
  %52 = shl i16 %type.tr102, 6
  %conv25 = or i16 %52, 8
  %53 = ptrtoint ptr %packet to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %conv25, ptr %packet, align 2
  %conv27 = zext i16 %data to i32
  %shl28 = shl i32 %conv27, 24
  %54 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %54, i32 4)
  store i32 %shl28, ptr %1, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bytes_transferred.i80) #10
  %55 = ptrtoint ptr %bytes_transferred.i80 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 0, ptr %bytes_transferred.i80, align 4
  %call.i82 = tail call fastcc i32 @sisusb_wait_all_out_complete(ptr noundef %sisusb) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i82)
  %tobool.not.i83 = icmp eq i32 %call.i82, 0
  br i1 %tobool.not.i83, label %sw.bb22.sisusb_send_packet.exit90_crit_edge, label %do.body.i88

sw.bb22.sisusb_send_packet.exit90_crit_edge:      ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #12
  br label %sisusb_send_packet.exit90

do.body.i88:                                      ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #12
  %56 = ptrtoint ptr %packet to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %packet, align 2
  %58 = tail call i16 @llvm.bswap.i16(i16 %57) #10
  %59 = ptrtoint ptr %packet to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 %58, ptr %packet, align 2
  %60 = ptrtoint ptr %0 to i32
  call void @__asan_loadN_noabort(i32 %60, i32 4)
  %61 = load i32, ptr %0, align 2
  %62 = tail call i32 @llvm.bswap.i32(i32 %61) #10
  %63 = ptrtoint ptr %0 to i32
  call void @__asan_storeN_noabort(i32 %63, i32 4)
  store i32 %62, ptr %0, align 2
  %64 = ptrtoint ptr %1 to i32
  call void @__asan_loadN_noabort(i32 %64, i32 4)
  %65 = load i32, ptr %1, align 2
  %66 = tail call i32 @llvm.bswap.i32(i32 %65) #10
  %67 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %67, i32 4)
  store i32 %66, ptr %1, align 2
  %call7.i86 = call fastcc i32 @sisusb_send_bulk_msg(ptr noundef %sisusb, i32 noundef 14, i32 noundef 10, ptr noundef nonnull %packet, ptr noundef null, i32 noundef 0, ptr noundef nonnull %bytes_transferred.i80, i32 noundef 0) #10
  br label %sisusb_send_packet.exit90

sisusb_send_packet.exit90:                        ; preds = %do.body.i88, %sw.bb22.sisusb_send_packet.exit90_crit_edge
  %retval.0.i89 = phi i32 [ 1, %sw.bb22.sisusb_send_packet.exit90_crit_edge ], [ %call7.i86, %do.body.i88 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bytes_transferred.i80) #10
  %conv33 = or i16 %52, 1
  %68 = ptrtoint ptr %packet to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 %conv33, ptr %packet, align 2
  %add = add i32 %and, 4
  %69 = ptrtoint ptr %0 to i32
  call void @__asan_storeN_noabort(i32 %69, i32 4)
  store i32 %add, ptr %0, align 2
  %shr = lshr i32 %conv27, 8
  %70 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %70, i32 4)
  store i32 %shr, ptr %1, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bytes_transferred.i91) #10
  %71 = ptrtoint ptr %bytes_transferred.i91 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 0, ptr %bytes_transferred.i91, align 4
  %call.i93 = call fastcc i32 @sisusb_wait_all_out_complete(ptr noundef %sisusb) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i93)
  %tobool.not.i94 = icmp eq i32 %call.i93, 0
  br i1 %tobool.not.i94, label %sisusb_send_packet.exit90.sisusb_send_packet.exit101_crit_edge, label %do.body.i99

sisusb_send_packet.exit90.sisusb_send_packet.exit101_crit_edge: ; preds = %sisusb_send_packet.exit90
  call void @__sanitizer_cov_trace_pc() #12
  br label %sisusb_send_packet.exit101

do.body.i99:                                      ; preds = %sisusb_send_packet.exit90
  call void @__sanitizer_cov_trace_pc() #12
  %72 = ptrtoint ptr %packet to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %packet, align 2
  %74 = call i16 @llvm.bswap.i16(i16 %73) #10
  %75 = ptrtoint ptr %packet to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 %74, ptr %packet, align 2
  %76 = ptrtoint ptr %0 to i32
  call void @__asan_loadN_noabort(i32 %76, i32 4)
  %77 = load i32, ptr %0, align 2
  %78 = call i32 @llvm.bswap.i32(i32 %77) #10
  %79 = ptrtoint ptr %0 to i32
  call void @__asan_storeN_noabort(i32 %79, i32 4)
  store i32 %78, ptr %0, align 2
  %80 = ptrtoint ptr %1 to i32
  call void @__asan_loadN_noabort(i32 %80, i32 4)
  %81 = load i32, ptr %1, align 2
  %82 = call i32 @llvm.bswap.i32(i32 %81) #10
  %83 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %83, i32 4)
  store i32 %82, ptr %1, align 2
  %call7.i97 = call fastcc i32 @sisusb_send_bulk_msg(ptr noundef %sisusb, i32 noundef 14, i32 noundef 10, ptr noundef nonnull %packet, ptr noundef null, i32 noundef 0, ptr noundef nonnull %bytes_transferred.i91, i32 noundef 0) #10
  br label %sisusb_send_packet.exit101

sisusb_send_packet.exit101:                       ; preds = %do.body.i99, %sisusb_send_packet.exit90.sisusb_send_packet.exit101_crit_edge
  %retval.0.i100 = phi i32 [ 1, %sisusb_send_packet.exit90.sisusb_send_packet.exit101_crit_edge ], [ %call7.i97, %do.body.i99 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bytes_transferred.i91) #10
  %or40 = or i32 %retval.0.i100, %retval.0.i89
  br label %sw.epilog

entry.unreachabledefault:                         ; preds = %entry
  unreachable

sw.epilog:                                        ; preds = %sisusb_send_packet.exit101, %sisusb_send_packet.exit79, %sisusb_send_packet.exit68, %sisusb_send_packet.exit
  %ret.0 = phi i32 [ %or40, %sisusb_send_packet.exit101 ], [ %retval.0.i78, %sisusb_send_packet.exit79 ], [ %retval.0.i67, %sisusb_send_packet.exit68 ], [ %retval.0.i, %sisusb_send_packet.exit ]
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %packet) #10
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sisusb_write_memio_long(ptr noundef %sisusb, i32 noundef %type, i32 noundef %addr, i32 noundef %data) unnamed_addr #0 align 64 {
entry:
  %bytes_transferred.i138 = alloca i32, align 4
  %bytes_transferred.i127 = alloca i32, align 4
  %bytes_transferred.i116 = alloca i32, align 4
  %bytes_transferred.i105 = alloca i32, align 4
  %bytes_transferred.i94 = alloca i32, align 4
  %bytes_transferred.i83 = alloca i32, align 4
  %bytes_transferred.i = alloca i32, align 4
  %packet = alloca %struct.sisusb_packet, align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %packet) #10
  %0 = getelementptr inbounds %struct.sisusb_packet, ptr %packet, i32 0, i32 1
  %1 = getelementptr inbounds %struct.sisusb_packet, ptr %packet, i32 0, i32 2
  %and = and i32 %addr, -4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_storeN_noabort(i32 %2, i32 4)
  store i32 %and, ptr %0, align 2
  %and1 = and i32 %addr, 3
  %3 = zext i32 %and1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.57)
  switch i32 %and1, label %entry.unreachabledefault [
    i32 0, label %sw.bb
    i32 1, label %sw.bb3
    i32 2, label %sw.bb20
    i32 3, label %sw.bb39
  ]

sw.bb:                                            ; preds = %entry
  %type.tr = trunc i32 %type to i16
  %4 = shl i16 %type.tr, 6
  %conv = or i16 %4, 15
  %5 = ptrtoint ptr %packet to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %conv, ptr %packet, align 2
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %6, i32 4)
  store i32 %data, ptr %1, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bytes_transferred.i) #10
  %7 = ptrtoint ptr %bytes_transferred.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %bytes_transferred.i, align 4
  %call.i = tail call fastcc i32 @sisusb_wait_all_out_complete(ptr noundef %sisusb) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %sw.bb.sisusb_send_packet.exit_crit_edge, label %do.body.i

sw.bb.sisusb_send_packet.exit_crit_edge:          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %sisusb_send_packet.exit

do.body.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %packet to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %packet, align 2
  %10 = tail call i16 @llvm.bswap.i16(i16 %9) #10
  %11 = ptrtoint ptr %packet to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %10, ptr %packet, align 2
  %12 = ptrtoint ptr %0 to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %13 = load i32, ptr %0, align 2
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #10
  %15 = ptrtoint ptr %0 to i32
  call void @__asan_storeN_noabort(i32 %15, i32 4)
  store i32 %14, ptr %0, align 2
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_loadN_noabort(i32 %16, i32 4)
  %17 = load i32, ptr %1, align 2
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #10
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %19, i32 4)
  store i32 %18, ptr %1, align 2
  %call7.i = call fastcc i32 @sisusb_send_bulk_msg(ptr noundef %sisusb, i32 noundef 14, i32 noundef 10, ptr noundef nonnull %packet, ptr noundef null, i32 noundef 0, ptr noundef nonnull %bytes_transferred.i, i32 noundef 0) #10
  br label %sisusb_send_packet.exit

sisusb_send_packet.exit:                          ; preds = %do.body.i, %sw.bb.sisusb_send_packet.exit_crit_edge
  %retval.0.i = phi i32 [ 1, %sw.bb.sisusb_send_packet.exit_crit_edge ], [ %call7.i, %do.body.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bytes_transferred.i) #10
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  %type.tr151 = trunc i32 %type to i16
  %20 = shl i16 %type.tr151, 6
  %conv6 = or i16 %20, 14
  %21 = ptrtoint ptr %packet to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %conv6, ptr %packet, align 2
  %shl8 = shl i32 %data, 8
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %22, i32 4)
  store i32 %shl8, ptr %1, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bytes_transferred.i83) #10
  %23 = ptrtoint ptr %bytes_transferred.i83 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %bytes_transferred.i83, align 4
  %call.i85 = tail call fastcc i32 @sisusb_wait_all_out_complete(ptr noundef %sisusb) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i85)
  %tobool.not.i86 = icmp eq i32 %call.i85, 0
  br i1 %tobool.not.i86, label %sw.bb3.sisusb_send_packet.exit93_crit_edge, label %do.body.i91

sw.bb3.sisusb_send_packet.exit93_crit_edge:       ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #12
  br label %sisusb_send_packet.exit93

do.body.i91:                                      ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #12
  %24 = ptrtoint ptr %packet to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %packet, align 2
  %26 = tail call i16 @llvm.bswap.i16(i16 %25) #10
  %27 = ptrtoint ptr %packet to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %26, ptr %packet, align 2
  %28 = ptrtoint ptr %0 to i32
  call void @__asan_loadN_noabort(i32 %28, i32 4)
  %29 = load i32, ptr %0, align 2
  %30 = tail call i32 @llvm.bswap.i32(i32 %29) #10
  %31 = ptrtoint ptr %0 to i32
  call void @__asan_storeN_noabort(i32 %31, i32 4)
  store i32 %30, ptr %0, align 2
  %32 = ptrtoint ptr %1 to i32
  call void @__asan_loadN_noabort(i32 %32, i32 4)
  %33 = load i32, ptr %1, align 2
  %34 = tail call i32 @llvm.bswap.i32(i32 %33) #10
  %35 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %35, i32 4)
  store i32 %34, ptr %1, align 2
  %call7.i89 = call fastcc i32 @sisusb_send_bulk_msg(ptr noundef %sisusb, i32 noundef 14, i32 noundef 10, ptr noundef nonnull %packet, ptr noundef null, i32 noundef 0, ptr noundef nonnull %bytes_transferred.i83, i32 noundef 0) #10
  br label %sisusb_send_packet.exit93

sisusb_send_packet.exit93:                        ; preds = %do.body.i91, %sw.bb3.sisusb_send_packet.exit93_crit_edge
  %retval.0.i92 = phi i32 [ 1, %sw.bb3.sisusb_send_packet.exit93_crit_edge ], [ %call7.i89, %do.body.i91 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bytes_transferred.i83) #10
  %conv13 = or i16 %20, 1
  %36 = ptrtoint ptr %packet to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %conv13, ptr %packet, align 2
  %add = add i32 %and, 4
  %37 = ptrtoint ptr %0 to i32
  call void @__asan_storeN_noabort(i32 %37, i32 4)
  store i32 %add, ptr %0, align 2
  %shr = lshr i32 %data, 24
  %38 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %38, i32 4)
  store i32 %shr, ptr %1, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bytes_transferred.i94) #10
  %39 = ptrtoint ptr %bytes_transferred.i94 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %bytes_transferred.i94, align 4
  %call.i96 = call fastcc i32 @sisusb_wait_all_out_complete(ptr noundef %sisusb) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i96)
  %tobool.not.i97 = icmp eq i32 %call.i96, 0
  br i1 %tobool.not.i97, label %sisusb_send_packet.exit93.sisusb_send_packet.exit104_crit_edge, label %do.body.i102

sisusb_send_packet.exit93.sisusb_send_packet.exit104_crit_edge: ; preds = %sisusb_send_packet.exit93
  call void @__sanitizer_cov_trace_pc() #12
  br label %sisusb_send_packet.exit104

do.body.i102:                                     ; preds = %sisusb_send_packet.exit93
  call void @__sanitizer_cov_trace_pc() #12
  %40 = ptrtoint ptr %packet to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %packet, align 2
  %42 = call i16 @llvm.bswap.i16(i16 %41) #10
  %43 = ptrtoint ptr %packet to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %42, ptr %packet, align 2
  %44 = ptrtoint ptr %0 to i32
  call void @__asan_loadN_noabort(i32 %44, i32 4)
  %45 = load i32, ptr %0, align 2
  %46 = call i32 @llvm.bswap.i32(i32 %45) #10
  %47 = ptrtoint ptr %0 to i32
  call void @__asan_storeN_noabort(i32 %47, i32 4)
  store i32 %46, ptr %0, align 2
  %48 = ptrtoint ptr %1 to i32
  call void @__asan_loadN_noabort(i32 %48, i32 4)
  %49 = load i32, ptr %1, align 2
  %50 = call i32 @llvm.bswap.i32(i32 %49) #10
  %51 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %51, i32 4)
  store i32 %50, ptr %1, align 2
  %call7.i100 = call fastcc i32 @sisusb_send_bulk_msg(ptr noundef %sisusb, i32 noundef 14, i32 noundef 10, ptr noundef nonnull %packet, ptr noundef null, i32 noundef 0, ptr noundef nonnull %bytes_transferred.i94, i32 noundef 0) #10
  br label %sisusb_send_packet.exit104

sisusb_send_packet.exit104:                       ; preds = %do.body.i102, %sisusb_send_packet.exit93.sisusb_send_packet.exit104_crit_edge
  %retval.0.i103 = phi i32 [ 1, %sisusb_send_packet.exit93.sisusb_send_packet.exit104_crit_edge ], [ %call7.i100, %do.body.i102 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bytes_transferred.i94) #10
  %or19 = or i32 %retval.0.i103, %retval.0.i92
  br label %sw.epilog

sw.bb20:                                          ; preds = %entry
  %type.tr150 = trunc i32 %type to i16
  %52 = shl i16 %type.tr150, 6
  %conv23 = or i16 %52, 12
  %53 = ptrtoint ptr %packet to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %conv23, ptr %packet, align 2
  %shl25 = shl i32 %data, 16
  %54 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %54, i32 4)
  store i32 %shl25, ptr %1, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bytes_transferred.i105) #10
  %55 = ptrtoint ptr %bytes_transferred.i105 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 0, ptr %bytes_transferred.i105, align 4
  %call.i107 = tail call fastcc i32 @sisusb_wait_all_out_complete(ptr noundef %sisusb) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i107)
  %tobool.not.i108 = icmp eq i32 %call.i107, 0
  br i1 %tobool.not.i108, label %sw.bb20.sisusb_send_packet.exit115_crit_edge, label %do.body.i113

sw.bb20.sisusb_send_packet.exit115_crit_edge:     ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #12
  br label %sisusb_send_packet.exit115

do.body.i113:                                     ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #12
  %56 = ptrtoint ptr %packet to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %packet, align 2
  %58 = tail call i16 @llvm.bswap.i16(i16 %57) #10
  %59 = ptrtoint ptr %packet to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 %58, ptr %packet, align 2
  %60 = ptrtoint ptr %0 to i32
  call void @__asan_loadN_noabort(i32 %60, i32 4)
  %61 = load i32, ptr %0, align 2
  %62 = tail call i32 @llvm.bswap.i32(i32 %61) #10
  %63 = ptrtoint ptr %0 to i32
  call void @__asan_storeN_noabort(i32 %63, i32 4)
  store i32 %62, ptr %0, align 2
  %64 = ptrtoint ptr %1 to i32
  call void @__asan_loadN_noabort(i32 %64, i32 4)
  %65 = load i32, ptr %1, align 2
  %66 = tail call i32 @llvm.bswap.i32(i32 %65) #10
  %67 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %67, i32 4)
  store i32 %66, ptr %1, align 2
  %call7.i111 = call fastcc i32 @sisusb_send_bulk_msg(ptr noundef %sisusb, i32 noundef 14, i32 noundef 10, ptr noundef nonnull %packet, ptr noundef null, i32 noundef 0, ptr noundef nonnull %bytes_transferred.i105, i32 noundef 0) #10
  br label %sisusb_send_packet.exit115

sisusb_send_packet.exit115:                       ; preds = %do.body.i113, %sw.bb20.sisusb_send_packet.exit115_crit_edge
  %retval.0.i114 = phi i32 [ 1, %sw.bb20.sisusb_send_packet.exit115_crit_edge ], [ %call7.i111, %do.body.i113 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bytes_transferred.i105) #10
  %conv30 = or i16 %52, 3
  %68 = ptrtoint ptr %packet to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 %conv30, ptr %packet, align 2
  %add33 = add i32 %and, 4
  %69 = ptrtoint ptr %0 to i32
  call void @__asan_storeN_noabort(i32 %69, i32 4)
  store i32 %add33, ptr %0, align 2
  %shr35 = lshr i32 %data, 16
  %70 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %70, i32 4)
  store i32 %shr35, ptr %1, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bytes_transferred.i116) #10
  %71 = ptrtoint ptr %bytes_transferred.i116 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 0, ptr %bytes_transferred.i116, align 4
  %call.i118 = call fastcc i32 @sisusb_wait_all_out_complete(ptr noundef %sisusb) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i118)
  %tobool.not.i119 = icmp eq i32 %call.i118, 0
  br i1 %tobool.not.i119, label %sisusb_send_packet.exit115.sisusb_send_packet.exit126_crit_edge, label %do.body.i124

sisusb_send_packet.exit115.sisusb_send_packet.exit126_crit_edge: ; preds = %sisusb_send_packet.exit115
  call void @__sanitizer_cov_trace_pc() #12
  br label %sisusb_send_packet.exit126

do.body.i124:                                     ; preds = %sisusb_send_packet.exit115
  call void @__sanitizer_cov_trace_pc() #12
  %72 = ptrtoint ptr %packet to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %packet, align 2
  %74 = call i16 @llvm.bswap.i16(i16 %73) #10
  %75 = ptrtoint ptr %packet to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 %74, ptr %packet, align 2
  %76 = ptrtoint ptr %0 to i32
  call void @__asan_loadN_noabort(i32 %76, i32 4)
  %77 = load i32, ptr %0, align 2
  %78 = call i32 @llvm.bswap.i32(i32 %77) #10
  %79 = ptrtoint ptr %0 to i32
  call void @__asan_storeN_noabort(i32 %79, i32 4)
  store i32 %78, ptr %0, align 2
  %80 = ptrtoint ptr %1 to i32
  call void @__asan_loadN_noabort(i32 %80, i32 4)
  %81 = load i32, ptr %1, align 2
  %82 = call i32 @llvm.bswap.i32(i32 %81) #10
  %83 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %83, i32 4)
  store i32 %82, ptr %1, align 2
  %call7.i122 = call fastcc i32 @sisusb_send_bulk_msg(ptr noundef %sisusb, i32 noundef 14, i32 noundef 10, ptr noundef nonnull %packet, ptr noundef null, i32 noundef 0, ptr noundef nonnull %bytes_transferred.i116, i32 noundef 0) #10
  br label %sisusb_send_packet.exit126

sisusb_send_packet.exit126:                       ; preds = %do.body.i124, %sisusb_send_packet.exit115.sisusb_send_packet.exit126_crit_edge
  %retval.0.i125 = phi i32 [ 1, %sisusb_send_packet.exit115.sisusb_send_packet.exit126_crit_edge ], [ %call7.i122, %do.body.i124 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bytes_transferred.i116) #10
  %or38 = or i32 %retval.0.i125, %retval.0.i114
  br label %sw.epilog

sw.bb39:                                          ; preds = %entry
  %type.tr149 = trunc i32 %type to i16
  %84 = shl i16 %type.tr149, 6
  %conv42 = or i16 %84, 8
  %85 = ptrtoint ptr %packet to i32
  call void @__asan_store2_noabort(i32 %85)
  store i16 %conv42, ptr %packet, align 2
  %shl44 = shl i32 %data, 24
  %86 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %86, i32 4)
  store i32 %shl44, ptr %1, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bytes_transferred.i127) #10
  %87 = ptrtoint ptr %bytes_transferred.i127 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 0, ptr %bytes_transferred.i127, align 4
  %call.i129 = tail call fastcc i32 @sisusb_wait_all_out_complete(ptr noundef %sisusb) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i129)
  %tobool.not.i130 = icmp eq i32 %call.i129, 0
  br i1 %tobool.not.i130, label %sw.bb39.sisusb_send_packet.exit137_crit_edge, label %do.body.i135

sw.bb39.sisusb_send_packet.exit137_crit_edge:     ; preds = %sw.bb39
  call void @__sanitizer_cov_trace_pc() #12
  br label %sisusb_send_packet.exit137

do.body.i135:                                     ; preds = %sw.bb39
  call void @__sanitizer_cov_trace_pc() #12
  %88 = ptrtoint ptr %packet to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %packet, align 2
  %90 = tail call i16 @llvm.bswap.i16(i16 %89) #10
  %91 = ptrtoint ptr %packet to i32
  call void @__asan_store2_noabort(i32 %91)
  store i16 %90, ptr %packet, align 2
  %92 = ptrtoint ptr %0 to i32
  call void @__asan_loadN_noabort(i32 %92, i32 4)
  %93 = load i32, ptr %0, align 2
  %94 = tail call i32 @llvm.bswap.i32(i32 %93) #10
  %95 = ptrtoint ptr %0 to i32
  call void @__asan_storeN_noabort(i32 %95, i32 4)
  store i32 %94, ptr %0, align 2
  %96 = ptrtoint ptr %1 to i32
  call void @__asan_loadN_noabort(i32 %96, i32 4)
  %97 = load i32, ptr %1, align 2
  %98 = tail call i32 @llvm.bswap.i32(i32 %97) #10
  %99 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %99, i32 4)
  store i32 %98, ptr %1, align 2
  %call7.i133 = call fastcc i32 @sisusb_send_bulk_msg(ptr noundef %sisusb, i32 noundef 14, i32 noundef 10, ptr noundef nonnull %packet, ptr noundef null, i32 noundef 0, ptr noundef nonnull %bytes_transferred.i127, i32 noundef 0) #10
  br label %sisusb_send_packet.exit137

sisusb_send_packet.exit137:                       ; preds = %do.body.i135, %sw.bb39.sisusb_send_packet.exit137_crit_edge
  %retval.0.i136 = phi i32 [ 1, %sw.bb39.sisusb_send_packet.exit137_crit_edge ], [ %call7.i133, %do.body.i135 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bytes_transferred.i127) #10
  %conv49 = or i16 %84, 7
  %100 = ptrtoint ptr %packet to i32
  call void @__asan_store2_noabort(i32 %100)
  store i16 %conv49, ptr %packet, align 2
  %add52 = add i32 %and, 4
  %101 = ptrtoint ptr %0 to i32
  call void @__asan_storeN_noabort(i32 %101, i32 4)
  store i32 %add52, ptr %0, align 2
  %shr54 = lshr i32 %data, 8
  %102 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %102, i32 4)
  store i32 %shr54, ptr %1, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bytes_transferred.i138) #10
  %103 = ptrtoint ptr %bytes_transferred.i138 to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 0, ptr %bytes_transferred.i138, align 4
  %call.i140 = call fastcc i32 @sisusb_wait_all_out_complete(ptr noundef %sisusb) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i140)
  %tobool.not.i141 = icmp eq i32 %call.i140, 0
  br i1 %tobool.not.i141, label %sisusb_send_packet.exit137.sisusb_send_packet.exit148_crit_edge, label %do.body.i146

sisusb_send_packet.exit137.sisusb_send_packet.exit148_crit_edge: ; preds = %sisusb_send_packet.exit137
  call void @__sanitizer_cov_trace_pc() #12
  br label %sisusb_send_packet.exit148

do.body.i146:                                     ; preds = %sisusb_send_packet.exit137
  call void @__sanitizer_cov_trace_pc() #12
  %104 = ptrtoint ptr %packet to i32
  call void @__asan_load2_noabort(i32 %104)
  %105 = load i16, ptr %packet, align 2
  %106 = call i16 @llvm.bswap.i16(i16 %105) #10
  %107 = ptrtoint ptr %packet to i32
  call void @__asan_store2_noabort(i32 %107)
  store i16 %106, ptr %packet, align 2
  %108 = ptrtoint ptr %0 to i32
  call void @__asan_loadN_noabort(i32 %108, i32 4)
  %109 = load i32, ptr %0, align 2
  %110 = call i32 @llvm.bswap.i32(i32 %109) #10
  %111 = ptrtoint ptr %0 to i32
  call void @__asan_storeN_noabort(i32 %111, i32 4)
  store i32 %110, ptr %0, align 2
  %112 = ptrtoint ptr %1 to i32
  call void @__asan_loadN_noabort(i32 %112, i32 4)
  %113 = load i32, ptr %1, align 2
  %114 = call i32 @llvm.bswap.i32(i32 %113) #10
  %115 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %115, i32 4)
  store i32 %114, ptr %1, align 2
  %call7.i144 = call fastcc i32 @sisusb_send_bulk_msg(ptr noundef %sisusb, i32 noundef 14, i32 noundef 10, ptr noundef nonnull %packet, ptr noundef null, i32 noundef 0, ptr noundef nonnull %bytes_transferred.i138, i32 noundef 0) #10
  br label %sisusb_send_packet.exit148

sisusb_send_packet.exit148:                       ; preds = %do.body.i146, %sisusb_send_packet.exit137.sisusb_send_packet.exit148_crit_edge
  %retval.0.i147 = phi i32 [ 1, %sisusb_send_packet.exit137.sisusb_send_packet.exit148_crit_edge ], [ %call7.i144, %do.body.i146 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bytes_transferred.i138) #10
  %or57 = or i32 %retval.0.i147, %retval.0.i136
  br label %sw.epilog

entry.unreachabledefault:                         ; preds = %entry
  unreachable

sw.epilog:                                        ; preds = %sisusb_send_packet.exit148, %sisusb_send_packet.exit126, %sisusb_send_packet.exit104, %sisusb_send_packet.exit
  %ret.0 = phi i32 [ %or57, %sisusb_send_packet.exit148 ], [ %or38, %sisusb_send_packet.exit126 ], [ %or19, %sisusb_send_packet.exit104 ], [ %retval.0.i, %sisusb_send_packet.exit ]
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %packet) #10
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sisusb_write_mem_bulk(ptr noundef %sisusb, i32 noundef %addr, i32 noundef %length, ptr noundef %userbuffer, i32 noundef %index, ptr nocapture noundef %bytes_written) unnamed_addr #0 align 64 {
entry:
  %bytes_transferred.i65 = alloca i32, align 4
  %bytes_transferred.i54 = alloca i32, align 4
  %bytes_transferred.i43 = alloca i32, align 4
  %bytes_transferred.i32 = alloca i32, align 4
  %bytes_transferred.i21 = alloca i32, align 4
  %bytes_transferred.i = alloca i32, align 4
  %bytes_transferred.i45.i = alloca i32, align 4
  %bytes_transferred.i34.i = alloca i32, align 4
  %bytes_transferred.i23.i = alloca i32, align 4
  %bytes_transferred.i12.i = alloca i32, align 4
  %bytes_transferred.i1.i = alloca i32, align 4
  %bytes_transferred.i.i12 = alloca i32, align 4
  %packet.i13 = alloca %struct.sisusb_packet, align 2
  %bytes_transferred.i.i = alloca i32, align 4
  %packet.i = alloca %struct.sisusb_packet, align 2
  %packet = alloca %struct.sisusb_packet, align 2
  %buf = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %packet) #10
  %0 = ptrtoint ptr %packet to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %packet, align 2, !annotation !144
  %1 = getelementptr inbounds %struct.sisusb_packet, ptr %packet, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %2, i32 4)
  store i32 -1, ptr %1, align 2, !annotation !144
  %3 = getelementptr inbounds %struct.sisusb_packet, ptr %packet, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %4, i32 4)
  store i32 -1, ptr %3, align 2, !annotation !144
  %shr1 = lshr i32 %length, 28
  %and = and i32 %shr1, 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf) #10
  %5 = getelementptr inbounds [4 x i8], ptr %buf, i32 0, i32 1
  %6 = getelementptr inbounds [4 x i8], ptr %buf, i32 0, i32 2
  %tobool2.not = icmp eq ptr %userbuffer, null
  %7 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %buf, align 4
  br i1 %tobool2.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx = getelementptr %struct.sisusb_usb_data, ptr %sisusb, i32 0, i32 11, i32 %index
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %kernbuffer.addr.0 = phi ptr [ null, %entry.if.end_crit_edge ], [ %9, %if.then ]
  %10 = ptrtoint ptr %bytes_written to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %bytes_written, align 4
  %and3 = and i32 %length, 16777215
  %flagb0 = getelementptr inbounds %struct.sisusb_usb_data, ptr %sisusb, i32 0, i32 20
  %or153 = or i32 %and, 22
  %obufsize176 = getelementptr inbounds %struct.sisusb_usb_data, ptr %sisusb, i32 0, i32 13
  br label %while.cond

while.cond:                                       ; preds = %if.end200, %if.end
  %userbuffer.addr.0 = phi ptr [ %userbuffer, %if.end ], [ %userbuffer.addr.1, %if.end200 ]
  %length.addr.0 = phi i32 [ %and3, %if.end ], [ %sub202, %if.end200 ]
  %kernbuffer.addr.1 = phi ptr [ %kernbuffer.addr.0, %if.end ], [ %kernbuffer.addr.2, %if.end200 ]
  %addr.addr.0 = phi i32 [ %addr, %if.end ], [ %add201, %if.end200 ]
  %11 = zext i32 %length.addr.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.58)
  switch i32 %length.addr.0, label %sw.default [
    i32 0, label %while.cond.cleanup_crit_edge
    i32 1, label %sw.bb
    i32 2, label %sw.bb19
    i32 3, label %sw.bb44
    i32 4, label %sw.bb76
  ]

while.cond.cleanup_crit_edge:                     ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %while.cond
  %tobool5.not = icmp eq ptr %userbuffer.addr.0, null
  br i1 %tobool5.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %sw.bb
  call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 780) #10
  %12 = call i32 @llvm.read_register.i32(metadata !134) #10
  %and.i.i.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 4
  %14 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #5, !srcloc !147
  %and.i = and i32 %14, -13
  %or.i = or i32 %and.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #10, !srcloc !148
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !149
  %15 = call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_1", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr nonnull %userbuffer.addr.0, i32 -1226833921) #10, !srcloc !168
  %asmresult = extractvalue { i32, i32 } %15, 0
  %asmresult7 = extractvalue { i32, i32 } %15, 1
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %14) #10, !srcloc !148
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !149
  %conv8 = trunc i32 %asmresult7 to i8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult)
  %tobool10.not = icmp eq i32 %asmresult, 0
  br i1 %tobool10.not, label %if.then6.if.end14_crit_edge, label %if.then6.cleanup_crit_edge

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then6.if.end14_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

if.else:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %kernbuffer.addr.1 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %kernbuffer.addr.1, align 1
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.then6.if.end14_crit_edge
  %swap8.0 = phi i8 [ %conv8, %if.then6.if.end14_crit_edge ], [ %17, %if.else ]
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %packet.i) #10
  %18 = getelementptr inbounds %struct.sisusb_packet, ptr %packet.i, i32 0, i32 1
  %19 = getelementptr inbounds %struct.sisusb_packet, ptr %packet.i, i32 0, i32 2
  %and.i10 = and i32 %addr.addr.0, 3
  %shl.i = shl nuw nsw i32 1, %and.i10
  %conv.i = trunc i32 %shl.i to i16
  %20 = ptrtoint ptr %packet.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %conv.i, ptr %packet.i, align 2
  %and2.i = and i32 %addr.addr.0, -4
  %21 = ptrtoint ptr %18 to i32
  call void @__asan_storeN_noabort(i32 %21, i32 4)
  store i32 %and2.i, ptr %18, align 2
  %conv3.i = zext i8 %swap8.0 to i32
  %shl5.i = shl nuw nsw i32 %and.i10, 3
  %shl6.i = shl nuw i32 %conv3.i, %shl5.i
  %22 = ptrtoint ptr %19 to i32
  call void @__asan_storeN_noabort(i32 %22, i32 4)
  store i32 %shl6.i, ptr %19, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bytes_transferred.i.i) #10
  %23 = ptrtoint ptr %bytes_transferred.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %bytes_transferred.i.i, align 4
  %call.i.i11 = call fastcc i32 @sisusb_wait_all_out_complete(ptr noundef %sisusb) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i11)
  %tobool.not.i.i = icmp eq i32 %call.i.i11, 0
  br i1 %tobool.not.i.i, label %sisusb_write_memio_byte.exit.thread, label %sisusb_write_memio_byte.exit

sisusb_write_memio_byte.exit.thread:              ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bytes_transferred.i.i) #10
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %packet.i) #10
  br label %cleanup

sisusb_write_memio_byte.exit:                     ; preds = %if.end14
  %24 = ptrtoint ptr %packet.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %packet.i, align 2
  %26 = call i16 @llvm.bswap.i16(i16 %25) #10
  %27 = ptrtoint ptr %packet.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %26, ptr %packet.i, align 2
  %28 = ptrtoint ptr %18 to i32
  call void @__asan_loadN_noabort(i32 %28, i32 4)
  %29 = load i32, ptr %18, align 2
  %30 = call i32 @llvm.bswap.i32(i32 %29) #10
  %31 = ptrtoint ptr %18 to i32
  call void @__asan_storeN_noabort(i32 %31, i32 4)
  store i32 %30, ptr %18, align 2
  %32 = ptrtoint ptr %19 to i32
  call void @__asan_loadN_noabort(i32 %32, i32 4)
  %33 = load i32, ptr %19, align 2
  %34 = call i32 @llvm.bswap.i32(i32 %33) #10
  %35 = ptrtoint ptr %19 to i32
  call void @__asan_storeN_noabort(i32 %35, i32 4)
  store i32 %34, ptr %19, align 2
  %call7.i.i = call fastcc i32 @sisusb_send_bulk_msg(ptr noundef %sisusb, i32 noundef 14, i32 noundef 10, ptr noundef nonnull %packet.i, ptr noundef null, i32 noundef 0, ptr noundef nonnull %bytes_transferred.i.i, i32 noundef 0) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bytes_transferred.i.i) #10
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %packet.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.i)
  %tobool16.not = icmp eq i32 %call7.i.i, 0
  br i1 %tobool16.not, label %if.then17, label %sisusb_write_memio_byte.exit.cleanup_crit_edge

sisusb_write_memio_byte.exit.cleanup_crit_edge:   ; preds = %sisusb_write_memio_byte.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then17:                                        ; preds = %sisusb_write_memio_byte.exit
  call void @__sanitizer_cov_trace_pc() #12
  %36 = ptrtoint ptr %bytes_written to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %bytes_written, align 4
  %inc = add i32 %37, 1
  store i32 %inc, ptr %bytes_written, align 4
  br label %cleanup

sw.bb19:                                          ; preds = %while.cond
  %tobool20.not = icmp eq ptr %userbuffer.addr.0, null
  br i1 %tobool20.not, label %if.else38, label %if.then21

if.then21:                                        ; preds = %sw.bb19
  call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 795) #10
  %38 = call i32 @llvm.read_register.i32(metadata !134) #10
  %and.i.i.i2 = and i32 %38, -16384
  %39 = inttoptr i32 %and.i.i.i2 to ptr
  %cpu_domain.i.i3 = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 4
  %40 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i3) #5, !srcloc !147
  %and.i4 = and i32 %40, -13
  %or.i5 = or i32 %and.i4, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i5) #10, !srcloc !148
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !149
  %41 = call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_2", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr nonnull %userbuffer.addr.0, i32 -1226833921) #10, !srcloc !169
  %asmresult31 = extractvalue { i32, i32 } %41, 0
  %asmresult32 = extractvalue { i32, i32 } %41, 1
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %40) #10, !srcloc !148
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !149
  %conv33 = trunc i32 %asmresult32 to i16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult31)
  %tobool35.not = icmp eq i32 %asmresult31, 0
  br i1 %tobool35.not, label %if.then21.if.end39_crit_edge, label %if.then21.cleanup_crit_edge

if.then21.cleanup_crit_edge:                      ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then21.if.end39_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end39

if.else38:                                        ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #12
  %42 = ptrtoint ptr %kernbuffer.addr.1 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %kernbuffer.addr.1, align 2
  br label %if.end39

if.end39:                                         ; preds = %if.else38, %if.then21.if.end39_crit_edge
  %swap16.0 = phi i16 [ %conv33, %if.then21.if.end39_crit_edge ], [ %43, %if.else38 ]
  %call40 = call fastcc i32 @sisusb_write_memio_word(ptr noundef %sisusb, i32 noundef 0, i32 noundef %addr.addr.0, i16 noundef zeroext %swap16.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.then42, label %if.end39.cleanup_crit_edge

if.end39.cleanup_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then42:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  %44 = ptrtoint ptr %bytes_written to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %bytes_written, align 4
  %add = add i32 %45, 2
  store i32 %add, ptr %bytes_written, align 4
  br label %cleanup

sw.bb44:                                          ; preds = %while.cond
  %tobool45.not = icmp eq ptr %userbuffer.addr.0, null
  br i1 %tobool45.not, label %if.else59, label %if.end8.i.i

if.end8.i.i:                                      ; preds = %sw.bb44
  call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 156) #10
  %call.i.i = call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i, label %if.end8.i.i.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.end8.i.i.if.then11.i.i_crit_edge:              ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.end8.i.i
  %46 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr nonnull %userbuffer.addr.0, i32 3, i32 -1226833920) #13, !srcloc !146
  %asmresult.i.i = extractvalue { i32, i32 } %46, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !145

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %buf, i32 noundef 3) #10
  %47 = call i32 @llvm.read_register.i32(metadata !134) #10
  %and.i.i.i.i.i.i = and i32 %47, -16384
  %48 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %48, i32 0, i32 4
  %49 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #5, !srcloc !147
  %and.i.i.i.i = and i32 %49, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #10, !srcloc !148
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !149
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %buf, ptr noundef nonnull %userbuffer.addr.0, i32 noundef 3) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %49) #10, !srcloc !148
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !149
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end50, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !145

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.end8.i.i.if.then11.i.i_crit_edge
  %res.0.i.i80 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 3, %if.end8.i.i.if.then11.i.i_crit_edge ], [ 3, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 3, %res.0.i.i80
  %add.ptr.i.i = getelementptr i8, ptr %buf, i32 %sub.i.i
  %50 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i80)
  br label %cleanup

if.end50:                                         ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %51 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %buf, align 4
  %conv52 = zext i8 %52 to i32
  %shl = shl nuw nsw i32 %conv52, 16
  %53 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %5, align 1
  %conv54 = zext i8 %54 to i32
  %shl55 = shl nuw nsw i32 %conv54, 8
  %or = or i32 %shl55, %shl
  br label %if.end70

if.else59:                                        ; preds = %sw.bb44
  call void @__sanitizer_cov_trace_pc() #12
  %55 = ptrtoint ptr %kernbuffer.addr.1 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %kernbuffer.addr.1, align 1
  %conv61 = zext i8 %56 to i32
  %shl62 = shl nuw nsw i32 %conv61, 16
  %arrayidx63 = getelementptr i8, ptr %kernbuffer.addr.1, i32 1
  %57 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx63, align 1
  %conv64 = zext i8 %58 to i32
  %shl65 = shl nuw nsw i32 %conv64, 8
  %or66 = or i32 %shl65, %shl62
  %arrayidx67 = getelementptr i8, ptr %kernbuffer.addr.1, i32 2
  br label %if.end70

if.end70:                                         ; preds = %if.else59, %if.end50
  %arrayidx67.sink = phi ptr [ %arrayidx67, %if.else59 ], [ %6, %if.end50 ]
  %or66.sink = phi i32 [ %or66, %if.else59 ], [ %or, %if.end50 ]
  %59 = ptrtoint ptr %arrayidx67.sink to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %arrayidx67.sink, align 1
  %conv68 = zext i8 %60 to i32
  %or69 = or i32 %or66.sink, %conv68
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %packet.i13) #10
  %61 = getelementptr inbounds %struct.sisusb_packet, ptr %packet.i13, i32 0, i32 1
  %62 = getelementptr inbounds %struct.sisusb_packet, ptr %packet.i13, i32 0, i32 2
  %and.i14 = and i32 %addr.addr.0, -4
  %63 = ptrtoint ptr %61 to i32
  call void @__asan_storeN_noabort(i32 %63, i32 4)
  store i32 %and.i14, ptr %61, align 2
  %and1.i = and i32 %addr.addr.0, 3
  %64 = zext i32 %and1.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %64, ptr @__sancov_gen_cov_switch_values.59)
  switch i32 %and1.i, label %entry.unreachabledefault.i [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb4.i
    i32 2, label %sw.bb12.i
    i32 3, label %sw.bb30.i
  ]

sw.bb.i:                                          ; preds = %if.end70
  %65 = ptrtoint ptr %packet.i13 to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 7, ptr %packet.i13, align 2
  %and2.i15 = and i32 %or69, 16777215
  %66 = ptrtoint ptr %62 to i32
  call void @__asan_storeN_noabort(i32 %66, i32 4)
  store i32 %and2.i15, ptr %62, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bytes_transferred.i.i12) #10
  %67 = ptrtoint ptr %bytes_transferred.i.i12 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 0, ptr %bytes_transferred.i.i12, align 4
  %call.i.i16 = call fastcc i32 @sisusb_wait_all_out_complete(ptr noundef %sisusb) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i16)
  %tobool.not.i.i17 = icmp eq i32 %call.i.i16, 0
  br i1 %tobool.not.i.i17, label %sw.bb.i.sisusb_send_packet.exit.i_crit_edge, label %do.body.i.i19

sw.bb.i.sisusb_send_packet.exit.i_crit_edge:      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sisusb_send_packet.exit.i

do.body.i.i19:                                    ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #12
  %68 = ptrtoint ptr %packet.i13 to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %packet.i13, align 2
  %70 = call i16 @llvm.bswap.i16(i16 %69) #10
  %71 = ptrtoint ptr %packet.i13 to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 %70, ptr %packet.i13, align 2
  %72 = ptrtoint ptr %61 to i32
  call void @__asan_loadN_noabort(i32 %72, i32 4)
  %73 = load i32, ptr %61, align 2
  %74 = call i32 @llvm.bswap.i32(i32 %73) #10
  %75 = ptrtoint ptr %61 to i32
  call void @__asan_storeN_noabort(i32 %75, i32 4)
  store i32 %74, ptr %61, align 2
  %76 = ptrtoint ptr %62 to i32
  call void @__asan_loadN_noabort(i32 %76, i32 4)
  %77 = load i32, ptr %62, align 2
  %78 = call i32 @llvm.bswap.i32(i32 %77) #10
  %79 = ptrtoint ptr %62 to i32
  call void @__asan_storeN_noabort(i32 %79, i32 4)
  store i32 %78, ptr %62, align 2
  %call7.i.i18 = call fastcc i32 @sisusb_send_bulk_msg(ptr noundef %sisusb, i32 noundef 14, i32 noundef 10, ptr noundef nonnull %packet.i13, ptr noundef null, i32 noundef 0, ptr noundef nonnull %bytes_transferred.i.i12, i32 noundef 0) #10
  br label %sisusb_send_packet.exit.i

sisusb_send_packet.exit.i:                        ; preds = %do.body.i.i19, %sw.bb.i.sisusb_send_packet.exit.i_crit_edge
  %retval.0.i.i20 = phi i32 [ 1, %sw.bb.i.sisusb_send_packet.exit.i_crit_edge ], [ %call7.i.i18, %do.body.i.i19 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bytes_transferred.i.i12) #10
  br label %sisusb_write_memio_24bit.exit

sw.bb4.i:                                         ; preds = %if.end70
  %80 = ptrtoint ptr %packet.i13 to i32
  call void @__asan_store2_noabort(i32 %80)
  store i16 14, ptr %packet.i13, align 2
  %shl9.i = shl i32 %or69, 8
  %81 = ptrtoint ptr %62 to i32
  call void @__asan_storeN_noabort(i32 %81, i32 4)
  store i32 %shl9.i, ptr %62, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bytes_transferred.i1.i) #10
  %82 = ptrtoint ptr %bytes_transferred.i1.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 0, ptr %bytes_transferred.i1.i, align 4
  %call.i3.i = call fastcc i32 @sisusb_wait_all_out_complete(ptr noundef %sisusb) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i3.i)
  %tobool.not.i4.i = icmp eq i32 %call.i3.i, 0
  br i1 %tobool.not.i4.i, label %sw.bb4.i.sisusb_send_packet.exit11.i_crit_edge, label %do.body.i9.i

sw.bb4.i.sisusb_send_packet.exit11.i_crit_edge:   ; preds = %sw.bb4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sisusb_send_packet.exit11.i

do.body.i9.i:                                     ; preds = %sw.bb4.i
  call void @__sanitizer_cov_trace_pc() #12
  %83 = ptrtoint ptr %packet.i13 to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %packet.i13, align 2
  %85 = call i16 @llvm.bswap.i16(i16 %84) #10
  %86 = ptrtoint ptr %packet.i13 to i32
  call void @__asan_store2_noabort(i32 %86)
  store i16 %85, ptr %packet.i13, align 2
  %87 = ptrtoint ptr %61 to i32
  call void @__asan_loadN_noabort(i32 %87, i32 4)
  %88 = load i32, ptr %61, align 2
  %89 = call i32 @llvm.bswap.i32(i32 %88) #10
  %90 = ptrtoint ptr %61 to i32
  call void @__asan_storeN_noabort(i32 %90, i32 4)
  store i32 %89, ptr %61, align 2
  %91 = ptrtoint ptr %62 to i32
  call void @__asan_loadN_noabort(i32 %91, i32 4)
  %92 = load i32, ptr %62, align 2
  %93 = call i32 @llvm.bswap.i32(i32 %92) #10
  %94 = ptrtoint ptr %62 to i32
  call void @__asan_storeN_noabort(i32 %94, i32 4)
  store i32 %93, ptr %62, align 2
  %call7.i7.i = call fastcc i32 @sisusb_send_bulk_msg(ptr noundef %sisusb, i32 noundef 14, i32 noundef 10, ptr noundef nonnull %packet.i13, ptr noundef null, i32 noundef 0, ptr noundef nonnull %bytes_transferred.i1.i, i32 noundef 0) #10
  br label %sisusb_send_packet.exit11.i

sisusb_send_packet.exit11.i:                      ; preds = %do.body.i9.i, %sw.bb4.i.sisusb_send_packet.exit11.i_crit_edge
  %retval.0.i10.i = phi i32 [ 1, %sw.bb4.i.sisusb_send_packet.exit11.i_crit_edge ], [ %call7.i7.i, %do.body.i9.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bytes_transferred.i1.i) #10
  br label %sisusb_write_memio_24bit.exit

sw.bb12.i:                                        ; preds = %if.end70
  %95 = ptrtoint ptr %packet.i13 to i32
  call void @__asan_store2_noabort(i32 %95)
  store i16 12, ptr %packet.i13, align 2
  %shl17.i = shl i32 %or69, 16
  %96 = ptrtoint ptr %62 to i32
  call void @__asan_storeN_noabort(i32 %96, i32 4)
  store i32 %shl17.i, ptr %62, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bytes_transferred.i12.i) #10
  %97 = ptrtoint ptr %bytes_transferred.i12.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 0, ptr %bytes_transferred.i12.i, align 4
  %call.i14.i = call fastcc i32 @sisusb_wait_all_out_complete(ptr noundef %sisusb) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i14.i)
  %tobool.not.i15.i = icmp eq i32 %call.i14.i, 0
  br i1 %tobool.not.i15.i, label %sw.bb12.i.sisusb_send_packet.exit22.i_crit_edge, label %do.body.i20.i

sw.bb12.i.sisusb_send_packet.exit22.i_crit_edge:  ; preds = %sw.bb12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sisusb_send_packet.exit22.i

do.body.i20.i:                                    ; preds = %sw.bb12.i
  call void @__sanitizer_cov_trace_pc() #12
  %98 = ptrtoint ptr %packet.i13 to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %packet.i13, align 2
  %100 = call i16 @llvm.bswap.i16(i16 %99) #10
  %101 = ptrtoint ptr %packet.i13 to i32
  call void @__asan_store2_noabort(i32 %101)
  store i16 %100, ptr %packet.i13, align 2
  %102 = ptrtoint ptr %61 to i32
  call void @__asan_loadN_noabort(i32 %102, i32 4)
  %103 = load i32, ptr %61, align 2
  %104 = call i32 @llvm.bswap.i32(i32 %103) #10
  %105 = ptrtoint ptr %61 to i32
  call void @__asan_storeN_noabort(i32 %105, i32 4)
  store i32 %104, ptr %61, align 2
  %106 = ptrtoint ptr %62 to i32
  call void @__asan_loadN_noabort(i32 %106, i32 4)
  %107 = load i32, ptr %62, align 2
  %108 = call i32 @llvm.bswap.i32(i32 %107) #10
  %109 = ptrtoint ptr %62 to i32
  call void @__asan_storeN_noabort(i32 %109, i32 4)
  store i32 %108, ptr %62, align 2
  %call7.i18.i = call fastcc i32 @sisusb_send_bulk_msg(ptr noundef %sisusb, i32 noundef 14, i32 noundef 10, ptr noundef nonnull %packet.i13, ptr noundef null, i32 noundef 0, ptr noundef nonnull %bytes_transferred.i12.i, i32 noundef 0) #10
  br label %sisusb_send_packet.exit22.i

sisusb_send_packet.exit22.i:                      ; preds = %do.body.i20.i, %sw.bb12.i.sisusb_send_packet.exit22.i_crit_edge
  %retval.0.i21.i = phi i32 [ 1, %sw.bb12.i.sisusb_send_packet.exit22.i_crit_edge ], [ %call7.i18.i, %do.body.i20.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bytes_transferred.i12.i) #10
  %110 = ptrtoint ptr %packet.i13 to i32
  call void @__asan_store2_noabort(i32 %110)
  store i16 1, ptr %packet.i13, align 2
  %add.i = add i32 %and.i14, 4
  %111 = ptrtoint ptr %61 to i32
  call void @__asan_storeN_noabort(i32 %111, i32 4)
  store i32 %add.i, ptr %61, align 2
  %shr.i = lshr i32 %or66.sink, 16
  %and26.i = and i32 %shr.i, 255
  %112 = ptrtoint ptr %62 to i32
  call void @__asan_storeN_noabort(i32 %112, i32 4)
  store i32 %and26.i, ptr %62, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bytes_transferred.i23.i) #10
  %113 = ptrtoint ptr %bytes_transferred.i23.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 0, ptr %bytes_transferred.i23.i, align 4
  %call.i25.i = call fastcc i32 @sisusb_wait_all_out_complete(ptr noundef %sisusb) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i25.i)
  %tobool.not.i26.i = icmp eq i32 %call.i25.i, 0
  br i1 %tobool.not.i26.i, label %sisusb_send_packet.exit22.i.sisusb_send_packet.exit33.i_crit_edge, label %do.body.i31.i

sisusb_send_packet.exit22.i.sisusb_send_packet.exit33.i_crit_edge: ; preds = %sisusb_send_packet.exit22.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sisusb_send_packet.exit33.i

do.body.i31.i:                                    ; preds = %sisusb_send_packet.exit22.i
  call void @__sanitizer_cov_trace_pc() #12
  %114 = ptrtoint ptr %packet.i13 to i32
  call void @__asan_load2_noabort(i32 %114)
  %115 = load i16, ptr %packet.i13, align 2
  %116 = call i16 @llvm.bswap.i16(i16 %115) #10
  %117 = ptrtoint ptr %packet.i13 to i32
  call void @__asan_store2_noabort(i32 %117)
  store i16 %116, ptr %packet.i13, align 2
  %118 = ptrtoint ptr %61 to i32
  call void @__asan_loadN_noabort(i32 %118, i32 4)
  %119 = load i32, ptr %61, align 2
  %120 = call i32 @llvm.bswap.i32(i32 %119) #10
  %121 = ptrtoint ptr %61 to i32
  call void @__asan_storeN_noabort(i32 %121, i32 4)
  store i32 %120, ptr %61, align 2
  %122 = ptrtoint ptr %62 to i32
  call void @__asan_loadN_noabort(i32 %122, i32 4)
  %123 = load i32, ptr %62, align 2
  %124 = call i32 @llvm.bswap.i32(i32 %123) #10
  %125 = ptrtoint ptr %62 to i32
  call void @__asan_storeN_noabort(i32 %125, i32 4)
  store i32 %124, ptr %62, align 2
  %call7.i29.i = call fastcc i32 @sisusb_send_bulk_msg(ptr noundef %sisusb, i32 noundef 14, i32 noundef 10, ptr noundef nonnull %packet.i13, ptr noundef null, i32 noundef 0, ptr noundef nonnull %bytes_transferred.i23.i, i32 noundef 0) #10
  br label %sisusb_send_packet.exit33.i

sisusb_send_packet.exit33.i:                      ; preds = %do.body.i31.i, %sisusb_send_packet.exit22.i.sisusb_send_packet.exit33.i_crit_edge
  %retval.0.i32.i = phi i32 [ 1, %sisusb_send_packet.exit22.i.sisusb_send_packet.exit33.i_crit_edge ], [ %call7.i29.i, %do.body.i31.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bytes_transferred.i23.i) #10
  %or29.i = or i32 %retval.0.i32.i, %retval.0.i21.i
  br label %sisusb_write_memio_24bit.exit

sw.bb30.i:                                        ; preds = %if.end70
  %126 = ptrtoint ptr %packet.i13 to i32
  call void @__asan_store2_noabort(i32 %126)
  store i16 8, ptr %packet.i13, align 2
  %shl35.i = shl i32 %or69, 24
  %127 = ptrtoint ptr %62 to i32
  call void @__asan_storeN_noabort(i32 %127, i32 4)
  store i32 %shl35.i, ptr %62, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bytes_transferred.i34.i) #10
  %128 = ptrtoint ptr %bytes_transferred.i34.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 0, ptr %bytes_transferred.i34.i, align 4
  %call.i36.i = call fastcc i32 @sisusb_wait_all_out_complete(ptr noundef %sisusb) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i36.i)
  %tobool.not.i37.i = icmp eq i32 %call.i36.i, 0
  br i1 %tobool.not.i37.i, label %sw.bb30.i.sisusb_send_packet.exit44.i_crit_edge, label %do.body.i42.i

sw.bb30.i.sisusb_send_packet.exit44.i_crit_edge:  ; preds = %sw.bb30.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sisusb_send_packet.exit44.i

do.body.i42.i:                                    ; preds = %sw.bb30.i
  call void @__sanitizer_cov_trace_pc() #12
  %129 = ptrtoint ptr %packet.i13 to i32
  call void @__asan_load2_noabort(i32 %129)
  %130 = load i16, ptr %packet.i13, align 2
  %131 = call i16 @llvm.bswap.i16(i16 %130) #10
  %132 = ptrtoint ptr %packet.i13 to i32
  call void @__asan_store2_noabort(i32 %132)
  store i16 %131, ptr %packet.i13, align 2
  %133 = ptrtoint ptr %61 to i32
  call void @__asan_loadN_noabort(i32 %133, i32 4)
  %134 = load i32, ptr %61, align 2
  %135 = call i32 @llvm.bswap.i32(i32 %134) #10
  %136 = ptrtoint ptr %61 to i32
  call void @__asan_storeN_noabort(i32 %136, i32 4)
  store i32 %135, ptr %61, align 2
  %137 = ptrtoint ptr %62 to i32
  call void @__asan_loadN_noabort(i32 %137, i32 4)
  %138 = load i32, ptr %62, align 2
  %139 = call i32 @llvm.bswap.i32(i32 %138) #10
  %140 = ptrtoint ptr %62 to i32
  call void @__asan_storeN_noabort(i32 %140, i32 4)
  store i32 %139, ptr %62, align 2
  %call7.i40.i = call fastcc i32 @sisusb_send_bulk_msg(ptr noundef %sisusb, i32 noundef 14, i32 noundef 10, ptr noundef nonnull %packet.i13, ptr noundef null, i32 noundef 0, ptr noundef nonnull %bytes_transferred.i34.i, i32 noundef 0) #10
  br label %sisusb_send_packet.exit44.i

sisusb_send_packet.exit44.i:                      ; preds = %do.body.i42.i, %sw.bb30.i.sisusb_send_packet.exit44.i_crit_edge
  %retval.0.i43.i = phi i32 [ 1, %sw.bb30.i.sisusb_send_packet.exit44.i_crit_edge ], [ %call7.i40.i, %do.body.i42.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bytes_transferred.i34.i) #10
  %141 = ptrtoint ptr %packet.i13 to i32
  call void @__asan_store2_noabort(i32 %141)
  store i16 3, ptr %packet.i13, align 2
  %add43.i = add i32 %and.i14, 4
  %142 = ptrtoint ptr %61 to i32
  call void @__asan_storeN_noabort(i32 %142, i32 4)
  store i32 %add43.i, ptr %61, align 2
  %shr45.i = lshr i32 %or66.sink, 8
  %and46.i = and i32 %shr45.i, 65535
  %143 = ptrtoint ptr %62 to i32
  call void @__asan_storeN_noabort(i32 %143, i32 4)
  store i32 %and46.i, ptr %62, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bytes_transferred.i45.i) #10
  %144 = ptrtoint ptr %bytes_transferred.i45.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 0, ptr %bytes_transferred.i45.i, align 4
  %call.i47.i = call fastcc i32 @sisusb_wait_all_out_complete(ptr noundef %sisusb) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i47.i)
  %tobool.not.i48.i = icmp eq i32 %call.i47.i, 0
  br i1 %tobool.not.i48.i, label %sisusb_send_packet.exit44.i.sisusb_send_packet.exit55.i_crit_edge, label %do.body.i53.i

sisusb_send_packet.exit44.i.sisusb_send_packet.exit55.i_crit_edge: ; preds = %sisusb_send_packet.exit44.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sisusb_send_packet.exit55.i

do.body.i53.i:                                    ; preds = %sisusb_send_packet.exit44.i
  call void @__sanitizer_cov_trace_pc() #12
  %145 = ptrtoint ptr %packet.i13 to i32
  call void @__asan_load2_noabort(i32 %145)
  %146 = load i16, ptr %packet.i13, align 2
  %147 = call i16 @llvm.bswap.i16(i16 %146) #10
  %148 = ptrtoint ptr %packet.i13 to i32
  call void @__asan_store2_noabort(i32 %148)
  store i16 %147, ptr %packet.i13, align 2
  %149 = ptrtoint ptr %61 to i32
  call void @__asan_loadN_noabort(i32 %149, i32 4)
  %150 = load i32, ptr %61, align 2
  %151 = call i32 @llvm.bswap.i32(i32 %150) #10
  %152 = ptrtoint ptr %61 to i32
  call void @__asan_storeN_noabort(i32 %152, i32 4)
  store i32 %151, ptr %61, align 2
  %153 = ptrtoint ptr %62 to i32
  call void @__asan_loadN_noabort(i32 %153, i32 4)
  %154 = load i32, ptr %62, align 2
  %155 = call i32 @llvm.bswap.i32(i32 %154) #10
  %156 = ptrtoint ptr %62 to i32
  call void @__asan_storeN_noabort(i32 %156, i32 4)
  store i32 %155, ptr %62, align 2
  %call7.i51.i = call fastcc i32 @sisusb_send_bulk_msg(ptr noundef %sisusb, i32 noundef 14, i32 noundef 10, ptr noundef nonnull %packet.i13, ptr noundef null, i32 noundef 0, ptr noundef nonnull %bytes_transferred.i45.i, i32 noundef 0) #10
  br label %sisusb_send_packet.exit55.i

sisusb_send_packet.exit55.i:                      ; preds = %do.body.i53.i, %sisusb_send_packet.exit44.i.sisusb_send_packet.exit55.i_crit_edge
  %retval.0.i54.i = phi i32 [ 1, %sisusb_send_packet.exit44.i.sisusb_send_packet.exit55.i_crit_edge ], [ %call7.i51.i, %do.body.i53.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bytes_transferred.i45.i) #10
  %or49.i = or i32 %retval.0.i54.i, %retval.0.i43.i
  br label %sisusb_write_memio_24bit.exit

entry.unreachabledefault.i:                       ; preds = %if.end70
  unreachable

sisusb_write_memio_24bit.exit:                    ; preds = %sisusb_send_packet.exit55.i, %sisusb_send_packet.exit33.i, %sisusb_send_packet.exit11.i, %sisusb_send_packet.exit.i
  %ret.0.i = phi i32 [ %or49.i, %sisusb_send_packet.exit55.i ], [ %or29.i, %sisusb_send_packet.exit33.i ], [ %retval.0.i10.i, %sisusb_send_packet.exit11.i ], [ %retval.0.i.i20, %sisusb_send_packet.exit.i ]
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %packet.i13) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %tobool72.not = icmp eq i32 %ret.0.i, 0
  br i1 %tobool72.not, label %if.then73, label %sisusb_write_memio_24bit.exit.cleanup_crit_edge

sisusb_write_memio_24bit.exit.cleanup_crit_edge:  ; preds = %sisusb_write_memio_24bit.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then73:                                        ; preds = %sisusb_write_memio_24bit.exit
  call void @__sanitizer_cov_trace_pc() #12
  %157 = ptrtoint ptr %bytes_written to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %bytes_written, align 4
  %add74 = add i32 %158, 3
  store i32 %add74, ptr %bytes_written, align 4
  br label %cleanup

sw.bb76:                                          ; preds = %while.cond
  %tobool77.not = icmp eq ptr %userbuffer.addr.0, null
  br i1 %tobool77.not, label %if.else94, label %if.then78

if.then78:                                        ; preds = %sw.bb76
  call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 842) #10
  %159 = call i32 @llvm.read_register.i32(metadata !134) #10
  %and.i.i.i6 = and i32 %159, -16384
  %160 = inttoptr i32 %and.i.i.i6 to ptr
  %cpu_domain.i.i7 = getelementptr inbounds %struct.thread_info, ptr %160, i32 0, i32 4
  %161 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i7) #5, !srcloc !147
  %and.i8 = and i32 %161, -13
  %or.i9 = or i32 %and.i8, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i9) #10, !srcloc !148
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !149
  %162 = call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr nonnull %userbuffer.addr.0, i32 -1226833921) #10, !srcloc !170
  %asmresult88 = extractvalue { i32, i32 } %162, 0
  %asmresult89 = extractvalue { i32, i32 } %162, 1
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %161) #10, !srcloc !148
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !149
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult88)
  %tobool91.not = icmp eq i32 %asmresult88, 0
  br i1 %tobool91.not, label %if.then78.if.end95_crit_edge, label %if.then78.cleanup_crit_edge

if.then78.cleanup_crit_edge:                      ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then78.if.end95_crit_edge:                     ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end95

if.else94:                                        ; preds = %sw.bb76
  call void @__sanitizer_cov_trace_pc() #12
  %163 = ptrtoint ptr %kernbuffer.addr.1 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %kernbuffer.addr.1, align 4
  br label %if.end95

if.end95:                                         ; preds = %if.else94, %if.then78.if.end95_crit_edge
  %swap32.1 = phi i32 [ %asmresult89, %if.then78.if.end95_crit_edge ], [ %164, %if.else94 ]
  %call96 = call fastcc i32 @sisusb_write_memio_long(ptr noundef %sisusb, i32 noundef 0, i32 noundef %addr.addr.0, i32 noundef %swap32.1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call96)
  %tobool97.not = icmp eq i32 %call96, 0
  br i1 %tobool97.not, label %if.then98, label %if.end95.cleanup_crit_edge

if.end95.cleanup_crit_edge:                       ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then98:                                        ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #12
  %165 = ptrtoint ptr %bytes_written to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %bytes_written, align 4
  %add99 = add i32 %166, 4
  store i32 %add99, ptr %bytes_written, align 4
  br label %cleanup

sw.default:                                       ; preds = %while.cond
  %and101 = and i32 %length.addr.0, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %and101)
  %cmp = icmp sgt i32 %and101, 65536
  %167 = ptrtoint ptr %packet to i32
  call void @__asan_store2_noabort(i32 %167)
  store i16 31, ptr %packet, align 2
  br i1 %cmp, label %if.then103, label %if.else137

if.then103:                                       ; preds = %sw.default
  %168 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %168, i32 4)
  store i32 468, ptr %1, align 2
  %169 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %169, i32 4)
  store i32 %addr.addr.0, ptr %3, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bytes_transferred.i) #10
  %170 = ptrtoint ptr %bytes_transferred.i to i32
  call void @__asan_store4_noabort(i32 %170)
  store i32 0, ptr %bytes_transferred.i, align 4
  %call.i = call fastcc i32 @sisusb_wait_all_out_complete(ptr noundef %sisusb) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then103.sisusb_send_bridge_packet.exit_crit_edge, label %do.body.i

if.then103.sisusb_send_bridge_packet.exit_crit_edge: ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #12
  br label %sisusb_send_bridge_packet.exit

do.body.i:                                        ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #12
  %171 = ptrtoint ptr %packet to i32
  call void @__asan_load2_noabort(i32 %171)
  %172 = load i16, ptr %packet, align 2
  %173 = call i16 @llvm.bswap.i16(i16 %172) #10
  %174 = ptrtoint ptr %packet to i32
  call void @__asan_store2_noabort(i32 %174)
  store i16 %173, ptr %packet, align 2
  %175 = ptrtoint ptr %1 to i32
  call void @__asan_loadN_noabort(i32 %175, i32 4)
  %176 = load i32, ptr %1, align 2
  %177 = call i32 @llvm.bswap.i32(i32 %176) #10
  %178 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %178, i32 4)
  store i32 %177, ptr %1, align 2
  %179 = ptrtoint ptr %3 to i32
  call void @__asan_loadN_noabort(i32 %179, i32 4)
  %180 = load i32, ptr %3, align 2
  %181 = call i32 @llvm.bswap.i32(i32 %180) #10
  %182 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %182, i32 4)
  store i32 %181, ptr %3, align 2
  %call7.i = call fastcc i32 @sisusb_send_bulk_msg(ptr noundef %sisusb, i32 noundef 13, i32 noundef 10, ptr noundef nonnull %packet, ptr noundef null, i32 noundef 0, ptr noundef nonnull %bytes_transferred.i, i32 noundef 0) #10
  br label %sisusb_send_bridge_packet.exit

sisusb_send_bridge_packet.exit:                   ; preds = %do.body.i, %if.then103.sisusb_send_bridge_packet.exit_crit_edge
  %retval.0.i = phi i32 [ 1, %if.then103.sisusb_send_bridge_packet.exit_crit_edge ], [ %call7.i, %do.body.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bytes_transferred.i) #10
  %183 = ptrtoint ptr %packet to i32
  call void @__asan_store2_noabort(i32 %183)
  store i16 31, ptr %packet, align 2
  %184 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %184, i32 4)
  store i32 464, ptr %1, align 2
  %185 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %185, i32 4)
  store i32 %and101, ptr %3, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bytes_transferred.i21) #10
  %186 = ptrtoint ptr %bytes_transferred.i21 to i32
  call void @__asan_store4_noabort(i32 %186)
  store i32 0, ptr %bytes_transferred.i21, align 4
  %call.i23 = call fastcc i32 @sisusb_wait_all_out_complete(ptr noundef %sisusb) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i23)
  %tobool.not.i24 = icmp eq i32 %call.i23, 0
  br i1 %tobool.not.i24, label %sisusb_send_bridge_packet.exit.sisusb_send_bridge_packet.exit31_crit_edge, label %do.body.i29

sisusb_send_bridge_packet.exit.sisusb_send_bridge_packet.exit31_crit_edge: ; preds = %sisusb_send_bridge_packet.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sisusb_send_bridge_packet.exit31

do.body.i29:                                      ; preds = %sisusb_send_bridge_packet.exit
  call void @__sanitizer_cov_trace_pc() #12
  %187 = ptrtoint ptr %packet to i32
  call void @__asan_load2_noabort(i32 %187)
  %188 = load i16, ptr %packet, align 2
  %189 = call i16 @llvm.bswap.i16(i16 %188) #10
  %190 = ptrtoint ptr %packet to i32
  call void @__asan_store2_noabort(i32 %190)
  store i16 %189, ptr %packet, align 2
  %191 = ptrtoint ptr %1 to i32
  call void @__asan_loadN_noabort(i32 %191, i32 4)
  %192 = load i32, ptr %1, align 2
  %193 = call i32 @llvm.bswap.i32(i32 %192) #10
  %194 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %194, i32 4)
  store i32 %193, ptr %1, align 2
  %195 = ptrtoint ptr %3 to i32
  call void @__asan_loadN_noabort(i32 %195, i32 4)
  %196 = load i32, ptr %3, align 2
  %197 = call i32 @llvm.bswap.i32(i32 %196) #10
  %198 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %198, i32 4)
  store i32 %197, ptr %3, align 2
  %call7.i27 = call fastcc i32 @sisusb_send_bulk_msg(ptr noundef %sisusb, i32 noundef 13, i32 noundef 10, ptr noundef nonnull %packet, ptr noundef null, i32 noundef 0, ptr noundef nonnull %bytes_transferred.i21, i32 noundef 0) #10
  br label %sisusb_send_bridge_packet.exit31

sisusb_send_bridge_packet.exit31:                 ; preds = %do.body.i29, %sisusb_send_bridge_packet.exit.sisusb_send_bridge_packet.exit31_crit_edge
  %retval.0.i30 = phi i32 [ 1, %sisusb_send_bridge_packet.exit.sisusb_send_bridge_packet.exit31_crit_edge ], [ %call7.i27, %do.body.i29 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bytes_transferred.i21) #10
  %or110 = or i32 %retval.0.i30, %retval.0.i
  %199 = ptrtoint ptr %packet to i32
  call void @__asan_store2_noabort(i32 %199)
  store i16 31, ptr %packet, align 2
  %200 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %200, i32 4)
  store i32 448, ptr %1, align 2
  %201 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %201, i32 4)
  store i32 %or153, ptr %3, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bytes_transferred.i32) #10
  %202 = ptrtoint ptr %bytes_transferred.i32 to i32
  call void @__asan_store4_noabort(i32 %202)
  store i32 0, ptr %bytes_transferred.i32, align 4
  %call.i34 = call fastcc i32 @sisusb_wait_all_out_complete(ptr noundef %sisusb) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i34)
  %tobool.not.i35 = icmp eq i32 %call.i34, 0
  br i1 %tobool.not.i35, label %sisusb_send_bridge_packet.exit31.sisusb_send_bridge_packet.exit42_crit_edge, label %do.body.i40

sisusb_send_bridge_packet.exit31.sisusb_send_bridge_packet.exit42_crit_edge: ; preds = %sisusb_send_bridge_packet.exit31
  call void @__sanitizer_cov_trace_pc() #12
  br label %sisusb_send_bridge_packet.exit42

do.body.i40:                                      ; preds = %sisusb_send_bridge_packet.exit31
  call void @__sanitizer_cov_trace_pc() #12
  %203 = ptrtoint ptr %packet to i32
  call void @__asan_load2_noabort(i32 %203)
  %204 = load i16, ptr %packet, align 2
  %205 = call i16 @llvm.bswap.i16(i16 %204) #10
  %206 = ptrtoint ptr %packet to i32
  call void @__asan_store2_noabort(i32 %206)
  store i16 %205, ptr %packet, align 2
  %207 = ptrtoint ptr %1 to i32
  call void @__asan_loadN_noabort(i32 %207, i32 4)
  %208 = load i32, ptr %1, align 2
  %209 = call i32 @llvm.bswap.i32(i32 %208) #10
  %210 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %210, i32 4)
  store i32 %209, ptr %1, align 2
  %211 = ptrtoint ptr %3 to i32
  call void @__asan_loadN_noabort(i32 %211, i32 4)
  %212 = load i32, ptr %3, align 2
  %213 = call i32 @llvm.bswap.i32(i32 %212) #10
  %214 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %214, i32 4)
  store i32 %213, ptr %3, align 2
  %call7.i38 = call fastcc i32 @sisusb_send_bulk_msg(ptr noundef %sisusb, i32 noundef 13, i32 noundef 10, ptr noundef nonnull %packet, ptr noundef null, i32 noundef 0, ptr noundef nonnull %bytes_transferred.i32, i32 noundef 0) #10
  br label %sisusb_send_bridge_packet.exit42

sisusb_send_bridge_packet.exit42:                 ; preds = %do.body.i40, %sisusb_send_bridge_packet.exit31.sisusb_send_bridge_packet.exit42_crit_edge
  %retval.0.i41 = phi i32 [ 1, %sisusb_send_bridge_packet.exit31.sisusb_send_bridge_packet.exit42_crit_edge ], [ %call7.i38, %do.body.i40 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bytes_transferred.i32) #10
  %or116 = or i32 %or110, %retval.0.i41
  %tobool117.not = icmp eq ptr %userbuffer.addr.0, null
  br i1 %tobool117.not, label %if.else129, label %if.then118

if.then118:                                       ; preds = %sisusb_send_bridge_packet.exit42
  call void @__sanitizer_cov_trace_pc() #12
  %call120 = call fastcc i32 @sisusb_send_bulk_msg(ptr noundef %sisusb, i32 noundef 3, i32 noundef %and101, ptr noundef null, ptr noundef nonnull %userbuffer.addr.0, i32 noundef 0, ptr noundef %bytes_written, i32 noundef 1)
  %or121 = or i32 %call120, %or116
  %215 = ptrtoint ptr %bytes_written to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %bytes_written, align 4
  %add.ptr = getelementptr i8, ptr %userbuffer.addr.0, i32 %216
  br label %if.end182

if.else129:                                       ; preds = %sisusb_send_bridge_packet.exit42
  call void @__sanitizer_cov_trace_pc() #12
  %call131 = call fastcc i32 @sisusb_send_bulk_msg(ptr noundef %sisusb, i32 noundef 3, i32 noundef %and101, ptr noundef null, ptr noundef null, i32 noundef %index, ptr noundef %bytes_written, i32 noundef 1)
  %or132 = or i32 %call131, %or116
  %217 = ptrtoint ptr %bytes_written to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %bytes_written, align 4
  %219 = ptrtoint ptr %obufsize176 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %obufsize176, align 4
  %sub = add i32 %220, -1
  %and133 = and i32 %sub, %218
  %add.ptr134 = getelementptr i8, ptr %kernbuffer.addr.1, i32 %and133
  br label %if.end182

if.else137:                                       ; preds = %sw.default
  %221 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %221, i32 4)
  store i32 404, ptr %1, align 2
  %222 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %222, i32 4)
  store i32 %addr.addr.0, ptr %3, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bytes_transferred.i43) #10
  %223 = ptrtoint ptr %bytes_transferred.i43 to i32
  call void @__asan_store4_noabort(i32 %223)
  store i32 0, ptr %bytes_transferred.i43, align 4
  %call.i45 = call fastcc i32 @sisusb_wait_all_out_complete(ptr noundef %sisusb) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i45)
  %tobool.not.i46 = icmp eq i32 %call.i45, 0
  br i1 %tobool.not.i46, label %if.else137.sisusb_send_bridge_packet.exit53_crit_edge, label %do.body.i51

if.else137.sisusb_send_bridge_packet.exit53_crit_edge: ; preds = %if.else137
  call void @__sanitizer_cov_trace_pc() #12
  br label %sisusb_send_bridge_packet.exit53

do.body.i51:                                      ; preds = %if.else137
  call void @__sanitizer_cov_trace_pc() #12
  %224 = ptrtoint ptr %packet to i32
  call void @__asan_load2_noabort(i32 %224)
  %225 = load i16, ptr %packet, align 2
  %226 = call i16 @llvm.bswap.i16(i16 %225) #10
  %227 = ptrtoint ptr %packet to i32
  call void @__asan_store2_noabort(i32 %227)
  store i16 %226, ptr %packet, align 2
  %228 = ptrtoint ptr %1 to i32
  call void @__asan_loadN_noabort(i32 %228, i32 4)
  %229 = load i32, ptr %1, align 2
  %230 = call i32 @llvm.bswap.i32(i32 %229) #10
  %231 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %231, i32 4)
  store i32 %230, ptr %1, align 2
  %232 = ptrtoint ptr %3 to i32
  call void @__asan_loadN_noabort(i32 %232, i32 4)
  %233 = load i32, ptr %3, align 2
  %234 = call i32 @llvm.bswap.i32(i32 %233) #10
  %235 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %235, i32 4)
  store i32 %234, ptr %3, align 2
  %call7.i49 = call fastcc i32 @sisusb_send_bulk_msg(ptr noundef %sisusb, i32 noundef 13, i32 noundef 10, ptr noundef nonnull %packet, ptr noundef null, i32 noundef 0, ptr noundef nonnull %bytes_transferred.i43, i32 noundef 0) #10
  br label %sisusb_send_bridge_packet.exit53

sisusb_send_bridge_packet.exit53:                 ; preds = %do.body.i51, %if.else137.sisusb_send_bridge_packet.exit53_crit_edge
  %retval.0.i52 = phi i32 [ 1, %if.else137.sisusb_send_bridge_packet.exit53_crit_edge ], [ %call7.i49, %do.body.i51 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bytes_transferred.i43) #10
  %236 = ptrtoint ptr %packet to i32
  call void @__asan_store2_noabort(i32 %236)
  store i16 31, ptr %packet, align 2
  %237 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %237, i32 4)
  store i32 400, ptr %1, align 2
  %238 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %238, i32 4)
  store i32 %and101, ptr %3, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bytes_transferred.i54) #10
  %239 = ptrtoint ptr %bytes_transferred.i54 to i32
  call void @__asan_store4_noabort(i32 %239)
  store i32 0, ptr %bytes_transferred.i54, align 4
  %call.i56 = call fastcc i32 @sisusb_wait_all_out_complete(ptr noundef %sisusb) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i56)
  %tobool.not.i57 = icmp eq i32 %call.i56, 0
  br i1 %tobool.not.i57, label %sisusb_send_bridge_packet.exit53.sisusb_send_bridge_packet.exit64_crit_edge, label %do.body.i62

sisusb_send_bridge_packet.exit53.sisusb_send_bridge_packet.exit64_crit_edge: ; preds = %sisusb_send_bridge_packet.exit53
  call void @__sanitizer_cov_trace_pc() #12
  br label %sisusb_send_bridge_packet.exit64

do.body.i62:                                      ; preds = %sisusb_send_bridge_packet.exit53
  call void @__sanitizer_cov_trace_pc() #12
  %240 = ptrtoint ptr %packet to i32
  call void @__asan_load2_noabort(i32 %240)
  %241 = load i16, ptr %packet, align 2
  %242 = call i16 @llvm.bswap.i16(i16 %241) #10
  %243 = ptrtoint ptr %packet to i32
  call void @__asan_store2_noabort(i32 %243)
  store i16 %242, ptr %packet, align 2
  %244 = ptrtoint ptr %1 to i32
  call void @__asan_loadN_noabort(i32 %244, i32 4)
  %245 = load i32, ptr %1, align 2
  %246 = call i32 @llvm.bswap.i32(i32 %245) #10
  %247 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %247, i32 4)
  store i32 %246, ptr %1, align 2
  %248 = ptrtoint ptr %3 to i32
  call void @__asan_loadN_noabort(i32 %248, i32 4)
  %249 = load i32, ptr %3, align 2
  %250 = call i32 @llvm.bswap.i32(i32 %249) #10
  %251 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %251, i32 4)
  store i32 %250, ptr %3, align 2
  %call7.i60 = call fastcc i32 @sisusb_send_bulk_msg(ptr noundef %sisusb, i32 noundef 13, i32 noundef 10, ptr noundef nonnull %packet, ptr noundef null, i32 noundef 0, ptr noundef nonnull %bytes_transferred.i54, i32 noundef 0) #10
  br label %sisusb_send_bridge_packet.exit64

sisusb_send_bridge_packet.exit64:                 ; preds = %do.body.i62, %sisusb_send_bridge_packet.exit53.sisusb_send_bridge_packet.exit64_crit_edge
  %retval.0.i63 = phi i32 [ 1, %sisusb_send_bridge_packet.exit53.sisusb_send_bridge_packet.exit64_crit_edge ], [ %call7.i60, %do.body.i62 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bytes_transferred.i54) #10
  %or147 = or i32 %retval.0.i63, %retval.0.i52
  %252 = ptrtoint ptr %flagb0 to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %flagb0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 22, i32 %253)
  %cmp148.not = icmp eq i32 %253, 22
  br i1 %cmp148.not, label %sisusb_send_bridge_packet.exit64.if.end158_crit_edge, label %if.then150

sisusb_send_bridge_packet.exit64.if.end158_crit_edge: ; preds = %sisusb_send_bridge_packet.exit64
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end158

if.then150:                                       ; preds = %sisusb_send_bridge_packet.exit64
  %254 = ptrtoint ptr %packet to i32
  call void @__asan_store2_noabort(i32 %254)
  store i16 31, ptr %packet, align 2
  %255 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %255, i32 4)
  store i32 384, ptr %1, align 2
  %256 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %256, i32 4)
  store i32 %or153, ptr %3, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bytes_transferred.i65) #10
  %257 = ptrtoint ptr %bytes_transferred.i65 to i32
  call void @__asan_store4_noabort(i32 %257)
  store i32 0, ptr %bytes_transferred.i65, align 4
  %call.i67 = call fastcc i32 @sisusb_wait_all_out_complete(ptr noundef %sisusb) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i67)
  %tobool.not.i68 = icmp eq i32 %call.i67, 0
  br i1 %tobool.not.i68, label %if.then150.sisusb_send_bridge_packet.exit75_crit_edge, label %do.body.i73

if.then150.sisusb_send_bridge_packet.exit75_crit_edge: ; preds = %if.then150
  call void @__sanitizer_cov_trace_pc() #12
  br label %sisusb_send_bridge_packet.exit75

do.body.i73:                                      ; preds = %if.then150
  call void @__sanitizer_cov_trace_pc() #12
  %258 = ptrtoint ptr %packet to i32
  call void @__asan_load2_noabort(i32 %258)
  %259 = load i16, ptr %packet, align 2
  %260 = call i16 @llvm.bswap.i16(i16 %259) #10
  %261 = ptrtoint ptr %packet to i32
  call void @__asan_store2_noabort(i32 %261)
  store i16 %260, ptr %packet, align 2
  %262 = ptrtoint ptr %1 to i32
  call void @__asan_loadN_noabort(i32 %262, i32 4)
  %263 = load i32, ptr %1, align 2
  %264 = call i32 @llvm.bswap.i32(i32 %263) #10
  %265 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %265, i32 4)
  store i32 %264, ptr %1, align 2
  %266 = ptrtoint ptr %3 to i32
  call void @__asan_loadN_noabort(i32 %266, i32 4)
  %267 = load i32, ptr %3, align 2
  %268 = call i32 @llvm.bswap.i32(i32 %267) #10
  %269 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %269, i32 4)
  store i32 %268, ptr %3, align 2
  %call7.i71 = call fastcc i32 @sisusb_send_bulk_msg(ptr noundef %sisusb, i32 noundef 13, i32 noundef 10, ptr noundef nonnull %packet, ptr noundef null, i32 noundef 0, ptr noundef nonnull %bytes_transferred.i65, i32 noundef 0) #10
  br label %sisusb_send_bridge_packet.exit75

sisusb_send_bridge_packet.exit75:                 ; preds = %do.body.i73, %if.then150.sisusb_send_bridge_packet.exit75_crit_edge
  %retval.0.i74 = phi i32 [ 1, %if.then150.sisusb_send_bridge_packet.exit75_crit_edge ], [ %call7.i71, %do.body.i73 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bytes_transferred.i65) #10
  %or156 = or i32 %retval.0.i74, %or147
  %270 = ptrtoint ptr %flagb0 to i32
  call void @__asan_store4_noabort(i32 %270)
  store i32 22, ptr %flagb0, align 4
  br label %if.end158

if.end158:                                        ; preds = %sisusb_send_bridge_packet.exit75, %sisusb_send_bridge_packet.exit64.if.end158_crit_edge
  %ret.1 = phi i32 [ %or156, %sisusb_send_bridge_packet.exit75 ], [ %or147, %sisusb_send_bridge_packet.exit64.if.end158_crit_edge ]
  %tobool159.not = icmp eq ptr %userbuffer.addr.0, null
  br i1 %tobool159.not, label %if.else172, label %if.then160

if.then160:                                       ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #12
  %call162 = call fastcc i32 @sisusb_send_bulk_msg(ptr noundef %sisusb, i32 noundef 1, i32 noundef %and101, ptr noundef null, ptr noundef nonnull %userbuffer.addr.0, i32 noundef 0, ptr noundef %bytes_written, i32 noundef 1)
  %or163 = or i32 %call162, %ret.1
  %271 = ptrtoint ptr %bytes_written to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load i32, ptr %bytes_written, align 4
  %add.ptr164 = getelementptr i8, ptr %userbuffer.addr.0, i32 %272
  br label %if.end182

if.else172:                                       ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #12
  %call174 = call fastcc i32 @sisusb_send_bulk_msg(ptr noundef %sisusb, i32 noundef 1, i32 noundef %and101, ptr noundef null, ptr noundef null, i32 noundef %index, ptr noundef %bytes_written, i32 noundef 1)
  %or175 = or i32 %call174, %ret.1
  %273 = ptrtoint ptr %bytes_written to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load i32, ptr %bytes_written, align 4
  %275 = ptrtoint ptr %obufsize176 to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load i32, ptr %obufsize176, align 4
  %sub177 = add i32 %276, -1
  %and178 = and i32 %sub177, %274
  %add.ptr179 = getelementptr i8, ptr %kernbuffer.addr.1, i32 %and178
  br label %if.end182

if.end182:                                        ; preds = %if.else172, %if.then160, %if.else129, %if.then118
  %ret.2 = phi i32 [ %or121, %if.then118 ], [ %or132, %if.else129 ], [ %or163, %if.then160 ], [ %or175, %if.else172 ]
  %userbuffer.addr.1 = phi ptr [ %add.ptr, %if.then118 ], [ null, %if.else129 ], [ %add.ptr164, %if.then160 ], [ null, %if.else172 ]
  %kernbuffer.addr.2 = phi ptr [ %kernbuffer.addr.1, %if.then118 ], [ %add.ptr134, %if.else129 ], [ %kernbuffer.addr.1, %if.then160 ], [ %add.ptr179, %if.else172 ]
  %tobool183.not = icmp eq i32 %ret.2, 0
  br i1 %tobool183.not, label %if.end200, label %if.then184

if.then184:                                       ; preds = %if.end182
  %277 = load i32, ptr @sisusb_write_mem_bulk.msgcount, align 4
  %inc185 = add i32 %277, 1
  store i32 %inc185, ptr @sisusb_write_mem_bulk.msgcount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 500, i32 %inc185)
  %cmp186 = icmp slt i32 %inc185, 500
  br i1 %cmp186, label %do.end, label %if.else189

do.end:                                           ; preds = %if.then184
  call void @__sanitizer_cov_trace_pc() #12
  %278 = ptrtoint ptr %sisusb to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %sisusb, align 4
  %dev = getelementptr inbounds %struct.usb_device, ptr %279, i32 0, i32 15
  %280 = ptrtoint ptr %bytes_written to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load i32, ptr %bytes_written, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.26, i32 noundef %281, i32 noundef %length.addr.0, i32 noundef %ret.2) #14
  br label %cleanup

if.else189:                                       ; preds = %if.then184
  call void @__sanitizer_cov_trace_const_cmp4(i32 500, i32 %inc185)
  %cmp190 = icmp eq i32 %inc185, 500
  br i1 %cmp190, label %do.end195, label %if.else189.cleanup_crit_edge

if.else189.cleanup_crit_edge:                     ; preds = %if.else189
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end195:                                        ; preds = %if.else189
  call void @__sanitizer_cov_trace_pc() #12
  %282 = ptrtoint ptr %sisusb to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %sisusb, align 4
  %dev197 = getelementptr inbounds %struct.usb_device, ptr %283, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev197, ptr noundef nonnull @.str.29) #14
  br label %cleanup

if.end200:                                        ; preds = %if.end182
  call void @__sanitizer_cov_trace_pc() #12
  %284 = ptrtoint ptr %bytes_written to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load i32, ptr %bytes_written, align 4
  %add201 = add i32 %285, %addr.addr.0
  %sub202 = sub i32 %length.addr.0, %285
  br label %while.cond

cleanup:                                          ; preds = %do.end195, %if.else189.cleanup_crit_edge, %do.end, %if.then98, %if.end95.cleanup_crit_edge, %if.then78.cleanup_crit_edge, %if.then73, %sisusb_write_memio_24bit.exit.cleanup_crit_edge, %if.then11.i.i, %if.then42, %if.end39.cleanup_crit_edge, %if.then21.cleanup_crit_edge, %if.then17, %sisusb_write_memio_byte.exit.cleanup_crit_edge, %sisusb_write_memio_byte.exit.thread, %if.then6.cleanup_crit_edge, %while.cond.cleanup_crit_edge
  %retval.0 = phi i32 [ -14, %if.then6.cleanup_crit_edge ], [ 0, %if.then17 ], [ %call7.i.i, %sisusb_write_memio_byte.exit.cleanup_crit_edge ], [ -14, %if.then21.cleanup_crit_edge ], [ 0, %if.then42 ], [ %call40, %if.end39.cleanup_crit_edge ], [ 0, %if.then73 ], [ %ret.0.i, %sisusb_write_memio_24bit.exit.cleanup_crit_edge ], [ -14, %if.then78.cleanup_crit_edge ], [ 0, %if.then98 ], [ %call96, %if.end95.cleanup_crit_edge ], [ 1, %sisusb_write_memio_byte.exit.thread ], [ -5, %do.end ], [ -5, %do.end195 ], [ -5, %if.else189.cleanup_crit_edge ], [ -14, %if.then11.i.i ], [ %length.addr.0, %while.cond.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf) #10
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %packet) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sisusb_write_pci_config(ptr noundef %sisusb, i32 noundef %regnum, i32 noundef %data) unnamed_addr #0 align 64 {
entry:
  %bytes_transferred.i = alloca i32, align 4
  %packet = alloca %struct.sisusb_packet, align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %packet) #10
  %0 = getelementptr inbounds %struct.sisusb_packet, ptr %packet, i32 0, i32 1
  %1 = getelementptr inbounds %struct.sisusb_packet, ptr %packet, i32 0, i32 2
  %2 = ptrtoint ptr %packet to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 143, ptr %packet, align 2
  %or = or i32 %regnum, 65536
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_storeN_noabort(i32 %3, i32 4)
  store i32 %or, ptr %0, align 2
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %4, i32 4)
  store i32 %data, ptr %1, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bytes_transferred.i) #10
  %5 = ptrtoint ptr %bytes_transferred.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %bytes_transferred.i, align 4
  %call.i = tail call fastcc i32 @sisusb_wait_all_out_complete(ptr noundef %sisusb) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %entry.sisusb_send_packet.exit_crit_edge, label %do.body.i

entry.sisusb_send_packet.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sisusb_send_packet.exit

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %packet to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %packet, align 2
  %8 = tail call i16 @llvm.bswap.i16(i16 %7) #10
  %9 = ptrtoint ptr %packet to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %8, ptr %packet, align 2
  %10 = ptrtoint ptr %0 to i32
  call void @__asan_loadN_noabort(i32 %10, i32 4)
  %11 = load i32, ptr %0, align 2
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #10
  %13 = ptrtoint ptr %0 to i32
  call void @__asan_storeN_noabort(i32 %13, i32 4)
  store i32 %12, ptr %0, align 2
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %1, align 2
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #10
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %17, i32 4)
  store i32 %16, ptr %1, align 2
  %call7.i = call fastcc i32 @sisusb_send_bulk_msg(ptr noundef %sisusb, i32 noundef 14, i32 noundef 10, ptr noundef nonnull %packet, ptr noundef null, i32 noundef 0, ptr noundef nonnull %bytes_transferred.i, i32 noundef 0) #10
  br label %sisusb_send_packet.exit

sisusb_send_packet.exit:                          ; preds = %do.body.i, %entry.sisusb_send_packet.exit_crit_edge
  %retval.0.i = phi i32 [ 1, %entry.sisusb_send_packet.exit_crit_edge ], [ %call7.i, %do.body.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bytes_transferred.i) #10
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %packet) #10
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sisusb_handle_command(ptr noundef %sisusb, ptr noundef %y, i32 noundef %arg) unnamed_addr #0 align 64 {
entry:
  %j.i = alloca i32, align 4
  %bytes_transferred.i.i22.i = alloca i32, align 4
  %packet.i23.i = alloca %struct.sisusb_packet, align 2
  %bytes_transferred.i.i.i = alloca i32, align 4
  %packet.i.i = alloca %struct.sisusb_packet, align 2
  %tmp.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %devinit = getelementptr inbounds %struct.sisusb_usb_data, ptr %sisusb, i32 0, i32 26
  %0 = ptrtoint ptr %devinit to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %devinit, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %data3 = getelementptr inbounds %struct.sisusb_command, ptr %y, i32 0, i32 4
  %2 = ptrtoint ptr %data3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data3, align 4
  %4 = ptrtoint ptr %y to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %y, align 4
  %6 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.60)
  switch i8 %5, label %sw.default [
    i8 1, label %sw.bb
    i8 2, label %sw.bb9
    i8 3, label %sw.bb13
    i8 4, label %sw.bb17
    i8 5, label %sw.bb21
    i8 6, label %sw.bb25
    i8 7, label %sw.bb30
    i8 8, label %if.end.cleanup_crit_edge
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  %data0 = getelementptr inbounds %struct.sisusb_command, ptr %y, i32 0, i32 1
  %7 = ptrtoint ptr %data0 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %data0, align 1
  %data1 = getelementptr inbounds %struct.sisusb_command, ptr %y, i32 0, i32 2
  %call = tail call i32 @sisusb_getidxreg(ptr noundef %sisusb, i32 noundef %3, i8 noundef zeroext %8, ptr noundef %data1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.then3, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.then3:                                         ; preds = %sw.bb
  %9 = inttoptr i32 %arg to ptr
  tail call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 174) #10
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i, label %if.then3.cleanup_crit_edge, label %if.end.i.i

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i.i:                                       ; preds = %if.then3
  %10 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %9, i32 12, i32 -1226833920) #13, !srcloc !162
  %asmresult.i.i = extractvalue { i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %copy_to_user.exit, label %if.end.i.i.cleanup_crit_edge

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

copy_to_user.exit:                                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %y, i32 noundef 12) #10
  %call.i12.i.i = tail call i32 @arm_copy_to_user(ptr noundef %9, ptr noundef %y, i32 noundef 12) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool5.not = icmp eq i32 %call.i12.i.i, 0
  %spec.select = select i1 %tobool5.not, i32 0, i32 -14
  br label %cleanup

sw.bb9:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %data010 = getelementptr inbounds %struct.sisusb_command, ptr %y, i32 0, i32 1
  %11 = ptrtoint ptr %data010 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %data010, align 1
  %data111 = getelementptr inbounds %struct.sisusb_command, ptr %y, i32 0, i32 2
  %13 = ptrtoint ptr %data111 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %data111, align 2
  %call12 = tail call i32 @sisusb_setidxreg(ptr noundef %sisusb, i32 noundef %3, i8 noundef zeroext %12, i8 noundef zeroext %14)
  br label %sw.epilog

sw.bb13:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %data014 = getelementptr inbounds %struct.sisusb_command, ptr %y, i32 0, i32 1
  %15 = ptrtoint ptr %data014 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %data014, align 1
  %data115 = getelementptr inbounds %struct.sisusb_command, ptr %y, i32 0, i32 2
  %17 = ptrtoint ptr %data115 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %data115, align 2
  %call.i = tail call i32 @sisusb_setidxregandor(ptr noundef %sisusb, i32 noundef %3, i8 noundef zeroext %16, i8 noundef zeroext -1, i8 noundef zeroext %18) #10
  br label %sw.epilog

sw.bb17:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %data018 = getelementptr inbounds %struct.sisusb_command, ptr %y, i32 0, i32 1
  %19 = ptrtoint ptr %data018 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %data018, align 1
  %data119 = getelementptr inbounds %struct.sisusb_command, ptr %y, i32 0, i32 2
  %21 = ptrtoint ptr %data119 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %data119, align 2
  %call.i88 = tail call i32 @sisusb_setidxregandor(ptr noundef %sisusb, i32 noundef %3, i8 noundef zeroext %20, i8 noundef zeroext %22, i8 noundef zeroext 0) #10
  br label %sw.epilog

sw.bb21:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %data022 = getelementptr inbounds %struct.sisusb_command, ptr %y, i32 0, i32 1
  %23 = ptrtoint ptr %data022 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %data022, align 1
  %data123 = getelementptr inbounds %struct.sisusb_command, ptr %y, i32 0, i32 2
  %25 = ptrtoint ptr %data123 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %data123, align 2
  %data2 = getelementptr inbounds %struct.sisusb_command, ptr %y, i32 0, i32 3
  %27 = ptrtoint ptr %data2 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %data2, align 1
  %call24 = tail call i32 @sisusb_setidxregandor(ptr noundef %sisusb, i32 noundef %3, i8 noundef zeroext %24, i8 noundef zeroext %26, i8 noundef zeroext %28)
  br label %sw.epilog

sw.bb25:                                          ; preds = %if.end
  %data026 = getelementptr inbounds %struct.sisusb_command, ptr %y, i32 0, i32 1
  %29 = ptrtoint ptr %data026 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %data026, align 1
  %data127 = getelementptr inbounds %struct.sisusb_command, ptr %y, i32 0, i32 2
  %31 = ptrtoint ptr %data127 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %data127, align 2
  %data228 = getelementptr inbounds %struct.sisusb_command, ptr %y, i32 0, i32 3
  %33 = ptrtoint ptr %data228 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %data228, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i) #10
  %35 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 -1, ptr %tmp.i, align 1, !annotation !144
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %packet.i.i) #10
  %36 = getelementptr inbounds %struct.sisusb_packet, ptr %packet.i.i, i32 0, i32 1
  %37 = getelementptr inbounds %struct.sisusb_packet, ptr %packet.i.i, i32 0, i32 2
  %and.i.i = and i32 %3, 3
  %shl.i.i = shl nuw nsw i32 1, %and.i.i
  %38 = trunc i32 %shl.i.i to i16
  %conv.i.i = or i16 %38, 64
  %39 = ptrtoint ptr %packet.i.i to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %conv.i.i, ptr %packet.i.i, align 2
  %and2.i.i = and i32 %3, -4
  %40 = ptrtoint ptr %36 to i32
  call void @__asan_storeN_noabort(i32 %40, i32 4)
  store i32 %and2.i.i, ptr %36, align 2
  %conv3.i.i = zext i8 %30 to i32
  %shl5.i.i = shl nuw nsw i32 %and.i.i, 3
  %shl6.i.i = shl nuw i32 %conv3.i.i, %shl5.i.i
  %41 = ptrtoint ptr %37 to i32
  call void @__asan_storeN_noabort(i32 %41, i32 4)
  store i32 %shl6.i.i, ptr %37, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bytes_transferred.i.i.i) #10
  %42 = ptrtoint ptr %bytes_transferred.i.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %bytes_transferred.i.i.i, align 4
  %call.i.i.i89 = tail call fastcc i32 @sisusb_wait_all_out_complete(ptr noundef %sisusb) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i89)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i89, 0
  br i1 %tobool.not.i.i.i, label %sw.bb25.sisusb_write_memio_byte.exit.i_crit_edge, label %do.body.i.i.i

sw.bb25.sisusb_write_memio_byte.exit.i_crit_edge: ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #12
  br label %sisusb_write_memio_byte.exit.i

do.body.i.i.i:                                    ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #12
  %43 = ptrtoint ptr %packet.i.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %packet.i.i, align 2
  %45 = tail call i16 @llvm.bswap.i16(i16 %44) #10
  %46 = ptrtoint ptr %packet.i.i to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %45, ptr %packet.i.i, align 2
  %47 = ptrtoint ptr %36 to i32
  call void @__asan_loadN_noabort(i32 %47, i32 4)
  %48 = load i32, ptr %36, align 2
  %49 = tail call i32 @llvm.bswap.i32(i32 %48) #10
  %50 = ptrtoint ptr %36 to i32
  call void @__asan_storeN_noabort(i32 %50, i32 4)
  store i32 %49, ptr %36, align 2
  %51 = ptrtoint ptr %37 to i32
  call void @__asan_loadN_noabort(i32 %51, i32 4)
  %52 = load i32, ptr %37, align 2
  %53 = tail call i32 @llvm.bswap.i32(i32 %52) #10
  %54 = ptrtoint ptr %37 to i32
  call void @__asan_storeN_noabort(i32 %54, i32 4)
  store i32 %53, ptr %37, align 2
  %call7.i.i.i = call fastcc i32 @sisusb_send_bulk_msg(ptr noundef %sisusb, i32 noundef 14, i32 noundef 10, ptr noundef nonnull %packet.i.i, ptr noundef null, i32 noundef 0, ptr noundef nonnull %bytes_transferred.i.i.i, i32 noundef 0) #10
  br label %sisusb_write_memio_byte.exit.i

sisusb_write_memio_byte.exit.i:                   ; preds = %do.body.i.i.i, %sw.bb25.sisusb_write_memio_byte.exit.i_crit_edge
  %retval.0.i.i.i = phi i32 [ 1, %sw.bb25.sisusb_write_memio_byte.exit.i_crit_edge ], [ %call7.i.i.i, %do.body.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bytes_transferred.i.i.i) #10
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %packet.i.i) #10
  %add.i = add i32 %3, 1
  %call1.i = call fastcc i32 @sisusb_read_memio_byte(ptr noundef %sisusb, i32 noundef 1, i32 noundef %add.i, ptr noundef nonnull %tmp.i) #10
  %neg.i = xor i8 %34, -1
  %55 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %tmp.i, align 1
  %and.i = and i8 %56, %neg.i
  %and620.i = and i8 %34, %32
  %or821.i = or i8 %and.i, %and620.i
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %packet.i23.i) #10
  %57 = getelementptr inbounds %struct.sisusb_packet, ptr %packet.i23.i, i32 0, i32 1
  %58 = getelementptr inbounds %struct.sisusb_packet, ptr %packet.i23.i, i32 0, i32 2
  %and.i24.i = and i32 %add.i, 3
  %shl.i25.i = shl nuw nsw i32 1, %and.i24.i
  %59 = trunc i32 %shl.i25.i to i16
  %conv.i27.i = or i16 %59, 64
  %60 = ptrtoint ptr %packet.i23.i to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 %conv.i27.i, ptr %packet.i23.i, align 2
  %and2.i28.i = and i32 %add.i, -4
  %61 = ptrtoint ptr %57 to i32
  call void @__asan_storeN_noabort(i32 %61, i32 4)
  store i32 %and2.i28.i, ptr %57, align 2
  %conv3.i29.i = zext i8 %or821.i to i32
  %shl5.i30.i = shl nuw nsw i32 %and.i24.i, 3
  %shl6.i31.i = shl nuw i32 %conv3.i29.i, %shl5.i30.i
  %62 = ptrtoint ptr %58 to i32
  call void @__asan_storeN_noabort(i32 %62, i32 4)
  store i32 %shl6.i31.i, ptr %58, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bytes_transferred.i.i22.i) #10
  %63 = ptrtoint ptr %bytes_transferred.i.i22.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 0, ptr %bytes_transferred.i.i22.i, align 4
  %call.i.i32.i = call fastcc i32 @sisusb_wait_all_out_complete(ptr noundef %sisusb) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i32.i)
  %tobool.not.i.i33.i = icmp eq i32 %call.i.i32.i, 0
  br i1 %tobool.not.i.i33.i, label %sisusb_write_memio_byte.exit.i.sisusb_setidxregmask.exit_crit_edge, label %do.body.i.i35.i

sisusb_write_memio_byte.exit.i.sisusb_setidxregmask.exit_crit_edge: ; preds = %sisusb_write_memio_byte.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sisusb_setidxregmask.exit

do.body.i.i35.i:                                  ; preds = %sisusb_write_memio_byte.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %64 = ptrtoint ptr %packet.i23.i to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %packet.i23.i, align 2
  %66 = call i16 @llvm.bswap.i16(i16 %65) #10
  %67 = ptrtoint ptr %packet.i23.i to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 %66, ptr %packet.i23.i, align 2
  %68 = ptrtoint ptr %57 to i32
  call void @__asan_loadN_noabort(i32 %68, i32 4)
  %69 = load i32, ptr %57, align 2
  %70 = call i32 @llvm.bswap.i32(i32 %69) #10
  %71 = ptrtoint ptr %57 to i32
  call void @__asan_storeN_noabort(i32 %71, i32 4)
  store i32 %70, ptr %57, align 2
  %72 = ptrtoint ptr %58 to i32
  call void @__asan_loadN_noabort(i32 %72, i32 4)
  %73 = load i32, ptr %58, align 2
  %74 = call i32 @llvm.bswap.i32(i32 %73) #10
  %75 = ptrtoint ptr %58 to i32
  call void @__asan_storeN_noabort(i32 %75, i32 4)
  store i32 %74, ptr %58, align 2
  %call7.i.i34.i = call fastcc i32 @sisusb_send_bulk_msg(ptr noundef %sisusb, i32 noundef 14, i32 noundef 10, ptr noundef nonnull %packet.i23.i, ptr noundef null, i32 noundef 0, ptr noundef nonnull %bytes_transferred.i.i22.i, i32 noundef 0) #10
  br label %sisusb_setidxregmask.exit

sisusb_setidxregmask.exit:                        ; preds = %do.body.i.i35.i, %sisusb_write_memio_byte.exit.i.sisusb_setidxregmask.exit_crit_edge
  %retval.0.i.i36.i = phi i32 [ 1, %sisusb_write_memio_byte.exit.i.sisusb_setidxregmask.exit_crit_edge ], [ %call7.i.i34.i, %do.body.i.i35.i ]
  %or.i = or i32 %call1.i, %retval.0.i.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bytes_transferred.i.i22.i) #10
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %packet.i23.i) #10
  %or12.i = or i32 %or.i, %retval.0.i.i36.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i) #10
  br label %sw.epilog

sw.bb30:                                          ; preds = %if.end
  %gfxinit = getelementptr inbounds %struct.sisusb_usb_data, ptr %sisusb, i32 0, i32 27
  %76 = ptrtoint ptr %gfxinit to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %gfxinit, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %77)
  %tobool31.not = icmp eq i8 %77, 0
  br i1 %tobool31.not, label %sw.bb30.cleanup_crit_edge, label %if.end33

sw.bb30.cleanup_crit_edge:                        ; preds = %sw.bb30
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end33:                                         ; preds = %sw.bb30
  %data034 = getelementptr inbounds %struct.sisusb_command, ptr %y, i32 0, i32 1
  %78 = ptrtoint ptr %data034 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %data034, align 1
  %conv35 = zext i8 %79 to i32
  %shl = shl nuw nsw i32 %conv35, 16
  %data136 = getelementptr inbounds %struct.sisusb_command, ptr %y, i32 0, i32 2
  %80 = ptrtoint ptr %data136 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %data136, align 2
  %conv37 = zext i8 %81 to i32
  %shl38 = shl nuw nsw i32 %conv37, 8
  %or = or i32 %shl38, %shl
  %data239 = getelementptr inbounds %struct.sisusb_command, ptr %y, i32 0, i32 3
  %82 = ptrtoint ptr %data239 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %data239, align 1
  %conv40 = zext i8 %83 to i32
  %or41 = or i32 %or, %conv40
  %add44 = add i32 %3, -1073741824
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %j.i) #10
  %84 = ptrtoint ptr %j.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 -1, ptr %j.i, align 4, !annotation !144
  %vrambase.i = getelementptr inbounds %struct.sisusb_usb_data, ptr %sisusb, i32 0, i32 21
  %85 = ptrtoint ptr %vrambase.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %vrambase.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %86, i32 %add44)
  %cmp.i = icmp ugt i32 %86, %add44
  br i1 %cmp.i, label %if.end33.sisusb_clear_vram.exit_crit_edge, label %if.end.i

if.end33.sisusb_clear_vram.exit_crit_edge:        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  br label %sisusb_clear_vram.exit

if.end.i:                                         ; preds = %if.end33
  %vramsize.i = getelementptr inbounds %struct.sisusb_usb_data, ptr %sisusb, i32 0, i32 22
  %87 = ptrtoint ptr %vramsize.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %vramsize.i, align 4
  %add.i90 = add i32 %88, %86
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i90, i32 %add44)
  %cmp2.not.i = icmp ugt i32 %add.i90, %add44
  br i1 %cmp2.not.i, label %if.end4.i, label %if.end.i.sisusb_clear_vram.exit_crit_edge

if.end.i.sisusb_clear_vram.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sisusb_clear_vram.exit

if.end4.i:                                        ; preds = %if.end.i
  %add5.i = add i32 %or41, %add44
  call void @__sanitizer_cov_trace_cmp4(i32 %add5.i, i32 %add.i90)
  %cmp9.i = icmp ugt i32 %add5.i, %add.i90
  %sub.i = sub i32 %add.i90, %add44
  %spec.select.i = select i1 %cmp9.i, i32 %sub.i, i32 %or41
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %spec.select.i)
  %cmp15.i = icmp slt i32 %spec.select.i, 1
  br i1 %cmp15.i, label %if.end4.i.sisusb_clear_vram.exit_crit_edge, label %if.end17.i

if.end4.i.sisusb_clear_vram.exit_crit_edge:       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sisusb_clear_vram.exit

if.end17.i:                                       ; preds = %if.end4.i
  %numobufs.i.i.i = getelementptr inbounds %struct.sisusb_usb_data, ptr %sisusb, i32 0, i32 10
  %89 = ptrtoint ptr %numobufs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %numobufs.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %cmp7.i.i.i = icmp sgt i32 %90, 0
  br i1 %cmp7.i.i.i, label %if.end17.i.for.body.i.i.i_crit_edge, label %if.end17.i.sisusb_clear_vram.exit_crit_edge

if.end17.i.sisusb_clear_vram.exit_crit_edge:      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sisusb_clear_vram.exit

if.end17.i.for.body.i.i.i_crit_edge:              ; preds = %if.end17.i
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %if.end17.i.for.body.i.i.i_crit_edge
  %i.08.i.i.i = phi i32 [ %inc.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %if.end17.i.for.body.i.i.i_crit_edge ]
  %arrayidx.i.i.i = getelementptr %struct.sisusb_usb_data, ptr %sisusb, i32 0, i32 17, i32 %i.08.i.i.i
  %91 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %arrayidx.i.i.i, align 1
  %93 = and i8 %92, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %93)
  %cmp1.i.i.i = icmp eq i8 %93, 0
  br i1 %cmp1.i.i.i, label %sisusb_alloc_outbuf.exit.i, label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %for.body.i.i.i
  %inc.i.i.i = add nuw nsw i32 %i.08.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, %90
  br i1 %exitcond.not.i.i.i, label %for.inc.i.i.i.sisusb_clear_vram.exit_crit_edge, label %for.inc.i.i.i.for.body.i.i.i_crit_edge

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i.i

for.inc.i.i.i.sisusb_clear_vram.exit_crit_edge:   ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sisusb_clear_vram.exit

sisusb_alloc_outbuf.exit.i:                       ; preds = %for.body.i.i.i
  %94 = or i8 %92, 2
  %95 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 %94, ptr %arrayidx.i.i.i, align 1
  %arrayidx.i = getelementptr %struct.sisusb_usb_data, ptr %sisusb, i32 0, i32 11, i32 %i.08.i.i.i
  %96 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %arrayidx.i, align 4
  %obufsize.i = getelementptr inbounds %struct.sisusb_usb_data, ptr %sisusb, i32 0, i32 13
  %98 = ptrtoint ptr %obufsize.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %obufsize.i, align 4
  %100 = call ptr @memset(ptr %97, i32 0, i32 %99)
  %call21.i = call fastcc i32 @sisusb_write_mem_bulk(ptr noundef %sisusb, i32 noundef %add44, i32 noundef %spec.select.i, ptr noundef null, i32 noundef %i.08.i.i.i, ptr noundef nonnull %j.i) #10
  %101 = ptrtoint ptr %numobufs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %numobufs.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %102, i32 %i.08.i.i.i)
  %cmp1.i.i91 = icmp sgt i32 %102, %i.08.i.i.i
  br i1 %cmp1.i.i91, label %if.then.i44.i, label %sisusb_alloc_outbuf.exit.i.sisusb_clear_vram.exit_crit_edge

sisusb_alloc_outbuf.exit.i.sisusb_clear_vram.exit_crit_edge: ; preds = %sisusb_alloc_outbuf.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sisusb_clear_vram.exit

if.then.i44.i:                                    ; preds = %sisusb_alloc_outbuf.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %103 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %arrayidx.i.i.i, align 1
  %105 = and i8 %104, -3
  store i8 %105, ptr %arrayidx.i.i.i, align 1
  br label %sisusb_clear_vram.exit

sisusb_clear_vram.exit:                           ; preds = %if.then.i44.i, %sisusb_alloc_outbuf.exit.i.sisusb_clear_vram.exit_crit_edge, %for.inc.i.i.i.sisusb_clear_vram.exit_crit_edge, %if.end17.i.sisusb_clear_vram.exit_crit_edge, %if.end4.i.sisusb_clear_vram.exit_crit_edge, %if.end.i.sisusb_clear_vram.exit_crit_edge, %if.end33.sisusb_clear_vram.exit_crit_edge
  %retval.0.i = phi i32 [ 1, %if.end33.sisusb_clear_vram.exit_crit_edge ], [ 1, %if.end.i.sisusb_clear_vram.exit_crit_edge ], [ 0, %if.end4.i.sisusb_clear_vram.exit_crit_edge ], [ %call21.i, %sisusb_alloc_outbuf.exit.i.sisusb_clear_vram.exit_crit_edge ], [ %call21.i, %if.then.i44.i ], [ -16, %if.end17.i.sisusb_clear_vram.exit_crit_edge ], [ -16, %for.inc.i.i.i.sisusb_clear_vram.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %j.i) #10
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.epilog:                                        ; preds = %sisusb_clear_vram.exit, %sisusb_setidxregmask.exit, %sw.bb21, %sw.bb17, %sw.bb13, %sw.bb9, %sw.bb.sw.epilog_crit_edge
  %retval1.0 = phi i32 [ %retval.0.i, %sisusb_clear_vram.exit ], [ %or12.i, %sisusb_setidxregmask.exit ], [ %call24, %sw.bb21 ], [ %call.i88, %sw.bb17 ], [ %call.i, %sw.bb13 ], [ %call12, %sw.bb9 ], [ %call, %sw.bb.sw.epilog_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval1.0)
  %cmp = icmp sgt i32 %retval1.0, 0
  %spec.select96 = select i1 %cmp, i32 -5, i32 %retval1.0
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.default, %sw.bb30.cleanup_crit_edge, %copy_to_user.exit, %if.end.i.i.cleanup_crit_edge, %if.then3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %entry.cleanup_crit_edge ], [ -19, %sw.bb30.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ -22, %sw.default ], [ -14, %if.then3.cleanup_crit_edge ], [ -14, %if.end.i.i.cleanup_crit_edge ], [ %spec.select, %copy_to_user.exit ], [ %spec.select96, %sw.epilog ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_find_interface(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sisusb_init_gfxcore(ptr noundef %sisusb) unnamed_addr #0 align 64 {
entry:
  %tmp.i29.i.i = alloca i32, align 4
  %tmp.i1.i.i = alloca i32, align 4
  %tmp.i.i.i = alloca i32, align 4
  %bytes_transferred.i.i104.i = alloca i32, align 4
  %packet.i105.i = alloca %struct.sisusb_packet, align 2
  %bytes_transferred.i.i96.i = alloca i32, align 4
  %packet.i97.i = alloca %struct.sisusb_packet, align 2
  %bytes_transferred.i.i.i.i460 = alloca i32, align 4
  %packet.i.i.i461 = alloca %struct.sisusb_packet, align 2
  %bytes_transferred.i.i86.i = alloca i32, align 4
  %packet.i87.i = alloca %struct.sisusb_packet, align 2
  %bytes_transferred.i.i.i462 = alloca i32, align 4
  %packet.i.i463 = alloca %struct.sisusb_packet, align 2
  %tmp1.i = alloca i8, align 1
  %tmp2.i = alloca i8, align 1
  %bytes_transferred.i.i469.i = alloca i32, align 4
  %packet.i470.i = alloca %struct.sisusb_packet, align 2
  %bytes_transferred.i.i461.i = alloca i32, align 4
  %packet.i462.i = alloca %struct.sisusb_packet, align 2
  %bytes_transferred.i.i453.i = alloca i32, align 4
  %packet.i454.i = alloca %struct.sisusb_packet, align 2
  %bytes_transferred.i.i445.i = alloca i32, align 4
  %packet.i446.i = alloca %struct.sisusb_packet, align 2
  %bytes_transferred.i.i437.i = alloca i32, align 4
  %packet.i438.i = alloca %struct.sisusb_packet, align 2
  %bytes_transferred.i.i429.i = alloca i32, align 4
  %packet.i430.i = alloca %struct.sisusb_packet, align 2
  %bytes_transferred.i.i421.i = alloca i32, align 4
  %packet.i422.i = alloca %struct.sisusb_packet, align 2
  %bytes_transferred.i.i413.i = alloca i32, align 4
  %packet.i414.i = alloca %struct.sisusb_packet, align 2
  %bytes_transferred.i.i404.i = alloca i32, align 4
  %packet.i405.i = alloca %struct.sisusb_packet, align 2
  %bytes_transferred.i.i396.i = alloca i32, align 4
  %packet.i397.i = alloca %struct.sisusb_packet, align 2
  %bytes_transferred.i.i388.i = alloca i32, align 4
  %packet.i389.i = alloca %struct.sisusb_packet, align 2
  %bytes_transferred.i.i380.i = alloca i32, align 4
  %packet.i381.i = alloca %struct.sisusb_packet, align 2
  %bytes_transferred.i.i372.i = alloca i32, align 4
  %packet.i373.i = alloca %struct.sisusb_packet, align 2
  %bytes_transferred.i.i364.i = alloca i32, align 4
  %packet.i365.i = alloca %struct.sisusb_packet, align 2
  %bytes_transferred.i.i355.i = alloca i32, align 4
  %packet.i356.i = alloca %struct.sisusb_packet, align 2
  %bytes_transferred.i.i347.i = alloca i32, align 4
  %packet.i348.i = alloca %struct.sisusb_packet, align 2
  %bytes_transferred.i.i339.i = alloca i32, align 4
  %packet.i340.i = alloca %struct.sisusb_packet, align 2
  %bytes_transferred.i.i331.i = alloca i32, align 4
  %packet.i332.i = alloca %struct.sisusb_packet, align 2
  %bytes_transferred.i.i323.i = alloca i32, align 4
  %packet.i324.i = alloca %struct.sisusb_packet, align 2
  %bytes_transferred.i.i315.i = alloca i32, align 4
  %packet.i316.i = alloca %struct.sisusb_packet, align 2
  %bytes_transferred.i.i307.i = alloca i32, align 4
  %packet.i308.i = alloca %struct.sisusb_packet, align 2
  %bytes_transferred.i.i.i451 = alloca i32, align 4
  %packet.i.i452 = alloca %struct.sisusb_packet, align 2
  %bytes_transferred.i.i.i.i = alloca i32, align 4
  %packet.i.i.i = alloca %struct.sisusb_packet, align 2
  %ramtype.i = alloca i8, align 1
  %t0.i = alloca i32, align 4
  %t1.i = alloca i32, align 4
  %t2.i = alloca i32, align 4
  %t3.i = alloca i32, align 4
  %bytes_transferred.i.i.i436 = alloca i32, align 4
  %packet.i.i437 = alloca %struct.sisusb_packet, align 2
  %bytes_transferred.i.i.i = alloca i32, align 4
  %packet.i.i = alloca %struct.sisusb_packet, align 2
  %bytes_transferred.i.i426 = alloca i32, align 4
  %packet.i427 = alloca %struct.sisusb_packet, align 2
  %bytes_transferred.i.i415 = alloca i32, align 4
  %packet.i416 = alloca %struct.sisusb_packet, align 2
  %bytes_transferred.i.i = alloca i32, align 4
  %packet.i = alloca %struct.sisusb_packet, align 2
  %tmp8 = alloca i8, align 1
  %ramtype = alloca i8, align 1
  %tmp32 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp8) #10
  %0 = ptrtoint ptr %tmp8 to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %tmp8, align 1, !annotation !144
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ramtype) #10
  %1 = ptrtoint ptr %ramtype to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %ramtype, align 1, !annotation !144
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp32) #10
  %2 = ptrtoint ptr %tmp32 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %tmp32, align 4, !annotation !144
  %3 = getelementptr inbounds %struct.sisusb_packet, ptr %packet.i, i32 0, i32 1
  %4 = getelementptr inbounds %struct.sisusb_packet, ptr %packet.i, i32 0, i32 2
  %5 = getelementptr inbounds %struct.sisusb_packet, ptr %packet.i416, i32 0, i32 1
  %6 = getelementptr inbounds %struct.sisusb_packet, ptr %packet.i416, i32 0, i32 2
  %7 = getelementptr inbounds %struct.sisusb_packet, ptr %packet.i427, i32 0, i32 1
  %8 = getelementptr inbounds %struct.sisusb_packet, ptr %packet.i427, i32 0, i32 2
  %9 = getelementptr inbounds %struct.sisusb_packet, ptr %packet.i.i, i32 0, i32 1
  %10 = getelementptr inbounds %struct.sisusb_packet, ptr %packet.i.i, i32 0, i32 2
  %11 = getelementptr inbounds %struct.sisusb_packet, ptr %packet.i.i437, i32 0, i32 1
  %12 = getelementptr inbounds %struct.sisusb_packet, ptr %packet.i.i437, i32 0, i32 2
  %13 = getelementptr inbounds %struct.sisusb_packet, ptr %packet.i.i.i, i32 0, i32 1
  %14 = getelementptr inbounds %struct.sisusb_packet, ptr %packet.i.i.i, i32 0, i32 2
  %15 = getelementptr inbounds %struct.sisusb_packet, ptr %packet.i.i452, i32 0, i32 1
  %16 = getelementptr inbounds %struct.sisusb_packet, ptr %packet.i.i452, i32 0, i32 2
  %17 = getelementptr inbounds %struct.sisusb_packet, ptr %packet.i308.i, i32 0, i32 1
  %18 = getelementptr inbounds %struct.sisusb_packet, ptr %packet.i308.i, i32 0, i32 2
  %19 = getelementptr inbounds %struct.sisusb_packet, ptr %packet.i316.i, i32 0, i32 1
  %20 = getelementptr inbounds %struct.sisusb_packet, ptr %packet.i316.i, i32 0, i32 2
  %21 = getelementptr inbounds %struct.sisusb_packet, ptr %packet.i324.i, i32 0, i32 1
  %22 = getelementptr inbounds %struct.sisusb_packet, ptr %packet.i324.i, i32 0, i32 2
  %23 = getelementptr inbounds %struct.sisusb_packet, ptr %packet.i332.i, i32 0, i32 1
  %24 = getelementptr inbounds %struct.sisusb_packet, ptr %packet.i332.i, i32 0, i32 2
  %25 = getelementptr inbounds %struct.sisusb_packet, ptr %packet.i340.i, i32 0, i32 1
  %26 = getelementptr inbounds %struct.sisusb_packet, ptr %packet.i340.i, i32 0, i32 2
  %27 = getelementptr inbounds %struct.sisusb_packet, ptr %packet.i348.i, i32 0, i32 1
  %28 = getelementptr inbounds %struct.sisusb_packet, ptr %packet.i348.i, i32 0, i32 2
  %29 = getelementptr inbounds %struct.sisusb_packet, ptr %packet.i356.i, i32 0, i32 1
  %30 = getelementptr inbounds %struct.sisusb_packet, ptr %packet.i356.i, i32 0, i32 2
  %31 = getelementptr inbounds %struct.sisusb_packet, ptr %packet.i414.i, i32 0, i32 1
  %32 = getelementptr inbounds %struct.sisusb_packet, ptr %packet.i414.i, i32 0, i32 2
  %33 = getelementptr inbounds %struct.sisusb_packet, ptr %packet.i422.i, i32 0, i32 1
  %34 = getelementptr inbounds %struct.sisusb_packet, ptr %packet.i422.i, i32 0, i32 2
  %35 = getelementptr inbounds %struct.sisusb_packet, ptr %packet.i430.i, i32 0, i32 1
  %36 = getelementptr inbounds %struct.sisusb_packet, ptr %packet.i430.i, i32 0, i32 2
  %37 = getelementptr inbounds %struct.sisusb_packet, ptr %packet.i438.i, i32 0, i32 1
  %38 = getelementptr inbounds %struct.sisusb_packet, ptr %packet.i438.i, i32 0, i32 2
  %39 = getelementptr inbounds %struct.sisusb_packet, ptr %packet.i446.i, i32 0, i32 1
  %40 = getelementptr inbounds %struct.sisusb_packet, ptr %packet.i446.i, i32 0, i32 2
  %41 = getelementptr inbounds %struct.sisusb_packet, ptr %packet.i454.i, i32 0, i32 1
  %42 = getelementptr inbounds %struct.sisusb_packet, ptr %packet.i454.i, i32 0, i32 2
  %43 = getelementptr inbounds %struct.sisusb_packet, ptr %packet.i462.i, i32 0, i32 1
  %44 = getelementptr inbounds %struct.sisusb_packet, ptr %packet.i462.i, i32 0, i32 2
  %45 = getelementptr inbounds %struct.sisusb_packet, ptr %packet.i470.i, i32 0, i32 1
  %46 = getelementptr inbounds %struct.sisusb_packet, ptr %packet.i470.i, i32 0, i32 2
  %47 = getelementptr inbounds %struct.sisusb_packet, ptr %packet.i365.i, i32 0, i32 1
  %48 = getelementptr inbounds %struct.sisusb_packet, ptr %packet.i365.i, i32 0, i32 2
  %49 = getelementptr inbounds %struct.sisusb_packet, ptr %packet.i373.i, i32 0, i32 1
  %50 = getelementptr inbounds %struct.sisusb_packet, ptr %packet.i373.i, i32 0, i32 2
  %51 = getelementptr inbounds %struct.sisusb_packet, ptr %packet.i381.i, i32 0, i32 1
  %52 = getelementptr inbounds %struct.sisusb_packet, ptr %packet.i381.i, i32 0, i32 2
  %53 = getelementptr inbounds %struct.sisusb_packet, ptr %packet.i389.i, i32 0, i32 1
  %54 = getelementptr inbounds %struct.sisusb_packet, ptr %packet.i389.i, i32 0, i32 2
  %55 = getelementptr inbounds %struct.sisusb_packet, ptr %packet.i397.i, i32 0, i32 1
  %56 = getelementptr inbounds %struct.sisusb_packet, ptr %packet.i397.i, i32 0, i32 2
  %57 = getelementptr inbounds %struct.sisusb_packet, ptr %packet.i405.i, i32 0, i32 1
  %58 = getelementptr inbounds %struct.sisusb_packet, ptr %packet.i405.i, i32 0, i32 2
  %59 = getelementptr inbounds %struct.sisusb_packet, ptr %packet.i.i463, i32 0, i32 1
  %60 = getelementptr inbounds %struct.sisusb_packet, ptr %packet.i.i463, i32 0, i32 2
  %61 = getelementptr inbounds %struct.sisusb_packet, ptr %packet.i87.i, i32 0, i32 1
  %62 = getelementptr inbounds %struct.sisusb_packet, ptr %packet.i87.i, i32 0, i32 2
  %63 = getelementptr inbounds %struct.sisusb_packet, ptr %packet.i.i.i461, i32 0, i32 1
  %64 = getelementptr inbounds %struct.sisusb_packet, ptr %packet.i.i.i461, i32 0, i32 2
  %65 = getelementptr inbounds %struct.sisusb_packet, ptr %packet.i97.i, i32 0, i32 1
  %66 = getelementptr inbounds %struct.sisusb_packet, ptr %packet.i97.i, i32 0, i32 2
  %67 = getelementptr inbounds %struct.sisusb_packet, ptr %packet.i105.i, i32 0, i32 1
  %68 = getelementptr inbounds %struct.sisusb_packet, ptr %packet.i105.i, i32 0, i32 2
  %vrambase.i.i.i = getelementptr inbounds %struct.sisusb_usb_data, ptr %sisusb, i32 0, i32 21
  br label %while.body

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %entry
  %dec517 = phi i32 [ 2, %entry ], [ %dec, %while.cond.backedge.while.body_crit_edge ]
  %call = call fastcc i32 @sisusb_read_memio_byte(ptr noundef %sisusb, i32 noundef 1, i32 noundef 53315, ptr noundef nonnull %tmp8)
  %69 = ptrtoint ptr %tmp8 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %tmp8, align 1
  %71 = or i8 %70, 1
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %packet.i) #10
  %72 = ptrtoint ptr %packet.i to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 72, ptr %packet.i, align 2
  %73 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %73, i32 4)
  store i32 53312, ptr %3, align 2
  %conv3.i = zext i8 %71 to i32
  %shl6.i = shl nuw i32 %conv3.i, 24
  %74 = ptrtoint ptr %4 to i32
  call void @__asan_storeN_noabort(i32 %74, i32 4)
  store i32 %shl6.i, ptr %4, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bytes_transferred.i.i) #10
  %75 = ptrtoint ptr %bytes_transferred.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 0, ptr %bytes_transferred.i.i, align 4
  %call.i.i = call fastcc i32 @sisusb_wait_all_out_complete(ptr noundef %sisusb) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %while.body.sisusb_write_memio_byte.exit_crit_edge, label %do.body.i.i

while.body.sisusb_write_memio_byte.exit_crit_edge: ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %sisusb_write_memio_byte.exit

do.body.i.i:                                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  %76 = ptrtoint ptr %packet.i to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %packet.i, align 2
  %78 = call i16 @llvm.bswap.i16(i16 %77) #10
  %79 = ptrtoint ptr %packet.i to i32
  call void @__asan_store2_noabort(i32 %79)
  store i16 %78, ptr %packet.i, align 2
  %80 = ptrtoint ptr %3 to i32
  call void @__asan_loadN_noabort(i32 %80, i32 4)
  %81 = load i32, ptr %3, align 2
  %82 = call i32 @llvm.bswap.i32(i32 %81) #10
  %83 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %83, i32 4)
  store i32 %82, ptr %3, align 2
  %84 = ptrtoint ptr %4 to i32
  call void @__asan_loadN_noabort(i32 %84, i32 4)
  %85 = load i32, ptr %4, align 2
  %86 = call i32 @llvm.bswap.i32(i32 %85) #10
  %87 = ptrtoint ptr %4 to i32
  call void @__asan_storeN_noabort(i32 %87, i32 4)
  store i32 %86, ptr %4, align 2
  %call7.i.i = call fastcc i32 @sisusb_send_bulk_msg(ptr noundef %sisusb, i32 noundef 14, i32 noundef 10, ptr noundef nonnull %packet.i, ptr noundef null, i32 noundef 0, ptr noundef nonnull %bytes_transferred.i.i, i32 noundef 0) #10
  br label %sisusb_write_memio_byte.exit

sisusb_write_memio_byte.exit:                     ; preds = %do.body.i.i, %while.body.sisusb_write_memio_byte.exit_crit_edge
  %retval.0.i.i = phi i32 [ 1, %while.body.sisusb_write_memio_byte.exit_crit_edge ], [ %call7.i.i, %do.body.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bytes_transferred.i.i) #10
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %packet.i) #10
  %or3 = or i32 %retval.0.i.i, %call
  %call4 = call fastcc i32 @sisusb_read_memio_byte(ptr noundef %sisusb, i32 noundef 1, i32 noundef 53324, ptr noundef nonnull %tmp8)
  %or5 = or i32 %or3, %call4
  %88 = ptrtoint ptr %tmp8 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %tmp8, align 1
  %90 = or i8 %89, 1
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %packet.i416) #10
  %91 = ptrtoint ptr %packet.i416 to i32
  call void @__asan_store2_noabort(i32 %91)
  store i16 68, ptr %packet.i416, align 2
  %92 = ptrtoint ptr %5 to i32
  call void @__asan_storeN_noabort(i32 %92, i32 4)
  store i32 53312, ptr %5, align 2
  %conv3.i417 = zext i8 %90 to i32
  %shl6.i418 = shl nuw nsw i32 %conv3.i417, 16
  %93 = ptrtoint ptr %6 to i32
  call void @__asan_storeN_noabort(i32 %93, i32 4)
  store i32 %shl6.i418, ptr %6, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bytes_transferred.i.i415) #10
  %94 = ptrtoint ptr %bytes_transferred.i.i415 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 0, ptr %bytes_transferred.i.i415, align 4
  %call.i.i419 = call fastcc i32 @sisusb_wait_all_out_complete(ptr noundef %sisusb) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i419)
  %tobool.not.i.i420 = icmp eq i32 %call.i.i419, 0
  br i1 %tobool.not.i.i420, label %sisusb_write_memio_byte.exit.sisusb_write_memio_byte.exit424_crit_edge, label %do.body.i.i422

sisusb_write_memio_byte.exit.sisusb_write_memio_byte.exit424_crit_edge: ; preds = %sisusb_write_memio_byte.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sisusb_write_memio_byte.exit424

do.body.i.i422:                                   ; preds = %sisusb_write_memio_byte.exit
  call void @__sanitizer_cov_trace_pc() #12
  %95 = ptrtoint ptr %packet.i416 to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %packet.i416, align 2
  %97 = call i16 @llvm.bswap.i16(i16 %96) #10
  %98 = ptrtoint ptr %packet.i416 to i32
  call void @__asan_store2_noabort(i32 %98)
  store i16 %97, ptr %packet.i416, align 2
  %99 = ptrtoint ptr %5 to i32
  call void @__asan_loadN_noabort(i32 %99, i32 4)
  %100 = load i32, ptr %5, align 2
  %101 = call i32 @llvm.bswap.i32(i32 %100) #10
  %102 = ptrtoint ptr %5 to i32
  call void @__asan_storeN_noabort(i32 %102, i32 4)
  store i32 %101, ptr %5, align 2
  %103 = ptrtoint ptr %6 to i32
  call void @__asan_loadN_noabort(i32 %103, i32 4)
  %104 = load i32, ptr %6, align 2
  %105 = call i32 @llvm.bswap.i32(i32 %104) #10
  %106 = ptrtoint ptr %6 to i32
  call void @__asan_storeN_noabort(i32 %106, i32 4)
  store i32 %105, ptr %6, align 2
  %call7.i.i421 = call fastcc i32 @sisusb_send_bulk_msg(ptr noundef %sisusb, i32 noundef 14, i32 noundef 10, ptr noundef nonnull %packet.i416, ptr noundef null, i32 noundef 0, ptr noundef nonnull %bytes_transferred.i.i415, i32 noundef 0) #10
  br label %sisusb_write_memio_byte.exit424

sisusb_write_memio_byte.exit424:                  ; preds = %do.body.i.i422, %sisusb_write_memio_byte.exit.sisusb_write_memio_byte.exit424_crit_edge
  %retval.0.i.i423 = phi i32 [ 1, %sisusb_write_memio_byte.exit.sisusb_write_memio_byte.exit424_crit_edge ], [ %call7.i.i421, %do.body.i.i422 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bytes_transferred.i.i415) #10
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %packet.i416) #10
  %or10 = or i32 %or5, %retval.0.i.i423
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or10)
  %tobool11.not = icmp eq i32 %or10, 0
  br i1 %tobool11.not, label %if.end, label %sisusb_write_memio_byte.exit424.while.cond.backedge_crit_edge

sisusb_write_memio_byte.exit424.while.cond.backedge_crit_edge: ; preds = %sisusb_write_memio_byte.exit424
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.end233.while.cond.backedge_crit_edge, %sisusb_getidxreg.exit445.while.cond.backedge_crit_edge, %for.body114.preheader.while.cond.backedge_crit_edge, %sisusb_getidxreg.exit.while.cond.backedge_crit_edge, %for.body27.preheader.while.cond.backedge_crit_edge, %sisusb_write_memio_byte.exit424.while.cond.backedge_crit_edge
  %ret.0.be = phi i32 [ %or10, %sisusb_write_memio_byte.exit424.while.cond.backedge_crit_edge ], [ %or60.3, %for.body27.preheader.while.cond.backedge_crit_edge ], [ %or107, %sisusb_getidxreg.exit.while.cond.backedge_crit_edge ], [ %or158, %for.body114.preheader.while.cond.backedge_crit_edge ], [ %or193, %sisusb_getidxreg.exit445.while.cond.backedge_crit_edge ], [ %or254, %if.end233.while.cond.backedge_crit_edge ]
  %dec = add nsw i32 %dec517, -1
  %tobool.not = icmp eq i32 %dec517, 0
  br i1 %tobool.not, label %while.cond.backedge.while.end_crit_edge, label %while.cond.backedge.while.body_crit_edge

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.cond.backedge.while.end_crit_edge:          ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

if.end:                                           ; preds = %sisusb_write_memio_byte.exit424
  %call.i = call i32 @sisusb_setidxregandor(ptr noundef %sisusb, i32 noundef 53332, i8 noundef zeroext 91, i8 noundef zeroext -33, i8 noundef zeroext 0) #10
  %call14 = call i32 @sisusb_setidxreg(ptr noundef %sisusb, i32 noundef 53316, i8 noundef zeroext 5, i8 noundef zeroext -122)
  %or15 = or i32 %call14, %call.i
  %call.i425 = call i32 @sisusb_setidxregandor(ptr noundef %sisusb, i32 noundef 53316, i8 noundef zeroext 32, i8 noundef zeroext -1, i8 noundef zeroext 1) #10
  %or17 = or i32 %or15, %call.i425
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %packet.i427) #10
  %107 = ptrtoint ptr %packet.i427 to i32
  call void @__asan_store2_noabort(i32 %107)
  store i16 68, ptr %packet.i427, align 2
  %108 = ptrtoint ptr %7 to i32
  call void @__asan_storeN_noabort(i32 %108, i32 4)
  store i32 53312, ptr %7, align 2
  %109 = ptrtoint ptr %8 to i32
  call void @__asan_storeN_noabort(i32 %109, i32 4)
  store i32 6750208, ptr %8, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bytes_transferred.i.i426) #10
  %110 = ptrtoint ptr %bytes_transferred.i.i426 to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 0, ptr %bytes_transferred.i.i426, align 4
  %call.i.i428 = call fastcc i32 @sisusb_wait_all_out_complete(ptr noundef %sisusb) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i428)
  %tobool.not.i.i429 = icmp eq i32 %call.i.i428, 0
  br i1 %tobool.not.i.i429, label %if.end.sisusb_write_memio_byte.exit433_crit_edge, label %do.body.i.i431

if.end.sisusb_write_memio_byte.exit433_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sisusb_write_memio_byte.exit433

do.body.i.i431:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %111 = ptrtoint ptr %packet.i427 to i32
  call void @__asan_load2_noabort(i32 %111)
  %112 = load i16, ptr %packet.i427, align 2
  %113 = call i16 @llvm.bswap.i16(i16 %112) #10
  %114 = ptrtoint ptr %packet.i427 to i32
  call void @__asan_store2_noabort(i32 %114)
  store i16 %113, ptr %packet.i427, align 2
  %115 = ptrtoint ptr %7 to i32
  call void @__asan_loadN_noabort(i32 %115, i32 4)
  %116 = load i32, ptr %7, align 2
  %117 = call i32 @llvm.bswap.i32(i32 %116) #10
  %118 = ptrtoint ptr %7 to i32
  call void @__asan_storeN_noabort(i32 %118, i32 4)
  store i32 %117, ptr %7, align 2
  %119 = ptrtoint ptr %8 to i32
  call void @__asan_loadN_noabort(i32 %119, i32 4)
  %120 = load i32, ptr %8, align 2
  %121 = call i32 @llvm.bswap.i32(i32 %120) #10
  %122 = ptrtoint ptr %8 to i32
  call void @__asan_storeN_noabort(i32 %122, i32 4)
  store i32 %121, ptr %8, align 2
  %call7.i.i430 = call fastcc i32 @sisusb_send_bulk_msg(ptr noundef %sisusb, i32 noundef 14, i32 noundef 10, ptr noundef nonnull %packet.i427, ptr noundef null, i32 noundef 0, ptr noundef nonnull %bytes_transferred.i.i426, i32 noundef 0) #10
  br label %sisusb_write_memio_byte.exit433

sisusb_write_memio_byte.exit433:                  ; preds = %do.body.i.i431, %if.end.sisusb_write_memio_byte.exit433_crit_edge
  %retval.0.i.i432 = phi i32 [ 1, %if.end.sisusb_write_memio_byte.exit433_crit_edge ], [ %call7.i.i430, %do.body.i.i431 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bytes_transferred.i.i426) #10
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %packet.i427) #10
  %or19 = or i32 %or17, %retval.0.i.i432
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %sisusb_write_memio_byte.exit433
  %i.0502 = phi i32 [ 6, %sisusb_write_memio_byte.exit433 ], [ %inc, %for.body.for.body_crit_edge ]
  %ret.1501 = phi i32 [ %or19, %sisusb_write_memio_byte.exit433 ], [ %or23, %for.body.for.body_crit_edge ]
  %conv21 = trunc i32 %i.0502 to i8
  %call22 = call i32 @sisusb_setidxreg(ptr noundef %sisusb, i32 noundef 53316, i8 noundef zeroext %conv21, i8 noundef zeroext 0)
  %or23 = or i32 %call22, %ret.1501
  %inc = add nuw nsw i32 %i.0502, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.body27.preheader, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body27.preheader:                             ; preds = %for.body
  %call29 = call i32 @sisusb_setidxreg(ptr noundef %sisusb, i32 noundef 53316, i8 noundef zeroext 33, i8 noundef zeroext 0)
  %or30 = or i32 %call29, %or23
  %call29.1 = call i32 @sisusb_setidxreg(ptr noundef %sisusb, i32 noundef 53316, i8 noundef zeroext 34, i8 noundef zeroext 0)
  %or30.1 = or i32 %call29.1, %or30
  %call29.2 = call i32 @sisusb_setidxreg(ptr noundef %sisusb, i32 noundef 53316, i8 noundef zeroext 35, i8 noundef zeroext 0)
  %or30.2 = or i32 %call29.2, %or30.1
  %call29.3 = call i32 @sisusb_setidxreg(ptr noundef %sisusb, i32 noundef 53316, i8 noundef zeroext 36, i8 noundef zeroext 0)
  %or30.3 = or i32 %call29.3, %or30.2
  %call29.4 = call i32 @sisusb_setidxreg(ptr noundef %sisusb, i32 noundef 53316, i8 noundef zeroext 37, i8 noundef zeroext 0)
  %or30.4 = or i32 %call29.4, %or30.3
  %call29.5 = call i32 @sisusb_setidxreg(ptr noundef %sisusb, i32 noundef 53316, i8 noundef zeroext 38, i8 noundef zeroext 0)
  %or30.5 = or i32 %call29.5, %or30.4
  %call29.6 = call i32 @sisusb_setidxreg(ptr noundef %sisusb, i32 noundef 53316, i8 noundef zeroext 39, i8 noundef zeroext 0)
  %or30.6 = or i32 %call29.6, %or30.5
  %call39 = call i32 @sisusb_setidxreg(ptr noundef %sisusb, i32 noundef 53316, i8 noundef zeroext 49, i8 noundef zeroext 0)
  %or40 = or i32 %call39, %or30.6
  %call39.1 = call i32 @sisusb_setidxreg(ptr noundef %sisusb, i32 noundef 53316, i8 noundef zeroext 50, i8 noundef zeroext 0)
  %or40.1 = or i32 %call39.1, %or40
  %call39.2 = call i32 @sisusb_setidxreg(ptr noundef %sisusb, i32 noundef 53316, i8 noundef zeroext 51, i8 noundef zeroext 0)
  %or40.2 = or i32 %call39.2, %or40.1
  %call39.3 = call i32 @sisusb_setidxreg(ptr noundef %sisusb, i32 noundef 53316, i8 noundef zeroext 52, i8 noundef zeroext 0)
  %or40.3 = or i32 %call39.3, %or40.2
  %call39.4 = call i32 @sisusb_setidxreg(ptr noundef %sisusb, i32 noundef 53316, i8 noundef zeroext 53, i8 noundef zeroext 0)
  %or40.4 = or i32 %call39.4, %or40.3
  %call39.5 = call i32 @sisusb_setidxreg(ptr noundef %sisusb, i32 noundef 53316, i8 noundef zeroext 54, i8 noundef zeroext 0)
  %or40.5 = or i32 %call39.5, %or40.4
  %call39.6 = call i32 @sisusb_setidxreg(ptr noundef %sisusb, i32 noundef 53316, i8 noundef zeroext 55, i8 noundef zeroext 0)
  %or40.6 = or i32 %call39.6, %or40.5
  %call39.7 = call i32 @sisusb_setidxreg(ptr noundef %sisusb, i32 noundef 53316, i8 noundef zeroext 56, i8 noundef zeroext 0)
  %or40.7 = or i32 %call39.7, %or40.6
  %call39.8 = call i32 @sisusb_setidxreg(ptr noundef %sisusb, i32 noundef 53316, i8 noundef zeroext 57, i8 noundef zeroext 0)
  %or40.8 = or i32 %call39.8, %or40.7
  %call39.9 = call i32 @sisusb_setidxreg(ptr noundef %sisusb, i32 noundef 53316, i8 noundef zeroext 58, i8 noundef zeroext 0)
  %or40.9 = or i32 %call39.9, %or40.8
  %call39.10 = call i32 @sisusb_setidxreg(ptr noundef %sisusb, i32 noundef 53316, i8 noundef zeroext 59, i8 noundef zeroext 0)
  %or40.10 = or i32 %call39.10, %or40.9
  %call39.11 = call i32 @sisusb_setidxreg(ptr noundef %sisusb, i32 noundef 53316, i8 noundef zeroext 60, i8 noundef zeroext 0)
  %or40.11 = or i32 %call39.11, %or40.10
  %call39.12 = call i32 @sisusb_setidxreg(ptr noundef %sisusb, i32 noundef 53316, i8 noundef zeroext 61, i8 noundef zeroext 0)
  %or40.12 = or i32 %call39.12, %or40.11
  %call49 = call i32 @sisusb_setidxreg(ptr noundef %sisusb, i32 noundef 53316, i8 noundef zeroext 18, i8 noundef zeroext 0)
  %or50 = or i32 %call49, %or40.12
  %call49.1 = call i32 @sisusb_setidxreg(ptr noundef %sisusb, i32 noundef 53316, i8 noundef zeroext 19, i8 noundef zeroext 0)
  %or50.1 = or i32 %call49.1, %or50
  %call49.2 = call i32 @sisusb_setidxreg(ptr noundef %sisusb, i32 noundef 53316, i8 noundef zeroext 20, i8 noundef zeroext 0)
  %or50.2 = or i32 %call49.2, %or50.1
  %call49.3 = call i32 @sisusb_setidxreg(ptr noundef %sisusb, i32 noundef 53316, i8 noundef zeroext 21, i8 noundef zeroext 0)
  %or50.3 = or i32 %call49.3, %or50.2
  %call49.4 = call i32 @sisusb_setidxreg(ptr noundef %sisusb, i32 noundef 53316, i8 noundef zeroext 22, i8 noundef zeroext 0)
  %or50.4 = or i32 %call49.4, %or50.3
  %call49.5 = call i32 @sisusb_setidxreg(ptr noundef %sisusb, i32 noundef 53316, i8 noundef zeroext 23, i8 noundef zeroext 0)
  %or50.5 = or i32 %call49.5, %or50.4
  %call49.6 = call i32 @sisusb_setidxreg(ptr noundef %sisusb, i32 noundef 53316, i8 noundef zeroext 24, i8 noundef zeroext 0)
  %or50.6 = or i32 %call49.6, %or50.5
  %call49.7 = call i32 @sisusb_setidxreg(ptr noundef %sisusb, i32 noundef 53316, i8 noundef zeroext 25, i8 noundef zeroext 0)
  %or50.7 = or i32 %call49.7, %or50.6
  %call49.8 = call i32 @sisusb_setidxreg(ptr noundef %sisusb, i32 noundef 53316, i8 noundef zeroext 26, i8 noundef zeroext 0)
  %or50.8 = or i32 %call49.8, %or50.7
  %call49.9 = call i32 @sisusb_setidxreg(ptr noundef %sisusb, i32 noundef 53316, i8 noundef zeroext 27, i8 noundef zeroext 0)
  %or50.9 = or i32 %call49.9, %or50.8
  %call59 = call i32 @sisusb_setidxreg(ptr noundef %sisusb, i32 noundef 53332, i8 noundef zeroext 121, i8 noundef zeroext 0)
  %or60 = or i32 %call59, %or50.9
  %call59.1 = call i32 @sisusb_setidxreg(ptr noundef %sisusb, i32 noundef 53332, i8 noundef zeroext 122, i8 noundef zeroext 0)
  %or60.1 = or i32 %call59.1, %or60
  %call59.2 = call i32 @sisusb_setidxreg(ptr noundef %sisusb, i32 noundef 53332, i8 noundef zeroext 123, i8 noundef zeroext 0)
  %or60.2 = or i32 %call59.2, %or60.1
  %call59.3 = call i32 @sisusb_setidxreg(ptr noundef %sisusb, i32 noundef 53332, i8 noundef zeroext 124, i8 noundef zeroext 0)
  %or60.3 = or i32 %call59.3, %or60.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or60.3)
  %tobool64.not = icmp eq i32 %or60.3, 0
  br i1 %tobool64.not, label %if.end66, label %for.body27.preheader.while.cond.backedge_crit_edge

for.body27.preheader.while.cond.backedge_crit_edge: ; preds = %for.body27.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.backedge

if.end66:                                         ; preds = %for.body27.preheader
  %call67 = call i32 @sisusb_setidxreg(ptr noundef %sisusb, i32 noundef 53332, i8 noundef zeroext 99, i8 noundef zeroext -128)
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %packet.i.i) #10
  %123 = ptrtoint ptr %packet.i.i to i32
  call void @__asan_store2_noabort(i32 %123)
  store i16 65, ptr %packet.i.i, align 2
  %124 = ptrtoint ptr %9 to i32
  call void @__asan_storeN_noabort(i32 %124, i32 4)
  store i32 53316, ptr %9, align 2
  %125 = ptrtoint ptr %10 to i32
  call void @__asan_storeN_noabort(i32 %125, i32 4)
  store i32 58, ptr %10, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bytes_transferred.i.i.i) #10
  %126 = ptrtoint ptr %bytes_transferred.i.i.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 0, ptr %bytes_transferred.i.i.i, align 4
  %call.i.i.i = call fastcc i32 @sisusb_wait_all_out_complete(ptr noundef %sisusb) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end66.sisusb_getidxreg.exit_crit_edge, label %do.body.i.i.i

if.end66.sisusb_getidxreg.exit_crit_edge:         ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #12
  br label %sisusb_getidxreg.exit

do.body.i.i.i:                                    ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #12
  %127 = ptrtoint ptr %packet.i.i to i32
  call void @__asan_load2_noabort(i32 %127)
  %128 = load i16, ptr %packet.i.i, align 2
  %129 = call i16 @llvm.bswap.i16(i16 %128) #10
  %130 = ptrtoint ptr %packet.i.i to i32
  call void @__asan_store2_noabort(i32 %130)
  store i16 %129, ptr %packet.i.i, align 2
  %131 = ptrtoint ptr %9 to i32
  call void @__asan_loadN_noabort(i32 %131, i32 4)
  %132 = load i32, ptr %9, align 2
  %133 = call i32 @llvm.bswap.i32(i32 %132) #10
  %134 = ptrtoint ptr %9 to i32
  call void @__asan_storeN_noabort(i32 %134, i32 4)
  store i32 %133, ptr %9, align 2
  %135 = ptrtoint ptr %10 to i32
  call void @__asan_loadN_noabort(i32 %135, i32 4)
  %136 = load i32, ptr %10, align 2
  %137 = call i32 @llvm.bswap.i32(i32 %136) #10
  %138 = ptrtoint ptr %10 to i32
  call void @__asan_storeN_noabort(i32 %138, i32 4)
  store i32 %137, ptr %10, align 2
  %call7.i.i.i = call fastcc i32 @sisusb_send_bulk_msg(ptr noundef %sisusb, i32 noundef 14, i32 noundef 10, ptr noundef nonnull %packet.i.i, ptr noundef null, i32 noundef 0, ptr noundef nonnull %bytes_transferred.i.i.i, i32 noundef 0) #10
  br label %sisusb_getidxreg.exit

sisusb_getidxreg.exit:                            ; preds = %do.body.i.i.i, %if.end66.sisusb_getidxreg.exit_crit_edge
  %retval.0.i.i.i = phi i32 [ 1, %if.end66.sisusb_getidxreg.exit_crit_edge ], [ %call7.i.i.i, %do.body.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bytes_transferred.i.i.i) #10
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %packet.i.i) #10
  %call1.i = call fastcc i32 @sisusb_read_memio_byte(ptr noundef %sisusb, i32 noundef 1, i32 noundef 53317, ptr noundef nonnull %ramtype) #10
  %139 = ptrtoint ptr %ramtype to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %ramtype, align 1
  %141 = and i8 %140, 3
  store i8 %141, ptr %ramtype, align 1
  %142 = shl nuw nsw i8 %141, 2
  %mul = zext i8 %142 to i32
  %arrayidx = getelementptr [16 x i8], ptr @sisusb_init_gfxcore.mclktable, i32 0, i32 %mul
  %143 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %arrayidx, align 1
  %call74 = call i32 @sisusb_setidxreg(ptr noundef %sisusb, i32 noundef 53316, i8 noundef zeroext 40, i8 noundef zeroext %144)
  %conv76 = zext i8 %141 to i32
  %mul77 = shl nuw nsw i32 %conv76, 2
  %add = or i32 %mul77, 1
  %arrayidx78 = getelementptr [16 x i8], ptr @sisusb_init_gfxcore.mclktable, i32 0, i32 %add
  %145 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %arrayidx78, align 1
  %call79 = call i32 @sisusb_setidxreg(ptr noundef %sisusb, i32 noundef 53316, i8 noundef zeroext 41, i8 noundef zeroext %146)
  %add83 = or i32 %mul77, 2
  %arrayidx84 = getelementptr [16 x i8], ptr @sisusb_init_gfxcore.mclktable, i32 0, i32 %add83
  %147 = ptrtoint ptr %arrayidx84 to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %arrayidx84, align 1
  %call85 = call i32 @sisusb_setidxreg(ptr noundef %sisusb, i32 noundef 53316, i8 noundef zeroext 42, i8 noundef zeroext %148)
  %arrayidx89 = getelementptr [16 x i8], ptr @sisusb_init_gfxcore.eclktable, i32 0, i32 %mul77
  %149 = ptrtoint ptr %arrayidx89 to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %arrayidx89, align 1
  %call90 = call i32 @sisusb_setidxreg(ptr noundef %sisusb, i32 noundef 53316, i8 noundef zeroext 46, i8 noundef zeroext %150)
  %arrayidx95 = getelementptr [16 x i8], ptr @sisusb_init_gfxcore.eclktable, i32 0, i32 %add
  %151 = ptrtoint ptr %arrayidx95 to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %arrayidx95, align 1
  %call96 = call i32 @sisusb_setidxreg(ptr noundef %sisusb, i32 noundef 53316, i8 noundef zeroext 47, i8 noundef zeroext %152)
  %arrayidx101 = getelementptr [16 x i8], ptr @sisusb_init_gfxcore.eclktable, i32 0, i32 %add83
  %153 = ptrtoint ptr %arrayidx101 to i32
  call void @__asan_load1_noabort(i32 %153)
  %154 = load i8, ptr %arrayidx101, align 1
  %call102 = call i32 @sisusb_setidxreg(ptr noundef %sisusb, i32 noundef 53316, i8 noundef zeroext 48, i8 noundef zeroext %154)
  %call104 = call i32 @sisusb_setidxreg(ptr noundef %sisusb, i32 noundef 53316, i8 noundef zeroext 7, i8 noundef zeroext 24)
  %call106 = call i32 @sisusb_setidxreg(ptr noundef %sisusb, i32 noundef 53316, i8 noundef zeroext 17, i8 noundef zeroext 15)
  %or.i = or i32 %retval.0.i.i.i, %call67
  %or70 = or i32 %or.i, %call1.i
  %or75 = or i32 %or70, %call74
  %or80 = or i32 %or75, %call79
  %or86 = or i32 %or80, %call85
  %or91 = or i32 %or86, %call90
  %or97 = or i32 %or91, %call96
  %or103 = or i32 %or97, %call102
  %or105 = or i32 %or103, %call104
  %or107 = or i32 %or105, %call106
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or107)
  %tobool108.not = icmp eq i32 %or107, 0
  br i1 %tobool108.not, label %for.body114.preheader, label %sisusb_getidxreg.exit.while.cond.backedge_crit_edge

sisusb_getidxreg.exit.while.cond.backedge_crit_edge: ; preds = %sisusb_getidxreg.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.backedge

for.body114.preheader:                            ; preds = %sisusb_getidxreg.exit
  %arrayidx119 = getelementptr [28 x i8], ptr @sisusb_init_gfxcore.ramtypetable1, i32 0, i32 %conv76
  %155 = ptrtoint ptr %arrayidx119 to i32
  call void @__asan_load1_noabort(i32 %155)
  %156 = load i8, ptr %arrayidx119, align 1
  %call120 = call i32 @sisusb_setidxreg(ptr noundef %sisusb, i32 noundef 53316, i8 noundef zeroext 21, i8 noundef zeroext %156)
  %add118.1 = or i32 %conv76, 4
  %arrayidx119.1 = getelementptr [28 x i8], ptr @sisusb_init_gfxcore.ramtypetable1, i32 0, i32 %add118.1
  %157 = ptrtoint ptr %arrayidx119.1 to i32
  call void @__asan_load1_noabort(i32 %157)
  %158 = load i8, ptr %arrayidx119.1, align 1
  %call120.1 = call i32 @sisusb_setidxreg(ptr noundef %sisusb, i32 noundef 53316, i8 noundef zeroext 22, i8 noundef zeroext %158)
  %or121.1 = or i32 %call120.1, %call120
  %add118.2 = or i32 %conv76, 8
  %arrayidx119.2 = getelementptr [28 x i8], ptr @sisusb_init_gfxcore.ramtypetable1, i32 0, i32 %add118.2
  %159 = ptrtoint ptr %arrayidx119.2 to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %arrayidx119.2, align 1
  %call120.2 = call i32 @sisusb_setidxreg(ptr noundef %sisusb, i32 noundef 53316, i8 noundef zeroext 23, i8 noundef zeroext %160)
  %or121.2 = or i32 %call120.2, %or121.1
  %add118.3 = or i32 %conv76, 12
  %arrayidx119.3 = getelementptr [28 x i8], ptr @sisusb_init_gfxcore.ramtypetable1, i32 0, i32 %add118.3
  %161 = ptrtoint ptr %arrayidx119.3 to i32
  call void @__asan_load1_noabort(i32 %161)
  %162 = load i8, ptr %arrayidx119.3, align 1
  %call120.3 = call i32 @sisusb_setidxreg(ptr noundef %sisusb, i32 noundef 53316, i8 noundef zeroext 24, i8 noundef zeroext %162)
  %or121.3 = or i32 %call120.3, %or121.2
  %add118.4 = or i32 %conv76, 16
  %arrayidx119.4 = getelementptr [28 x i8], ptr @sisusb_init_gfxcore.ramtypetable1, i32 0, i32 %add118.4
  %163 = ptrtoint ptr %arrayidx119.4 to i32
  call void @__asan_load1_noabort(i32 %163)
  %164 = load i8, ptr %arrayidx119.4, align 1
  %call120.4 = call i32 @sisusb_setidxreg(ptr noundef %sisusb, i32 noundef 53316, i8 noundef zeroext 25, i8 noundef zeroext %164)
  %or121.4 = or i32 %call120.4, %or121.3
  %add118.5 = or i32 %conv76, 20
  %arrayidx119.5 = getelementptr [28 x i8], ptr @sisusb_init_gfxcore.ramtypetable1, i32 0, i32 %add118.5
  %165 = ptrtoint ptr %arrayidx119.5 to i32
  call void @__asan_load1_noabort(i32 %165)
  %166 = load i8, ptr %arrayidx119.5, align 1
  %call120.5 = call i32 @sisusb_setidxreg(ptr noundef %sisusb, i32 noundef 53316, i8 noundef zeroext 26, i8 noundef zeroext %166)
  %or121.5 = or i32 %call120.5, %or121.4
  %add118.6 = or i32 %conv76, 24
  %arrayidx119.6 = getelementptr [28 x i8], ptr @sisusb_init_gfxcore.ramtypetable1, i32 0, i32 %add118.6
  %167 = ptrtoint ptr %arrayidx119.6 to i32
  call void @__asan_load1_noabort(i32 %167)
  %168 = load i8, ptr %arrayidx119.6, align 1
  %call120.6 = call i32 @sisusb_setidxreg(ptr noundef %sisusb, i32 noundef 53316, i8 noundef zeroext 27, i8 noundef zeroext %168)
  %or121.6 = or i32 %call120.6, %or121.5
  %arrayidx134 = getelementptr [20 x i8], ptr @sisusb_init_gfxcore.ramtypetable2, i32 0, i32 %conv76
  %169 = ptrtoint ptr %arrayidx134 to i32
  call void @__asan_load1_noabort(i32 %169)
  %170 = load i8, ptr %arrayidx134, align 1
  %call135 = call i32 @sisusb_setidxreg(ptr noundef %sisusb, i32 noundef 53332, i8 noundef zeroext 64, i8 noundef zeroext %170)
  %or136 = or i32 %call135, %or121.6
  %arrayidx134.1 = getelementptr [20 x i8], ptr @sisusb_init_gfxcore.ramtypetable2, i32 0, i32 %add118.1
  %171 = ptrtoint ptr %arrayidx134.1 to i32
  call void @__asan_load1_noabort(i32 %171)
  %172 = load i8, ptr %arrayidx134.1, align 1
  %call135.1 = call i32 @sisusb_setidxreg(ptr noundef %sisusb, i32 noundef 53332, i8 noundef zeroext 65, i8 noundef zeroext %172)
  %or136.1 = or i32 %call135.1, %or136
  %arrayidx134.2 = getelementptr [20 x i8], ptr @sisusb_init_gfxcore.ramtypetable2, i32 0, i32 %add118.2
  %173 = ptrtoint ptr %arrayidx134.2 to i32
  call void @__asan_load1_noabort(i32 %173)
  %174 = load i8, ptr %arrayidx134.2, align 1
  %call135.2 = call i32 @sisusb_setidxreg(ptr noundef %sisusb, i32 noundef 53332, i8 noundef zeroext 66, i8 noundef zeroext %174)
  %or136.2 = or i32 %call135.2, %or136.1
  %arrayidx134.3 = getelementptr [20 x i8], ptr @sisusb_init_gfxcore.ramtypetable2, i32 0, i32 %add118.3
  %175 = ptrtoint ptr %arrayidx134.3 to i32
  call void @__asan_load1_noabort(i32 %175)
  %176 = load i8, ptr %arrayidx134.3, align 1
  %call135.3 = call i32 @sisusb_setidxreg(ptr noundef %sisusb, i32 noundef 53332, i8 noundef zeroext 67, i8 noundef zeroext %176)
  %or136.3 = or i32 %call135.3, %or136.2
  %arrayidx134.4 = getelementptr [20 x i8], ptr @sisusb_init_gfxcore.ramtypetable2, i32 0, i32 %add118.4
  %177 = ptrtoint ptr %arrayidx134.4 to i32
  call void @__asan_load1_noabort(i32 %177)
  %178 = load i8, ptr %arrayidx134.4, align 1
  %call135.4 = call i32 @sisusb_setidxreg(ptr noundef %sisusb, i32 noundef 53332, i8 noundef zeroext 68, i8 noundef zeroext %178)
  %or136.4 = or i32 %call135.4, %or136.3
  %call141 = call i32 @sisusb_setidxreg(ptr noundef %sisusb, i32 noundef 53332, i8 noundef zeroext 73, i8 noundef zeroext -86)
  %or142 = or i32 %call141, %or136.4
  %call143 = call i32 @sisusb_setidxreg(ptr noundef %sisusb, i32 noundef 53316, i8 noundef zeroext 31, i8 noundef zeroext 0)
  %or144 = or i32 %or142, %call143
  %call145 = call i32 @sisusb_setidxreg(ptr noundef %sisusb, i32 noundef 53316, i8 noundef zeroext 32, i8 noundef zeroext -96)
  %or146 = or i32 %or144, %call145
  %call147 = call i32 @sisusb_setidxreg(ptr noundef %sisusb, i32 noundef 53316, i8 noundef zeroext 35, i8 noundef zeroext -10)
  %or148 = or i32 %or146, %call147
  %call149 = call i32 @sisusb_setidxreg(ptr noundef %sisusb, i32 noundef 53316, i8 noundef zeroext 36, i8 noundef zeroext 13)
  %or150 = or i32 %or148, %call149
  %call151 = call i32 @sisusb_setidxreg(ptr noundef %sisusb, i32 noundef 53316, i8 noundef zeroext 37, i8 noundef zeroext 51)
  %or152 = or i32 %or150, %call151
  %call153 = call i32 @sisusb_setidxreg(ptr noundef %sisusb, i32 noundef 53316, i8 noundef zeroext 17, i8 noundef zeroext 15)
  %or154 = or i32 %or152, %call153
  %call.i434 = call i32 @sisusb_setidxregandor(ptr noundef %sisusb, i32 noundef 53252, i8 noundef zeroext 47, i8 noundef zeroext -1, i8 noundef zeroext 1) #10
  %or156 = or i32 %or154, %call.i434
  %call.i435 = call i32 @sisusb_setidxregandor(ptr noundef %sisusb, i32 noundef 53248, i8 noundef zeroext 63, i8 noundef zeroext -17, i8 noundef zeroext 0) #10
  %or158 = or i32 %or156, %call.i435
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or158)
  %tobool159.not = icmp eq i32 %or158, 0
  br i1 %tobool159.not, label %if.end161, label %for.body114.preheader.while.cond.backedge_crit_edge

for.body114.preheader.while.cond.backedge_crit_edge: ; preds = %for.body114.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.backedge

if.end161:                                        ; preds = %for.body114.preheader
  %call162 = call i32 @sisusb_setidxreg(ptr noundef %sisusb, i32 noundef 53252, i8 noundef zeroext 0, i8 noundef zeroext 0)
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %packet.i.i437) #10
  %179 = ptrtoint ptr %packet.i.i437 to i32
  call void @__asan_store2_noabort(i32 %179)
  store i16 65, ptr %packet.i.i437, align 2
  %180 = ptrtoint ptr %11 to i32
  call void @__asan_storeN_noabort(i32 %180, i32 4)
  store i32 53316, ptr %11, align 2
  %181 = ptrtoint ptr %12 to i32
  call void @__asan_storeN_noabort(i32 %181, i32 4)
  store i32 19, ptr %12, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bytes_transferred.i.i.i436) #10
  %182 = ptrtoint ptr %bytes_transferred.i.i.i436 to i32
  call void @__asan_store4_noabort(i32 %182)
  store i32 0, ptr %bytes_transferred.i.i.i436, align 4
  %call.i.i.i438 = call fastcc i32 @sisusb_wait_all_out_complete(ptr noundef %sisusb) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i438)
  %tobool.not.i.i.i439 = icmp eq i32 %call.i.i.i438, 0
  br i1 %tobool.not.i.i.i439, label %if.end161.sisusb_getidxreg.exit445_crit_edge, label %do.body.i.i.i441

if.end161.sisusb_getidxreg.exit445_crit_edge:     ; preds = %if.end161
  call void @__sanitizer_cov_trace_pc() #12
  br label %sisusb_getidxreg.exit445

do.body.i.i.i441:                                 ; preds = %if.end161
  call void @__sanitizer_cov_trace_pc() #12
  %183 = ptrtoint ptr %packet.i.i437 to i32
  call void @__asan_load2_noabort(i32 %183)
  %184 = load i16, ptr %packet.i.i437, align 2
  %185 = call i16 @llvm.bswap.i16(i16 %184) #10
  %186 = ptrtoint ptr %packet.i.i437 to i32
  call void @__asan_store2_noabort(i32 %186)
  store i16 %185, ptr %packet.i.i437, align 2
  %187 = ptrtoint ptr %11 to i32
  call void @__asan_loadN_noabort(i32 %187, i32 4)
  %188 = load i32, ptr %11, align 2
  %189 = call i32 @llvm.bswap.i32(i32 %188) #10
  %190 = ptrtoint ptr %11 to i32
  call void @__asan_storeN_noabort(i32 %190, i32 4)
  store i32 %189, ptr %11, align 2
  %191 = ptrtoint ptr %12 to i32
  call void @__asan_loadN_noabort(i32 %191, i32 4)
  %192 = load i32, ptr %12, align 2
  %193 = call i32 @llvm.bswap.i32(i32 %192) #10
  %194 = ptrtoint ptr %12 to i32
  call void @__asan_storeN_noabort(i32 %194, i32 4)
  store i32 %193, ptr %12, align 2
  %call7.i.i.i440 = call fastcc i32 @sisusb_send_bulk_msg(ptr noundef %sisusb, i32 noundef 14, i32 noundef 10, ptr noundef nonnull %packet.i.i437, ptr noundef null, i32 noundef 0, ptr noundef nonnull %bytes_transferred.i.i.i436, i32 noundef 0) #10
  br label %sisusb_getidxreg.exit445

sisusb_getidxreg.exit445:                         ; preds = %do.body.i.i.i441, %if.end161.sisusb_getidxreg.exit445_crit_edge
  %retval.0.i.i.i442 = phi i32 [ 1, %if.end161.sisusb_getidxreg.exit445_crit_edge ], [ %call7.i.i.i440, %do.body.i.i.i441 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bytes_transferred.i.i.i436) #10
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %packet.i.i437) #10
  %call1.i443 = call fastcc i32 @sisusb_read_memio_byte(ptr noundef %sisusb, i32 noundef 1, i32 noundef 53317, ptr noundef nonnull %tmp8) #10
  %call168 = call i32 @sisusb_setidxreg(ptr noundef %sisusb, i32 noundef 53252, i8 noundef zeroext 2, i8 noundef zeroext 0)
  %call170 = call i32 @sisusb_setidxreg(ptr noundef %sisusb, i32 noundef 53252, i8 noundef zeroext 46, i8 noundef zeroext 8)
  %call172 = call fastcc i32 @sisusb_read_pci_config(ptr noundef %sisusb, i32 noundef 80, ptr noundef nonnull %tmp32)
  %195 = ptrtoint ptr %tmp32 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %tmp32, align 4
  %and174 = and i32 %196, 15728640
  store i32 %and174, ptr %tmp32, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048576, i32 %and174)
  %cmp175 = icmp eq i32 %and174, 1048576
  %conv177 = select i1 %cmp175, i8 51, i8 3
  %call178 = call i32 @sisusb_setidxreg(ptr noundef %sisusb, i32 noundef 53316, i8 noundef zeroext 37, i8 noundef zeroext %conv177)
  %conv183 = select i1 %cmp175, i8 -86, i8 -120
  %197 = ptrtoint ptr %tmp8 to i32
  call void @__asan_store1_noabort(i32 %197)
  store i8 %conv183, ptr %tmp8, align 1
  %call184 = call i32 @sisusb_setidxreg(ptr noundef %sisusb, i32 noundef 53332, i8 noundef zeroext 73, i8 noundef zeroext %conv183)
  %call186 = call i32 @sisusb_setidxreg(ptr noundef %sisusb, i32 noundef 53316, i8 noundef zeroext 39, i8 noundef zeroext 31)
  %call188 = call i32 @sisusb_setidxreg(ptr noundef %sisusb, i32 noundef 53316, i8 noundef zeroext 49, i8 noundef zeroext 0)
  %call190 = call i32 @sisusb_setidxreg(ptr noundef %sisusb, i32 noundef 53316, i8 noundef zeroext 50, i8 noundef zeroext 17)
  %call192 = call i32 @sisusb_setidxreg(ptr noundef %sisusb, i32 noundef 53316, i8 noundef zeroext 51, i8 noundef zeroext 0)
  %or.i444 = or i32 %retval.0.i.i.i442, %call162
  %or165 = or i32 %or.i444, %call1.i443
  %or169 = or i32 %or165, %call168
  %or171 = or i32 %or169, %call170
  %or173 = or i32 %or171, %call172
  %or179 = or i32 %or173, %call178
  %or185 = or i32 %or179, %call184
  %or187 = or i32 %or185, %call186
  %or189 = or i32 %or187, %call188
  %or191 = or i32 %or189, %call190
  %or193 = or i32 %or191, %call192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or193)
  %tobool194.not = icmp eq i32 %or193, 0
  br i1 %tobool194.not, label %if.end196, label %sisusb_getidxreg.exit445.while.cond.backedge_crit_edge

sisusb_getidxreg.exit445.while.cond.backedge_crit_edge: ; preds = %sisusb_getidxreg.exit445
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.backedge

if.end196:                                        ; preds = %sisusb_getidxreg.exit445
  %call197 = call i32 @sisusb_setidxreg(ptr noundef %sisusb, i32 noundef 53332, i8 noundef zeroext -125, i8 noundef zeroext 0)
  call fastcc void @sisusb_set_default_mode(ptr noundef %sisusb, i32 noundef 0)
  %call.i446 = call i32 @sisusb_setidxregandor(ptr noundef %sisusb, i32 noundef 53316, i8 noundef zeroext 33, i8 noundef zeroext -33, i8 noundef zeroext 0) #10
  %or200 = or i32 %call.i446, %call197
  %call.i447 = call i32 @sisusb_setidxregandor(ptr noundef %sisusb, i32 noundef 53316, i8 noundef zeroext 1, i8 noundef zeroext -1, i8 noundef zeroext 32) #10
  %or202 = or i32 %or200, %call.i447
  %call.i448 = call i32 @sisusb_setidxregandor(ptr noundef %sisusb, i32 noundef 53316, i8 noundef zeroext 22, i8 noundef zeroext -1, i8 noundef zeroext 15) #10
  %or204 = or i32 %or202, %call.i448
  %call205 = call fastcc i32 @sisusb_triggersr16(ptr noundef %sisusb, i8 noundef zeroext %141)
  %or206 = or i32 %or204, %call205
  %call.i449 = call i32 @sisusb_setidxregandor(ptr noundef %sisusb, i32 noundef 53316, i8 noundef zeroext 23, i8 noundef zeroext -8, i8 noundef zeroext 0) #10
  %or208 = or i32 %or206, %call.i449
  %call.i450 = call i32 @sisusb_setidxregandor(ptr noundef %sisusb, i32 noundef 53316, i8 noundef zeroext 25, i8 noundef zeroext -1, i8 noundef zeroext 3) #10
  %or210 = or i32 %or208, %call.i450
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ramtype.i) #10
  %198 = ptrtoint ptr %ramtype.i to i32
  call void @__asan_store1_noabort(i32 %198)
  store i8 -1, ptr %ramtype.i, align 1, !annotation !144
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t0.i) #10
  %199 = ptrtoint ptr %t0.i to i32
  call void @__asan_store4_noabort(i32 %199)
  store i32 -1, ptr %t0.i, align 4, !annotation !144
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t1.i) #10
  %200 = ptrtoint ptr %t1.i to i32
  call void @__asan_store4_noabort(i32 %200)
  store i32 -1, ptr %t1.i, align 4, !annotation !144
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t2.i) #10
  %201 = ptrtoint ptr %t2.i to i32
  call void @__asan_store4_noabort(i32 %201)
  store i32 -1, ptr %t2.i, align 4, !annotation !144
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t3.i) #10
  %202 = ptrtoint ptr %t3.i to i32
  call void @__asan_store4_noabort(i32 %202)
  store i32 -1, ptr %t3.i, align 4, !annotation !144
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %packet.i.i.i) #10
  %203 = ptrtoint ptr %packet.i.i.i to i32
  call void @__asan_store2_noabort(i32 %203)
  store i16 65, ptr %packet.i.i.i, align 2
  %204 = ptrtoint ptr %13 to i32
  call void @__asan_storeN_noabort(i32 %204, i32 4)
  store i32 53316, ptr %13, align 2
  %205 = ptrtoint ptr %14 to i32
  call void @__asan_storeN_noabort(i32 %205, i32 4)
  store i32 58, ptr %14, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bytes_transferred.i.i.i.i) #10
  %206 = ptrtoint ptr %bytes_transferred.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %206)
  store i32 0, ptr %bytes_transferred.i.i.i.i, align 4
  %call.i.i.i.i = call fastcc i32 @sisusb_wait_all_out_complete(ptr noundef %sisusb) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %if.end196.sisusb_getidxreg.exit.i_crit_edge, label %do.body.i.i.i.i

if.end196.sisusb_getidxreg.exit.i_crit_edge:      ; preds = %if.end196
  call void @__sanitizer_cov_trace_pc() #12
  br label %sisusb_getidxreg.exit.i

do.body.i.i.i.i:                                  ; preds = %if.end196
  call void @__sanitizer_cov_trace_pc() #12
  %207 = ptrtoint ptr %packet.i.i.i to i32
  call void @__asan_load2_noabort(i32 %207)
  %208 = load i16, ptr %packet.i.i.i, align 2
  %209 = call i16 @llvm.bswap.i16(i16 %208) #10
  %210 = ptrtoint ptr %packet.i.i.i to i32
  call void @__asan_store2_noabort(i32 %210)
  store i16 %209, ptr %packet.i.i.i, align 2
  %211 = ptrtoint ptr %13 to i32
  call void @__asan_loadN_noabort(i32 %211, i32 4)
  %212 = load i32, ptr %13, align 2
  %213 = call i32 @llvm.bswap.i32(i32 %212) #10
  %214 = ptrtoint ptr %13 to i32
  call void @__asan_storeN_noabort(i32 %214, i32 4)
  store i32 %213, ptr %13, align 2
  %215 = ptrtoint ptr %14 to i32
  call void @__asan_loadN_noabort(i32 %215, i32 4)
  %216 = load i32, ptr %14, align 2
  %217 = call i32 @llvm.bswap.i32(i32 %216) #10
  %218 = ptrtoint ptr %14 to i32
  call void @__asan_storeN_noabort(i32 %218, i32 4)
  store i32 %217, ptr %14, align 2
  %call7.i.i.i.i = call fastcc i32 @sisusb_send_bulk_msg(ptr noundef %sisusb, i32 noundef 14, i32 noundef 10, ptr noundef nonnull %packet.i.i.i, ptr noundef null, i32 noundef 0, ptr noundef nonnull %bytes_transferred.i.i.i.i, i32 noundef 0) #10
  br label %sisusb_getidxreg.exit.i

sisusb_getidxreg.exit.i:                          ; preds = %do.body.i.i.i.i, %if.end196.sisusb_getidxreg.exit.i_crit_edge
  %retval.0.i.i.i.i = phi i32 [ 1, %if.end196.sisusb_getidxreg.exit.i_crit_edge ], [ %call7.i.i.i.i, %do.body.i.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bytes_transferred.i.i.i.i) #10
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %packet.i.i.i) #10
  %call1.i.i = call fastcc i32 @sisusb_read_memio_byte(ptr noundef %sisusb, i32 noundef 1, i32 noundef 53317, ptr noundef nonnull %ramtype.i) #10
  %or.i.i = or i32 %call1.i.i, %retval.0.i.i.i.i
  %219 = ptrtoint ptr %ramtype.i to i32
  call void @__asan_load1_noabort(i32 %219)
  %220 = load i8, ptr %ramtype.i, align 1
  %221 = and i8 %220, 3
  store i8 %221, ptr %ramtype.i, align 1
  %call2.i = call i32 @sisusb_setidxreg(ptr noundef %sisusb, i32 noundef 53316, i8 noundef zeroext 19, i8 noundef zeroext 0) #10
  %or.i453 = or i32 %or.i.i, %call2.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %221)
  %cmp.i = icmp ult i8 %221, 2
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %sisusb_getidxreg.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i = call i32 @sisusb_setidxreg(ptr noundef %sisusb, i32 noundef 53316, i8 noundef zeroext 20, i8 noundef zeroext 18) #10
  %or6.i = or i32 %call5.i, %or.i453
  %call.i.i454 = call i32 @sisusb_setidxregandor(ptr noundef %sisusb, i32 noundef 53316, i8 noundef zeroext 21, i8 noundef zeroext -17, i8 noundef zeroext 0) #10
  %or8.i = or i32 %or6.i, %call.i.i454
  br label %if.end.i

if.else.i:                                        ; preds = %sisusb_getidxreg.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %call9.i = call i32 @sisusb_setidxreg(ptr noundef %sisusb, i32 noundef 53316, i8 noundef zeroext 20, i8 noundef zeroext 2) #10
  %or10.i = or i32 %call9.i, %or.i453
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %ret.0.i = phi i32 [ %or8.i, %if.then.i ], [ %or10.i, %if.else.i ]
  %call11.i = call fastcc i32 @sisusb_triggersr16(ptr noundef %sisusb, i8 noundef zeroext %221) #10
  %or12.i = or i32 %call11.i, %ret.0.i
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %packet.i.i452) #10
  %222 = ptrtoint ptr %15 to i32
  call void @__asan_storeN_noabort(i32 %222, i32 4)
  store i32 -805306368, ptr %15, align 2
  %223 = ptrtoint ptr %packet.i.i452 to i32
  call void @__asan_store2_noabort(i32 %223)
  store i16 15, ptr %packet.i.i452, align 2
  %224 = ptrtoint ptr %16 to i32
  call void @__asan_storeN_noabort(i32 %224, i32 4)
  store i32 19088743, ptr %16, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bytes_transferred.i.i.i451) #10
  %225 = ptrtoint ptr %bytes_transferred.i.i.i451 to i32
  call void @__asan_store4_noabort(i32 %225)
  store i32 0, ptr %bytes_transferred.i.i.i451, align 4
  %call.i.i.i455 = call fastcc i32 @sisusb_wait_all_out_complete(ptr noundef %sisusb) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i455)
  %tobool.not.i.i.i456 = icmp eq i32 %call.i.i.i455, 0
  br i1 %tobool.not.i.i.i456, label %if.end.i.sisusb_write_memio_long.exit.i_crit_edge, label %do.body.i.i.i458

if.end.i.sisusb_write_memio_long.exit.i_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sisusb_write_memio_long.exit.i

do.body.i.i.i458:                                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %226 = ptrtoint ptr %packet.i.i452 to i32
  call void @__asan_load2_noabort(i32 %226)
  %227 = load i16, ptr %packet.i.i452, align 2
  %228 = call i16 @llvm.bswap.i16(i16 %227) #10
  %229 = ptrtoint ptr %packet.i.i452 to i32
  call void @__asan_store2_noabort(i32 %229)
  store i16 %228, ptr %packet.i.i452, align 2
  %230 = ptrtoint ptr %15 to i32
  call void @__asan_loadN_noabort(i32 %230, i32 4)
  %231 = load i32, ptr %15, align 2
  %232 = call i32 @llvm.bswap.i32(i32 %231) #10
  %233 = ptrtoint ptr %15 to i32
  call void @__asan_storeN_noabort(i32 %233, i32 4)
  store i32 %232, ptr %15, align 2
  %234 = ptrtoint ptr %16 to i32
  call void @__asan_loadN_noabort(i32 %234, i32 4)
  %235 = load i32, ptr %16, align 2
  %236 = call i32 @llvm.bswap.i32(i32 %235) #10
  %237 = ptrtoint ptr %16 to i32
  call void @__asan_storeN_noabort(i32 %237, i32 4)
  store i32 %236, ptr %16, align 2
  %call7.i.i.i457 = call fastcc i32 @sisusb_send_bulk_msg(ptr noundef %sisusb, i32 noundef 14, i32 noundef 10, ptr noundef nonnull %packet.i.i452, ptr noundef null, i32 noundef 0, ptr noundef nonnull %bytes_transferred.i.i.i451, i32 noundef 0) #10
  br label %sisusb_write_memio_long.exit.i

sisusb_write_memio_long.exit.i:                   ; preds = %do.body.i.i.i458, %if.end.i.sisusb_write_memio_long.exit.i_crit_edge
  %retval.0.i.i.i459 = phi i32 [ 1, %if.end.i.sisusb_write_memio_long.exit.i_crit_edge ], [ %call7.i.i.i457, %do.body.i.i.i458 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bytes_transferred.i.i.i451) #10
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %packet.i.i452) #10
  %or14.i = or i32 %or12.i, %retval.0.i.i.i459
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %packet.i308.i) #10
  %238 = ptrtoint ptr %17 to i32
  call void @__asan_storeN_noabort(i32 %238, i32 4)
  store i32 -805306364, ptr %17, align 2
  %239 = ptrtoint ptr %packet.i308.i to i32
  call void @__asan_store2_noabort(i32 %239)
  store i16 15, ptr %packet.i308.i, align 2
  %240 = ptrtoint ptr %18 to i32
  call void @__asan_storeN_noabort(i32 %240, i32 4)
  store i32 1164413355, ptr %18, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bytes_transferred.i.i307.i) #10
  %241 = ptrtoint ptr %bytes_transferred.i.i307.i to i32
  call void @__asan_store4_noabort(i32 %241)
  store i32 0, ptr %bytes_transferred.i.i307.i, align 4
  %call.i.i309.i = call fastcc i32 @sisusb_wait_all_out_complete(ptr noundef %sisusb) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i309.i)
  %tobool.not.i.i310.i = icmp eq i32 %call.i.i309.i, 0
  br i1 %tobool.not.i.i310.i, label %sisusb_write_memio_long.exit.i.sisusb_write_memio_long.exit314.i_crit_edge, label %do.body.i.i312.i

sisusb_write_memio_long.exit.i.sisusb_write_memio_long.exit314.i_crit_edge: ; preds = %sisusb_write_memio_long.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sisusb_write_memio_long.exit314.i

do.body.i.i312.i:                                 ; preds = %sisusb_write_memio_long.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %242 = ptrtoint ptr %packet.i308.i to i32
  call void @__asan_load2_noabort(i32 %242)
  %243 = load i16, ptr %packet.i308.i, align 2
  %244 = call i16 @llvm.bswap.i16(i16 %243) #10
  %245 = ptrtoint ptr %packet.i308.i to i32
  call void @__asan_store2_noabort(i32 %245)
  store i16 %244, ptr %packet.i308.i, align 2
  %246 = ptrtoint ptr %17 to i32
  call void @__asan_loadN_noabort(i32 %246, i32 4)
  %247 = load i32, ptr %17, align 2
  %248 = call i32 @llvm.bswap.i32(i32 %247) #10
  %249 = ptrtoint ptr %17 to i32
  call void @__asan_storeN_noabort(i32 %249, i32 4)
  store i32 %248, ptr %17, align 2
  %250 = ptrtoint ptr %18 to i32
  call void @__asan_loadN_noabort(i32 %250, i32 4)
  %251 = load i32, ptr %18, align 2
  %252 = call i32 @llvm.bswap.i32(i32 %251) #10
  %253 = ptrtoint ptr %18 to i32
  call void @__asan_storeN_noabort(i32 %253, i32 4)
  store i32 %252, ptr %18, align 2
  %call7.i.i311.i = call fastcc i32 @sisusb_send_bulk_msg(ptr noundef %sisusb, i32 noundef 14, i32 noundef 10, ptr noundef nonnull %packet.i308.i, ptr noundef null, i32 noundef 0, ptr noundef nonnull %bytes_transferred.i.i307.i, i32 noundef 0) #10
  br label %sisusb_write_memio_long.exit314.i

sisusb_write_memio_long.exit314.i:                ; preds = %do.body.i.i312.i, %sisusb_write_memio_long.exit.i.sisusb_write_memio_long.exit314.i_crit_edge
  %retval.0.i.i313.i = phi i32 [ 1, %sisusb_write_memio_long.exit.i.sisusb_write_memio_long.exit314.i_crit_edge ], [ %call7.i.i311.i, %do.body.i.i312.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bytes_transferred.i.i307.i) #10
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %packet.i308.i) #10
  %or17.i = or i32 %or14.i, %retval.0.i.i313.i
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %packet.i316.i) #10
  %254 = ptrtoint ptr %19 to i32
  call void @__asan_storeN_noabort(i32 %254, i32 4)
  store i32 -805306360, ptr %19, align 2
  %255 = ptrtoint ptr %packet.i316.i to i32
  call void @__asan_store2_noabort(i32 %255)
  store i16 15, ptr %packet.i316.i, align 2
  %256 = ptrtoint ptr %20 to i32
  call void @__asan_storeN_noabort(i32 %256, i32 4)
  store i32 -1985229329, ptr %20, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bytes_transferred.i.i315.i) #10
  %257 = ptrtoint ptr %bytes_transferred.i.i315.i to i32
  call void @__asan_store4_noabort(i32 %257)
  store i32 0, ptr %bytes_transferred.i.i315.i, align 4
  %call.i.i317.i = call fastcc i32 @sisusb_wait_all_out_complete(ptr noundef %sisusb) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i317.i)
  %tobool.not.i.i318.i = icmp eq i32 %call.i.i317.i, 0
  br i1 %tobool.not.i.i318.i, label %sisusb_write_memio_long.exit314.i.sisusb_write_memio_long.exit322.i_crit_edge, label %do.body.i.i320.i

sisusb_write_memio_long.exit314.i.sisusb_write_memio_long.exit322.i_crit_edge: ; preds = %sisusb_write_memio_long.exit314.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sisusb_write_memio_long.exit322.i

do.body.i.i320.i:                                 ; preds = %sisusb_write_memio_long.exit314.i
  call void @__sanitizer_cov_trace_pc() #12
  %258 = ptrtoint ptr %packet.i316.i to i32
  call void @__asan_load2_noabort(i32 %258)
  %259 = load i16, ptr %packet.i316.i, align 2
  %260 = call i16 @llvm.bswap.i16(i16 %259) #10
  %261 = ptrtoint ptr %packet.i316.i to i32
  call void @__asan_store2_noabort(i32 %261)
  store i16 %260, ptr %packet.i316.i, align 2
  %262 = ptrtoint ptr %19 to i32
  call void @__asan_loadN_noabort(i32 %262, i32 4)
  %263 = load i32, ptr %19, align 2
  %264 = call i32 @llvm.bswap.i32(i32 %263) #10
  %265 = ptrtoint ptr %19 to i32
  call void @__asan_storeN_noabort(i32 %265, i32 4)
  store i32 %264, ptr %19, align 2
  %266 = ptrtoint ptr %20 to i32
  call void @__asan_loadN_noabort(i32 %266, i32 4)
  %267 = load i32, ptr %20, align 2
  %268 = call i32 @llvm.bswap.i32(i32 %267) #10
  %269 = ptrtoint ptr %20 to i32
  call void @__asan_storeN_noabort(i32 %269, i32 4)
  store i32 %268, ptr %20, align 2
  %call7.i.i319.i = call fastcc i32 @sisusb_send_bulk_msg(ptr noundef %sisusb, i32 noundef 14, i32 noundef 10, ptr noundef nonnull %packet.i316.i, ptr noundef null, i32 noundef 0, ptr noundef nonnull %bytes_transferred.i.i315.i, i32 noundef 0) #10
  br label %sisusb_write_memio_long.exit322.i

sisusb_write_memio_long.exit322.i:                ; preds = %do.body.i.i320.i, %sisusb_write_memio_long.exit314.i.sisusb_write_memio_long.exit322.i_crit_edge
  %retval.0.i.i321.i = phi i32 [ 1, %sisusb_write_memio_long.exit314.i.sisusb_write_memio_long.exit322.i_crit_edge ], [ %call7.i.i319.i, %do.body.i.i320.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bytes_transferred.i.i315.i) #10
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %packet.i316.i) #10
  %or20.i = or i32 %or17.i, %retval.0.i.i321.i
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %packet.i324.i) #10
  %270 = ptrtoint ptr %21 to i32
  call void @__asan_storeN_noabort(i32 %270, i32 4)
  store i32 -805306356, ptr %21, align 2
  %271 = ptrtoint ptr %packet.i324.i to i32
  call void @__asan_store2_noabort(i32 %271)
  store i16 15, ptr %packet.i324.i, align 2
  %272 = ptrtoint ptr %22 to i32
  call void @__asan_storeN_noabort(i32 %272, i32 4)
  store i32 -839974621, ptr %22, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bytes_transferred.i.i323.i) #10
  %273 = ptrtoint ptr %bytes_transferred.i.i323.i to i32
  call void @__asan_store4_noabort(i32 %273)
  store i32 0, ptr %bytes_transferred.i.i323.i, align 4
  %call.i.i325.i = call fastcc i32 @sisusb_wait_all_out_complete(ptr noundef %sisusb) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i325.i)
  %tobool.not.i.i326.i = icmp eq i32 %call.i.i325.i, 0
  br i1 %tobool.not.i.i326.i, label %sisusb_write_memio_long.exit322.i.sisusb_write_memio_long.exit330.i_crit_edge, label %do.body.i.i328.i

sisusb_write_memio_long.exit322.i.sisusb_write_memio_long.exit330.i_crit_edge: ; preds = %sisusb_write_memio_long.exit322.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sisusb_write_memio_long.exit330.i

do.body.i.i328.i:                                 ; preds = %sisusb_write_memio_long.exit322.i
  call void @__sanitizer_cov_trace_pc() #12
  %274 = ptrtoint ptr %packet.i324.i to i32
  call void @__asan_load2_noabort(i32 %274)
  %275 = load i16, ptr %packet.i324.i, align 2
  %276 = call i16 @llvm.bswap.i16(i16 %275) #10
  %277 = ptrtoint ptr %packet.i324.i to i32
  call void @__asan_store2_noabort(i32 %277)
  store i16 %276, ptr %packet.i324.i, align 2
  %278 = ptrtoint ptr %21 to i32
  call void @__asan_loadN_noabort(i32 %278, i32 4)
  %279 = load i32, ptr %21, align 2
  %280 = call i32 @llvm.bswap.i32(i32 %279) #10
  %281 = ptrtoint ptr %21 to i32
  call void @__asan_storeN_noabort(i32 %281, i32 4)
  store i32 %280, ptr %21, align 2
  %282 = ptrtoint ptr %22 to i32
  call void @__asan_loadN_noabort(i32 %282, i32 4)
  %283 = load i32, ptr %22, align 2
  %284 = call i32 @llvm.bswap.i32(i32 %283) #10
  %285 = ptrtoint ptr %22 to i32
  call void @__asan_storeN_noabort(i32 %285, i32 4)
  store i32 %284, ptr %22, align 2
  %call7.i.i327.i = call fastcc i32 @sisusb_send_bulk_msg(ptr noundef %sisusb, i32 noundef 14, i32 noundef 10, ptr noundef nonnull %packet.i324.i, ptr noundef null, i32 noundef 0, ptr noundef nonnull %bytes_transferred.i.i323.i, i32 noundef 0) #10
  br label %sisusb_write_memio_long.exit330.i

sisusb_write_memio_long.exit330.i:                ; preds = %do.body.i.i328.i, %sisusb_write_memio_long.exit322.i.sisusb_write_memio_long.exit330.i_crit_edge
  %retval.0.i.i329.i = phi i32 [ 1, %sisusb_write_memio_long.exit322.i.sisusb_write_memio_long.exit330.i_crit_edge ], [ %call7.i.i327.i, %do.body.i.i328.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bytes_transferred.i.i323.i) #10
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %packet.i324.i) #10
  %or23.i = or i32 %or20.i, %retval.0.i.i329.i
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %packet.i332.i) #10
  %286 = ptrtoint ptr %23 to i32
  call void @__asan_storeN_noabort(i32 %286, i32 4)
  store i32 -805306352, ptr %23, align 2
  %287 = ptrtoint ptr %packet.i332.i to i32
  call void @__asan_store2_noabort(i32 %287)
  store i16 15, ptr %packet.i332.i, align 2
  %288 = ptrtoint ptr %24 to i32
  call void @__asan_storeN_noabort(i32 %288, i32 4)
  store i32 1431655765, ptr %24, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bytes_transferred.i.i331.i) #10
  %289 = ptrtoint ptr %bytes_transferred.i.i331.i to i32
  call void @__asan_store4_noabort(i32 %289)
  store i32 0, ptr %bytes_transferred.i.i331.i, align 4
  %call.i.i333.i = call fastcc i32 @sisusb_wait_all_out_complete(ptr noundef %sisusb) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i333.i)
  %tobool.not.i.i334.i = icmp eq i32 %call.i.i333.i, 0
  br i1 %tobool.not.i.i334.i, label %sisusb_write_memio_long.exit330.i.sisusb_write_memio_long.exit338.i_crit_edge, label %do.body.i.i336.i

sisusb_write_memio_long.exit330.i.sisusb_write_memio_long.exit338.i_crit_edge: ; preds = %sisusb_write_memio_long.exit330.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sisusb_write_memio_long.exit338.i

do.body.i.i336.i:                                 ; preds = %sisusb_write_memio_long.exit330.i
  call void @__sanitizer_cov_trace_pc() #12
  %290 = ptrtoint ptr %packet.i332.i to i32
  call void @__asan_load2_noabort(i32 %290)
  %291 = load i16, ptr %packet.i332.i, align 2
  %292 = call i16 @llvm.bswap.i16(i16 %291) #10
  %293 = ptrtoint ptr %packet.i332.i to i32
  call void @__asan_store2_noabort(i32 %293)
  store i16 %292, ptr %packet.i332.i, align 2
  %294 = ptrtoint ptr %23 to i32
  call void @__asan_loadN_noabort(i32 %294, i32 4)
  %295 = load i32, ptr %23, align 2
  %296 = call i32 @llvm.bswap.i32(i32 %295) #10
  %297 = ptrtoint ptr %23 to i32
  call void @__asan_storeN_noabort(i32 %297, i32 4)
  store i32 %296, ptr %23, align 2
  %298 = ptrtoint ptr %24 to i32
  call void @__asan_loadN_noabort(i32 %298, i32 4)
  %299 = load i32, ptr %24, align 2
  %300 = call i32 @llvm.bswap.i32(i32 %299) #10
  %301 = ptrtoint ptr %24 to i32
  call void @__asan_storeN_noabort(i32 %301, i32 4)
  store i32 %300, ptr %24, align 2
  %call7.i.i335.i = call fastcc i32 @sisusb_send_bulk_msg(ptr noundef %sisusb, i32 noundef 14, i32 noundef 10, ptr noundef nonnull %packet.i332.i, ptr noundef null, i32 noundef 0, ptr noundef nonnull %bytes_transferred.i.i331.i, i32 noundef 0) #10
  br label %sisusb_write_memio_long.exit338.i

sisusb_write_memio_long.exit338.i:                ; preds = %do.body.i.i336.i, %sisusb_write_memio_long.exit330.i.sisusb_write_memio_long.exit338.i_crit_edge
  %retval.0.i.i337.i = phi i32 [ 1, %sisusb_write_memio_long.exit330.i.sisusb_write_memio_long.exit338.i_crit_edge ], [ %call7.i.i335.i, %do.body.i.i336.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bytes_transferred.i.i331.i) #10
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %packet.i332.i) #10
  %or26.i = or i32 %or23.i, %retval.0.i.i337.i
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %packet.i340.i) #10
  %302 = ptrtoint ptr %25 to i32
  call void @__asan_storeN_noabort(i32 %302, i32 4)
  store i32 -805306348, ptr %25, align 2
  %303 = ptrtoint ptr %packet.i340.i to i32
  call void @__asan_store2_noabort(i32 %303)
  store i16 15, ptr %packet.i340.i, align 2
  %304 = ptrtoint ptr %26 to i32
  call void @__asan_storeN_noabort(i32 %304, i32 4)
  store i32 1431655765, ptr %26, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bytes_transferred.i.i339.i) #10
  %305 = ptrtoint ptr %bytes_transferred.i.i339.i to i32
  call void @__asan_store4_noabort(i32 %305)
  store i32 0, ptr %bytes_transferred.i.i339.i, align 4
  %call.i.i341.i = call fastcc i32 @sisusb_wait_all_out_complete(ptr noundef %sisusb) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i341.i)
  %tobool.not.i.i342.i = icmp eq i32 %call.i.i341.i, 0
  br i1 %tobool.not.i.i342.i, label %sisusb_write_memio_long.exit338.i.sisusb_write_memio_long.exit346.i_crit_edge, label %do.body.i.i344.i

sisusb_write_memio_long.exit338.i.sisusb_write_memio_long.exit346.i_crit_edge: ; preds = %sisusb_write_memio_long.exit338.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sisusb_write_memio_long.exit346.i

do.body.i.i344.i:                                 ; preds = %sisusb_write_memio_long.exit338.i
  call void @__sanitizer_cov_trace_pc() #12
  %306 = ptrtoint ptr %packet.i340.i to i32
  call void @__asan_load2_noabort(i32 %306)
  %307 = load i16, ptr %packet.i340.i, align 2
  %308 = call i16 @llvm.bswap.i16(i16 %307) #10
  %309 = ptrtoint ptr %packet.i340.i to i32
  call void @__asan_store2_noabort(i32 %309)
  store i16 %308, ptr %packet.i340.i, align 2
  %310 = ptrtoint ptr %25 to i32
  call void @__asan_loadN_noabort(i32 %310, i32 4)
  %311 = load i32, ptr %25, align 2
  %312 = call i32 @llvm.bswap.i32(i32 %311) #10
  %313 = ptrtoint ptr %25 to i32
  call void @__asan_storeN_noabort(i32 %313, i32 4)
  store i32 %312, ptr %25, align 2
  %314 = ptrtoint ptr %26 to i32
  call void @__asan_loadN_noabort(i32 %314, i32 4)
  %315 = load i32, ptr %26, align 2
  %316 = call i32 @llvm.bswap.i32(i32 %315) #10
  %317 = ptrtoint ptr %26 to i32
  call void @__asan_storeN_noabort(i32 %317, i32 4)
  store i32 %316, ptr %26, align 2
  %call7.i.i343.i = call fastcc i32 @sisusb_send_bulk_msg(ptr noundef %sisusb, i32 noundef 14, i32 noundef 10, ptr noundef nonnull %packet.i340.i, ptr noundef null, i32 noundef 0, ptr noundef nonnull %bytes_transferred.i.i339.i, i32 noundef 0) #10
  br label %sisusb_write_memio_long.exit346.i

sisusb_write_memio_long.exit346.i:                ; preds = %do.body.i.i344.i, %sisusb_write_memio_long.exit338.i.sisusb_write_memio_long.exit346.i_crit_edge
  %retval.0.i.i345.i = phi i32 [ 1, %sisusb_write_memio_long.exit338.i.sisusb_write_memio_long.exit346.i_crit_edge ], [ %call7.i.i343.i, %do.body.i.i344.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bytes_transferred.i.i339.i) #10
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %packet.i340.i) #10
  %or29.i = or i32 %or26.i, %retval.0.i.i345.i
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %packet.i348.i) #10
  %318 = ptrtoint ptr %27 to i32
  call void @__asan_storeN_noabort(i32 %318, i32 4)
  store i32 -805306344, ptr %27, align 2
  %319 = ptrtoint ptr %packet.i348.i to i32
  call void @__asan_store2_noabort(i32 %319)
  store i16 15, ptr %packet.i348.i, align 2
  %320 = ptrtoint ptr %28 to i32
  call void @__asan_storeN_noabort(i32 %320, i32 4)
  store i32 -1, ptr %28, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bytes_transferred.i.i347.i) #10
  %321 = ptrtoint ptr %bytes_transferred.i.i347.i to i32
  call void @__asan_store4_noabort(i32 %321)
  store i32 0, ptr %bytes_transferred.i.i347.i, align 4
  %call.i.i349.i = call fastcc i32 @sisusb_wait_all_out_complete(ptr noundef %sisusb) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i349.i)
  %tobool.not.i.i350.i = icmp eq i32 %call.i.i349.i, 0
  br i1 %tobool.not.i.i350.i, label %sisusb_write_memio_long.exit346.i.sisusb_write_memio_long.exit354.i_crit_edge, label %do.body.i.i352.i

sisusb_write_memio_long.exit346.i.sisusb_write_memio_long.exit354.i_crit_edge: ; preds = %sisusb_write_memio_long.exit346.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sisusb_write_memio_long.exit354.i

do.body.i.i352.i:                                 ; preds = %sisusb_write_memio_long.exit346.i
  call void @__sanitizer_cov_trace_pc() #12
  %322 = ptrtoint ptr %packet.i348.i to i32
  call void @__asan_load2_noabort(i32 %322)
  %323 = load i16, ptr %packet.i348.i, align 2
  %324 = call i16 @llvm.bswap.i16(i16 %323) #10
  %325 = ptrtoint ptr %packet.i348.i to i32
  call void @__asan_store2_noabort(i32 %325)
  store i16 %324, ptr %packet.i348.i, align 2
  %326 = ptrtoint ptr %27 to i32
  call void @__asan_loadN_noabort(i32 %326, i32 4)
  %327 = load i32, ptr %27, align 2
  %328 = call i32 @llvm.bswap.i32(i32 %327) #10
  %329 = ptrtoint ptr %27 to i32
  call void @__asan_storeN_noabort(i32 %329, i32 4)
  store i32 %328, ptr %27, align 2
  %330 = ptrtoint ptr %28 to i32
  call void @__asan_loadN_noabort(i32 %330, i32 4)
  %331 = load i32, ptr %28, align 2
  %332 = call i32 @llvm.bswap.i32(i32 %331) #10
  %333 = ptrtoint ptr %28 to i32
  call void @__asan_storeN_noabort(i32 %333, i32 4)
  store i32 %332, ptr %28, align 2
  %call7.i.i351.i = call fastcc i32 @sisusb_send_bulk_msg(ptr noundef %sisusb, i32 noundef 14, i32 noundef 10, ptr noundef nonnull %packet.i348.i, ptr noundef null, i32 noundef 0, ptr noundef nonnull %bytes_transferred.i.i347.i, i32 noundef 0) #10
  br label %sisusb_write_memio_long.exit354.i

sisusb_write_memio_long.exit354.i:                ; preds = %do.body.i.i352.i, %sisusb_write_memio_long.exit346.i.sisusb_write_memio_long.exit354.i_crit_edge
  %retval.0.i.i353.i = phi i32 [ 1, %sisusb_write_memio_long.exit346.i.sisusb_write_memio_long.exit354.i_crit_edge ], [ %call7.i.i351.i, %do.body.i.i352.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bytes_transferred.i.i347.i) #10
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %packet.i348.i) #10
  %or32.i = or i32 %or29.i, %retval.0.i.i353.i
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %packet.i356.i) #10
  %334 = ptrtoint ptr %29 to i32
  call void @__asan_storeN_noabort(i32 %334, i32 4)
  store i32 -805306340, ptr %29, align 2
  %335 = ptrtoint ptr %packet.i356.i to i32
  call void @__asan_store2_noabort(i32 %335)
  store i16 15, ptr %packet.i356.i, align 2
  %336 = ptrtoint ptr %30 to i32
  call void @__asan_storeN_noabort(i32 %336, i32 4)
  store i32 -1, ptr %30, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bytes_transferred.i.i355.i) #10
  %337 = ptrtoint ptr %bytes_transferred.i.i355.i to i32
  call void @__asan_store4_noabort(i32 %337)
  store i32 0, ptr %bytes_transferred.i.i355.i, align 4
  %call.i.i357.i = call fastcc i32 @sisusb_wait_all_out_complete(ptr noundef %sisusb) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i357.i)
  %tobool.not.i.i358.i = icmp eq i32 %call.i.i357.i, 0
  br i1 %tobool.not.i.i358.i, label %sisusb_write_memio_long.exit354.i.sisusb_write_memio_long.exit362.i_crit_edge, label %do.body.i.i360.i

sisusb_write_memio_long.exit354.i.sisusb_write_memio_long.exit362.i_crit_edge: ; preds = %sisusb_write_memio_long.exit354.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sisusb_write_memio_long.exit362.i

do.body.i.i360.i:                                 ; preds = %sisusb_write_memio_long.exit354.i
  call void @__sanitizer_cov_trace_pc() #12
  %338 = ptrtoint ptr %packet.i356.i to i32
  call void @__asan_load2_noabort(i32 %338)
  %339 = load i16, ptr %packet.i356.i, align 2
  %340 = call i16 @llvm.bswap.i16(i16 %339) #10
  %341 = ptrtoint ptr %packet.i356.i to i32
  call void @__asan_store2_noabort(i32 %341)
  store i16 %340, ptr %packet.i356.i, align 2
  %342 = ptrtoint ptr %29 to i32
  call void @__asan_loadN_noabort(i32 %342, i32 4)
  %343 = load i32, ptr %29, align 2
  %344 = call i32 @llvm.bswap.i32(i32 %343) #10
  %345 = ptrtoint ptr %29 to i32
  call void @__asan_storeN_noabort(i32 %345, i32 4)
  store i32 %344, ptr %29, align 2
  %346 = ptrtoint ptr %30 to i32
  call void @__asan_loadN_noabort(i32 %346, i32 4)
  %347 = load i32, ptr %30, align 2
  %348 = call i32 @llvm.bswap.i32(i32 %347) #10
  %349 = ptrtoint ptr %30 to i32
  call void @__asan_storeN_noabort(i32 %349, i32 4)
  store i32 %348, ptr %30, align 2
  %call7.i.i359.i = call fastcc i32 @sisusb_send_bulk_msg(ptr noundef %sisusb, i32 noundef 14, i32 noundef 10, ptr noundef nonnull %packet.i356.i, ptr noundef null, i32 noundef 0, ptr noundef nonnull %bytes_transferred.i.i355.i, i32 noundef 0) #10
  br label %sisusb_write_memio_long.exit362.i

sisusb_write_memio_long.exit362.i:                ; preds = %do.body.i.i360.i, %sisusb_write_memio_long.exit354.i.sisusb_write_memio_long.exit362.i_crit_edge
  %retval.0.i.i361.i = phi i32 [ 1, %sisusb_write_memio_long.exit354.i.sisusb_write_memio_long.exit362.i_crit_edge ], [ %call7.i.i359.i, %do.body.i.i360.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bytes_transferred.i.i355.i) #10
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %packet.i356.i) #10
  %or35.i = or i32 %or32.i, %retval.0.i.i361.i
  %call37.i = call fastcc i32 @sisusb_read_memio_long(ptr noundef %sisusb, i32 noundef 0, i32 noundef -805306368, ptr noundef nonnull %t0.i) #10
  %or38.i = or i32 %or35.i, %call37.i
  %call40.i = call fastcc i32 @sisusb_read_memio_long(ptr noundef %sisusb, i32 noundef 0, i32 noundef -805306364, ptr noundef nonnull %t1.i) #10
  %or41.i = or i32 %or38.i, %call40.i
  %call43.i = call fastcc i32 @sisusb_read_memio_long(ptr noundef %sisusb, i32 noundef 0, i32 noundef -805306360, ptr noundef nonnull %t2.i) #10
  %or44.i = or i32 %or41.i, %call43.i
  %call46.i = call fastcc i32 @sisusb_read_memio_long(ptr noundef %sisusb, i32 noundef 0, i32 noundef -805306356, ptr noundef nonnull %t3.i) #10
  %or47.i = or i32 %or44.i, %call46.i
  %350 = ptrtoint ptr %ramtype.i to i32
  call void @__asan_load1_noabort(i32 %350)
  %351 = load i8, ptr %ramtype.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %351)
  %cmp49.i = icmp ult i8 %351, 2
  br i1 %cmp49.i, label %if.then51.i, label %if.else104.i

if.then51.i:                                      ; preds = %sisusb_write_memio_long.exit362.i
  %352 = ptrtoint ptr %t3.i to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load i32, ptr %t3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -839974621, i32 %353)
  %cmp52.not.i = icmp eq i32 %353, -839974621
  br i1 %cmp52.not.i, label %lor.lhs.false.i, label %if.then51.i.if.then56.i_crit_edge

if.then51.i.if.then56.i_crit_edge:                ; preds = %if.then51.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then56.i

lor.lhs.false.i:                                  ; preds = %if.then51.i
  %354 = ptrtoint ptr %t2.i to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load i32, ptr %t2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1985229329, i32 %355)
  %cmp54.not.i = icmp eq i32 %355, -1985229329
  br i1 %cmp54.not.i, label %lor.lhs.false.i.if.end65.i_crit_edge, label %lor.lhs.false.i.if.then56.i_crit_edge

lor.lhs.false.i.if.then56.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then56.i

lor.lhs.false.i.if.end65.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end65.i

if.then56.i:                                      ; preds = %lor.lhs.false.i.if.then56.i_crit_edge, %if.then51.i.if.then56.i_crit_edge
  %356 = ptrtoint ptr %t1.i to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load i32, ptr %t1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1164413355, i32 %357)
  %cmp57.i = icmp eq i32 %357, 1164413355
  br i1 %cmp57.i, label %land.lhs.true.i, label %if.then56.i.if.then71.i_crit_edge

if.then56.i.if.then71.i_crit_edge:                ; preds = %if.then56.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then71.i

land.lhs.true.i:                                  ; preds = %if.then56.i
  %358 = ptrtoint ptr %t0.i to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load i32, ptr %t0.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 19088743, i32 %359)
  %cmp59.i = icmp eq i32 %359, 19088743
  br i1 %cmp59.i, label %if.then61.i, label %land.lhs.true.i.if.then71.i_crit_edge

land.lhs.true.i.if.then71.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then71.i

if.then61.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i363.i = call i32 @sisusb_setidxregandor(ptr noundef %sisusb, i32 noundef 53316, i8 noundef zeroext 20, i8 noundef zeroext -3, i8 noundef zeroext 0) #10
  %or63.i = or i32 %call.i363.i, %or47.i
  br label %if.end65.i

if.end65.i:                                       ; preds = %if.then61.i, %lor.lhs.false.i.if.end65.i_crit_edge
  %ret.1.ph.i = phi i32 [ %or47.i, %lor.lhs.false.i.if.end65.i_crit_edge ], [ %or63.i, %if.then61.i ]
  %360 = ptrtoint ptr %t1.i to i32
  call void @__asan_load4_noabort(i32 %360)
  %.pr.i = load i32, ptr %t1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1164413355, i32 %.pr.i)
  %cmp66.not.i = icmp eq i32 %.pr.i, 1164413355
  br i1 %cmp66.not.i, label %lor.lhs.false68.i, label %if.end65.i.if.then71.i_crit_edge

if.end65.i.if.then71.i_crit_edge:                 ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then71.i

lor.lhs.false68.i:                                ; preds = %if.end65.i
  %361 = ptrtoint ptr %t0.i to i32
  call void @__asan_load4_noabort(i32 %361)
  %.pr484.i = load i32, ptr %t0.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 19088743, i32 %.pr484.i)
  %cmp69.not.i = icmp eq i32 %.pr484.i, 19088743
  br i1 %cmp69.not.i, label %lor.lhs.false68.i.sisusb_getbuswidth.exit_crit_edge, label %lor.lhs.false68.i.if.then71.i_crit_edge

lor.lhs.false68.i.if.then71.i_crit_edge:          ; preds = %lor.lhs.false68.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then71.i

lor.lhs.false68.i.sisusb_getbuswidth.exit_crit_edge: ; preds = %lor.lhs.false68.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sisusb_getbuswidth.exit

if.then71.i:                                      ; preds = %lor.lhs.false68.i.if.then71.i_crit_edge, %if.end65.i.if.then71.i_crit_edge, %land.lhs.true.i.if.then71.i_crit_edge, %if.then56.i.if.then71.i_crit_edge
  %ret.1479.i = phi i32 [ %ret.1.ph.i, %lor.lhs.false68.i.if.then71.i_crit_edge ], [ %ret.1.ph.i, %if.end65.i.if.then71.i_crit_edge ], [ %or47.i, %if.then56.i.if.then71.i_crit_edge ], [ %or47.i, %land.lhs.true.i.if.then71.i_crit_edge ]
  %call72.i = call i32 @sisusb_setidxregandor(ptr noundef %sisusb, i32 noundef 53316, i8 noundef zeroext 20, i8 noundef zeroext -4, i8 noundef zeroext 1) #10
  %or73.i = or i32 %call72.i, %ret.1479.i
  %call74.i = call fastcc i32 @sisusb_triggersr16(ptr noundef %sisusb, i8 noundef zeroext %351) #10
  %or75.i = or i32 %or73.i, %call74.i
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %packet.i365.i) #10
  %362 = ptrtoint ptr %47 to i32
  call void @__asan_storeN_noabort(i32 %362, i32 4)
  store i32 -805306368, ptr %47, align 2
  %363 = ptrtoint ptr %packet.i365.i to i32
  call void @__asan_store2_noabort(i32 %363)
  store i16 15, ptr %packet.i365.i, align 2
  %364 = ptrtoint ptr %48 to i32
  call void @__asan_storeN_noabort(i32 %364, i32 4)
  store i32 -1985229329, ptr %48, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bytes_transferred.i.i364.i) #10
  %365 = ptrtoint ptr %bytes_transferred.i.i364.i to i32
  call void @__asan_store4_noabort(i32 %365)
  store i32 0, ptr %bytes_transferred.i.i364.i, align 4
  %call.i.i366.i = call fastcc i32 @sisusb_wait_all_out_complete(ptr noundef %sisusb) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i366.i)
  %tobool.not.i.i367.i = icmp eq i32 %call.i.i366.i, 0
  br i1 %tobool.not.i.i367.i, label %if.then71.i.sisusb_write_memio_long.exit371.i_crit_edge, label %do.body.i.i369.i

if.then71.i.sisusb_write_memio_long.exit371.i_crit_edge: ; preds = %if.then71.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sisusb_write_memio_long.exit371.i

do.body.i.i369.i:                                 ; preds = %if.then71.i
  call void @__sanitizer_cov_trace_pc() #12
  %366 = ptrtoint ptr %packet.i365.i to i32
  call void @__asan_load2_noabort(i32 %366)
  %367 = load i16, ptr %packet.i365.i, align 2
  %368 = call i16 @llvm.bswap.i16(i16 %367) #10
  %369 = ptrtoint ptr %packet.i365.i to i32
  call void @__asan_store2_noabort(i32 %369)
  store i16 %368, ptr %packet.i365.i, align 2
  %370 = ptrtoint ptr %47 to i32
  call void @__asan_loadN_noabort(i32 %370, i32 4)
  %371 = load i32, ptr %47, align 2
  %372 = call i32 @llvm.bswap.i32(i32 %371) #10
  %373 = ptrtoint ptr %47 to i32
  call void @__asan_storeN_noabort(i32 %373, i32 4)
  store i32 %372, ptr %47, align 2
  %374 = ptrtoint ptr %48 to i32
  call void @__asan_loadN_noabort(i32 %374, i32 4)
  %375 = load i32, ptr %48, align 2
  %376 = call i32 @llvm.bswap.i32(i32 %375) #10
  %377 = ptrtoint ptr %48 to i32
  call void @__asan_storeN_noabort(i32 %377, i32 4)
  store i32 %376, ptr %48, align 2
  %call7.i.i368.i = call fastcc i32 @sisusb_send_bulk_msg(ptr noundef %sisusb, i32 noundef 14, i32 noundef 10, ptr noundef nonnull %packet.i365.i, ptr noundef null, i32 noundef 0, ptr noundef nonnull %bytes_transferred.i.i364.i, i32 noundef 0) #10
  br label %sisusb_write_memio_long.exit371.i

sisusb_write_memio_long.exit371.i:                ; preds = %do.body.i.i369.i, %if.then71.i.sisusb_write_memio_long.exit371.i_crit_edge
  %retval.0.i.i370.i = phi i32 [ 1, %if.then71.i.sisusb_write_memio_long.exit371.i_crit_edge ], [ %call7.i.i368.i, %do.body.i.i369.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bytes_transferred.i.i364.i) #10
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %packet.i365.i) #10
  %or78.i = or i32 %or75.i, %retval.0.i.i370.i
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %packet.i373.i) #10
  %378 = ptrtoint ptr %49 to i32
  call void @__asan_storeN_noabort(i32 %378, i32 4)
  store i32 -805306364, ptr %49, align 2
  %379 = ptrtoint ptr %packet.i373.i to i32
  call void @__asan_store2_noabort(i32 %379)
  store i16 15, ptr %packet.i373.i, align 2
  %380 = ptrtoint ptr %50 to i32
  call void @__asan_storeN_noabort(i32 %380, i32 4)
  store i32 -839974621, ptr %50, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bytes_transferred.i.i372.i) #10
  %381 = ptrtoint ptr %bytes_transferred.i.i372.i to i32
  call void @__asan_store4_noabort(i32 %381)
  store i32 0, ptr %bytes_transferred.i.i372.i, align 4
  %call.i.i374.i = call fastcc i32 @sisusb_wait_all_out_complete(ptr noundef %sisusb) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i374.i)
  %tobool.not.i.i375.i = icmp eq i32 %call.i.i374.i, 0
  br i1 %tobool.not.i.i375.i, label %sisusb_write_memio_long.exit371.i.sisusb_write_memio_long.exit379.i_crit_edge, label %do.body.i.i377.i

sisusb_write_memio_long.exit371.i.sisusb_write_memio_long.exit379.i_crit_edge: ; preds = %sisusb_write_memio_long.exit371.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sisusb_write_memio_long.exit379.i

do.body.i.i377.i:                                 ; preds = %sisusb_write_memio_long.exit371.i
  call void @__sanitizer_cov_trace_pc() #12
  %382 = ptrtoint ptr %packet.i373.i to i32
  call void @__asan_load2_noabort(i32 %382)
  %383 = load i16, ptr %packet.i373.i, align 2
  %384 = call i16 @llvm.bswap.i16(i16 %383) #10
  %385 = ptrtoint ptr %packet.i373.i to i32
  call void @__asan_store2_noabort(i32 %385)
  store i16 %384, ptr %packet.i373.i, align 2
  %386 = ptrtoint ptr %49 to i32
  call void @__asan_loadN_noabort(i32 %386, i32 4)
  %387 = load i32, ptr %49, align 2
  %388 = call i32 @llvm.bswap.i32(i32 %387) #10
  %389 = ptrtoint ptr %49 to i32
  call void @__asan_storeN_noabort(i32 %389, i32 4)
  store i32 %388, ptr %49, align 2
  %390 = ptrtoint ptr %50 to i32
  call void @__asan_loadN_noabort(i32 %390, i32 4)
  %391 = load i32, ptr %50, align 2
  %392 = call i32 @llvm.bswap.i32(i32 %391) #10
  %393 = ptrtoint ptr %50 to i32
  call void @__asan_storeN_noabort(i32 %393, i32 4)
  store i32 %392, ptr %50, align 2
  %call7.i.i376.i = call fastcc i32 @sisusb_send_bulk_msg(ptr noundef %sisusb, i32 noundef 14, i32 noundef 10, ptr noundef nonnull %packet.i373.i, ptr noundef null, i32 noundef 0, ptr noundef nonnull %bytes_transferred.i.i372.i, i32 noundef 0) #10
  br label %sisusb_write_memio_long.exit379.i

sisusb_write_memio_long.exit379.i:                ; preds = %do.body.i.i377.i, %sisusb_write_memio_long.exit371.i.sisusb_write_memio_long.exit379.i_crit_edge
  %retval.0.i.i378.i = phi i32 [ 1, %sisusb_write_memio_long.exit371.i.sisusb_write_memio_long.exit379.i_crit_edge ], [ %call7.i.i376.i, %do.body.i.i377.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bytes_transferred.i.i372.i) #10
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %packet.i373.i) #10
  %or81.i = or i32 %or78.i, %retval.0.i.i378.i
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %packet.i381.i) #10
  %394 = ptrtoint ptr %51 to i32
  call void @__asan_storeN_noabort(i32 %394, i32 4)
  store i32 -805306360, ptr %51, align 2
  %395 = ptrtoint ptr %packet.i381.i to i32
  call void @__asan_store2_noabort(i32 %395)
  store i16 15, ptr %packet.i381.i, align 2
  %396 = ptrtoint ptr %52 to i32
  call void @__asan_storeN_noabort(i32 %396, i32 4)
  store i32 1431655765, ptr %52, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bytes_transferred.i.i380.i) #10
  %397 = ptrtoint ptr %bytes_transferred.i.i380.i to i32
  call void @__asan_store4_noabort(i32 %397)
  store i32 0, ptr %bytes_transferred.i.i380.i, align 4
  %call.i.i382.i = call fastcc i32 @sisusb_wait_all_out_complete(ptr noundef %sisusb) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i382.i)
  %tobool.not.i.i383.i = icmp eq i32 %call.i.i382.i, 0
  br i1 %tobool.not.i.i383.i, label %sisusb_write_memio_long.exit379.i.sisusb_write_memio_long.exit387.i_crit_edge, label %do.body.i.i385.i

sisusb_write_memio_long.exit379.i.sisusb_write_memio_long.exit387.i_crit_edge: ; preds = %sisusb_write_memio_long.exit379.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sisusb_write_memio_long.exit387.i

do.body.i.i385.i:                                 ; preds = %sisusb_write_memio_long.exit379.i
  call void @__sanitizer_cov_trace_pc() #12
  %398 = ptrtoint ptr %packet.i381.i to i32
  call void @__asan_load2_noabort(i32 %398)
  %399 = load i16, ptr %packet.i381.i, align 2
  %400 = call i16 @llvm.bswap.i16(i16 %399) #10
  %401 = ptrtoint ptr %packet.i381.i to i32
  call void @__asan_store2_noabort(i32 %401)
  store i16 %400, ptr %packet.i381.i, align 2
  %402 = ptrtoint ptr %51 to i32
  call void @__asan_loadN_noabort(i32 %402, i32 4)
  %403 = load i32, ptr %51, align 2
  %404 = call i32 @llvm.bswap.i32(i32 %403) #10
  %405 = ptrtoint ptr %51 to i32
  call void @__asan_storeN_noabort(i32 %405, i32 4)
  store i32 %404, ptr %51, align 2
  %406 = ptrtoint ptr %52 to i32
  call void @__asan_loadN_noabort(i32 %406, i32 4)
  %407 = load i32, ptr %52, align 2
  %408 = call i32 @llvm.bswap.i32(i32 %407) #10
  %409 = ptrtoint ptr %52 to i32
  call void @__asan_storeN_noabort(i32 %409, i32 4)
  store i32 %408, ptr %52, align 2
  %call7.i.i384.i = call fastcc i32 @sisusb_send_bulk_msg(ptr noundef %sisusb, i32 noundef 14, i32 noundef 10, ptr noundef nonnull %packet.i381.i, ptr noundef null, i32 noundef 0, ptr noundef nonnull %bytes_transferred.i.i380.i, i32 noundef 0) #10
  br label %sisusb_write_memio_long.exit387.i

sisusb_write_memio_long.exit387.i:                ; preds = %do.body.i.i385.i, %sisusb_write_memio_long.exit379.i.sisusb_write_memio_long.exit387.i_crit_edge
  %retval.0.i.i386.i = phi i32 [ 1, %sisusb_write_memio_long.exit379.i.sisusb_write_memio_long.exit387.i_crit_edge ], [ %call7.i.i384.i, %do.body.i.i385.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bytes_transferred.i.i380.i) #10
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %packet.i381.i) #10
  %or84.i = or i32 %or81.i, %retval.0.i.i386.i
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %packet.i389.i) #10
  %410 = ptrtoint ptr %53 to i32
  call void @__asan_storeN_noabort(i32 %410, i32 4)
  store i32 -805306356, ptr %53, align 2
  %411 = ptrtoint ptr %packet.i389.i to i32
  call void @__asan_store2_noabort(i32 %411)
  store i16 15, ptr %packet.i389.i, align 2
  %412 = ptrtoint ptr %54 to i32
  call void @__asan_storeN_noabort(i32 %412, i32 4)
  store i32 1431655765, ptr %54, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bytes_transferred.i.i388.i) #10
  %413 = ptrtoint ptr %bytes_transferred.i.i388.i to i32
  call void @__asan_store4_noabort(i32 %413)
  store i32 0, ptr %bytes_transferred.i.i388.i, align 4
  %call.i.i390.i = call fastcc i32 @sisusb_wait_all_out_complete(ptr noundef %sisusb) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i390.i)
  %tobool.not.i.i391.i = icmp eq i32 %call.i.i390.i, 0
  br i1 %tobool.not.i.i391.i, label %sisusb_write_memio_long.exit387.i.sisusb_write_memio_long.exit395.i_crit_edge, label %do.body.i.i393.i

sisusb_write_memio_long.exit387.i.sisusb_write_memio_long.exit395.i_crit_edge: ; preds = %sisusb_write_memio_long.exit387.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sisusb_write_memio_long.exit395.i

do.body.i.i393.i:                                 ; preds = %sisusb_write_memio_long.exit387.i
  call void @__sanitizer_cov_trace_pc() #12
  %414 = ptrtoint ptr %packet.i389.i to i32
  call void @__asan_load2_noabort(i32 %414)
  %415 = load i16, ptr %packet.i389.i, align 2
  %416 = call i16 @llvm.bswap.i16(i16 %415) #10
  %417 = ptrtoint ptr %packet.i389.i to i32
  call void @__asan_store2_noabort(i32 %417)
  store i16 %416, ptr %packet.i389.i, align 2
  %418 = ptrtoint ptr %53 to i32
  call void @__asan_loadN_noabort(i32 %418, i32 4)
  %419 = load i32, ptr %53, align 2
  %420 = call i32 @llvm.bswap.i32(i32 %419) #10
  %421 = ptrtoint ptr %53 to i32
  call void @__asan_storeN_noabort(i32 %421, i32 4)
  store i32 %420, ptr %53, align 2
  %422 = ptrtoint ptr %54 to i32
  call void @__asan_loadN_noabort(i32 %422, i32 4)
  %423 = load i32, ptr %54, align 2
  %424 = call i32 @llvm.bswap.i32(i32 %423) #10
  %425 = ptrtoint ptr %54 to i32
  call void @__asan_storeN_noabort(i32 %425, i32 4)
  store i32 %424, ptr %54, align 2
  %call7.i.i392.i = call fastcc i32 @sisusb_send_bulk_msg(ptr noundef %sisusb, i32 noundef 14, i32 noundef 10, ptr noundef nonnull %packet.i389.i, ptr noundef null, i32 noundef 0, ptr noundef nonnull %bytes_transferred.i.i388.i, i32 noundef 0) #10
  br label %sisusb_write_memio_long.exit395.i

sisusb_write_memio_long.exit395.i:                ; preds = %do.body.i.i393.i, %sisusb_write_memio_long.exit387.i.sisusb_write_memio_long.exit395.i_crit_edge
  %retval.0.i.i394.i = phi i32 [ 1, %sisusb_write_memio_long.exit387.i.sisusb_write_memio_long.exit395.i_crit_edge ], [ %call7.i.i392.i, %do.body.i.i393.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bytes_transferred.i.i388.i) #10
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %packet.i389.i) #10
  %or87.i = or i32 %or84.i, %retval.0.i.i394.i
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %packet.i397.i) #10
  %426 = ptrtoint ptr %55 to i32
  call void @__asan_storeN_noabort(i32 %426, i32 4)
  store i32 -805306352, ptr %55, align 2
  %427 = ptrtoint ptr %packet.i397.i to i32
  call void @__asan_store2_noabort(i32 %427)
  store i16 15, ptr %packet.i397.i, align 2
  %428 = ptrtoint ptr %56 to i32
  call void @__asan_storeN_noabort(i32 %428, i32 4)
  store i32 -1431655766, ptr %56, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bytes_transferred.i.i396.i) #10
  %429 = ptrtoint ptr %bytes_transferred.i.i396.i to i32
  call void @__asan_store4_noabort(i32 %429)
  store i32 0, ptr %bytes_transferred.i.i396.i, align 4
  %call.i.i398.i = call fastcc i32 @sisusb_wait_all_out_complete(ptr noundef %sisusb) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i398.i)
  %tobool.not.i.i399.i = icmp eq i32 %call.i.i398.i, 0
  br i1 %tobool.not.i.i399.i, label %sisusb_write_memio_long.exit395.i.sisusb_write_memio_long.exit403.i_crit_edge, label %do.body.i.i401.i

sisusb_write_memio_long.exit395.i.sisusb_write_memio_long.exit403.i_crit_edge: ; preds = %sisusb_write_memio_long.exit395.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sisusb_write_memio_long.exit403.i

do.body.i.i401.i:                                 ; preds = %sisusb_write_memio_long.exit395.i
  call void @__sanitizer_cov_trace_pc() #12
  %430 = ptrtoint ptr %packet.i397.i to i32
  call void @__asan_load2_noabort(i32 %430)
  %431 = load i16, ptr %packet.i397.i, align 2
  %432 = call i16 @llvm.bswap.i16(i16 %431) #10
  %433 = ptrtoint ptr %packet.i397.i to i32
  call void @__asan_store2_noabort(i32 %433)
  store i16 %432, ptr %packet.i397.i, align 2
  %434 = ptrtoint ptr %55 to i32
  call void @__asan_loadN_noabort(i32 %434, i32 4)
  %435 = load i32, ptr %55, align 2
  %436 = call i32 @llvm.bswap.i32(i32 %435) #10
  %437 = ptrtoint ptr %55 to i32
  call void @__asan_storeN_noabort(i32 %437, i32 4)
  store i32 %436, ptr %55, align 2
  %438 = ptrtoint ptr %56 to i32
  call void @__asan_loadN_noabort(i32 %438, i32 4)
  %439 = load i32, ptr %56, align 2
  %440 = call i32 @llvm.bswap.i32(i32 %439) #10
  %441 = ptrtoint ptr %56 to i32
  call void @__asan_storeN_noabort(i32 %441, i32 4)
  store i32 %440, ptr %56, align 2
  %call7.i.i400.i = call fastcc i32 @sisusb_send_bulk_msg(ptr noundef %sisusb, i32 noundef 14, i32 noundef 10, ptr noundef nonnull %packet.i397.i, ptr noundef null, i32 noundef 0, ptr noundef nonnull %bytes_transferred.i.i396.i, i32 noundef 0) #10
  br label %sisusb_write_memio_long.exit403.i

sisusb_write_memio_long.exit403.i:                ; preds = %do.body.i.i401.i, %sisusb_write_memio_long.exit395.i.sisusb_write_memio_long.exit403.i_crit_edge
  %retval.0.i.i402.i = phi i32 [ 1, %sisusb_write_memio_long.exit395.i.sisusb_write_memio_long.exit403.i_crit_edge ], [ %call7.i.i400.i, %do.body.i.i401.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bytes_transferred.i.i396.i) #10
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %packet.i397.i) #10
  %or90.i = or i32 %or87.i, %retval.0.i.i402.i
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %packet.i405.i) #10
  %442 = ptrtoint ptr %57 to i32
  call void @__asan_storeN_noabort(i32 %442, i32 4)
  store i32 -805306348, ptr %57, align 2
  %443 = ptrtoint ptr %packet.i405.i to i32
  call void @__asan_store2_noabort(i32 %443)
  store i16 15, ptr %packet.i405.i, align 2
  %444 = ptrtoint ptr %58 to i32
  call void @__asan_storeN_noabort(i32 %444, i32 4)
  store i32 -1431655766, ptr %58, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bytes_transferred.i.i404.i) #10
  %445 = ptrtoint ptr %bytes_transferred.i.i404.i to i32
  call void @__asan_store4_noabort(i32 %445)
  store i32 0, ptr %bytes_transferred.i.i404.i, align 4
  %call.i.i406.i = call fastcc i32 @sisusb_wait_all_out_complete(ptr noundef %sisusb) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i406.i)
  %tobool.not.i.i407.i = icmp eq i32 %call.i.i406.i, 0
  br i1 %tobool.not.i.i407.i, label %sisusb_write_memio_long.exit403.i.sisusb_write_memio_long.exit411.i_crit_edge, label %do.body.i.i409.i

sisusb_write_memio_long.exit403.i.sisusb_write_memio_long.exit411.i_crit_edge: ; preds = %sisusb_write_memio_long.exit403.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sisusb_write_memio_long.exit411.i

do.body.i.i409.i:                                 ; preds = %sisusb_write_memio_long.exit403.i
  call void @__sanitizer_cov_trace_pc() #12
  %446 = ptrtoint ptr %packet.i405.i to i32
  call void @__asan_load2_noabort(i32 %446)
  %447 = load i16, ptr %packet.i405.i, align 2
  %448 = call i16 @llvm.bswap.i16(i16 %447) #10
  %449 = ptrtoint ptr %packet.i405.i to i32
  call void @__asan_store2_noabort(i32 %449)
  store i16 %448, ptr %packet.i405.i, align 2
  %450 = ptrtoint ptr %57 to i32
  call void @__asan_loadN_noabort(i32 %450, i32 4)
  %451 = load i32, ptr %57, align 2
  %452 = call i32 @llvm.bswap.i32(i32 %451) #10
  %453 = ptrtoint ptr %57 to i32
  call void @__asan_storeN_noabort(i32 %453, i32 4)
  store i32 %452, ptr %57, align 2
  %454 = ptrtoint ptr %58 to i32
  call void @__asan_loadN_noabort(i32 %454, i32 4)
  %455 = load i32, ptr %58, align 2
  %456 = call i32 @llvm.bswap.i32(i32 %455) #10
  %457 = ptrtoint ptr %58 to i32
  call void @__asan_storeN_noabort(i32 %457, i32 4)
  store i32 %456, ptr %58, align 2
  %call7.i.i408.i = call fastcc i32 @sisusb_send_bulk_msg(ptr noundef %sisusb, i32 noundef 14, i32 noundef 10, ptr noundef nonnull %packet.i405.i, ptr noundef null, i32 noundef 0, ptr noundef nonnull %bytes_transferred.i.i404.i, i32 noundef 0) #10
  br label %sisusb_write_memio_long.exit411.i

sisusb_write_memio_long.exit411.i:                ; preds = %do.body.i.i409.i, %sisusb_write_memio_long.exit403.i.sisusb_write_memio_long.exit411.i_crit_edge
  %retval.0.i.i410.i = phi i32 [ 1, %sisusb_write_memio_long.exit403.i.sisusb_write_memio_long.exit411.i_crit_edge ], [ %call7.i.i408.i, %do.body.i.i409.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bytes_transferred.i.i404.i) #10
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %packet.i405.i) #10
  %or93.i = or i32 %or90.i, %retval.0.i.i410.i
  %call95.i = call fastcc i32 @sisusb_read_memio_long(ptr noundef %sisusb, i32 noundef 0, i32 noundef -805306364, ptr noundef nonnull %t1.i) #10
  %or96.i = or i32 %or93.i, %call95.i
  %458 = ptrtoint ptr %t1.i to i32
  call void @__asan_load4_noabort(i32 %458)
  %459 = load i32, ptr %t1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -839974621, i32 %459)
  %cmp97.not.i = icmp eq i32 %459, -839974621
  br i1 %cmp97.not.i, label %sisusb_write_memio_long.exit411.i.sisusb_getbuswidth.exit_crit_edge, label %if.then99.i

sisusb_write_memio_long.exit411.i.sisusb_getbuswidth.exit_crit_edge: ; preds = %sisusb_write_memio_long.exit411.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sisusb_getbuswidth.exit

if.then99.i:                                      ; preds = %sisusb_write_memio_long.exit411.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i412.i = call i32 @sisusb_setidxregandor(ptr noundef %sisusb, i32 noundef 53316, i8 noundef zeroext 21, i8 noundef zeroext -1, i8 noundef zeroext 16) #10
  %or101.i = or i32 %call.i412.i, %or96.i
  br label %sisusb_getbuswidth.exit

if.else104.i:                                     ; preds = %sisusb_write_memio_long.exit362.i
  %460 = ptrtoint ptr %t1.i to i32
  call void @__asan_load4_noabort(i32 %460)
  %461 = load i32, ptr %t1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1164413355, i32 %461)
  %cmp105.i = icmp eq i32 %461, 1164413355
  %462 = ptrtoint ptr %t0.i to i32
  call void @__asan_load4_noabort(i32 %462)
  %463 = load i32, ptr %t0.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 19088743, i32 %463)
  %cmp108.i = icmp eq i32 %463, 19088743
  br i1 %cmp105.i, label %if.then107.i, label %if.else112.i

if.then107.i:                                     ; preds = %if.else104.i
  br i1 %cmp108.i, label %if.then107.i.sisusb_getbuswidth.exit_crit_edge, label %if.then107.i.if.then120.i_crit_edge

if.then107.i.if.then120.i_crit_edge:              ; preds = %if.then107.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then120.i

if.then107.i.sisusb_getbuswidth.exit_crit_edge:   ; preds = %if.then107.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sisusb_getbuswidth.exit

if.else112.i:                                     ; preds = %if.else104.i
  br i1 %cmp108.i, label %if.then115.i, label %if.else112.i.if.then120.i_crit_edge

if.else112.i.if.then120.i_crit_edge:              ; preds = %if.else112.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then120.i

if.then115.i:                                     ; preds = %if.else112.i
  call void @__sanitizer_cov_trace_pc() #12
  %call116.i = call i32 @sisusb_setidxreg(ptr noundef %sisusb, i32 noundef 53316, i8 noundef zeroext 20, i8 noundef zeroext 0) #10
  %or117.i = or i32 %call116.i, %or47.i
  br label %sisusb_getbuswidth.exit

if.then120.i:                                     ; preds = %if.else112.i.if.then120.i_crit_edge, %if.then107.i.if.then120.i_crit_edge
  %call121.i = call i32 @sisusb_setidxreg(ptr noundef %sisusb, i32 noundef 53316, i8 noundef zeroext 20, i8 noundef zeroext 3) #10
  %or122.i = or i32 %call121.i, %or47.i
  %call123.i = call fastcc i32 @sisusb_triggersr16(ptr noundef %sisusb, i8 noundef zeroext %351) #10
  %or124.i = or i32 %or122.i, %call123.i
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %packet.i414.i) #10
  %464 = ptrtoint ptr %31 to i32
  call void @__asan_storeN_noabort(i32 %464, i32 4)
  store i32 -805306368, ptr %31, align 2
  %465 = ptrtoint ptr %packet.i414.i to i32
  call void @__asan_store2_noabort(i32 %465)
  store i16 15, ptr %packet.i414.i, align 2
  %466 = ptrtoint ptr %32 to i32
  call void @__asan_storeN_noabort(i32 %466, i32 4)
  store i32 19088743, ptr %32, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bytes_transferred.i.i413.i) #10
  %467 = ptrtoint ptr %bytes_transferred.i.i413.i to i32
  call void @__asan_store4_noabort(i32 %467)
  store i32 0, ptr %bytes_transferred.i.i413.i, align 4
  %call.i.i415.i = call fastcc i32 @sisusb_wait_all_out_complete(ptr noundef %sisusb) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i415.i)
  %tobool.not.i.i416.i = icmp eq i32 %call.i.i415.i, 0
  br i1 %tobool.not.i.i416.i, label %if.then120.i.sisusb_write_memio_long.exit420.i_crit_edge, label %do.body.i.i418.i

if.then120.i.sisusb_write_memio_long.exit420.i_crit_edge: ; preds = %if.then120.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sisusb_write_memio_long.exit420.i

do.body.i.i418.i:                                 ; preds = %if.then120.i
  call void @__sanitizer_cov_trace_pc() #12
  %468 = ptrtoint ptr %packet.i414.i to i32
  call void @__asan_load2_noabort(i32 %468)
  %469 = load i16, ptr %packet.i414.i, align 2
  %470 = call i16 @llvm.bswap.i16(i16 %469) #10
  %471 = ptrtoint ptr %packet.i414.i to i32
  call void @__asan_store2_noabort(i32 %471)
  store i16 %470, ptr %packet.i414.i, align 2
  %472 = ptrtoint ptr %31 to i32
  call void @__asan_loadN_noabort(i32 %472, i32 4)
  %473 = load i32, ptr %31, align 2
  %474 = call i32 @llvm.bswap.i32(i32 %473) #10
  %475 = ptrtoint ptr %31 to i32
  call void @__asan_storeN_noabort(i32 %475, i32 4)
  store i32 %474, ptr %31, align 2
  %476 = ptrtoint ptr %32 to i32
  call void @__asan_loadN_noabort(i32 %476, i32 4)
  %477 = load i32, ptr %32, align 2
  %478 = call i32 @llvm.bswap.i32(i32 %477) #10
  %479 = ptrtoint ptr %32 to i32
  call void @__asan_storeN_noabort(i32 %479, i32 4)
  store i32 %478, ptr %32, align 2
  %call7.i.i417.i = call fastcc i32 @sisusb_send_bulk_msg(ptr noundef %sisusb, i32 noundef 14, i32 noundef 10, ptr noundef nonnull %packet.i414.i, ptr noundef null, i32 noundef 0, ptr noundef nonnull %bytes_transferred.i.i413.i, i32 noundef 0) #10
  br label %sisusb_write_memio_long.exit420.i

sisusb_write_memio_long.exit420.i:                ; preds = %do.body.i.i418.i, %if.then120.i.sisusb_write_memio_long.exit420.i_crit_edge
  %retval.0.i.i419.i = phi i32 [ 1, %if.then120.i.sisusb_write_memio_long.exit420.i_crit_edge ], [ %call7.i.i417.i, %do.body.i.i418.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bytes_transferred.i.i413.i) #10
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %packet.i414.i) #10
  %or127.i = or i32 %or124.i, %retval.0.i.i419.i
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %packet.i422.i) #10
  %480 = ptrtoint ptr %33 to i32
  call void @__asan_storeN_noabort(i32 %480, i32 4)
  store i32 -805306364, ptr %33, align 2
  %481 = ptrtoint ptr %packet.i422.i to i32
  call void @__asan_store2_noabort(i32 %481)
  store i16 15, ptr %packet.i422.i, align 2
  %482 = ptrtoint ptr %34 to i32
  call void @__asan_storeN_noabort(i32 %482, i32 4)
  store i32 1164413355, ptr %34, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bytes_transferred.i.i421.i) #10
  %483 = ptrtoint ptr %bytes_transferred.i.i421.i to i32
  call void @__asan_store4_noabort(i32 %483)
  store i32 0, ptr %bytes_transferred.i.i421.i, align 4
  %call.i.i423.i = call fastcc i32 @sisusb_wait_all_out_complete(ptr noundef %sisusb) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i423.i)
  %tobool.not.i.i424.i = icmp eq i32 %call.i.i423.i, 0
  br i1 %tobool.not.i.i424.i, label %sisusb_write_memio_long.exit420.i.sisusb_write_memio_long.exit428.i_crit_edge, label %do.body.i.i426.i

sisusb_write_memio_long.exit420.i.sisusb_write_memio_long.exit428.i_crit_edge: ; preds = %sisusb_write_memio_long.exit420.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sisusb_write_memio_long.exit428.i

do.body.i.i426.i:                                 ; preds = %sisusb_write_memio_long.exit420.i
  call void @__sanitizer_cov_trace_pc() #12
  %484 = ptrtoint ptr %packet.i422.i to i32
  call void @__asan_load2_noabort(i32 %484)
  %485 = load i16, ptr %packet.i422.i, align 2
  %486 = call i16 @llvm.bswap.i16(i16 %485) #10
  %487 = ptrtoint ptr %packet.i422.i to i32
  call void @__asan_store2_noabort(i32 %487)
  store i16 %486, ptr %packet.i422.i, align 2
  %488 = ptrtoint ptr %33 to i32
  call void @__asan_loadN_noabort(i32 %488, i32 4)
  %489 = load i32, ptr %33, align 2
  %490 = call i32 @llvm.bswap.i32(i32 %489) #10
  %491 = ptrtoint ptr %33 to i32
  call void @__asan_storeN_noabort(i32 %491, i32 4)
  store i32 %490, ptr %33, align 2
  %492 = ptrtoint ptr %34 to i32
  call void @__asan_loadN_noabort(i32 %492, i32 4)
  %493 = load i32, ptr %34, align 2
  %494 = call i32 @llvm.bswap.i32(i32 %493) #10
  %495 = ptrtoint ptr %34 to i32
  call void @__asan_storeN_noabort(i32 %495, i32 4)
  store i32 %494, ptr %34, align 2
  %call7.i.i425.i = call fastcc i32 @sisusb_send_bulk_msg(ptr noundef %sisusb, i32 noundef 14, i32 noundef 10, ptr noundef nonnull %packet.i422.i, ptr noundef null, i32 noundef 0, ptr noundef nonnull %bytes_transferred.i.i421.i, i32 noundef 0) #10
  br label %sisusb_write_memio_long.exit428.i

sisusb_write_memio_long.exit428.i:                ; preds = %do.body.i.i426.i, %sisusb_write_memio_long.exit420.i.sisusb_write_memio_long.exit428.i_crit_edge
  %retval.0.i.i427.i = phi i32 [ 1, %sisusb_write_memio_long.exit420.i.sisusb_write_memio_long.exit428.i_crit_edge ], [ %call7.i.i425.i, %do.body.i.i426.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bytes_transferred.i.i421.i) #10
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %packet.i422.i) #10
  %or130.i = or i32 %or127.i, %retval.0.i.i427.i
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %packet.i430.i) #10
  %496 = ptrtoint ptr %35 to i32
  call void @__asan_storeN_noabort(i32 %496, i32 4)
  store i32 -805306360, ptr %35, align 2
  %497 = ptrtoint ptr %packet.i430.i to i32
  call void @__asan_store2_noabort(i32 %497)
  store i16 15, ptr %packet.i430.i, align 2
  %498 = ptrtoint ptr %36 to i32
  call void @__asan_storeN_noabort(i32 %498, i32 4)
  store i32 -1985229329, ptr %36, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bytes_transferred.i.i429.i) #10
  %499 = ptrtoint ptr %bytes_transferred.i.i429.i to i32
  call void @__asan_store4_noabort(i32 %499)
  store i32 0, ptr %bytes_transferred.i.i429.i, align 4
  %call.i.i431.i = call fastcc i32 @sisusb_wait_all_out_complete(ptr noundef %sisusb) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i431.i)
  %tobool.not.i.i432.i = icmp eq i32 %call.i.i431.i, 0
  br i1 %tobool.not.i.i432.i, label %sisusb_write_memio_long.exit428.i.sisusb_write_memio_long.exit436.i_crit_edge, label %do.body.i.i434.i

sisusb_write_memio_long.exit428.i.sisusb_write_memio_long.exit436.i_crit_edge: ; preds = %sisusb_write_memio_long.exit428.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sisusb_write_memio_long.exit436.i

do.body.i.i434.i:                                 ; preds = %sisusb_write_memio_long.exit428.i
  call void @__sanitizer_cov_trace_pc() #12
  %500 = ptrtoint ptr %packet.i430.i to i32
  call void @__asan_load2_noabort(i32 %500)
  %501 = load i16, ptr %packet.i430.i, align 2
  %502 = call i16 @llvm.bswap.i16(i16 %501) #10
  %503 = ptrtoint ptr %packet.i430.i to i32
  call void @__asan_store2_noabort(i32 %503)
  store i16 %502, ptr %packet.i430.i, align 2
  %504 = ptrtoint ptr %35 to i32
  call void @__asan_loadN_noabort(i32 %504, i32 4)
  %505 = load i32, ptr %35, align 2
  %506 = call i32 @llvm.bswap.i32(i32 %505) #10
  %507 = ptrtoint ptr %35 to i32
  call void @__asan_storeN_noabort(i32 %507, i32 4)
  store i32 %506, ptr %35, align 2
  %508 = ptrtoint ptr %36 to i32
  call void @__asan_loadN_noabort(i32 %508, i32 4)
  %509 = load i32, ptr %36, align 2
  %510 = call i32 @llvm.bswap.i32(i32 %509) #10
  %511 = ptrtoint ptr %36 to i32
  call void @__asan_storeN_noabort(i32 %511, i32 4)
  store i32 %510, ptr %36, align 2
  %call7.i.i433.i = call fastcc i32 @sisusb_send_bulk_msg(ptr noundef %sisusb, i32 noundef 14, i32 noundef 10, ptr noundef nonnull %packet.i430.i, ptr noundef null, i32 noundef 0, ptr noundef nonnull %bytes_transferred.i.i429.i, i32 noundef 0) #10
  br label %sisusb_write_memio_long.exit436.i

sisusb_write_memio_long.exit436.i:                ; preds = %do.body.i.i434.i, %sisusb_write_memio_long.exit428.i.sisusb_write_memio_long.exit436.i_crit_edge
  %retval.0.i.i435.i = phi i32 [ 1, %sisusb_write_memio_long.exit428.i.sisusb_write_memio_long.exit436.i_crit_edge ], [ %call7.i.i433.i, %do.body.i.i434.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bytes_transferred.i.i429.i) #10
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %packet.i430.i) #10
  %or133.i = or i32 %or130.i, %retval.0.i.i435.i
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %packet.i438.i) #10
  %512 = ptrtoint ptr %37 to i32
  call void @__asan_storeN_noabort(i32 %512, i32 4)
  store i32 -805306356, ptr %37, align 2
  %513 = ptrtoint ptr %packet.i438.i to i32
  call void @__asan_store2_noabort(i32 %513)
  store i16 15, ptr %packet.i438.i, align 2
  %514 = ptrtoint ptr %38 to i32
  call void @__asan_storeN_noabort(i32 %514, i32 4)
  store i32 -839974621, ptr %38, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bytes_transferred.i.i437.i) #10
  %515 = ptrtoint ptr %bytes_transferred.i.i437.i to i32
  call void @__asan_store4_noabort(i32 %515)
  store i32 0, ptr %bytes_transferred.i.i437.i, align 4
  %call.i.i439.i = call fastcc i32 @sisusb_wait_all_out_complete(ptr noundef %sisusb) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i439.i)
  %tobool.not.i.i440.i = icmp eq i32 %call.i.i439.i, 0
  br i1 %tobool.not.i.i440.i, label %sisusb_write_memio_long.exit436.i.sisusb_write_memio_long.exit444.i_crit_edge, label %do.body.i.i442.i

sisusb_write_memio_long.exit436.i.sisusb_write_memio_long.exit444.i_crit_edge: ; preds = %sisusb_write_memio_long.exit436.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sisusb_write_memio_long.exit444.i

do.body.i.i442.i:                                 ; preds = %sisusb_write_memio_long.exit436.i
  call void @__sanitizer_cov_trace_pc() #12
  %516 = ptrtoint ptr %packet.i438.i to i32
  call void @__asan_load2_noabort(i32 %516)
  %517 = load i16, ptr %packet.i438.i, align 2
  %518 = call i16 @llvm.bswap.i16(i16 %517) #10
  %519 = ptrtoint ptr %packet.i438.i to i32
  call void @__asan_store2_noabort(i32 %519)
  store i16 %518, ptr %packet.i438.i, align 2
  %520 = ptrtoint ptr %37 to i32
  call void @__asan_loadN_noabort(i32 %520, i32 4)
  %521 = load i32, ptr %37, align 2
  %522 = call i32 @llvm.bswap.i32(i32 %521) #10
  %523 = ptrtoint ptr %37 to i32
  call void @__asan_storeN_noabort(i32 %523, i32 4)
  store i32 %522, ptr %37, align 2
  %524 = ptrtoint ptr %38 to i32
  call void @__asan_loadN_noabort(i32 %524, i32 4)
  %525 = load i32, ptr %38, align 2
  %526 = call i32 @llvm.bswap.i32(i32 %525) #10
  %527 = ptrtoint ptr %38 to i32
  call void @__asan_storeN_noabort(i32 %527, i32 4)
  store i32 %526, ptr %38, align 2
  %call7.i.i441.i = call fastcc i32 @sisusb_send_bulk_msg(ptr noundef %sisusb, i32 noundef 14, i32 noundef 10, ptr noundef nonnull %packet.i438.i, ptr noundef null, i32 noundef 0, ptr noundef nonnull %bytes_transferred.i.i437.i, i32 noundef 0) #10
  br label %sisusb_write_memio_long.exit444.i

sisusb_write_memio_long.exit444.i:                ; preds = %do.body.i.i442.i, %sisusb_write_memio_long.exit436.i.sisusb_write_memio_long.exit444.i_crit_edge
  %retval.0.i.i443.i = phi i32 [ 1, %sisusb_write_memio_long.exit436.i.sisusb_write_memio_long.exit444.i_crit_edge ], [ %call7.i.i441.i, %do.body.i.i442.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bytes_transferred.i.i437.i) #10
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %packet.i438.i) #10
  %or136.i = or i32 %or133.i, %retval.0.i.i443.i
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %packet.i446.i) #10
  %528 = ptrtoint ptr %39 to i32
  call void @__asan_storeN_noabort(i32 %528, i32 4)
  store i32 -805306352, ptr %39, align 2
  %529 = ptrtoint ptr %packet.i446.i to i32
  call void @__asan_store2_noabort(i32 %529)
  store i16 15, ptr %packet.i446.i, align 2
  %530 = ptrtoint ptr %40 to i32
  call void @__asan_storeN_noabort(i32 %530, i32 4)
  store i32 1431655765, ptr %40, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bytes_transferred.i.i445.i) #10
  %531 = ptrtoint ptr %bytes_transferred.i.i445.i to i32
  call void @__asan_store4_noabort(i32 %531)
  store i32 0, ptr %bytes_transferred.i.i445.i, align 4
  %call.i.i447.i = call fastcc i32 @sisusb_wait_all_out_complete(ptr noundef %sisusb) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i447.i)
  %tobool.not.i.i448.i = icmp eq i32 %call.i.i447.i, 0
  br i1 %tobool.not.i.i448.i, label %sisusb_write_memio_long.exit444.i.sisusb_write_memio_long.exit452.i_crit_edge, label %do.body.i.i450.i

sisusb_write_memio_long.exit444.i.sisusb_write_memio_long.exit452.i_crit_edge: ; preds = %sisusb_write_memio_long.exit444.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sisusb_write_memio_long.exit452.i

do.body.i.i450.i:                                 ; preds = %sisusb_write_memio_long.exit444.i
  call void @__sanitizer_cov_trace_pc() #12
  %532 = ptrtoint ptr %packet.i446.i to i32
  call void @__asan_load2_noabort(i32 %532)
  %533 = load i16, ptr %packet.i446.i, align 2
  %534 = call i16 @llvm.bswap.i16(i16 %533) #10
  %535 = ptrtoint ptr %packet.i446.i to i32
  call void @__asan_store2_noabort(i32 %535)
  store i16 %534, ptr %packet.i446.i, align 2
  %536 = ptrtoint ptr %39 to i32
  call void @__asan_loadN_noabort(i32 %536, i32 4)
  %537 = load i32, ptr %39, align 2
  %538 = call i32 @llvm.bswap.i32(i32 %537) #10
  %539 = ptrtoint ptr %39 to i32
  call void @__asan_storeN_noabort(i32 %539, i32 4)
  store i32 %538, ptr %39, align 2
  %540 = ptrtoint ptr %40 to i32
  call void @__asan_loadN_noabort(i32 %540, i32 4)
  %541 = load i32, ptr %40, align 2
  %542 = call i32 @llvm.bswap.i32(i32 %541) #10
  %543 = ptrtoint ptr %40 to i32
  call void @__asan_storeN_noabort(i32 %543, i32 4)
  store i32 %542, ptr %40, align 2
  %call7.i.i449.i = call fastcc i32 @sisusb_send_bulk_msg(ptr noundef %sisusb, i32 noundef 14, i32 noundef 10, ptr noundef nonnull %packet.i446.i, ptr noundef null, i32 noundef 0, ptr noundef nonnull %bytes_transferred.i.i445.i, i32 noundef 0) #10
  br label %sisusb_write_memio_long.exit452.i

sisusb_write_memio_long.exit452.i:                ; preds = %do.body.i.i450.i, %sisusb_write_memio_long.exit444.i.sisusb_write_memio_long.exit452.i_crit_edge
  %retval.0.i.i451.i = phi i32 [ 1, %sisusb_write_memio_long.exit444.i.sisusb_write_memio_long.exit452.i_crit_edge ], [ %call7.i.i449.i, %do.body.i.i450.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bytes_transferred.i.i445.i) #10
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %packet.i446.i) #10
  %or139.i = or i32 %or136.i, %retval.0.i.i451.i
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %packet.i454.i) #10
  %544 = ptrtoint ptr %41 to i32
  call void @__asan_storeN_noabort(i32 %544, i32 4)
  store i32 -805306348, ptr %41, align 2
  %545 = ptrtoint ptr %packet.i454.i to i32
  call void @__asan_store2_noabort(i32 %545)
  store i16 15, ptr %packet.i454.i, align 2
  %546 = ptrtoint ptr %42 to i32
  call void @__asan_storeN_noabort(i32 %546, i32 4)
  store i32 1431655765, ptr %42, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bytes_transferred.i.i453.i) #10
  %547 = ptrtoint ptr %bytes_transferred.i.i453.i to i32
  call void @__asan_store4_noabort(i32 %547)
  store i32 0, ptr %bytes_transferred.i.i453.i, align 4
  %call.i.i455.i = call fastcc i32 @sisusb_wait_all_out_complete(ptr noundef %sisusb) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i455.i)
  %tobool.not.i.i456.i = icmp eq i32 %call.i.i455.i, 0
  br i1 %tobool.not.i.i456.i, label %sisusb_write_memio_long.exit452.i.sisusb_write_memio_long.exit460.i_crit_edge, label %do.body.i.i458.i

sisusb_write_memio_long.exit452.i.sisusb_write_memio_long.exit460.i_crit_edge: ; preds = %sisusb_write_memio_long.exit452.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sisusb_write_memio_long.exit460.i

do.body.i.i458.i:                                 ; preds = %sisusb_write_memio_long.exit452.i
  call void @__sanitizer_cov_trace_pc() #12
  %548 = ptrtoint ptr %packet.i454.i to i32
  call void @__asan_load2_noabort(i32 %548)
  %549 = load i16, ptr %packet.i454.i, align 2
  %550 = call i16 @llvm.bswap.i16(i16 %549) #10
  %551 = ptrtoint ptr %packet.i454.i to i32
  call void @__asan_store2_noabort(i32 %551)
  store i16 %550, ptr %packet.i454.i, align 2
  %552 = ptrtoint ptr %41 to i32
  call void @__asan_loadN_noabort(i32 %552, i32 4)
  %553 = load i32, ptr %41, align 2
  %554 = call i32 @llvm.bswap.i32(i32 %553) #10
  %555 = ptrtoint ptr %41 to i32
  call void @__asan_storeN_noabort(i32 %555, i32 4)
  store i32 %554, ptr %41, align 2
  %556 = ptrtoint ptr %42 to i32
  call void @__asan_loadN_noabort(i32 %556, i32 4)
  %557 = load i32, ptr %42, align 2
  %558 = call i32 @llvm.bswap.i32(i32 %557) #10
  %559 = ptrtoint ptr %42 to i32
  call void @__asan_storeN_noabort(i32 %559, i32 4)
  store i32 %558, ptr %42, align 2
  %call7.i.i457.i = call fastcc i32 @sisusb_send_bulk_msg(ptr noundef %sisusb, i32 noundef 14, i32 noundef 10, ptr noundef nonnull %packet.i454.i, ptr noundef null, i32 noundef 0, ptr noundef nonnull %bytes_transferred.i.i453.i, i32 noundef 0) #10
  br label %sisusb_write_memio_long.exit460.i

sisusb_write_memio_long.exit460.i:                ; preds = %do.body.i.i458.i, %sisusb_write_memio_long.exit452.i.sisusb_write_memio_long.exit460.i_crit_edge
  %retval.0.i.i459.i = phi i32 [ 1, %sisusb_write_memio_long.exit452.i.sisusb_write_memio_long.exit460.i_crit_edge ], [ %call7.i.i457.i, %do.body.i.i458.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bytes_transferred.i.i453.i) #10
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %packet.i454.i) #10
  %or142.i = or i32 %or139.i, %retval.0.i.i459.i
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %packet.i462.i) #10
  %560 = ptrtoint ptr %43 to i32
  call void @__asan_storeN_noabort(i32 %560, i32 4)
  store i32 -805306344, ptr %43, align 2
  %561 = ptrtoint ptr %packet.i462.i to i32
  call void @__asan_store2_noabort(i32 %561)
  store i16 15, ptr %packet.i462.i, align 2
  %562 = ptrtoint ptr %44 to i32
  call void @__asan_storeN_noabort(i32 %562, i32 4)
  store i32 -1, ptr %44, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bytes_transferred.i.i461.i) #10
  %563 = ptrtoint ptr %bytes_transferred.i.i461.i to i32
  call void @__asan_store4_noabort(i32 %563)
  store i32 0, ptr %bytes_transferred.i.i461.i, align 4
  %call.i.i463.i = call fastcc i32 @sisusb_wait_all_out_complete(ptr noundef %sisusb) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i463.i)
  %tobool.not.i.i464.i = icmp eq i32 %call.i.i463.i, 0
  br i1 %tobool.not.i.i464.i, label %sisusb_write_memio_long.exit460.i.sisusb_write_memio_long.exit468.i_crit_edge, label %do.body.i.i466.i

sisusb_write_memio_long.exit460.i.sisusb_write_memio_long.exit468.i_crit_edge: ; preds = %sisusb_write_memio_long.exit460.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sisusb_write_memio_long.exit468.i

do.body.i.i466.i:                                 ; preds = %sisusb_write_memio_long.exit460.i
  call void @__sanitizer_cov_trace_pc() #12
  %564 = ptrtoint ptr %packet.i462.i to i32
  call void @__asan_load2_noabort(i32 %564)
  %565 = load i16, ptr %packet.i462.i, align 2
  %566 = call i16 @llvm.bswap.i16(i16 %565) #10
  %567 = ptrtoint ptr %packet.i462.i to i32
  call void @__asan_store2_noabort(i32 %567)
  store i16 %566, ptr %packet.i462.i, align 2
  %568 = ptrtoint ptr %43 to i32
  call void @__asan_loadN_noabort(i32 %568, i32 4)
  %569 = load i32, ptr %43, align 2
  %570 = call i32 @llvm.bswap.i32(i32 %569) #10
  %571 = ptrtoint ptr %43 to i32
  call void @__asan_storeN_noabort(i32 %571, i32 4)
  store i32 %570, ptr %43, align 2
  %572 = ptrtoint ptr %44 to i32
  call void @__asan_loadN_noabort(i32 %572, i32 4)
  %573 = load i32, ptr %44, align 2
  %574 = call i32 @llvm.bswap.i32(i32 %573) #10
  %575 = ptrtoint ptr %44 to i32
  call void @__asan_storeN_noabort(i32 %575, i32 4)
  store i32 %574, ptr %44, align 2
  %call7.i.i465.i = call fastcc i32 @sisusb_send_bulk_msg(ptr noundef %sisusb, i32 noundef 14, i32 noundef 10, ptr noundef nonnull %packet.i462.i, ptr noundef null, i32 noundef 0, ptr noundef nonnull %bytes_transferred.i.i461.i, i32 noundef 0) #10
  br label %sisusb_write_memio_long.exit468.i

sisusb_write_memio_long.exit468.i:                ; preds = %do.body.i.i466.i, %sisusb_write_memio_long.exit460.i.sisusb_write_memio_long.exit468.i_crit_edge
  %retval.0.i.i467.i = phi i32 [ 1, %sisusb_write_memio_long.exit460.i.sisusb_write_memio_long.exit468.i_crit_edge ], [ %call7.i.i465.i, %do.body.i.i466.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bytes_transferred.i.i461.i) #10
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %packet.i462.i) #10
  %or145.i = or i32 %or142.i, %retval.0.i.i467.i
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %packet.i470.i) #10
  %576 = ptrtoint ptr %45 to i32
  call void @__asan_storeN_noabort(i32 %576, i32 4)
  store i32 -805306340, ptr %45, align 2
  %577 = ptrtoint ptr %packet.i470.i to i32
  call void @__asan_store2_noabort(i32 %577)
  store i16 15, ptr %packet.i470.i, align 2
  %578 = ptrtoint ptr %46 to i32
  call void @__asan_storeN_noabort(i32 %578, i32 4)
  store i32 -1, ptr %46, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bytes_transferred.i.i469.i) #10
  %579 = ptrtoint ptr %bytes_transferred.i.i469.i to i32
  call void @__asan_store4_noabort(i32 %579)
  store i32 0, ptr %bytes_transferred.i.i469.i, align 4
  %call.i.i471.i = call fastcc i32 @sisusb_wait_all_out_complete(ptr noundef %sisusb) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i471.i)
  %tobool.not.i.i472.i = icmp eq i32 %call.i.i471.i, 0
  br i1 %tobool.not.i.i472.i, label %sisusb_write_memio_long.exit468.i.sisusb_write_memio_long.exit476.i_crit_edge, label %do.body.i.i474.i

sisusb_write_memio_long.exit468.i.sisusb_write_memio_long.exit476.i_crit_edge: ; preds = %sisusb_write_memio_long.exit468.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sisusb_write_memio_long.exit476.i

do.body.i.i474.i:                                 ; preds = %sisusb_write_memio_long.exit468.i
  call void @__sanitizer_cov_trace_pc() #12
  %580 = ptrtoint ptr %packet.i470.i to i32
  call void @__asan_load2_noabort(i32 %580)
  %581 = load i16, ptr %packet.i470.i, align 2
  %582 = call i16 @llvm.bswap.i16(i16 %581) #10
  %583 = ptrtoint ptr %packet.i470.i to i32
  call void @__asan_store2_noabort(i32 %583)
  store i16 %582, ptr %packet.i470.i, align 2
  %584 = ptrtoint ptr %45 to i32
  call void @__asan_loadN_noabort(i32 %584, i32 4)
  %585 = load i32, ptr %45, align 2
  %586 = call i32 @llvm.bswap.i32(i32 %585) #10
  %587 = ptrtoint ptr %45 to i32
  call void @__asan_storeN_noabort(i32 %587, i32 4)
  store i32 %586, ptr %45, align 2
  %588 = ptrtoint ptr %46 to i32
  call void @__asan_loadN_noabort(i32 %588, i32 4)
  %589 = load i32, ptr %46, align 2
  %590 = call i32 @llvm.bswap.i32(i32 %589) #10
  %591 = ptrtoint ptr %46 to i32
  call void @__asan_storeN_noabort(i32 %591, i32 4)
  store i32 %590, ptr %46, align 2
  %call7.i.i473.i = call fastcc i32 @sisusb_send_bulk_msg(ptr noundef %sisusb, i32 noundef 14, i32 noundef 10, ptr noundef nonnull %packet.i470.i, ptr noundef null, i32 noundef 0, ptr noundef nonnull %bytes_transferred.i.i469.i, i32 noundef 0) #10
  br label %sisusb_write_memio_long.exit476.i

sisusb_write_memio_long.exit476.i:                ; preds = %do.body.i.i474.i, %sisusb_write_memio_long.exit468.i.sisusb_write_memio_long.exit476.i_crit_edge
  %retval.0.i.i475.i = phi i32 [ 1, %sisusb_write_memio_long.exit468.i.sisusb_write_memio_long.exit476.i_crit_edge ], [ %call7.i.i473.i, %do.body.i.i474.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bytes_transferred.i.i469.i) #10
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %packet.i470.i) #10
  %or148.i = or i32 %or145.i, %retval.0.i.i475.i
  %call150.i = call fastcc i32 @sisusb_read_memio_long(ptr noundef %sisusb, i32 noundef 0, i32 noundef -805306368, ptr noundef nonnull %t0.i) #10
  %or151.i = or i32 %or148.i, %call150.i
  %call153.i = call fastcc i32 @sisusb_read_memio_long(ptr noundef %sisusb, i32 noundef 0, i32 noundef -805306364, ptr noundef nonnull %t1.i) #10
  %or154.i = or i32 %or151.i, %call153.i
  %592 = ptrtoint ptr %t1.i to i32
  call void @__asan_load4_noabort(i32 %592)
  %593 = load i32, ptr %t1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1164413355, i32 %593)
  %cmp155.i = icmp eq i32 %593, 1164413355
  %594 = ptrtoint ptr %t0.i to i32
  call void @__asan_load4_noabort(i32 %594)
  %595 = load i32, ptr %t0.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 19088743, i32 %595)
  %cmp158.i = icmp eq i32 %595, 19088743
  br i1 %cmp155.i, label %if.then157.i, label %if.else162.i

if.then157.i:                                     ; preds = %sisusb_write_memio_long.exit476.i
  call void @__sanitizer_cov_trace_pc() #12
  %spec.select = zext i1 %cmp158.i to i8
  br label %sisusb_getbuswidth.exit

if.else162.i:                                     ; preds = %sisusb_write_memio_long.exit476.i
  br i1 %cmp158.i, label %if.then165.i, label %if.else162.i.sisusb_getbuswidth.exit_crit_edge

if.else162.i.sisusb_getbuswidth.exit_crit_edge:   ; preds = %if.else162.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sisusb_getbuswidth.exit

if.then165.i:                                     ; preds = %if.else162.i
  call void @__sanitizer_cov_trace_pc() #12
  %call166.i = call i32 @sisusb_setidxreg(ptr noundef %sisusb, i32 noundef 53316, i8 noundef zeroext 20, i8 noundef zeroext 1) #10
  %or167.i = or i32 %call166.i, %or154.i
  br label %sisusb_getbuswidth.exit

sisusb_getbuswidth.exit:                          ; preds = %if.then165.i, %if.else162.i.sisusb_getbuswidth.exit_crit_edge, %if.then157.i, %if.then115.i, %if.then107.i.sisusb_getbuswidth.exit_crit_edge, %if.then99.i, %sisusb_write_memio_long.exit411.i.sisusb_getbuswidth.exit_crit_edge, %lor.lhs.false68.i.sisusb_getbuswidth.exit_crit_edge
  %bw.1 = phi i32 [ 64, %lor.lhs.false68.i.sisusb_getbuswidth.exit_crit_edge ], [ 64, %sisusb_write_memio_long.exit411.i.sisusb_getbuswidth.exit_crit_edge ], [ 32, %if.then99.i ], [ 32, %if.then165.i ], [ 64, %if.else162.i.sisusb_getbuswidth.exit_crit_edge ], [ 32, %if.then115.i ], [ 64, %if.then107.i.sisusb_getbuswidth.exit_crit_edge ], [ 64, %if.then157.i ]
  %chab.1 = phi i8 [ 0, %lor.lhs.false68.i.sisusb_getbuswidth.exit_crit_edge ], [ 1, %sisusb_write_memio_long.exit411.i.sisusb_getbuswidth.exit_crit_edge ], [ 1, %if.then99.i ], [ 1, %if.then165.i ], [ 0, %if.else162.i.sisusb_getbuswidth.exit_crit_edge ], [ 0, %if.then115.i ], [ 0, %if.then107.i.sisusb_getbuswidth.exit_crit_edge ], [ %spec.select, %if.then157.i ]
  %retval.0.i = phi i32 [ %ret.1.ph.i, %lor.lhs.false68.i.sisusb_getbuswidth.exit_crit_edge ], [ %or96.i, %sisusb_write_memio_long.exit411.i.sisusb_getbuswidth.exit_crit_edge ], [ %or101.i, %if.then99.i ], [ %or167.i, %if.then165.i ], [ %or154.i, %if.else162.i.sisusb_getbuswidth.exit_crit_edge ], [ %or117.i, %if.then115.i ], [ %or47.i, %if.then107.i.sisusb_getbuswidth.exit_crit_edge ], [ %or154.i, %if.then157.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t3.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t2.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t1.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t0.i) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ramtype.i) #10
  %or212 = or i32 %or210, %retval.0.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp1.i) #10
  %596 = ptrtoint ptr %tmp1.i to i32
  call void @__asan_store1_noabort(i32 %596)
  store i8 -1, ptr %tmp1.i, align 1, !annotation !144
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp2.i) #10
  %597 = ptrtoint ptr %tmp2.i to i32
  call void @__asan_store1_noabort(i32 %597)
  store i8 -1, ptr %tmp2.i, align 1, !annotation !144
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %packet.i.i463) #10
  %598 = ptrtoint ptr %packet.i.i463 to i32
  call void @__asan_store2_noabort(i32 %598)
  store i16 1, ptr %packet.i.i463, align 2
  %599 = ptrtoint ptr %59 to i32
  call void @__asan_storeN_noabort(i32 %599, i32 4)
  store i32 -805306368, ptr %59, align 2
  %600 = ptrtoint ptr %60 to i32
  call void @__asan_storeN_noabort(i32 %600, i32 4)
  store i32 170, ptr %60, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bytes_transferred.i.i.i462) #10
  %601 = ptrtoint ptr %bytes_transferred.i.i.i462 to i32
  call void @__asan_store4_noabort(i32 %601)
  store i32 0, ptr %bytes_transferred.i.i.i462, align 4
  %call.i.i.i464 = call fastcc i32 @sisusb_wait_all_out_complete(ptr noundef %sisusb) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i464)
  %tobool.not.i.i.i465 = icmp eq i32 %call.i.i.i464, 0
  br i1 %tobool.not.i.i.i465, label %sisusb_getbuswidth.exit.sisusb_write_memio_byte.exit.i_crit_edge, label %do.body.i.i.i467

sisusb_getbuswidth.exit.sisusb_write_memio_byte.exit.i_crit_edge: ; preds = %sisusb_getbuswidth.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sisusb_write_memio_byte.exit.i

do.body.i.i.i467:                                 ; preds = %sisusb_getbuswidth.exit
  call void @__sanitizer_cov_trace_pc() #12
  %602 = ptrtoint ptr %packet.i.i463 to i32
  call void @__asan_load2_noabort(i32 %602)
  %603 = load i16, ptr %packet.i.i463, align 2
  %604 = call i16 @llvm.bswap.i16(i16 %603) #10
  %605 = ptrtoint ptr %packet.i.i463 to i32
  call void @__asan_store2_noabort(i32 %605)
  store i16 %604, ptr %packet.i.i463, align 2
  %606 = ptrtoint ptr %59 to i32
  call void @__asan_loadN_noabort(i32 %606, i32 4)
  %607 = load i32, ptr %59, align 2
  %608 = call i32 @llvm.bswap.i32(i32 %607) #10
  %609 = ptrtoint ptr %59 to i32
  call void @__asan_storeN_noabort(i32 %609, i32 4)
  store i32 %608, ptr %59, align 2
  %610 = ptrtoint ptr %60 to i32
  call void @__asan_loadN_noabort(i32 %610, i32 4)
  %611 = load i32, ptr %60, align 2
  %612 = call i32 @llvm.bswap.i32(i32 %611) #10
  %613 = ptrtoint ptr %60 to i32
  call void @__asan_storeN_noabort(i32 %613, i32 4)
  store i32 %612, ptr %60, align 2
  %call7.i.i.i466 = call fastcc i32 @sisusb_send_bulk_msg(ptr noundef %sisusb, i32 noundef 14, i32 noundef 10, ptr noundef nonnull %packet.i.i463, ptr noundef null, i32 noundef 0, ptr noundef nonnull %bytes_transferred.i.i.i462, i32 noundef 0) #10
  br label %sisusb_write_memio_byte.exit.i

sisusb_write_memio_byte.exit.i:                   ; preds = %do.body.i.i.i467, %sisusb_getbuswidth.exit.sisusb_write_memio_byte.exit.i_crit_edge
  %retval.0.i.i.i468 = phi i32 [ 1, %sisusb_getbuswidth.exit.sisusb_write_memio_byte.exit.i_crit_edge ], [ %call7.i.i.i466, %do.body.i.i.i467 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bytes_transferred.i.i.i462) #10
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %packet.i.i463) #10
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %packet.i87.i) #10
  %614 = ptrtoint ptr %packet.i87.i to i32
  call void @__asan_store2_noabort(i32 %614)
  store i16 1, ptr %packet.i87.i, align 2
  %615 = ptrtoint ptr %61 to i32
  call void @__asan_storeN_noabort(i32 %615, i32 4)
  store i32 -805306352, ptr %61, align 2
  %616 = ptrtoint ptr %62 to i32
  call void @__asan_storeN_noabort(i32 %616, i32 4)
  store i32 85, ptr %62, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bytes_transferred.i.i86.i) #10
  %617 = ptrtoint ptr %bytes_transferred.i.i86.i to i32
  call void @__asan_store4_noabort(i32 %617)
  store i32 0, ptr %bytes_transferred.i.i86.i, align 4
  %call.i.i88.i = call fastcc i32 @sisusb_wait_all_out_complete(ptr noundef %sisusb) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i88.i)
  %tobool.not.i.i89.i = icmp eq i32 %call.i.i88.i, 0
  br i1 %tobool.not.i.i89.i, label %sisusb_write_memio_byte.exit.i.sisusb_write_memio_byte.exit93.i_crit_edge, label %do.body.i.i91.i

sisusb_write_memio_byte.exit.i.sisusb_write_memio_byte.exit93.i_crit_edge: ; preds = %sisusb_write_memio_byte.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sisusb_write_memio_byte.exit93.i

do.body.i.i91.i:                                  ; preds = %sisusb_write_memio_byte.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %618 = ptrtoint ptr %packet.i87.i to i32
  call void @__asan_load2_noabort(i32 %618)
  %619 = load i16, ptr %packet.i87.i, align 2
  %620 = call i16 @llvm.bswap.i16(i16 %619) #10
  %621 = ptrtoint ptr %packet.i87.i to i32
  call void @__asan_store2_noabort(i32 %621)
  store i16 %620, ptr %packet.i87.i, align 2
  %622 = ptrtoint ptr %61 to i32
  call void @__asan_loadN_noabort(i32 %622, i32 4)
  %623 = load i32, ptr %61, align 2
  %624 = call i32 @llvm.bswap.i32(i32 %623) #10
  %625 = ptrtoint ptr %61 to i32
  call void @__asan_storeN_noabort(i32 %625, i32 4)
  store i32 %624, ptr %61, align 2
  %626 = ptrtoint ptr %62 to i32
  call void @__asan_loadN_noabort(i32 %626, i32 4)
  %627 = load i32, ptr %62, align 2
  %628 = call i32 @llvm.bswap.i32(i32 %627) #10
  %629 = ptrtoint ptr %62 to i32
  call void @__asan_storeN_noabort(i32 %629, i32 4)
  store i32 %628, ptr %62, align 2
  %call7.i.i90.i = call fastcc i32 @sisusb_send_bulk_msg(ptr noundef %sisusb, i32 noundef 14, i32 noundef 10, ptr noundef nonnull %packet.i87.i, ptr noundef null, i32 noundef 0, ptr noundef nonnull %bytes_transferred.i.i86.i, i32 noundef 0) #10
  br label %sisusb_write_memio_byte.exit93.i

sisusb_write_memio_byte.exit93.i:                 ; preds = %do.body.i.i91.i, %sisusb_write_memio_byte.exit.i.sisusb_write_memio_byte.exit93.i_crit_edge
  %retval.0.i.i92.i = phi i32 [ 1, %sisusb_write_memio_byte.exit.i.sisusb_write_memio_byte.exit93.i_crit_edge ], [ %call7.i.i90.i, %do.body.i.i91.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bytes_transferred.i.i86.i) #10
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %packet.i87.i) #10
  %or2.i = or i32 %retval.0.i.i92.i, %retval.0.i.i.i468
  %call3.i = call fastcc i32 @sisusb_read_memio_byte(ptr noundef %sisusb, i32 noundef 0, i32 noundef -805306368, ptr noundef nonnull %tmp1.i) #10
  %or4.i = or i32 %or2.i, %call3.i
  %call6.i = call fastcc i32 @sisusb_read_memio_byte(ptr noundef %sisusb, i32 noundef 0, i32 noundef -805306352, ptr noundef nonnull %tmp2.i) #10
  %or7.i = or i32 %or4.i, %call6.i
  %630 = ptrtoint ptr %tmp1.i to i32
  call void @__asan_load1_noabort(i32 %630)
  %631 = load i8, ptr %tmp1.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -86, i8 %631)
  %cmp.not.i = icmp eq i8 %631, -86
  br i1 %cmp.not.i, label %lor.lhs.false.i469, label %sisusb_write_memio_byte.exit93.i.for.body.i.preheader_crit_edge

sisusb_write_memio_byte.exit93.i.for.body.i.preheader_crit_edge: ; preds = %sisusb_write_memio_byte.exit93.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.preheader

lor.lhs.false.i469:                               ; preds = %sisusb_write_memio_byte.exit93.i
  %632 = ptrtoint ptr %tmp2.i to i32
  call void @__asan_load1_noabort(i32 %632)
  %633 = load i8, ptr %tmp2.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 85, i8 %633)
  %cmp10.not.i = icmp eq i8 %633, 85
  br i1 %cmp10.not.i, label %lor.lhs.false.i469.sisusb_verify_mclk.exit_crit_edge, label %lor.lhs.false.i469.for.body.i.preheader_crit_edge

lor.lhs.false.i469.for.body.i.preheader_crit_edge: ; preds = %lor.lhs.false.i469
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.preheader

lor.lhs.false.i469.sisusb_verify_mclk.exit_crit_edge: ; preds = %lor.lhs.false.i469
  call void @__sanitizer_cov_trace_pc() #12
  br label %sisusb_verify_mclk.exit

for.body.i.preheader:                             ; preds = %lor.lhs.false.i469.for.body.i.preheader_crit_edge, %sisusb_write_memio_byte.exit93.i.for.body.i.preheader_crit_edge
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.i.preheader
  %indvars.iv.i = phi i32 [ %indvars.iv.next.i, %for.inc.i.for.body.i_crit_edge ], [ 16, %for.body.i.preheader ]
  %cmp13.i = phi i1 [ false, %for.inc.i.for.body.i_crit_edge ], [ true, %for.body.i.preheader ]
  %ret.0117.i = phi i32 [ %or36.i, %for.inc.i.for.body.i_crit_edge ], [ %or7.i, %for.body.i.preheader ]
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %packet.i.i.i461) #10
  %634 = ptrtoint ptr %packet.i.i.i461 to i32
  call void @__asan_store2_noabort(i32 %634)
  store i16 65, ptr %packet.i.i.i461, align 2
  %635 = ptrtoint ptr %63 to i32
  call void @__asan_storeN_noabort(i32 %635, i32 4)
  store i32 53316, ptr %63, align 2
  %636 = ptrtoint ptr %64 to i32
  call void @__asan_storeN_noabort(i32 %636, i32 4)
  store i32 33, ptr %64, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bytes_transferred.i.i.i.i460) #10
  %637 = ptrtoint ptr %bytes_transferred.i.i.i.i460 to i32
  call void @__asan_store4_noabort(i32 %637)
  store i32 0, ptr %bytes_transferred.i.i.i.i460, align 4
  %call.i.i.i.i471 = call fastcc i32 @sisusb_wait_all_out_complete(ptr noundef %sisusb) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i471)
  %tobool.not.i.i.i.i472 = icmp eq i32 %call.i.i.i.i471, 0
  br i1 %tobool.not.i.i.i.i472, label %for.body.i.sisusb_getidxreg.exit.i478_crit_edge, label %do.body.i.i.i.i474

for.body.i.sisusb_getidxreg.exit.i478_crit_edge:  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sisusb_getidxreg.exit.i478

do.body.i.i.i.i474:                               ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %638 = ptrtoint ptr %packet.i.i.i461 to i32
  call void @__asan_load2_noabort(i32 %638)
  %639 = load i16, ptr %packet.i.i.i461, align 2
  %640 = call i16 @llvm.bswap.i16(i16 %639) #10
  %641 = ptrtoint ptr %packet.i.i.i461 to i32
  call void @__asan_store2_noabort(i32 %641)
  store i16 %640, ptr %packet.i.i.i461, align 2
  %642 = ptrtoint ptr %63 to i32
  call void @__asan_loadN_noabort(i32 %642, i32 4)
  %643 = load i32, ptr %63, align 2
  %644 = call i32 @llvm.bswap.i32(i32 %643) #10
  %645 = ptrtoint ptr %63 to i32
  call void @__asan_storeN_noabort(i32 %645, i32 4)
  store i32 %644, ptr %63, align 2
  %646 = ptrtoint ptr %64 to i32
  call void @__asan_loadN_noabort(i32 %646, i32 4)
  %647 = load i32, ptr %64, align 2
  %648 = call i32 @llvm.bswap.i32(i32 %647) #10
  %649 = ptrtoint ptr %64 to i32
  call void @__asan_storeN_noabort(i32 %649, i32 4)
  store i32 %648, ptr %64, align 2
  %call7.i.i.i.i473 = call fastcc i32 @sisusb_send_bulk_msg(ptr noundef %sisusb, i32 noundef 14, i32 noundef 10, ptr noundef nonnull %packet.i.i.i461, ptr noundef null, i32 noundef 0, ptr noundef nonnull %bytes_transferred.i.i.i.i460, i32 noundef 0) #10
  br label %sisusb_getidxreg.exit.i478

sisusb_getidxreg.exit.i478:                       ; preds = %do.body.i.i.i.i474, %for.body.i.sisusb_getidxreg.exit.i478_crit_edge
  %retval.0.i.i.i.i475 = phi i32 [ 1, %for.body.i.sisusb_getidxreg.exit.i478_crit_edge ], [ %call7.i.i.i.i473, %do.body.i.i.i.i474 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bytes_transferred.i.i.i.i460) #10
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %packet.i.i.i461) #10
  %call1.i.i476 = call fastcc i32 @sisusb_read_memio_byte(ptr noundef %sisusb, i32 noundef 1, i32 noundef 53317, ptr noundef nonnull %tmp1.i) #10
  %650 = ptrtoint ptr %tmp1.i to i32
  call void @__asan_load1_noabort(i32 %650)
  %651 = load i8, ptr %tmp1.i, align 1
  %652 = and i8 %651, -5
  %call.i.i477 = call i32 @sisusb_setidxregandor(ptr noundef %sisusb, i32 noundef 53316, i8 noundef zeroext 33, i8 noundef zeroext %652, i8 noundef zeroext 0) #10
  %call.i94.i = call i32 @sisusb_setidxregandor(ptr noundef %sisusb, i32 noundef 53316, i8 noundef zeroext 60, i8 noundef zeroext -1, i8 noundef zeroext 1) #10
  %call.i95.i = call i32 @sisusb_setidxregandor(ptr noundef %sisusb, i32 noundef 53316, i8 noundef zeroext 60, i8 noundef zeroext -2, i8 noundef zeroext 0) #10
  %call25.i = call i32 @sisusb_setidxreg(ptr noundef %sisusb, i32 noundef 53316, i8 noundef zeroext 33, i8 noundef zeroext %651) #10
  %add29.i = add nuw nsw i32 %indvars.iv.i, -805306352
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %packet.i97.i) #10
  %653 = ptrtoint ptr %packet.i97.i to i32
  call void @__asan_store2_noabort(i32 %653)
  store i16 1, ptr %packet.i97.i, align 2
  %654 = ptrtoint ptr %65 to i32
  call void @__asan_storeN_noabort(i32 %654, i32 4)
  store i32 %add29.i, ptr %65, align 2
  %655 = ptrtoint ptr %66 to i32
  call void @__asan_storeN_noabort(i32 %655, i32 4)
  store i32 %indvars.iv.i, ptr %66, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bytes_transferred.i.i96.i) #10
  %656 = ptrtoint ptr %bytes_transferred.i.i96.i to i32
  call void @__asan_store4_noabort(i32 %656)
  store i32 0, ptr %bytes_transferred.i.i96.i, align 4
  %call.i.i98.i = call fastcc i32 @sisusb_wait_all_out_complete(ptr noundef %sisusb) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i98.i)
  %tobool.not.i.i99.i = icmp eq i32 %call.i.i98.i, 0
  br i1 %tobool.not.i.i99.i, label %sisusb_getidxreg.exit.i478.sisusb_write_memio_byte.exit103.i_crit_edge, label %do.body.i.i101.i

sisusb_getidxreg.exit.i478.sisusb_write_memio_byte.exit103.i_crit_edge: ; preds = %sisusb_getidxreg.exit.i478
  call void @__sanitizer_cov_trace_pc() #12
  br label %sisusb_write_memio_byte.exit103.i

do.body.i.i101.i:                                 ; preds = %sisusb_getidxreg.exit.i478
  call void @__sanitizer_cov_trace_pc() #12
  %657 = ptrtoint ptr %packet.i97.i to i32
  call void @__asan_load2_noabort(i32 %657)
  %658 = load i16, ptr %packet.i97.i, align 2
  %659 = call i16 @llvm.bswap.i16(i16 %658) #10
  %660 = ptrtoint ptr %packet.i97.i to i32
  call void @__asan_store2_noabort(i32 %660)
  store i16 %659, ptr %packet.i97.i, align 2
  %661 = ptrtoint ptr %65 to i32
  call void @__asan_loadN_noabort(i32 %661, i32 4)
  %662 = load i32, ptr %65, align 2
  %663 = call i32 @llvm.bswap.i32(i32 %662) #10
  %664 = ptrtoint ptr %65 to i32
  call void @__asan_storeN_noabort(i32 %664, i32 4)
  store i32 %663, ptr %65, align 2
  %665 = ptrtoint ptr %66 to i32
  call void @__asan_loadN_noabort(i32 %665, i32 4)
  %666 = load i32, ptr %66, align 2
  %667 = call i32 @llvm.bswap.i32(i32 %666) #10
  %668 = ptrtoint ptr %66 to i32
  call void @__asan_storeN_noabort(i32 %668, i32 4)
  store i32 %667, ptr %66, align 2
  %call7.i.i100.i = call fastcc i32 @sisusb_send_bulk_msg(ptr noundef %sisusb, i32 noundef 14, i32 noundef 10, ptr noundef nonnull %packet.i97.i, ptr noundef null, i32 noundef 0, ptr noundef nonnull %bytes_transferred.i.i96.i, i32 noundef 0) #10
  br label %sisusb_write_memio_byte.exit103.i

sisusb_write_memio_byte.exit103.i:                ; preds = %do.body.i.i101.i, %sisusb_getidxreg.exit.i478.sisusb_write_memio_byte.exit103.i_crit_edge
  %retval.0.i.i102.i = phi i32 [ 1, %sisusb_getidxreg.exit.i478.sisusb_write_memio_byte.exit103.i_crit_edge ], [ %call7.i.i100.i, %do.body.i.i101.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bytes_transferred.i.i96.i) #10
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %packet.i97.i) #10
  %call35.i = call fastcc i32 @sisusb_read_memio_byte(ptr noundef %sisusb, i32 noundef 0, i32 noundef %add29.i, ptr noundef nonnull %tmp1.i) #10
  %or.i.i479 = or i32 %retval.0.i.i.i.i475, %ret.0117.i
  %or16.i = or i32 %or.i.i479, %call1.i.i476
  %or20.i480 = or i32 %or16.i, %call.i.i477
  %or22.i = or i32 %or20.i480, %call.i94.i
  %or24.i = or i32 %or22.i, %call.i95.i
  %or26.i481 = or i32 %or24.i, %call25.i
  %or31.i = or i32 %or26.i481, %retval.0.i.i102.i
  %or36.i = or i32 %or31.i, %call35.i
  %669 = ptrtoint ptr %tmp1.i to i32
  call void @__asan_load1_noabort(i32 %669)
  %670 = load i8, ptr %tmp1.i, align 1
  %671 = zext i8 %670 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %indvars.iv.i, i32 %671)
  %cmp39.i = icmp eq i32 %indvars.iv.i, %671
  br i1 %cmp39.i, label %if.then41.i, label %for.inc.i

if.then41.i:                                      ; preds = %sisusb_write_memio_byte.exit103.i
  %add43.i = or i32 %indvars.iv.i, -805306368
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %packet.i105.i) #10
  %672 = ptrtoint ptr %packet.i105.i to i32
  call void @__asan_store2_noabort(i32 %672)
  store i16 1, ptr %packet.i105.i, align 2
  %673 = ptrtoint ptr %67 to i32
  call void @__asan_storeN_noabort(i32 %673, i32 4)
  store i32 %add43.i, ptr %67, align 2
  %674 = ptrtoint ptr %68 to i32
  call void @__asan_storeN_noabort(i32 %674, i32 4)
  store i32 %indvars.iv.i, ptr %68, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bytes_transferred.i.i104.i) #10
  %675 = ptrtoint ptr %bytes_transferred.i.i104.i to i32
  call void @__asan_store4_noabort(i32 %675)
  store i32 0, ptr %bytes_transferred.i.i104.i, align 4
  %call.i.i110.i = call fastcc i32 @sisusb_wait_all_out_complete(ptr noundef %sisusb) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i110.i)
  %tobool.not.i.i111.i = icmp eq i32 %call.i.i110.i, 0
  br i1 %tobool.not.i.i111.i, label %if.then41.i.sisusb_write_memio_byte.exit115.i_crit_edge, label %do.body.i.i113.i

if.then41.i.sisusb_write_memio_byte.exit115.i_crit_edge: ; preds = %if.then41.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sisusb_write_memio_byte.exit115.i

do.body.i.i113.i:                                 ; preds = %if.then41.i
  call void @__sanitizer_cov_trace_pc() #12
  %676 = ptrtoint ptr %packet.i105.i to i32
  call void @__asan_load2_noabort(i32 %676)
  %677 = load i16, ptr %packet.i105.i, align 2
  %678 = call i16 @llvm.bswap.i16(i16 %677) #10
  %679 = ptrtoint ptr %packet.i105.i to i32
  call void @__asan_store2_noabort(i32 %679)
  store i16 %678, ptr %packet.i105.i, align 2
  %680 = ptrtoint ptr %67 to i32
  call void @__asan_loadN_noabort(i32 %680, i32 4)
  %681 = load i32, ptr %67, align 2
  %682 = call i32 @llvm.bswap.i32(i32 %681) #10
  %683 = ptrtoint ptr %67 to i32
  call void @__asan_storeN_noabort(i32 %683, i32 4)
  store i32 %682, ptr %67, align 2
  %684 = ptrtoint ptr %68 to i32
  call void @__asan_loadN_noabort(i32 %684, i32 4)
  %685 = load i32, ptr %68, align 2
  %686 = call i32 @llvm.bswap.i32(i32 %685) #10
  %687 = ptrtoint ptr %68 to i32
  call void @__asan_storeN_noabort(i32 %687, i32 4)
  store i32 %686, ptr %68, align 2
  %call7.i.i112.i = call fastcc i32 @sisusb_send_bulk_msg(ptr noundef %sisusb, i32 noundef 14, i32 noundef 10, ptr noundef nonnull %packet.i105.i, ptr noundef null, i32 noundef 0, ptr noundef nonnull %bytes_transferred.i.i104.i, i32 noundef 0) #10
  br label %sisusb_write_memio_byte.exit115.i

sisusb_write_memio_byte.exit115.i:                ; preds = %do.body.i.i113.i, %if.then41.i.sisusb_write_memio_byte.exit115.i_crit_edge
  %retval.0.i.i114.i = phi i32 [ 1, %if.then41.i.sisusb_write_memio_byte.exit115.i_crit_edge ], [ %call7.i.i112.i, %do.body.i.i113.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bytes_transferred.i.i104.i) #10
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %packet.i105.i) #10
  %or45.i = or i32 %retval.0.i.i114.i, %or36.i
  br label %sisusb_verify_mclk.exit

for.inc.i:                                        ; preds = %sisusb_write_memio_byte.exit103.i
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 16
  br i1 %cmp13.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.sisusb_verify_mclk.exit_crit_edge

for.inc.i.sisusb_verify_mclk.exit_crit_edge:      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sisusb_verify_mclk.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

sisusb_verify_mclk.exit:                          ; preds = %for.inc.i.sisusb_verify_mclk.exit_crit_edge, %sisusb_write_memio_byte.exit115.i, %lor.lhs.false.i469.sisusb_verify_mclk.exit_crit_edge
  %ret.1.i = phi i32 [ %or45.i, %sisusb_write_memio_byte.exit115.i ], [ %or7.i, %lor.lhs.false.i469.sisusb_verify_mclk.exit_crit_edge ], [ %or36.i, %for.inc.i.sisusb_verify_mclk.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp2.i) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp1.i) #10
  %or214 = or i32 %or212, %ret.1.i
  %688 = ptrtoint ptr %ramtype to i32
  call void @__asan_load1_noabort(i32 %688)
  %689 = load i8, ptr %ramtype, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %689)
  %cmp216 = icmp ult i8 %689, 2
  br i1 %cmp216, label %if.then218, label %do.end228

if.then218:                                       ; preds = %sisusb_verify_mclk.exit
  %div23.i.i496 = lshr i32 %bw.1, 6
  %add15.i.i = or i32 %div23.i.i496, 2
  %add24.i.i = or i32 %div23.i.i496, 10
  %shl25.i.i = shl nuw i32 1, %add24.i.i
  br label %for.body.i484

for.body.i484:                                    ; preds = %for.inc13.i.for.body.i484_crit_edge, %if.then218
  %i.056.i = phi i32 [ 0, %if.then218 ], [ %inc.i, %for.inc13.i.for.body.i484_crit_edge ]
  %ret.055.i = phi i32 [ 0, %if.then218 ], [ %ret.2.i, %for.inc13.i.for.body.i484_crit_edge ]
  %arrayidx1.i = getelementptr [13 x [5 x i8]], ptr @sisusb_get_sdram_size.sdramtype, i32 0, i32 %i.056.i, i32 4
  %690 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %690)
  %691 = load i8, ptr %arrayidx1.i, align 1
  %call.i482 = call i32 @sisusb_setidxregandor(ptr noundef %sisusb, i32 noundef 53316, i8 noundef zeroext 19, i8 noundef zeroext -128, i8 noundef zeroext %691) #10
  %or.i483 = or i32 %call.i482, %ret.055.i
  %arrayidx.i.i = getelementptr [5 x i8], ptr @sisusb_get_sdram_size.sdramtype, i32 %i.056.i
  %arrayidx7.i.i = getelementptr [5 x i8], ptr @sisusb_get_sdram_size.sdramtype, i32 %i.056.i, i32 3
  %arrayidx1.i.i = getelementptr [5 x i8], ptr @sisusb_get_sdram_size.sdramtype, i32 %i.056.i, i32 2
  %arrayidx3.i.i = getelementptr [5 x i8], ptr @sisusb_get_sdram_size.sdramtype, i32 %i.056.i, i32 1
  br label %for.body4.i

for.body4.i:                                      ; preds = %for.inc.i489.for.body4.i_crit_edge, %for.body.i484
  %j.053.i = phi i32 [ 2, %for.body.i484 ], [ %dec.i, %for.inc.i489.for.body4.i_crit_edge ]
  %ret.152.i = phi i32 [ %or.i483, %for.body.i484 ], [ %ret.2.i, %for.inc.i489.for.body4.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %j.053.i)
  %692 = icmp eq i32 %j.053.i, 2
  br i1 %692, label %land.lhs.true.i.i, label %for.body4.i.if.end.i.i_crit_edge

for.body4.i.if.end.i.i_crit_edge:                 ; preds = %for.body4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %for.body4.i
  %693 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %693)
  %694 = load i8, ptr %arrayidx.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %694)
  %cmp4.i.i = icmp eq i8 %694, 2
  br i1 %cmp4.i.i, label %land.lhs.true.i.i.for.inc.i489_crit_edge, label %land.lhs.true.i.i.if.end.i.i_crit_edge

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

land.lhs.true.i.i.for.inc.i489_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i489

if.end.i.i:                                       ; preds = %land.lhs.true.i.i.if.end.i.i_crit_edge, %for.body4.i.if.end.i.i_crit_edge
  %695 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_load1_noabort(i32 %695)
  %696 = load i8, ptr %arrayidx7.i.i, align 1
  %697 = lshr i8 %696, 1
  %div.i.i = zext i8 %697 to i32
  %mul.i.i = mul nuw nsw i32 %bw.1, %div.i.i
  %div9.i.i497 = lshr exact i32 %mul.i.i, 5
  %mul11.i.i = mul i32 %div9.i.i497, %j.053.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %mul11.i.i)
  %cmp12.i.i = icmp sgt i32 %mul11.i.i, 128
  br i1 %cmp12.i.i, label %if.end.i.i.for.inc.i489_crit_edge, label %while.cond.preheader.i.i

if.end.i.i.for.inc.i489_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i489

while.cond.preheader.i.i:                         ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %mul.i.i)
  %cmp162.i.i = icmp ugt i32 %mul.i.i, 63
  br i1 %cmp162.i.i, label %while.cond.preheader.i.i.while.body.i.i_crit_edge, label %while.cond.preheader.i.i.for.body.lr.ph.i.i_crit_edge

while.cond.preheader.i.i.for.body.lr.ph.i.i_crit_edge: ; preds = %while.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.lr.ph.i.i

while.cond.preheader.i.i.while.body.i.i_crit_edge: ; preds = %while.cond.preheader.i.i
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %while.cond.preheader.i.i.while.body.i.i_crit_edge
  %tmp.04.i.i = phi i32 [ %phi.cast.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ 0, %while.cond.preheader.i.i.while.body.i.i_crit_edge ]
  %ranksize.03.i.i = phi i32 [ %shr1.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ %div9.i.i497, %while.cond.preheader.i.i.while.body.i.i_crit_edge ]
  %shr1.i.i = lshr i32 %ranksize.03.i.i, 1
  %add.i.i = add nuw nsw i32 %tmp.04.i.i, 16
  %phi.cast.i.i = and i32 %add.i.i, 255
  %cmp16.i.i = icmp ugt i32 %ranksize.03.i.i, 3
  br i1 %cmp16.i.i, label %while.body.i.i.while.body.i.i_crit_edge, label %while.body.i.i.for.body.lr.ph.i.i_crit_edge

while.body.i.i.for.body.lr.ph.i.i_crit_edge:      ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.lr.ph.i.i

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i.i

for.body.lr.ph.i.i:                               ; preds = %while.body.i.i.for.body.lr.ph.i.i_crit_edge, %while.cond.preheader.i.i.for.body.lr.ph.i.i_crit_edge
  %tmp.0.lcssa.i.i = phi i32 [ 0, %while.cond.preheader.i.i.for.body.lr.ph.i.i_crit_edge ], [ %phi.cast.i.i, %while.body.i.i.for.body.lr.ph.i.i_crit_edge ]
  %sub.i.i = shl nuw nsw i32 %j.053.i, 2
  %shl.i.i = add nuw nsw i32 %sub.i.i, 252
  %conv29.i.i = or i32 %tmp.0.lcssa.i.i, %shl.i.i
  %698 = trunc i32 %conv29.i.i to i8
  %conv31.i.i = or i8 %chab.1, %698
  %call.i.i485 = call i32 @sisusb_setidxreg(ptr noundef %sisusb, i32 noundef 53316, i8 noundef zeroext 20, i8 noundef zeroext %conv31.i.i) #10
  %call32.i.i = call fastcc i32 @sisusb_triggersr16(ptr noundef %sisusb, i8 noundef zeroext 0) #10
  %or33.i.i = or i32 %call.i.i485, %ret.152.i
  %or7.i486 = or i32 %or33.i.i, %call32.i.i
  %699 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load1_noabort(i32 %699)
  %700 = load i8, ptr %arrayidx1.i.i, align 1
  %conv.i34.i = zext i8 %700 to i32
  %701 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load1_noabort(i32 %701)
  %702 = load i8, ptr %arrayidx3.i.i, align 1
  %conv4.i.i = zext i8 %702 to i32
  %703 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %703)
  %704 = load i8, ptr %arrayidx.i.i, align 1
  %conv7.i.i = zext i8 %704 to i32
  %add.i36.i = add nuw nsw i32 %div23.i.i496, %conv.i34.i
  %add8.i.i = add nuw nsw i32 %add.i36.i, %conv4.i.i
  %add9.i.i = add nuw nsw i32 %add8.i.i, %conv7.i.i
  %add10.i.i = add i32 %add9.i.i, %j.053.i
  %shl.i37.i = shl nuw i32 1, %add10.i.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i.i) #10
  %705 = ptrtoint ptr %tmp.i.i.i to i32
  call void @__asan_store4_noabort(i32 %705)
  store i32 -1, ptr %tmp.i.i.i, align 4, !annotation !144
  %706 = ptrtoint ptr %vrambase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %706)
  %707 = load i32, ptr %vrambase.i.i.i, align 4
  %call.i.i.i487 = call fastcc i32 @sisusb_write_memio_long(ptr noundef %sisusb, i32 noundef 0, i32 noundef %707, i32 noundef 0) #10
  %708 = ptrtoint ptr %vrambase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %708)
  %709 = load i32, ptr %vrambase.i.i.i, align 4
  %add.i.1.i.i = add i32 %709, %shl.i37.i
  %call.i.1.i.i = call fastcc i32 @sisusb_write_memio_long(ptr noundef %sisusb, i32 noundef 0, i32 noundef %add.i.1.i.i, i32 noundef %shl.i37.i) #10
  %or.i.1.i.i = or i32 %call.i.1.i.i, %call.i.i.i487
  %710 = ptrtoint ptr %vrambase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %710)
  %711 = load i32, ptr %vrambase.i.i.i, align 4
  %call8.i.i.i = call fastcc i32 @sisusb_read_memio_long(ptr noundef %sisusb, i32 noundef 0, i32 noundef %711, ptr noundef nonnull %tmp.i.i.i) #10
  %or9.i.i.i = or i32 %or.i.1.i.i, %call8.i.i.i
  %712 = ptrtoint ptr %tmp.i.i.i to i32
  call void @__asan_load4_noabort(i32 %712)
  %713 = load i32, ptr %tmp.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %713)
  %cmp10.not.i.i.i = icmp eq i32 %713, 0
  br i1 %cmp10.not.i.i.i, label %if.end.i.i.i, label %for.body.lr.ph.i.i.sisusb_check_rbc.exit.thread.i.i_crit_edge

for.body.lr.ph.i.i.sisusb_check_rbc.exit.thread.i.i_crit_edge: ; preds = %for.body.lr.ph.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sisusb_check_rbc.exit.thread.i.i

sisusb_check_rbc.exit.thread.i.i:                 ; preds = %if.end.i.i.i.1.sisusb_check_rbc.exit.thread.i.i_crit_edge, %for.body.i.i.1.sisusb_check_rbc.exit.thread.i.i_crit_edge, %if.end.i.i.i.sisusb_check_rbc.exit.thread.i.i_crit_edge, %for.body.lr.ph.i.i.sisusb_check_rbc.exit.thread.i.i_crit_edge
  %ret.073.i.i.lcssa = phi i32 [ 0, %if.end.i.i.i.sisusb_check_rbc.exit.thread.i.i_crit_edge ], [ 0, %for.body.lr.ph.i.i.sisusb_check_rbc.exit.thread.i.i_crit_edge ], [ %or9.i.1.i.i, %for.body.i.i.1.sisusb_check_rbc.exit.thread.i.i_crit_edge ], [ %or9.i.1.i.i, %if.end.i.i.i.1.sisusb_check_rbc.exit.thread.i.i_crit_edge ]
  %or9.i.lcssa.i.i = phi i32 [ %or9.i.1.i.i, %if.end.i.i.i.sisusb_check_rbc.exit.thread.i.i_crit_edge ], [ %or9.i.i.i, %for.body.lr.ph.i.i.sisusb_check_rbc.exit.thread.i.i_crit_edge ], [ %or9.i.i.i.1, %for.body.i.i.1.sisusb_check_rbc.exit.thread.i.i_crit_edge ], [ %or9.i.1.i.i.1, %if.end.i.i.i.1.sisusb_check_rbc.exit.thread.i.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i.i) #10
  %or60.i.i = or i32 %or9.i.lcssa.i.i, %ret.073.i.i.lcssa
  br label %sisusb_check_ranks.exit.thread.i

if.end.i.i.i:                                     ; preds = %for.body.lr.ph.i.i
  %714 = ptrtoint ptr %vrambase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %714)
  %715 = load i32, ptr %vrambase.i.i.i, align 4
  %add7.i.1.i.i = add i32 %715, %shl.i37.i
  %call8.i.1.i.i = call fastcc i32 @sisusb_read_memio_long(ptr noundef %sisusb, i32 noundef 0, i32 noundef %add7.i.1.i.i, ptr noundef nonnull %tmp.i.i.i) #10
  %or9.i.1.i.i = or i32 %call8.i.1.i.i, %or9.i.i.i
  %716 = ptrtoint ptr %tmp.i.i.i to i32
  call void @__asan_load4_noabort(i32 %716)
  %717 = load i32, ptr %tmp.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %717, i32 %shl.i37.i)
  %cmp10.not.i.1.i.i = icmp eq i32 %717, %shl.i37.i
  br i1 %cmp10.not.i.1.i.i, label %if.end.i.1.i.i, label %if.end.i.i.i.sisusb_check_rbc.exit.thread.i.i_crit_edge

if.end.i.i.i.sisusb_check_rbc.exit.thread.i.i_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sisusb_check_rbc.exit.thread.i.i

if.end.i.1.i.i:                                   ; preds = %if.end.i.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %j.053.i)
  %cmp.i38.i = icmp ugt i32 %j.053.i, 1
  br i1 %cmp.i38.i, label %for.body.i.i.1, label %if.end.i.1.i.i.for.end.i.i_crit_edge

if.end.i.1.i.i.for.end.i.i_crit_edge:             ; preds = %if.end.i.1.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i.i

for.body.i.i.1:                                   ; preds = %if.end.i.1.i.i
  %dec.i.i = add nsw i32 %j.053.i, -1
  %add10.i.i.1 = add i32 %add9.i.i, %dec.i.i
  %shl.i37.i.1 = shl nuw i32 1, %add10.i.i.1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i.i) #10
  %718 = ptrtoint ptr %tmp.i.i.i to i32
  call void @__asan_store4_noabort(i32 %718)
  store i32 -1, ptr %tmp.i.i.i, align 4, !annotation !144
  %719 = ptrtoint ptr %vrambase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %719)
  %720 = load i32, ptr %vrambase.i.i.i, align 4
  %call.i.i.i487.1 = call fastcc i32 @sisusb_write_memio_long(ptr noundef %sisusb, i32 noundef 0, i32 noundef %720, i32 noundef 0) #10
  %721 = ptrtoint ptr %vrambase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %721)
  %722 = load i32, ptr %vrambase.i.i.i, align 4
  %add.i.1.i.i.1 = add i32 %722, %shl.i37.i.1
  %call.i.1.i.i.1 = call fastcc i32 @sisusb_write_memio_long(ptr noundef %sisusb, i32 noundef 0, i32 noundef %add.i.1.i.i.1, i32 noundef %shl.i37.i.1) #10
  %or.i.1.i.i.1 = or i32 %call.i.1.i.i.1, %call.i.i.i487.1
  %723 = ptrtoint ptr %vrambase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %723)
  %724 = load i32, ptr %vrambase.i.i.i, align 4
  %call8.i.i.i.1 = call fastcc i32 @sisusb_read_memio_long(ptr noundef %sisusb, i32 noundef 0, i32 noundef %724, ptr noundef nonnull %tmp.i.i.i) #10
  %or9.i.i.i.1 = or i32 %or.i.1.i.i.1, %call8.i.i.i.1
  %725 = ptrtoint ptr %tmp.i.i.i to i32
  call void @__asan_load4_noabort(i32 %725)
  %726 = load i32, ptr %tmp.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %726)
  %cmp10.not.i.i.i.1 = icmp eq i32 %726, 0
  br i1 %cmp10.not.i.i.i.1, label %if.end.i.i.i.1, label %for.body.i.i.1.sisusb_check_rbc.exit.thread.i.i_crit_edge

for.body.i.i.1.sisusb_check_rbc.exit.thread.i.i_crit_edge: ; preds = %for.body.i.i.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %sisusb_check_rbc.exit.thread.i.i

if.end.i.i.i.1:                                   ; preds = %for.body.i.i.1
  %727 = ptrtoint ptr %vrambase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %727)
  %728 = load i32, ptr %vrambase.i.i.i, align 4
  %add7.i.1.i.i.1 = add i32 %728, %shl.i37.i.1
  %call8.i.1.i.i.1 = call fastcc i32 @sisusb_read_memio_long(ptr noundef %sisusb, i32 noundef 0, i32 noundef %add7.i.1.i.i.1, ptr noundef nonnull %tmp.i.i.i) #10
  %or9.i.1.i.i.1 = or i32 %call8.i.1.i.i.1, %or9.i.i.i.1
  %729 = ptrtoint ptr %tmp.i.i.i to i32
  call void @__asan_load4_noabort(i32 %729)
  %730 = load i32, ptr %tmp.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %730, i32 %shl.i37.i.1)
  %cmp10.not.i.1.i.i.1 = icmp eq i32 %730, %shl.i37.i.1
  br i1 %cmp10.not.i.1.i.i.1, label %if.end.i.1.i.i.1, label %if.end.i.i.i.1.sisusb_check_rbc.exit.thread.i.i_crit_edge

if.end.i.i.i.1.sisusb_check_rbc.exit.thread.i.i_crit_edge: ; preds = %if.end.i.i.i.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %sisusb_check_rbc.exit.thread.i.i

if.end.i.1.i.i.1:                                 ; preds = %if.end.i.i.i.1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i.i) #10
  %or.i.i488.1 = or i32 %or9.i.1.i.i.1, %or9.i.1.i.i
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %if.end.i.1.i.i.1, %if.end.i.1.i.i.for.end.i.i_crit_edge
  %or.i.i488.lcssa = phi i32 [ %or9.i.1.i.i, %if.end.i.1.i.i.for.end.i.i_crit_edge ], [ %or.i.i488.1, %if.end.i.1.i.i.1 ]
  %add16.i.i = add nuw nsw i32 %add15.i.i, %conv.i34.i
  %shl17.i.i = shl nuw i32 1, %add16.i.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i1.i.i) #10
  %731 = ptrtoint ptr %tmp.i1.i.i to i32
  call void @__asan_store4_noabort(i32 %731)
  store i32 -1, ptr %tmp.i1.i.i, align 4, !annotation !144
  %732 = ptrtoint ptr %vrambase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %732)
  %733 = load i32, ptr %vrambase.i.i.i, align 4
  %call.i9.i.i = call fastcc i32 @sisusb_write_memio_long(ptr noundef %sisusb, i32 noundef 0, i32 noundef %733, i32 noundef 0) #10
  %734 = ptrtoint ptr %vrambase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %734)
  %735 = load i32, ptr %vrambase.i.i.i, align 4
  %add.i8.1.i.i = add i32 %735, %shl17.i.i
  %call.i9.1.i.i = call fastcc i32 @sisusb_write_memio_long(ptr noundef %sisusb, i32 noundef 0, i32 noundef %add.i8.1.i.i, i32 noundef %shl17.i.i) #10
  %or.i10.1.i.i = or i32 %call.i9.1.i.i, %call.i9.i.i
  %add1.i11.1.i.i = shl i32 %shl17.i.i, 1
  %736 = ptrtoint ptr %vrambase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %736)
  %737 = load i32, ptr %vrambase.i.i.i, align 4
  %add.i8.2.i.i = add i32 %737, %add1.i11.1.i.i
  %call.i9.2.i.i = call fastcc i32 @sisusb_write_memio_long(ptr noundef %sisusb, i32 noundef 0, i32 noundef %add.i8.2.i.i, i32 noundef %add1.i11.1.i.i) #10
  %or.i10.2.i.i = or i32 %or.i10.1.i.i, %call.i9.2.i.i
  %add1.i11.2.i.i = shl i32 3, %add16.i.i
  %738 = ptrtoint ptr %vrambase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %738)
  %739 = load i32, ptr %vrambase.i.i.i, align 4
  %add.i8.3.i.i = add i32 %739, %add1.i11.2.i.i
  %call.i9.3.i.i = call fastcc i32 @sisusb_write_memio_long(ptr noundef %sisusb, i32 noundef 0, i32 noundef %add.i8.3.i.i, i32 noundef %add1.i11.2.i.i) #10
  %or.i10.3.i.i = or i32 %or.i10.2.i.i, %call.i9.3.i.i
  %740 = ptrtoint ptr %vrambase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %740)
  %741 = load i32, ptr %vrambase.i.i.i, align 4
  %call8.i19.i.i = call fastcc i32 @sisusb_read_memio_long(ptr noundef %sisusb, i32 noundef 0, i32 noundef %741, ptr noundef nonnull %tmp.i1.i.i) #10
  %or9.i20.i.i = or i32 %or.i10.3.i.i, %call8.i19.i.i
  %742 = ptrtoint ptr %tmp.i1.i.i to i32
  call void @__asan_load4_noabort(i32 %742)
  %743 = load i32, ptr %tmp.i1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %743)
  %cmp10.not.i21.i.i = icmp eq i32 %743, 0
  br i1 %cmp10.not.i21.i.i, label %if.end.i26.i.i, label %for.end.i.i.sisusb_check_rbc.exit28.thread.i.i_crit_edge

for.end.i.i.sisusb_check_rbc.exit28.thread.i.i_crit_edge: ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sisusb_check_rbc.exit28.thread.i.i

sisusb_check_rbc.exit28.thread.i.i:               ; preds = %if.end.i26.2.i.i.sisusb_check_rbc.exit28.thread.i.i_crit_edge, %if.end.i26.1.i.i.sisusb_check_rbc.exit28.thread.i.i_crit_edge, %if.end.i26.i.i.sisusb_check_rbc.exit28.thread.i.i_crit_edge, %for.end.i.i.sisusb_check_rbc.exit28.thread.i.i_crit_edge
  %or9.i20.lcssa.i.i = phi i32 [ %or9.i20.i.i, %for.end.i.i.sisusb_check_rbc.exit28.thread.i.i_crit_edge ], [ %or9.i20.1.i.i, %if.end.i26.i.i.sisusb_check_rbc.exit28.thread.i.i_crit_edge ], [ %or9.i20.2.i.i, %if.end.i26.1.i.i.sisusb_check_rbc.exit28.thread.i.i_crit_edge ], [ %or9.i20.3.i.i, %if.end.i26.2.i.i.sisusb_check_rbc.exit28.thread.i.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i1.i.i) #10
  %or1963.i.i = or i32 %or9.i20.lcssa.i.i, %or.i.i488.lcssa
  br label %sisusb_check_ranks.exit.thread.i

if.end.i26.i.i:                                   ; preds = %for.end.i.i
  %744 = ptrtoint ptr %vrambase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %744)
  %745 = load i32, ptr %vrambase.i.i.i, align 4
  %add7.i18.1.i.i = add i32 %745, %shl17.i.i
  %call8.i19.1.i.i = call fastcc i32 @sisusb_read_memio_long(ptr noundef %sisusb, i32 noundef 0, i32 noundef %add7.i18.1.i.i, ptr noundef nonnull %tmp.i1.i.i) #10
  %or9.i20.1.i.i = or i32 %call8.i19.1.i.i, %or9.i20.i.i
  %746 = ptrtoint ptr %tmp.i1.i.i to i32
  call void @__asan_load4_noabort(i32 %746)
  %747 = load i32, ptr %tmp.i1.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %747, i32 %shl17.i.i)
  %cmp10.not.i21.1.i.i = icmp eq i32 %747, %shl17.i.i
  br i1 %cmp10.not.i21.1.i.i, label %if.end.i26.1.i.i, label %if.end.i26.i.i.sisusb_check_rbc.exit28.thread.i.i_crit_edge

if.end.i26.i.i.sisusb_check_rbc.exit28.thread.i.i_crit_edge: ; preds = %if.end.i26.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sisusb_check_rbc.exit28.thread.i.i

if.end.i26.1.i.i:                                 ; preds = %if.end.i26.i.i
  %748 = ptrtoint ptr %vrambase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %748)
  %749 = load i32, ptr %vrambase.i.i.i, align 4
  %add7.i18.2.i.i = add i32 %749, %add1.i11.1.i.i
  %call8.i19.2.i.i = call fastcc i32 @sisusb_read_memio_long(ptr noundef %sisusb, i32 noundef 0, i32 noundef %add7.i18.2.i.i, ptr noundef nonnull %tmp.i1.i.i) #10
  %or9.i20.2.i.i = or i32 %call8.i19.2.i.i, %or9.i20.1.i.i
  %750 = ptrtoint ptr %tmp.i1.i.i to i32
  call void @__asan_load4_noabort(i32 %750)
  %751 = load i32, ptr %tmp.i1.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %751, i32 %add1.i11.1.i.i)
  %cmp10.not.i21.2.i.i = icmp eq i32 %751, %add1.i11.1.i.i
  br i1 %cmp10.not.i21.2.i.i, label %if.end.i26.2.i.i, label %if.end.i26.1.i.i.sisusb_check_rbc.exit28.thread.i.i_crit_edge

if.end.i26.1.i.i.sisusb_check_rbc.exit28.thread.i.i_crit_edge: ; preds = %if.end.i26.1.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sisusb_check_rbc.exit28.thread.i.i

if.end.i26.2.i.i:                                 ; preds = %if.end.i26.1.i.i
  %752 = ptrtoint ptr %vrambase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %752)
  %753 = load i32, ptr %vrambase.i.i.i, align 4
  %add7.i18.3.i.i = add i32 %753, %add1.i11.2.i.i
  %call8.i19.3.i.i = call fastcc i32 @sisusb_read_memio_long(ptr noundef %sisusb, i32 noundef 0, i32 noundef %add7.i18.3.i.i, ptr noundef nonnull %tmp.i1.i.i) #10
  %or9.i20.3.i.i = or i32 %call8.i19.3.i.i, %or9.i20.2.i.i
  %754 = ptrtoint ptr %tmp.i1.i.i to i32
  call void @__asan_load4_noabort(i32 %754)
  %755 = load i32, ptr %tmp.i1.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %755, i32 %add1.i11.2.i.i)
  %cmp10.not.i21.3.i.i = icmp eq i32 %755, %add1.i11.2.i.i
  br i1 %cmp10.not.i21.3.i.i, label %if.end.i26.3.i.i, label %if.end.i26.2.i.i.sisusb_check_rbc.exit28.thread.i.i_crit_edge

if.end.i26.2.i.i.sisusb_check_rbc.exit28.thread.i.i_crit_edge: ; preds = %if.end.i26.2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sisusb_check_rbc.exit28.thread.i.i

if.end.i26.3.i.i:                                 ; preds = %if.end.i26.2.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i1.i.i) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i29.i.i) #10
  %756 = ptrtoint ptr %tmp.i29.i.i to i32
  call void @__asan_store4_noabort(i32 %756)
  store i32 -1, ptr %tmp.i29.i.i, align 4, !annotation !144
  %757 = ptrtoint ptr %vrambase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %757)
  %758 = load i32, ptr %vrambase.i.i.i, align 4
  %call.i37.i.i = call fastcc i32 @sisusb_write_memio_long(ptr noundef %sisusb, i32 noundef 0, i32 noundef %758, i32 noundef 0) #10
  %759 = ptrtoint ptr %vrambase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %759)
  %760 = load i32, ptr %vrambase.i.i.i, align 4
  %add.i36.1.i.i = add i32 %760, %shl25.i.i
  %call.i37.1.i.i = call fastcc i32 @sisusb_write_memio_long(ptr noundef %sisusb, i32 noundef 0, i32 noundef %add.i36.1.i.i, i32 noundef %shl25.i.i) #10
  %or.i38.1.i.i = or i32 %call.i37.1.i.i, %call.i37.i.i
  %or19.i.i = or i32 %or9.i20.3.i.i, %or.i.i488.lcssa
  %761 = ptrtoint ptr %vrambase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %761)
  %762 = load i32, ptr %vrambase.i.i.i, align 4
  %call8.i47.i.i = call fastcc i32 @sisusb_read_memio_long(ptr noundef %sisusb, i32 noundef 0, i32 noundef %762, ptr noundef nonnull %tmp.i29.i.i) #10
  %or9.i48.i.i = or i32 %or.i38.1.i.i, %call8.i47.i.i
  %763 = ptrtoint ptr %tmp.i29.i.i to i32
  call void @__asan_load4_noabort(i32 %763)
  %764 = load i32, ptr %tmp.i29.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %764)
  %cmp10.not.i49.i.i = icmp eq i32 %764, 0
  br i1 %cmp10.not.i49.i.i, label %if.end.i54.i.i, label %if.end.i26.3.i.i.sisusb_check_rbc.exit56.thread.i.i_crit_edge

if.end.i26.3.i.i.sisusb_check_rbc.exit56.thread.i.i_crit_edge: ; preds = %if.end.i26.3.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sisusb_check_rbc.exit56.thread.i.i

sisusb_check_rbc.exit56.thread.i.i:               ; preds = %if.end.i54.i.i.sisusb_check_rbc.exit56.thread.i.i_crit_edge, %if.end.i26.3.i.i.sisusb_check_rbc.exit56.thread.i.i_crit_edge
  %or9.i48.lcssa.i.i = phi i32 [ %or9.i48.i.i, %if.end.i26.3.i.i.sisusb_check_rbc.exit56.thread.i.i_crit_edge ], [ %or9.i48.1.i.i, %if.end.i54.i.i.sisusb_check_rbc.exit56.thread.i.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i29.i.i) #10
  %or2766.i.i = or i32 %or9.i48.lcssa.i.i, %or19.i.i
  br label %sisusb_check_ranks.exit.thread.i

if.end.i54.i.i:                                   ; preds = %if.end.i26.3.i.i
  %765 = ptrtoint ptr %vrambase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %765)
  %766 = load i32, ptr %vrambase.i.i.i, align 4
  %add7.i46.1.i.i = add i32 %766, %shl25.i.i
  %call8.i47.1.i.i = call fastcc i32 @sisusb_read_memio_long(ptr noundef %sisusb, i32 noundef 0, i32 noundef %add7.i46.1.i.i, ptr noundef nonnull %tmp.i29.i.i) #10
  %or9.i48.1.i.i = or i32 %call8.i47.1.i.i, %or9.i48.i.i
  %767 = ptrtoint ptr %tmp.i29.i.i to i32
  call void @__asan_load4_noabort(i32 %767)
  %768 = load i32, ptr %tmp.i29.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %768, i32 %shl25.i.i)
  %cmp10.not.i49.1.i.i = icmp eq i32 %768, %shl25.i.i
  br i1 %cmp10.not.i49.1.i.i, label %sisusb_get_sdram_size.exit.thread, label %if.end.i54.i.i.sisusb_check_rbc.exit56.thread.i.i_crit_edge

if.end.i54.i.i.sisusb_check_rbc.exit56.thread.i.i_crit_edge: ; preds = %if.end.i54.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sisusb_check_rbc.exit56.thread.i.i

sisusb_check_ranks.exit.thread.i:                 ; preds = %sisusb_check_rbc.exit56.thread.i.i, %sisusb_check_rbc.exit28.thread.i.i, %sisusb_check_rbc.exit.thread.i.i
  %retval.0.i39.ph.i = phi i32 [ %or2766.i.i, %sisusb_check_rbc.exit56.thread.i.i ], [ %or1963.i.i, %sisusb_check_rbc.exit28.thread.i.i ], [ %or60.i.i, %sisusb_check_rbc.exit.thread.i.i ]
  %or947.i = or i32 %retval.0.i39.ph.i, %or7.i486
  br label %for.inc.i489

sisusb_get_sdram_size.exit.thread:                ; preds = %if.end.i54.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i29.i.i) #10
  %or27.i.i = or i32 %or7.i486, %or214
  %or9.i = or i32 %or27.i.i, %or19.i.i
  %or220494 = or i32 %or9.i, %or9.i48.1.i.i
  br label %if.end233

for.inc.i489:                                     ; preds = %sisusb_check_ranks.exit.thread.i, %if.end.i.i.for.inc.i489_crit_edge, %land.lhs.true.i.i.for.inc.i489_crit_edge
  %ret.2.i = phi i32 [ %or947.i, %sisusb_check_ranks.exit.thread.i ], [ %ret.152.i, %land.lhs.true.i.i.for.inc.i489_crit_edge ], [ %ret.152.i, %if.end.i.i.for.inc.i489_crit_edge ]
  %dec.i = add nsw i32 %j.053.i, -1
  %cmp3.not.i = icmp eq i32 %dec.i, 0
  br i1 %cmp3.not.i, label %for.inc13.i, label %for.inc.i489.for.body4.i_crit_edge

for.inc.i489.for.body4.i_crit_edge:               ; preds = %for.inc.i489
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body4.i

for.inc13.i:                                      ; preds = %for.inc.i489
  %inc.i = add nuw nsw i32 %i.056.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 13
  br i1 %exitcond.not.i, label %do.end, label %for.inc13.i.for.body.i484_crit_edge

for.inc13.i.for.body.i484_crit_edge:              ; preds = %for.inc13.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i484

do.end:                                           ; preds = %for.inc13.i
  call void @__sanitizer_cov_trace_pc() #12
  %or220 = or i32 %ret.2.i, %or214
  %769 = ptrtoint ptr %sisusb to i32
  call void @__asan_load4_noabort(i32 %769)
  %770 = load ptr, ptr %sisusb, align 4
  %dev = getelementptr inbounds %struct.usb_device, ptr %770, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.36) #14
  %call223 = call i32 @sisusb_setidxreg(ptr noundef %sisusb, i32 noundef 53316, i8 noundef zeroext 20, i8 noundef zeroext 49)
  %or224 = or i32 %or220, %call223
  br label %if.end233

do.end228:                                        ; preds = %sisusb_verify_mclk.exit
  call void @__sanitizer_cov_trace_pc() #12
  %771 = ptrtoint ptr %sisusb to i32
  call void @__asan_load4_noabort(i32 %771)
  %772 = load ptr, ptr %sisusb, align 4
  %dev230 = getelementptr inbounds %struct.usb_device, ptr %772, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev230, ptr noundef nonnull @.str.39) #14
  %call231 = call i32 @sisusb_setidxreg(ptr noundef %sisusb, i32 noundef 53316, i8 noundef zeroext 20, i8 noundef zeroext 49)
  %or232 = or i32 %call231, %or214
  br label %if.end233

if.end233:                                        ; preds = %do.end228, %do.end, %sisusb_get_sdram_size.exit.thread
  %ret.8 = phi i32 [ %or224, %do.end ], [ %or232, %do.end228 ], [ %or220494, %sisusb_get_sdram_size.exit.thread ]
  %773 = ptrtoint ptr %ramtype to i32
  call void @__asan_load1_noabort(i32 %773)
  %774 = load i8, ptr %ramtype, align 1
  %conv234 = zext i8 %774 to i32
  %add235 = add nuw nsw i32 %conv234, 4
  %arrayidx236 = getelementptr [28 x i8], ptr @sisusb_init_gfxcore.ramtypetable1, i32 0, i32 %add235
  %775 = ptrtoint ptr %arrayidx236 to i32
  call void @__asan_load1_noabort(i32 %775)
  %776 = load i8, ptr %arrayidx236, align 1
  %call237 = call i32 @sisusb_setidxreg(ptr noundef %sisusb, i32 noundef 53316, i8 noundef zeroext 22, i8 noundef zeroext %776)
  %or238 = or i32 %call237, %ret.8
  %add240 = add nuw nsw i32 %conv234, 8
  %arrayidx241 = getelementptr [28 x i8], ptr @sisusb_init_gfxcore.ramtypetable1, i32 0, i32 %add240
  %777 = ptrtoint ptr %arrayidx241 to i32
  call void @__asan_load1_noabort(i32 %777)
  %778 = load i8, ptr %arrayidx241, align 1
  %call242 = call i32 @sisusb_setidxreg(ptr noundef %sisusb, i32 noundef 53316, i8 noundef zeroext 23, i8 noundef zeroext %778)
  %or243 = or i32 %or238, %call242
  %add245 = add nuw nsw i32 %conv234, 16
  %arrayidx246 = getelementptr [28 x i8], ptr @sisusb_init_gfxcore.ramtypetable1, i32 0, i32 %add245
  %779 = ptrtoint ptr %arrayidx246 to i32
  call void @__asan_load1_noabort(i32 %779)
  %780 = load i8, ptr %arrayidx246, align 1
  %call247 = call i32 @sisusb_setidxreg(ptr noundef %sisusb, i32 noundef 53316, i8 noundef zeroext 25, i8 noundef zeroext %780)
  %or248 = or i32 %or243, %call247
  %call.i491 = call i32 @sisusb_setidxregandor(ptr noundef %sisusb, i32 noundef 53316, i8 noundef zeroext 33, i8 noundef zeroext -1, i8 noundef zeroext 32) #10
  %or250 = or i32 %or248, %call.i491
  %call251 = call i32 @sisusb_setidxreg(ptr noundef %sisusb, i32 noundef 53316, i8 noundef zeroext 34, i8 noundef zeroext -5)
  %or252 = or i32 %or250, %call251
  %call253 = call i32 @sisusb_setidxreg(ptr noundef %sisusb, i32 noundef 53316, i8 noundef zeroext 33, i8 noundef zeroext -91)
  %or254 = or i32 %or252, %call253
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or254)
  %cmp255 = icmp eq i32 %or254, 0
  br i1 %cmp255, label %if.end233.while.end_crit_edge, label %if.end233.while.cond.backedge_crit_edge

if.end233.while.cond.backedge_crit_edge:          ; preds = %if.end233
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.backedge

if.end233.while.end_crit_edge:                    ; preds = %if.end233
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %if.end233.while.end_crit_edge, %while.cond.backedge.while.end_crit_edge
  %ret.9 = phi i32 [ 0, %if.end233.while.end_crit_edge ], [ %ret.0.be, %while.cond.backedge.while.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp32) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ramtype) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp8) #10
  ret i32 %ret.9
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sisusb_set_default_mode(ptr noundef %sisusb, i32 noundef %touchengines) unnamed_addr #0 align 64 {
entry:
  %bytes_transferred.i.i324 = alloca i32, align 4
  %packet.i325 = alloca %struct.sisusb_packet, align 2
  %bytes_transferred.i.i314 = alloca i32, align 4
  %packet.i315 = alloca %struct.sisusb_packet, align 2
  %bytes_transferred.i.i306 = alloca i32, align 4
  %packet.i307 = alloca %struct.sisusb_packet, align 2
  %bytes_transferred.i.i298 = alloca i32, align 4
  %packet.i299 = alloca %struct.sisusb_packet, align 2
  %bytes_transferred.i.i289 = alloca i32, align 4
  %packet.i290 = alloca %struct.sisusb_packet, align 2
  %bytes_transferred.i.i281 = alloca i32, align 4
  %packet.i282 = alloca %struct.sisusb_packet, align 2
  %bytes_transferred.i.i = alloca i32, align 4
  %packet.i = alloca %struct.sisusb_packet, align 2
  %bytes_transferred.i.i.i268 = alloca i32, align 4
  %packet.i.i269 = alloca %struct.sisusb_packet, align 2
  %bytes_transferred.i.i.i = alloca i32, align 4
  %packet.i.i = alloca %struct.sisusb_packet, align 2
  %sr31 = alloca i8, align 1
  %cr63 = alloca i8, align 1
  %tmp8 = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %sr31) #10
  %0 = ptrtoint ptr %sr31 to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %sr31, align 1, !annotation !144
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cr63) #10
  %1 = ptrtoint ptr %cr63 to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %cr63, align 1, !annotation !144
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp8) #10
  %2 = ptrtoint ptr %tmp8 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %tmp8, align 1, !annotation !144
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %packet.i.i) #10
  %3 = getelementptr inbounds %struct.sisusb_packet, ptr %packet.i.i, i32 0, i32 1
  %4 = getelementptr inbounds %struct.sisusb_packet, ptr %packet.i.i, i32 0, i32 2
  %5 = ptrtoint ptr %packet.i.i to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 65, ptr %packet.i.i, align 2
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %6, i32 4)
  store i32 53316, ptr %3, align 2
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_storeN_noabort(i32 %7, i32 4)
  store i32 49, ptr %4, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bytes_transferred.i.i.i) #10
  %8 = ptrtoint ptr %bytes_transferred.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %bytes_transferred.i.i.i, align 4
  %call.i.i.i = tail call fastcc i32 @sisusb_wait_all_out_complete(ptr noundef %sisusb) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %entry.sisusb_getidxreg.exit_crit_edge, label %do.body.i.i.i

entry.sisusb_getidxreg.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sisusb_getidxreg.exit

do.body.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %packet.i.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %packet.i.i, align 2
  %11 = tail call i16 @llvm.bswap.i16(i16 %10) #10
  %12 = ptrtoint ptr %packet.i.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %packet.i.i, align 2
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_loadN_noabort(i32 %13, i32 4)
  %14 = load i32, ptr %3, align 2
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #10
  %16 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %16, i32 4)
  store i32 %15, ptr %3, align 2
  %17 = ptrtoint ptr %4 to i32
  call void @__asan_loadN_noabort(i32 %17, i32 4)
  %18 = load i32, ptr %4, align 2
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #10
  %20 = ptrtoint ptr %4 to i32
  call void @__asan_storeN_noabort(i32 %20, i32 4)
  store i32 %19, ptr %4, align 2
  %call7.i.i.i = call fastcc i32 @sisusb_send_bulk_msg(ptr noundef %sisusb, i32 noundef 14, i32 noundef 10, ptr noundef nonnull %packet.i.i, ptr noundef null, i32 noundef 0, ptr noundef nonnull %bytes_transferred.i.i.i, i32 noundef 0) #10
  br label %sisusb_getidxreg.exit

sisusb_getidxreg.exit:                            ; preds = %do.body.i.i.i, %entry.sisusb_getidxreg.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bytes_transferred.i.i.i) #10
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %packet.i.i) #10
  %call1.i = call fastcc i32 @sisusb_read_memio_byte(ptr noundef %sisusb, i32 noundef 1, i32 noundef 53317, ptr noundef nonnull %sr31) #10
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %packet.i.i269) #10
  %21 = getelementptr inbounds %struct.sisusb_packet, ptr %packet.i.i269, i32 0, i32 1
  %22 = getelementptr inbounds %struct.sisusb_packet, ptr %packet.i.i269, i32 0, i32 2
  %23 = ptrtoint ptr %packet.i.i269 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 65, ptr %packet.i.i269, align 2
  %24 = ptrtoint ptr %21 to i32
  call void @__asan_storeN_noabort(i32 %24, i32 4)
  store i32 53332, ptr %21, align 2
  %25 = ptrtoint ptr %22 to i32
  call void @__asan_storeN_noabort(i32 %25, i32 4)
  store i32 99, ptr %22, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bytes_transferred.i.i.i268) #10
  %26 = ptrtoint ptr %bytes_transferred.i.i.i268 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %bytes_transferred.i.i.i268, align 4
  %call.i.i.i270 = call fastcc i32 @sisusb_wait_all_out_complete(ptr noundef %sisusb) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i270)
  %tobool.not.i.i.i271 = icmp eq i32 %call.i.i.i270, 0
  br i1 %tobool.not.i.i.i271, label %sisusb_getidxreg.exit.sisusb_getidxreg.exit277_crit_edge, label %do.body.i.i.i273

sisusb_getidxreg.exit.sisusb_getidxreg.exit277_crit_edge: ; preds = %sisusb_getidxreg.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sisusb_getidxreg.exit277

do.body.i.i.i273:                                 ; preds = %sisusb_getidxreg.exit
  call void @__sanitizer_cov_trace_pc() #12
  %27 = ptrtoint ptr %packet.i.i269 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %packet.i.i269, align 2
  %29 = call i16 @llvm.bswap.i16(i16 %28) #10
  %30 = ptrtoint ptr %packet.i.i269 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %29, ptr %packet.i.i269, align 2
  %31 = ptrtoint ptr %21 to i32
  call void @__asan_loadN_noabort(i32 %31, i32 4)
  %32 = load i32, ptr %21, align 2
  %33 = call i32 @llvm.bswap.i32(i32 %32) #10
  %34 = ptrtoint ptr %21 to i32
  call void @__asan_storeN_noabort(i32 %34, i32 4)
  store i32 %33, ptr %21, align 2
  %35 = ptrtoint ptr %22 to i32
  call void @__asan_loadN_noabort(i32 %35, i32 4)
  %36 = load i32, ptr %22, align 2
  %37 = call i32 @llvm.bswap.i32(i32 %36) #10
  %38 = ptrtoint ptr %22 to i32
  call void @__asan_storeN_noabort(i32 %38, i32 4)
  store i32 %37, ptr %22, align 2
  %call7.i.i.i272 = call fastcc i32 @sisusb_send_bulk_msg(ptr noundef %sisusb, i32 noundef 14, i32 noundef 10, ptr noundef nonnull %packet.i.i269, ptr noundef null, i32 noundef 0, ptr noundef nonnull %bytes_transferred.i.i.i268, i32 noundef 0) #10
  br label %sisusb_getidxreg.exit277

sisusb_getidxreg.exit277:                         ; preds = %do.body.i.i.i273, %sisusb_getidxreg.exit.sisusb_getidxreg.exit277_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bytes_transferred.i.i.i268) #10
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %packet.i.i269) #10
  %call1.i275 = call fastcc i32 @sisusb_read_memio_byte(ptr noundef %sisusb, i32 noundef 1, i32 noundef 53333, ptr noundef nonnull %cr63) #10
  %call.i = call i32 @sisusb_setidxregandor(ptr noundef %sisusb, i32 noundef 53316, i8 noundef zeroext 1, i8 noundef zeroext -1, i8 noundef zeroext 32) #10
  %39 = ptrtoint ptr %cr63 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %cr63, align 1
  %41 = and i8 %40, -65
  %call4 = call i32 @sisusb_setidxreg(ptr noundef %sisusb, i32 noundef 53332, i8 noundef zeroext 99, i8 noundef zeroext %41)
  %call.i278 = call i32 @sisusb_setidxregandor(ptr noundef %sisusb, i32 noundef 53332, i8 noundef zeroext 23, i8 noundef zeroext -1, i8 noundef zeroext -128) #10
  %call.i279 = call i32 @sisusb_setidxregandor(ptr noundef %sisusb, i32 noundef 53316, i8 noundef zeroext 31, i8 noundef zeroext -1, i8 noundef zeroext 4) #10
  %call.i280 = call i32 @sisusb_setidxregandor(ptr noundef %sisusb, i32 noundef 53316, i8 noundef zeroext 7, i8 noundef zeroext -5, i8 noundef zeroext 0) #10
  %call8 = call i32 @sisusb_setidxreg(ptr noundef %sisusb, i32 noundef 53316, i8 noundef zeroext 0, i8 noundef zeroext 3)
  %call9 = call i32 @sisusb_setidxreg(ptr noundef %sisusb, i32 noundef 53316, i8 noundef zeroext 1, i8 noundef zeroext 33)
  %call10 = call i32 @sisusb_setidxreg(ptr noundef %sisusb, i32 noundef 53316, i8 noundef zeroext 2, i8 noundef zeroext 15)
  %call11 = call i32 @sisusb_setidxreg(ptr noundef %sisusb, i32 noundef 53316, i8 noundef zeroext 3, i8 noundef zeroext 0)
  %call12 = call i32 @sisusb_setidxreg(ptr noundef %sisusb, i32 noundef 53316, i8 noundef zeroext 4, i8 noundef zeroext 14)
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %packet.i) #10
  %42 = getelementptr inbounds %struct.sisusb_packet, ptr %packet.i, i32 0, i32 1
  %43 = getelementptr inbounds %struct.sisusb_packet, ptr %packet.i, i32 0, i32 2
  %44 = ptrtoint ptr %packet.i to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 68, ptr %packet.i, align 2
  %45 = ptrtoint ptr %42 to i32
  call void @__asan_storeN_noabort(i32 %45, i32 4)
  store i32 53312, ptr %42, align 2
  %46 = ptrtoint ptr %43 to i32
  call void @__asan_storeN_noabort(i32 %46, i32 4)
  store i32 2293760, ptr %43, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bytes_transferred.i.i) #10
  %47 = ptrtoint ptr %bytes_transferred.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %bytes_transferred.i.i, align 4
  %call.i.i = call fastcc i32 @sisusb_wait_all_out_complete(ptr noundef %sisusb) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %sisusb_getidxreg.exit277.sisusb_write_memio_byte.exit_crit_edge, label %do.body.i.i

sisusb_getidxreg.exit277.sisusb_write_memio_byte.exit_crit_edge: ; preds = %sisusb_getidxreg.exit277
  call void @__sanitizer_cov_trace_pc() #12
  br label %sisusb_write_memio_byte.exit

do.body.i.i:                                      ; preds = %sisusb_getidxreg.exit277
  call void @__sanitizer_cov_trace_pc() #12
  %48 = ptrtoint ptr %packet.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %packet.i, align 2
  %50 = call i16 @llvm.bswap.i16(i16 %49) #10
  %51 = ptrtoint ptr %packet.i to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %50, ptr %packet.i, align 2
  %52 = ptrtoint ptr %42 to i32
  call void @__asan_loadN_noabort(i32 %52, i32 4)
  %53 = load i32, ptr %42, align 2
  %54 = call i32 @llvm.bswap.i32(i32 %53) #10
  %55 = ptrtoint ptr %42 to i32
  call void @__asan_storeN_noabort(i32 %55, i32 4)
  store i32 %54, ptr %42, align 2
  %56 = ptrtoint ptr %43 to i32
  call void @__asan_loadN_noabort(i32 %56, i32 4)
  %57 = load i32, ptr %43, align 2
  %58 = call i32 @llvm.bswap.i32(i32 %57) #10
  %59 = ptrtoint ptr %43 to i32
  call void @__asan_storeN_noabort(i32 %59, i32 4)
  store i32 %58, ptr %43, align 2
  %call7.i.i = call fastcc i32 @sisusb_send_bulk_msg(ptr noundef %sisusb, i32 noundef 14, i32 noundef 10, ptr noundef nonnull %packet.i, ptr noundef null, i32 noundef 0, ptr noundef nonnull %bytes_transferred.i.i, i32 noundef 0) #10
  br label %sisusb_write_memio_byte.exit

sisusb_write_memio_byte.exit:                     ; preds = %do.body.i.i, %sisusb_getidxreg.exit277.sisusb_write_memio_byte.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bytes_transferred.i.i) #10
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %packet.i) #10
  br label %for.body

for.cond17.preheader:                             ; preds = %for.body
  %60 = getelementptr inbounds %struct.sisusb_packet, ptr %packet.i282, i32 0, i32 1
  %61 = getelementptr inbounds %struct.sisusb_packet, ptr %packet.i282, i32 0, i32 2
  %62 = getelementptr inbounds %struct.sisusb_packet, ptr %packet.i290, i32 0, i32 1
  %63 = getelementptr inbounds %struct.sisusb_packet, ptr %packet.i290, i32 0, i32 2
  br label %for.body20

for.body:                                         ; preds = %for.body.for.body_crit_edge, %sisusb_write_memio_byte.exit
  %i.0343 = phi i32 [ 0, %sisusb_write_memio_byte.exit ], [ %inc, %for.body.for.body_crit_edge ]
  %conv15 = trunc i32 %i.0343 to i8
  %arrayidx = getelementptr [25 x i8], ptr @sisusb_set_default_mode.crtcrdata, i32 0, i32 %i.0343
  %64 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %arrayidx, align 1
  %call16 = call i32 @sisusb_setidxreg(ptr noundef %sisusb, i32 noundef 53332, i8 noundef zeroext %conv15, i8 noundef zeroext %65)
  %inc = add nuw nsw i32 %i.0343, 1
  %exitcond.not = icmp eq i32 %inc, 25
  br i1 %exitcond.not, label %for.cond17.preheader, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body20:                                       ; preds = %sisusb_write_memio_byte.exit297.for.body20_crit_edge, %for.cond17.preheader
  %i.1344 = phi i32 [ 0, %for.cond17.preheader ], [ %inc27, %sisusb_write_memio_byte.exit297.for.body20_crit_edge ]
  %call21 = call fastcc i32 @sisusb_read_memio_byte(ptr noundef %sisusb, i32 noundef 1, i32 noundef 53338, ptr noundef nonnull %tmp8)
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %packet.i282) #10
  %66 = ptrtoint ptr %packet.i282 to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 65, ptr %packet.i282, align 2
  %67 = ptrtoint ptr %60 to i32
  call void @__asan_storeN_noabort(i32 %67, i32 4)
  store i32 53312, ptr %60, align 2
  %68 = ptrtoint ptr %61 to i32
  call void @__asan_storeN_noabort(i32 %68, i32 4)
  store i32 %i.1344, ptr %61, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bytes_transferred.i.i281) #10
  %69 = ptrtoint ptr %bytes_transferred.i.i281 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 0, ptr %bytes_transferred.i.i281, align 4
  %call.i.i283 = call fastcc i32 @sisusb_wait_all_out_complete(ptr noundef %sisusb) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i283)
  %tobool.not.i.i284 = icmp eq i32 %call.i.i283, 0
  br i1 %tobool.not.i.i284, label %for.body20.sisusb_write_memio_byte.exit288_crit_edge, label %do.body.i.i286

for.body20.sisusb_write_memio_byte.exit288_crit_edge: ; preds = %for.body20
  call void @__sanitizer_cov_trace_pc() #12
  br label %sisusb_write_memio_byte.exit288

do.body.i.i286:                                   ; preds = %for.body20
  call void @__sanitizer_cov_trace_pc() #12
  %70 = ptrtoint ptr %packet.i282 to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %packet.i282, align 2
  %72 = call i16 @llvm.bswap.i16(i16 %71) #10
  %73 = ptrtoint ptr %packet.i282 to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 %72, ptr %packet.i282, align 2
  %74 = ptrtoint ptr %60 to i32
  call void @__asan_loadN_noabort(i32 %74, i32 4)
  %75 = load i32, ptr %60, align 2
  %76 = call i32 @llvm.bswap.i32(i32 %75) #10
  %77 = ptrtoint ptr %60 to i32
  call void @__asan_storeN_noabort(i32 %77, i32 4)
  store i32 %76, ptr %60, align 2
  %78 = ptrtoint ptr %61 to i32
  call void @__asan_loadN_noabort(i32 %78, i32 4)
  %79 = load i32, ptr %61, align 2
  %80 = call i32 @llvm.bswap.i32(i32 %79) #10
  %81 = ptrtoint ptr %61 to i32
  call void @__asan_storeN_noabort(i32 %81, i32 4)
  store i32 %80, ptr %61, align 2
  %call7.i.i285 = call fastcc i32 @sisusb_send_bulk_msg(ptr noundef %sisusb, i32 noundef 14, i32 noundef 10, ptr noundef nonnull %packet.i282, ptr noundef null, i32 noundef 0, ptr noundef nonnull %bytes_transferred.i.i281, i32 noundef 0) #10
  br label %sisusb_write_memio_byte.exit288

sisusb_write_memio_byte.exit288:                  ; preds = %do.body.i.i286, %for.body20.sisusb_write_memio_byte.exit288_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bytes_transferred.i.i281) #10
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %packet.i282) #10
  %arrayidx24 = getelementptr [20 x i8], ptr @sisusb_set_default_mode.attrdata, i32 0, i32 %i.1344
  %82 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %arrayidx24, align 1
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %packet.i290) #10
  %84 = ptrtoint ptr %packet.i290 to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 65, ptr %packet.i290, align 2
  %85 = ptrtoint ptr %62 to i32
  call void @__asan_storeN_noabort(i32 %85, i32 4)
  store i32 53312, ptr %62, align 2
  %conv3.i291 = zext i8 %83 to i32
  %86 = ptrtoint ptr %63 to i32
  call void @__asan_storeN_noabort(i32 %86, i32 4)
  store i32 %conv3.i291, ptr %63, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bytes_transferred.i.i289) #10
  %87 = ptrtoint ptr %bytes_transferred.i.i289 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 0, ptr %bytes_transferred.i.i289, align 4
  %call.i.i292 = call fastcc i32 @sisusb_wait_all_out_complete(ptr noundef %sisusb) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i292)
  %tobool.not.i.i293 = icmp eq i32 %call.i.i292, 0
  br i1 %tobool.not.i.i293, label %sisusb_write_memio_byte.exit288.sisusb_write_memio_byte.exit297_crit_edge, label %do.body.i.i295

sisusb_write_memio_byte.exit288.sisusb_write_memio_byte.exit297_crit_edge: ; preds = %sisusb_write_memio_byte.exit288
  call void @__sanitizer_cov_trace_pc() #12
  br label %sisusb_write_memio_byte.exit297

do.body.i.i295:                                   ; preds = %sisusb_write_memio_byte.exit288
  call void @__sanitizer_cov_trace_pc() #12
  %88 = ptrtoint ptr %packet.i290 to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %packet.i290, align 2
  %90 = call i16 @llvm.bswap.i16(i16 %89) #10
  %91 = ptrtoint ptr %packet.i290 to i32
  call void @__asan_store2_noabort(i32 %91)
  store i16 %90, ptr %packet.i290, align 2
  %92 = ptrtoint ptr %62 to i32
  call void @__asan_loadN_noabort(i32 %92, i32 4)
  %93 = load i32, ptr %62, align 2
  %94 = call i32 @llvm.bswap.i32(i32 %93) #10
  %95 = ptrtoint ptr %62 to i32
  call void @__asan_storeN_noabort(i32 %95, i32 4)
  store i32 %94, ptr %62, align 2
  %96 = ptrtoint ptr %63 to i32
  call void @__asan_loadN_noabort(i32 %96, i32 4)
  %97 = load i32, ptr %63, align 2
  %98 = call i32 @llvm.bswap.i32(i32 %97) #10
  %99 = ptrtoint ptr %63 to i32
  call void @__asan_storeN_noabort(i32 %99, i32 4)
  store i32 %98, ptr %63, align 2
  %call7.i.i294 = call fastcc i32 @sisusb_send_bulk_msg(ptr noundef %sisusb, i32 noundef 14, i32 noundef 10, ptr noundef nonnull %packet.i290, ptr noundef null, i32 noundef 0, ptr noundef nonnull %bytes_transferred.i.i289, i32 noundef 0) #10
  br label %sisusb_write_memio_byte.exit297

sisusb_write_memio_byte.exit297:                  ; preds = %do.body.i.i295, %sisusb_write_memio_byte.exit288.sisusb_write_memio_byte.exit297_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bytes_transferred.i.i289) #10
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %packet.i290) #10
  %inc27 = add nuw nsw i32 %i.1344, 1
  %exitcond359.not = icmp eq i32 %inc27, 20
  br i1 %exitcond359.not, label %for.end28, label %sisusb_write_memio_byte.exit297.for.body20_crit_edge

sisusb_write_memio_byte.exit297.for.body20_crit_edge: ; preds = %sisusb_write_memio_byte.exit297
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body20

for.end28:                                        ; preds = %sisusb_write_memio_byte.exit297
  %call29 = call fastcc i32 @sisusb_read_memio_byte(ptr noundef %sisusb, i32 noundef 1, i32 noundef 53338, ptr noundef nonnull %tmp8)
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %packet.i299) #10
  %100 = getelementptr inbounds %struct.sisusb_packet, ptr %packet.i299, i32 0, i32 1
  %101 = getelementptr inbounds %struct.sisusb_packet, ptr %packet.i299, i32 0, i32 2
  %102 = ptrtoint ptr %packet.i299 to i32
  call void @__asan_store2_noabort(i32 %102)
  store i16 65, ptr %packet.i299, align 2
  %103 = ptrtoint ptr %100 to i32
  call void @__asan_storeN_noabort(i32 %103, i32 4)
  store i32 53312, ptr %100, align 2
  %104 = ptrtoint ptr %101 to i32
  call void @__asan_storeN_noabort(i32 %104, i32 4)
  store i32 20, ptr %101, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bytes_transferred.i.i298) #10
  %105 = ptrtoint ptr %bytes_transferred.i.i298 to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 0, ptr %bytes_transferred.i.i298, align 4
  %call.i.i300 = call fastcc i32 @sisusb_wait_all_out_complete(ptr noundef %sisusb) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i300)
  %tobool.not.i.i301 = icmp eq i32 %call.i.i300, 0
  br i1 %tobool.not.i.i301, label %for.end28.sisusb_write_memio_byte.exit305_crit_edge, label %do.body.i.i303

for.end28.sisusb_write_memio_byte.exit305_crit_edge: ; preds = %for.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %sisusb_write_memio_byte.exit305

do.body.i.i303:                                   ; preds = %for.end28
  call void @__sanitizer_cov_trace_pc() #12
  %106 = ptrtoint ptr %packet.i299 to i32
  call void @__asan_load2_noabort(i32 %106)
  %107 = load i16, ptr %packet.i299, align 2
  %108 = call i16 @llvm.bswap.i16(i16 %107) #10
  %109 = ptrtoint ptr %packet.i299 to i32
  call void @__asan_store2_noabort(i32 %109)
  store i16 %108, ptr %packet.i299, align 2
  %110 = ptrtoint ptr %100 to i32
  call void @__asan_loadN_noabort(i32 %110, i32 4)
  %111 = load i32, ptr %100, align 2
  %112 = call i32 @llvm.bswap.i32(i32 %111) #10
  %113 = ptrtoint ptr %100 to i32
  call void @__asan_storeN_noabort(i32 %113, i32 4)
  store i32 %112, ptr %100, align 2
  %114 = ptrtoint ptr %101 to i32
  call void @__asan_loadN_noabort(i32 %114, i32 4)
  %115 = load i32, ptr %101, align 2
  %116 = call i32 @llvm.bswap.i32(i32 %115) #10
  %117 = ptrtoint ptr %101 to i32
  call void @__asan_storeN_noabort(i32 %117, i32 4)
  store i32 %116, ptr %101, align 2
  %call7.i.i302 = call fastcc i32 @sisusb_send_bulk_msg(ptr noundef %sisusb, i32 noundef 14, i32 noundef 10, ptr noundef nonnull %packet.i299, ptr noundef null, i32 noundef 0, ptr noundef nonnull %bytes_transferred.i.i298, i32 noundef 0) #10
  br label %sisusb_write_memio_byte.exit305

sisusb_write_memio_byte.exit305:                  ; preds = %do.body.i.i303, %for.end28.sisusb_write_memio_byte.exit305_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bytes_transferred.i.i298) #10
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %packet.i299) #10
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %packet.i307) #10
  %118 = getelementptr inbounds %struct.sisusb_packet, ptr %packet.i307, i32 0, i32 1
  %119 = getelementptr inbounds %struct.sisusb_packet, ptr %packet.i307, i32 0, i32 2
  %120 = ptrtoint ptr %packet.i307 to i32
  call void @__asan_store2_noabort(i32 %120)
  store i16 65, ptr %packet.i307, align 2
  %121 = ptrtoint ptr %118 to i32
  call void @__asan_storeN_noabort(i32 %121, i32 4)
  store i32 53312, ptr %118, align 2
  %122 = ptrtoint ptr %119 to i32
  call void @__asan_storeN_noabort(i32 %122, i32 4)
  store i32 0, ptr %119, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bytes_transferred.i.i306) #10
  %123 = ptrtoint ptr %bytes_transferred.i.i306 to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 0, ptr %bytes_transferred.i.i306, align 4
  %call.i.i308 = call fastcc i32 @sisusb_wait_all_out_complete(ptr noundef %sisusb) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i308)
  %tobool.not.i.i309 = icmp eq i32 %call.i.i308, 0
  br i1 %tobool.not.i.i309, label %sisusb_write_memio_byte.exit305.sisusb_write_memio_byte.exit313_crit_edge, label %do.body.i.i311

sisusb_write_memio_byte.exit305.sisusb_write_memio_byte.exit313_crit_edge: ; preds = %sisusb_write_memio_byte.exit305
  call void @__sanitizer_cov_trace_pc() #12
  br label %sisusb_write_memio_byte.exit313

do.body.i.i311:                                   ; preds = %sisusb_write_memio_byte.exit305
  call void @__sanitizer_cov_trace_pc() #12
  %124 = ptrtoint ptr %packet.i307 to i32
  call void @__asan_load2_noabort(i32 %124)
  %125 = load i16, ptr %packet.i307, align 2
  %126 = call i16 @llvm.bswap.i16(i16 %125) #10
  %127 = ptrtoint ptr %packet.i307 to i32
  call void @__asan_store2_noabort(i32 %127)
  store i16 %126, ptr %packet.i307, align 2
  %128 = ptrtoint ptr %118 to i32
  call void @__asan_loadN_noabort(i32 %128, i32 4)
  %129 = load i32, ptr %118, align 2
  %130 = call i32 @llvm.bswap.i32(i32 %129) #10
  %131 = ptrtoint ptr %118 to i32
  call void @__asan_storeN_noabort(i32 %131, i32 4)
  store i32 %130, ptr %118, align 2
  %132 = ptrtoint ptr %119 to i32
  call void @__asan_loadN_noabort(i32 %132, i32 4)
  %133 = load i32, ptr %119, align 2
  %134 = call i32 @llvm.bswap.i32(i32 %133) #10
  %135 = ptrtoint ptr %119 to i32
  call void @__asan_storeN_noabort(i32 %135, i32 4)
  store i32 %134, ptr %119, align 2
  %call7.i.i310 = call fastcc i32 @sisusb_send_bulk_msg(ptr noundef %sisusb, i32 noundef 14, i32 noundef 10, ptr noundef nonnull %packet.i307, ptr noundef null, i32 noundef 0, ptr noundef nonnull %bytes_transferred.i.i306, i32 noundef 0) #10
  br label %sisusb_write_memio_byte.exit313

sisusb_write_memio_byte.exit313:                  ; preds = %do.body.i.i311, %sisusb_write_memio_byte.exit305.sisusb_write_memio_byte.exit313_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bytes_transferred.i.i306) #10
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %packet.i307) #10
  %call32 = call fastcc i32 @sisusb_read_memio_byte(ptr noundef %sisusb, i32 noundef 1, i32 noundef 53338, ptr noundef nonnull %tmp8)
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %packet.i315) #10
  %136 = getelementptr inbounds %struct.sisusb_packet, ptr %packet.i315, i32 0, i32 1
  %137 = getelementptr inbounds %struct.sisusb_packet, ptr %packet.i315, i32 0, i32 2
  %138 = ptrtoint ptr %packet.i315 to i32
  call void @__asan_store2_noabort(i32 %138)
  store i16 65, ptr %packet.i315, align 2
  %139 = ptrtoint ptr %136 to i32
  call void @__asan_storeN_noabort(i32 %139, i32 4)
  store i32 53312, ptr %136, align 2
  %140 = ptrtoint ptr %137 to i32
  call void @__asan_storeN_noabort(i32 %140, i32 4)
  store i32 32, ptr %137, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bytes_transferred.i.i314) #10
  %141 = ptrtoint ptr %bytes_transferred.i.i314 to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 0, ptr %bytes_transferred.i.i314, align 4
  %call.i.i316 = call fastcc i32 @sisusb_wait_all_out_complete(ptr noundef %sisusb) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i316)
  %tobool.not.i.i317 = icmp eq i32 %call.i.i316, 0
  br i1 %tobool.not.i.i317, label %sisusb_write_memio_byte.exit313.sisusb_write_memio_byte.exit321_crit_edge, label %do.body.i.i319

sisusb_write_memio_byte.exit313.sisusb_write_memio_byte.exit321_crit_edge: ; preds = %sisusb_write_memio_byte.exit313
  call void @__sanitizer_cov_trace_pc() #12
  br label %sisusb_write_memio_byte.exit321

do.body.i.i319:                                   ; preds = %sisusb_write_memio_byte.exit313
  call void @__sanitizer_cov_trace_pc() #12
  %142 = ptrtoint ptr %packet.i315 to i32
  call void @__asan_load2_noabort(i32 %142)
  %143 = load i16, ptr %packet.i315, align 2
  %144 = call i16 @llvm.bswap.i16(i16 %143) #10
  %145 = ptrtoint ptr %packet.i315 to i32
  call void @__asan_store2_noabort(i32 %145)
  store i16 %144, ptr %packet.i315, align 2
  %146 = ptrtoint ptr %136 to i32
  call void @__asan_loadN_noabort(i32 %146, i32 4)
  %147 = load i32, ptr %136, align 2
  %148 = call i32 @llvm.bswap.i32(i32 %147) #10
  %149 = ptrtoint ptr %136 to i32
  call void @__asan_storeN_noabort(i32 %149, i32 4)
  store i32 %148, ptr %136, align 2
  %150 = ptrtoint ptr %137 to i32
  call void @__asan_loadN_noabort(i32 %150, i32 4)
  %151 = load i32, ptr %137, align 2
  %152 = call i32 @llvm.bswap.i32(i32 %151) #10
  %153 = ptrtoint ptr %137 to i32
  call void @__asan_storeN_noabort(i32 %153, i32 4)
  store i32 %152, ptr %137, align 2
  %call7.i.i318 = call fastcc i32 @sisusb_send_bulk_msg(ptr noundef %sisusb, i32 noundef 14, i32 noundef 10, ptr noundef nonnull %packet.i315, ptr noundef null, i32 noundef 0, ptr noundef nonnull %bytes_transferred.i.i314, i32 noundef 0) #10
  br label %sisusb_write_memio_byte.exit321

sisusb_write_memio_byte.exit321:                  ; preds = %do.body.i.i319, %sisusb_write_memio_byte.exit313.sisusb_write_memio_byte.exit321_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bytes_transferred.i.i314) #10
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %packet.i315) #10
  %call34 = call fastcc i32 @sisusb_read_memio_byte(ptr noundef %sisusb, i32 noundef 1, i32 noundef 53338, ptr noundef nonnull %tmp8)
  %call41 = call i32 @sisusb_setidxreg(ptr noundef %sisusb, i32 noundef 53326, i8 noundef zeroext 0, i8 noundef zeroext 0)
  %call41.1 = call i32 @sisusb_setidxreg(ptr noundef %sisusb, i32 noundef 53326, i8 noundef zeroext 1, i8 noundef zeroext 0)
  %call41.2 = call i32 @sisusb_setidxreg(ptr noundef %sisusb, i32 noundef 53326, i8 noundef zeroext 2, i8 noundef zeroext 0)
  %call41.3 = call i32 @sisusb_setidxreg(ptr noundef %sisusb, i32 noundef 53326, i8 noundef zeroext 3, i8 noundef zeroext 0)
  %call41.4 = call i32 @sisusb_setidxreg(ptr noundef %sisusb, i32 noundef 53326, i8 noundef zeroext 4, i8 noundef zeroext 0)
  %call41.5 = call i32 @sisusb_setidxreg(ptr noundef %sisusb, i32 noundef 53326, i8 noundef zeroext 5, i8 noundef zeroext 64)
  %call41.6 = call i32 @sisusb_setidxreg(ptr noundef %sisusb, i32 noundef 53326, i8 noundef zeroext 6, i8 noundef zeroext 5)
  %call41.7 = call i32 @sisusb_setidxreg(ptr noundef %sisusb, i32 noundef 53326, i8 noundef zeroext 7, i8 noundef zeroext 15)
  %call41.8 = call i32 @sisusb_setidxreg(ptr noundef %sisusb, i32 noundef 53326, i8 noundef zeroext 8, i8 noundef zeroext -1)
  %call.i322 = call i32 @sisusb_setidxregandor(ptr noundef %sisusb, i32 noundef 53326, i8 noundef zeroext 5, i8 noundef zeroext -65, i8 noundef zeroext 0) #10
  %call51 = call i32 @sisusb_setidxreg(ptr noundef %sisusb, i32 noundef 53316, i8 noundef zeroext 10, i8 noundef zeroext 0)
  %call51.1 = call i32 @sisusb_setidxreg(ptr noundef %sisusb, i32 noundef 53316, i8 noundef zeroext 11, i8 noundef zeroext 0)
  %call51.2 = call i32 @sisusb_setidxreg(ptr noundef %sisusb, i32 noundef 53316, i8 noundef zeroext 12, i8 noundef zeroext 0)
  %call51.3 = call i32 @sisusb_setidxreg(ptr noundef %sisusb, i32 noundef 53316, i8 noundef zeroext 13, i8 noundef zeroext 0)
  %call51.4 = call i32 @sisusb_setidxreg(ptr noundef %sisusb, i32 noundef 53316, i8 noundef zeroext 14, i8 noundef zeroext 0)
  %call.i323 = call i32 @sisusb_setidxregandor(ptr noundef %sisusb, i32 noundef 53316, i8 noundef zeroext 55, i8 noundef zeroext -2, i8 noundef zeroext 0) #10
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %packet.i325) #10
  %154 = getelementptr inbounds %struct.sisusb_packet, ptr %packet.i325, i32 0, i32 1
  %155 = getelementptr inbounds %struct.sisusb_packet, ptr %packet.i325, i32 0, i32 2
  %156 = ptrtoint ptr %packet.i325 to i32
  call void @__asan_store2_noabort(i32 %156)
  store i16 68, ptr %packet.i325, align 2
  %157 = ptrtoint ptr %154 to i32
  call void @__asan_storeN_noabort(i32 %157, i32 4)
  store i32 53312, ptr %154, align 2
  %158 = ptrtoint ptr %155 to i32
  call void @__asan_storeN_noabort(i32 %158, i32 4)
  store i32 15663104, ptr %155, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bytes_transferred.i.i324) #10
  %159 = ptrtoint ptr %bytes_transferred.i.i324 to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 0, ptr %bytes_transferred.i.i324, align 4
  %call.i.i326 = call fastcc i32 @sisusb_wait_all_out_complete(ptr noundef %sisusb) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i326)
  %tobool.not.i.i327 = icmp eq i32 %call.i.i326, 0
  br i1 %tobool.not.i.i327, label %sisusb_write_memio_byte.exit321.for.end101_crit_edge, label %do.body.i.i329

sisusb_write_memio_byte.exit321.for.end101_crit_edge: ; preds = %sisusb_write_memio_byte.exit321
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end101

do.body.i.i329:                                   ; preds = %sisusb_write_memio_byte.exit321
  call void @__sanitizer_cov_trace_pc() #12
  %160 = ptrtoint ptr %packet.i325 to i32
  call void @__asan_load2_noabort(i32 %160)
  %161 = load i16, ptr %packet.i325, align 2
  %162 = call i16 @llvm.bswap.i16(i16 %161) #10
  %163 = ptrtoint ptr %packet.i325 to i32
  call void @__asan_store2_noabort(i32 %163)
  store i16 %162, ptr %packet.i325, align 2
  %164 = ptrtoint ptr %154 to i32
  call void @__asan_loadN_noabort(i32 %164, i32 4)
  %165 = load i32, ptr %154, align 2
  %166 = call i32 @llvm.bswap.i32(i32 %165) #10
  %167 = ptrtoint ptr %154 to i32
  call void @__asan_storeN_noabort(i32 %167, i32 4)
  store i32 %166, ptr %154, align 2
  %168 = ptrtoint ptr %155 to i32
  call void @__asan_loadN_noabort(i32 %168, i32 4)
  %169 = load i32, ptr %155, align 2
  %170 = call i32 @llvm.bswap.i32(i32 %169) #10
  %171 = ptrtoint ptr %155 to i32
  call void @__asan_storeN_noabort(i32 %171, i32 4)
  store i32 %170, ptr %155, align 2
  %call7.i.i328 = call fastcc i32 @sisusb_send_bulk_msg(ptr noundef %sisusb, i32 noundef 14, i32 noundef 10, ptr noundef nonnull %packet.i325, ptr noundef null, i32 noundef 0, ptr noundef nonnull %bytes_transferred.i.i324, i32 noundef 0) #10
  br label %for.end101

for.end101:                                       ; preds = %do.body.i.i329, %sisusb_write_memio_byte.exit321.for.end101_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bytes_transferred.i.i324) #10
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %packet.i325) #10
  %call57 = call i32 @sisusb_setidxreg(ptr noundef %sisusb, i32 noundef 53332, i8 noundef zeroext 17, i8 noundef zeroext 0)
  %call64 = call i32 @sisusb_setidxreg(ptr noundef %sisusb, i32 noundef 53332, i8 noundef zeroext 0, i8 noundef zeroext 95)
  %call64.1 = call i32 @sisusb_setidxreg(ptr noundef %sisusb, i32 noundef 53332, i8 noundef zeroext 1, i8 noundef zeroext 79)
  %call64.2 = call i32 @sisusb_setidxreg(ptr noundef %sisusb, i32 noundef 53332, i8 noundef zeroext 2, i8 noundef zeroext 79)
  %call64.3 = call i32 @sisusb_setidxreg(ptr noundef %sisusb, i32 noundef 53332, i8 noundef zeroext 3, i8 noundef zeroext -125)
  %call64.4 = call i32 @sisusb_setidxreg(ptr noundef %sisusb, i32 noundef 53332, i8 noundef zeroext 4, i8 noundef zeroext 85)
  %call64.5 = call i32 @sisusb_setidxreg(ptr noundef %sisusb, i32 noundef 53332, i8 noundef zeroext 5, i8 noundef zeroext -127)
  %call64.6 = call i32 @sisusb_setidxreg(ptr noundef %sisusb, i32 noundef 53332, i8 noundef zeroext 6, i8 noundef zeroext 11)
  %call64.7 = call i32 @sisusb_setidxreg(ptr noundef %sisusb, i32 noundef 53332, i8 noundef zeroext 7, i8 noundef zeroext 62)
  %call75 = call i32 @sisusb_setidxreg(ptr noundef %sisusb, i32 noundef 53332, i8 noundef zeroext 16, i8 noundef zeroext -23)
  %call75.1 = call i32 @sisusb_setidxreg(ptr noundef %sisusb, i32 noundef 53332, i8 noundef zeroext 17, i8 noundef zeroext -117)
  %call75.2 = call i32 @sisusb_setidxreg(ptr noundef %sisusb, i32 noundef 53332, i8 noundef zeroext 18, i8 noundef zeroext -33)
  %call86 = call i32 @sisusb_setidxreg(ptr noundef %sisusb, i32 noundef 53332, i8 noundef zeroext 21, i8 noundef zeroext -24)
  %call86.1 = call i32 @sisusb_setidxreg(ptr noundef %sisusb, i32 noundef 53332, i8 noundef zeroext 22, i8 noundef zeroext 12)
  %call97 = call i32 @sisusb_setidxreg(ptr noundef %sisusb, i32 noundef 53316, i8 noundef zeroext 10, i8 noundef zeroext 0)
  %call97.1 = call i32 @sisusb_setidxreg(ptr noundef %sisusb, i32 noundef 53316, i8 noundef zeroext 11, i8 noundef zeroext 0)
  %call97.2 = call i32 @sisusb_setidxreg(ptr noundef %sisusb, i32 noundef 53316, i8 noundef zeroext 12, i8 noundef zeroext 5)
  %call105 = call i32 @sisusb_setidxreg(ptr noundef %sisusb, i32 noundef 53316, i8 noundef zeroext 14, i8 noundef zeroext 0)
  %call109 = call i32 @sisusb_setidxregandor(ptr noundef %sisusb, i32 noundef 53332, i8 noundef zeroext 9, i8 noundef zeroext 95, i8 noundef zeroext 0)
  %call110 = call i32 @sisusb_setidxreg(ptr noundef %sisusb, i32 noundef 53332, i8 noundef zeroext 20, i8 noundef zeroext 79)
  %call114 = call i32 @sisusb_setidxregandor(ptr noundef %sisusb, i32 noundef 53316, i8 noundef zeroext 14, i8 noundef zeroext -16, i8 noundef zeroext 0)
  %call117 = call i32 @sisusb_setidxreg(ptr noundef %sisusb, i32 noundef 53332, i8 noundef zeroext 19, i8 noundef zeroext -96)
  %172 = ptrtoint ptr %tmp8 to i32
  call void @__asan_store1_noabort(i32 %172)
  store i8 20, ptr %tmp8, align 1
  %call121 = call i32 @sisusb_setidxreg(ptr noundef %sisusb, i32 noundef 53316, i8 noundef zeroext 16, i8 noundef zeroext 20)
  %call122 = call i32 @sisusb_setidxreg(ptr noundef %sisusb, i32 noundef 53316, i8 noundef zeroext 49, i8 noundef zeroext 0)
  %call123 = call i32 @sisusb_setidxreg(ptr noundef %sisusb, i32 noundef 53316, i8 noundef zeroext 43, i8 noundef zeroext 27)
  %call124 = call i32 @sisusb_setidxreg(ptr noundef %sisusb, i32 noundef 53316, i8 noundef zeroext 44, i8 noundef zeroext -31)
  %call125 = call i32 @sisusb_setidxreg(ptr noundef %sisusb, i32 noundef 53316, i8 noundef zeroext 45, i8 noundef zeroext 1)
  %call.i332 = call i32 @sisusb_setidxregandor(ptr noundef %sisusb, i32 noundef 53316, i8 noundef zeroext 61, i8 noundef zeroext -2, i8 noundef zeroext 0) #10
  %call127 = call i32 @sisusb_setidxreg(ptr noundef %sisusb, i32 noundef 53316, i8 noundef zeroext 8, i8 noundef zeroext -82)
  %call.i333 = call i32 @sisusb_setidxregandor(ptr noundef %sisusb, i32 noundef 53316, i8 noundef zeroext 9, i8 noundef zeroext -16, i8 noundef zeroext 0) #10
  %call129 = call i32 @sisusb_setidxreg(ptr noundef %sisusb, i32 noundef 53316, i8 noundef zeroext 8, i8 noundef zeroext 52)
  %call.i334 = call i32 @sisusb_setidxregandor(ptr noundef %sisusb, i32 noundef 53316, i8 noundef zeroext 61, i8 noundef zeroext -1, i8 noundef zeroext 1) #10
  %call.i335 = call i32 @sisusb_setidxregandor(ptr noundef %sisusb, i32 noundef 53316, i8 noundef zeroext 31, i8 noundef zeroext 63, i8 noundef zeroext 0) #10
  %call132 = call i32 @sisusb_setidxregandor(ptr noundef %sisusb, i32 noundef 53316, i8 noundef zeroext 6, i8 noundef zeroext -64, i8 noundef zeroext 10)
  %call133 = call i32 @sisusb_setidxreg(ptr noundef %sisusb, i32 noundef 53332, i8 noundef zeroext 25, i8 noundef zeroext 0)
  %call.i336 = call i32 @sisusb_setidxregandor(ptr noundef %sisusb, i32 noundef 53332, i8 noundef zeroext 26, i8 noundef zeroext -4, i8 noundef zeroext 0) #10
  %call.i337 = call i32 @sisusb_setidxregandor(ptr noundef %sisusb, i32 noundef 53316, i8 noundef zeroext 15, i8 noundef zeroext -73, i8 noundef zeroext 0) #10
  %call.i338 = call i32 @sisusb_setidxregandor(ptr noundef %sisusb, i32 noundef 53316, i8 noundef zeroext 49, i8 noundef zeroext -5, i8 noundef zeroext 0) #10
  %call137 = call i32 @sisusb_setidxregandor(ptr noundef %sisusb, i32 noundef 53316, i8 noundef zeroext 33, i8 noundef zeroext 31, i8 noundef zeroext -96)
  %call.i339 = call i32 @sisusb_setidxregandor(ptr noundef %sisusb, i32 noundef 53316, i8 noundef zeroext 50, i8 noundef zeroext -13, i8 noundef zeroext 0) #10
  %call139 = call i32 @sisusb_setidxregandor(ptr noundef %sisusb, i32 noundef 53316, i8 noundef zeroext 7, i8 noundef zeroext -8, i8 noundef zeroext 3)
  %call140 = call i32 @sisusb_setidxreg(ptr noundef %sisusb, i32 noundef 53332, i8 noundef zeroext 82, i8 noundef zeroext 108)
  %call141 = call i32 @sisusb_setidxreg(ptr noundef %sisusb, i32 noundef 53332, i8 noundef zeroext 13, i8 noundef zeroext 0)
  %call142 = call i32 @sisusb_setidxreg(ptr noundef %sisusb, i32 noundef 53332, i8 noundef zeroext 12, i8 noundef zeroext 0)
  %call143 = call i32 @sisusb_setidxreg(ptr noundef %sisusb, i32 noundef 53316, i8 noundef zeroext 13, i8 noundef zeroext 0)
  %call.i340 = call i32 @sisusb_setidxregandor(ptr noundef %sisusb, i32 noundef 53316, i8 noundef zeroext 55, i8 noundef zeroext -2, i8 noundef zeroext 0) #10
  %call145 = call i32 @sisusb_setidxreg(ptr noundef %sisusb, i32 noundef 53332, i8 noundef zeroext 50, i8 noundef zeroext 32)
  %call.i341 = call i32 @sisusb_setidxregandor(ptr noundef %sisusb, i32 noundef 53316, i8 noundef zeroext 1, i8 noundef zeroext -33, i8 noundef zeroext 0) #10
  %173 = ptrtoint ptr %cr63 to i32
  call void @__asan_load1_noabort(i32 %173)
  %174 = load i8, ptr %cr63, align 1
  %175 = and i8 %174, -65
  %call150 = call i32 @sisusb_setidxreg(ptr noundef %sisusb, i32 noundef 53332, i8 noundef zeroext 99, i8 noundef zeroext %175)
  %176 = ptrtoint ptr %sr31 to i32
  call void @__asan_load1_noabort(i32 %176)
  %177 = load i8, ptr %sr31, align 1
  %178 = and i8 %177, -5
  %call154 = call i32 @sisusb_setidxreg(ptr noundef %sisusb, i32 noundef 53316, i8 noundef zeroext 49, i8 noundef zeroext %178)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %touchengines)
  %tobool.not = icmp eq i32 %touchengines, 0
  br i1 %tobool.not, label %for.end101.if.end_crit_edge, label %if.then

for.end101.if.end_crit_edge:                      ; preds = %for.end101
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %for.end101
  call void @__sanitizer_cov_trace_pc() #12
  %call155 = call i32 @sisusb_setidxreg(ptr noundef %sisusb, i32 noundef 53316, i8 noundef zeroext 32, i8 noundef zeroext -95)
  %call.i342 = call i32 @sisusb_setidxregandor(ptr noundef %sisusb, i32 noundef 53316, i8 noundef zeroext 30, i8 noundef zeroext -1, i8 noundef zeroext 90) #10
  %call157 = call i32 @sisusb_setidxreg(ptr noundef %sisusb, i32 noundef 53316, i8 noundef zeroext 38, i8 noundef zeroext 1)
  %call158 = call i32 @sisusb_setidxreg(ptr noundef %sisusb, i32 noundef 53316, i8 noundef zeroext 39, i8 noundef zeroext 31)
  %call159 = call i32 @sisusb_setidxreg(ptr noundef %sisusb, i32 noundef 53316, i8 noundef zeroext 38, i8 noundef zeroext 0)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end101.if.end_crit_edge
  %call160 = call i32 @sisusb_setidxreg(ptr noundef %sisusb, i32 noundef 53332, i8 noundef zeroext 52, i8 noundef zeroext 68)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp8) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cr63) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %sr31) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sisusb_triggersr16(ptr noundef %sisusb, i8 noundef zeroext %ramtype) unnamed_addr #0 align 64 {
entry:
  %bytes_transferred.i.i.i = alloca i32, align 4
  %packet.i.i = alloca %struct.sisusb_packet, align 2
  %tmp8 = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp8) #10
  %0 = ptrtoint ptr %tmp8 to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %tmp8, align 1, !annotation !144
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %packet.i.i) #10
  %1 = getelementptr inbounds %struct.sisusb_packet, ptr %packet.i.i, i32 0, i32 1
  %2 = getelementptr inbounds %struct.sisusb_packet, ptr %packet.i.i, i32 0, i32 2
  %3 = ptrtoint ptr %packet.i.i to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 65, ptr %packet.i.i, align 2
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %4, i32 4)
  store i32 53316, ptr %1, align 2
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_storeN_noabort(i32 %5, i32 4)
  store i32 22, ptr %2, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bytes_transferred.i.i.i) #10
  %6 = ptrtoint ptr %bytes_transferred.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %bytes_transferred.i.i.i, align 4
  %call.i.i.i = tail call fastcc i32 @sisusb_wait_all_out_complete(ptr noundef %sisusb) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %entry.sisusb_getidxreg.exit_crit_edge, label %do.body.i.i.i

entry.sisusb_getidxreg.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sisusb_getidxreg.exit

do.body.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %packet.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %packet.i.i, align 2
  %9 = tail call i16 @llvm.bswap.i16(i16 %8) #10
  %10 = ptrtoint ptr %packet.i.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %packet.i.i, align 2
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_loadN_noabort(i32 %11, i32 4)
  %12 = load i32, ptr %1, align 2
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #10
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %14, i32 4)
  store i32 %13, ptr %1, align 2
  %15 = ptrtoint ptr %2 to i32
  call void @__asan_loadN_noabort(i32 %15, i32 4)
  %16 = load i32, ptr %2, align 2
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #10
  %18 = ptrtoint ptr %2 to i32
  call void @__asan_storeN_noabort(i32 %18, i32 4)
  store i32 %17, ptr %2, align 2
  %call7.i.i.i = call fastcc i32 @sisusb_send_bulk_msg(ptr noundef %sisusb, i32 noundef 14, i32 noundef 10, ptr noundef nonnull %packet.i.i, ptr noundef null, i32 noundef 0, ptr noundef nonnull %bytes_transferred.i.i.i, i32 noundef 0) #10
  br label %sisusb_getidxreg.exit

sisusb_getidxreg.exit:                            ; preds = %do.body.i.i.i, %entry.sisusb_getidxreg.exit_crit_edge
  %retval.0.i.i.i = phi i32 [ 1, %entry.sisusb_getidxreg.exit_crit_edge ], [ %call7.i.i.i, %do.body.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bytes_transferred.i.i.i) #10
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %packet.i.i) #10
  %call1.i = call fastcc i32 @sisusb_read_memio_byte(ptr noundef %sisusb, i32 noundef 1, i32 noundef 53317, ptr noundef nonnull %tmp8) #10
  %or.i = or i32 %call1.i, %retval.0.i.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %ramtype)
  %cmp = icmp ult i8 %ramtype, 2
  %19 = ptrtoint ptr %tmp8 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %tmp8, align 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sisusb_getidxreg.exit
  call void @__sanitizer_cov_trace_pc() #12
  %21 = and i8 %20, 63
  %22 = ptrtoint ptr %tmp8 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %tmp8, align 1
  %call4 = call i32 @sisusb_setidxreg(ptr noundef %sisusb, i32 noundef 53316, i8 noundef zeroext 22, i8 noundef zeroext %21)
  %or = or i32 %call4, %or.i
  %23 = or i8 %21, -128
  br label %if.end

if.else:                                          ; preds = %sisusb_getidxreg.exit
  call void @__sanitizer_cov_trace_pc() #12
  %24 = or i8 %20, -64
  %25 = ptrtoint ptr %tmp8 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %24, ptr %tmp8, align 1
  %call13 = call i32 @sisusb_setidxreg(ptr noundef %sisusb, i32 noundef 53316, i8 noundef zeroext 22, i8 noundef zeroext %24)
  %or14 = or i32 %call13, %or.i
  %26 = and i8 %20, 15
  %27 = ptrtoint ptr %tmp8 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %tmp8, align 1
  %call18 = call i32 @sisusb_setidxreg(ptr noundef %sisusb, i32 noundef 53316, i8 noundef zeroext 22, i8 noundef zeroext %26)
  %or19 = or i32 %or14, %call18
  %28 = or i8 %26, -128
  %29 = ptrtoint ptr %tmp8 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %28, ptr %tmp8, align 1
  %call23 = call i32 @sisusb_setidxreg(ptr noundef %sisusb, i32 noundef 53316, i8 noundef zeroext 22, i8 noundef zeroext %28)
  %or24 = or i32 %or19, %call23
  %30 = ptrtoint ptr %tmp8 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %26, ptr %tmp8, align 1
  %call28 = call i32 @sisusb_setidxreg(ptr noundef %sisusb, i32 noundef 53316, i8 noundef zeroext 22, i8 noundef zeroext %26)
  %or29 = or i32 %or24, %call28
  %31 = or i8 %26, -48
  %32 = ptrtoint ptr %tmp8 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %31, ptr %tmp8, align 1
  %call33 = call i32 @sisusb_setidxreg(ptr noundef %sisusb, i32 noundef 53316, i8 noundef zeroext 22, i8 noundef zeroext %31)
  %or34 = or i32 %or29, %call33
  %33 = ptrtoint ptr %tmp8 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %26, ptr %tmp8, align 1
  %call38 = call i32 @sisusb_setidxreg(ptr noundef %sisusb, i32 noundef 53316, i8 noundef zeroext 22, i8 noundef zeroext %26)
  %or39 = or i32 %or34, %call38
  %34 = or i8 %26, -96
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %.sink = phi i8 [ %34, %if.else ], [ %23, %if.then ]
  %or39.sink = phi i32 [ %or39, %if.else ], [ %or, %if.then ]
  %35 = ptrtoint ptr %tmp8 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %.sink, ptr %tmp8, align 1
  %call43 = call i32 @sisusb_setidxreg(ptr noundef %sisusb, i32 noundef 53316, i8 noundef zeroext 22, i8 noundef zeroext %.sink)
  %or44 = or i32 %or39.sink, %call43
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp8) #10
  ret i32 %or44
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 64)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 64)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind readonly }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind readnone }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !16, !18, !20, !22, !24, !26, !27, !28, !29, !30, !31, !33, !34, !36, !37, !38, !39, !41, !42, !43, !45, !46, !48, !49, !50, !52, !53, !54, !56, !58, !60, !62, !64, !65, !66, !67, !69, !70, !71, !73, !74, !75, !76, !78, !79, !80, !82, !84, !86, !88, !90, !91, !92, !93, !95, !96, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !120, !121, !122, !124, !126, !128, !130, !132}
!llvm.named.register.sp = !{!134}
!llvm.module.flags = !{!135, !136, !137, !138, !139, !140, !141, !142}
!llvm.ident = !{!143}

!0 = !{ptr @__initcall__kmod_sisusbvga__237_3224_usb_sisusb_init6, !1, !"__initcall__kmod_sisusbvga__237_3224_usb_sisusb_init6", i1 false, i1 false}
!1 = !{!"../drivers/usb/misc/sisusbvga/sisusb.c", i32 3224, i32 1}
!2 = !{ptr @__exitcall_usb_sisusb_exit, !3, !"__exitcall_usb_sisusb_exit", i1 false, i1 false}
!3 = !{!"../drivers/usb/misc/sisusbvga/sisusb.c", i32 3225, i32 1}
!4 = !{ptr @__UNIQUE_ID_author238, !5, !"__UNIQUE_ID_author238", i1 false, i1 false}
!5 = !{!"../drivers/usb/misc/sisusbvga/sisusb.c", i32 3227, i32 1}
!6 = !{ptr @__UNIQUE_ID_description239, !7, !"__UNIQUE_ID_description239", i1 false, i1 false}
!7 = !{!"../drivers/usb/misc/sisusbvga/sisusb.c", i32 3228, i32 1}
!8 = !{ptr @__UNIQUE_ID_file240, !9, !"__UNIQUE_ID_file240", i1 false, i1 false}
!9 = !{!"../drivers/usb/misc/sisusbvga/sisusb.c", i32 3229, i32 1}
!10 = !{ptr @__UNIQUE_ID_license241, !9, !"__UNIQUE_ID_license241", i1 false, i1 false}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/usb/misc/sisusbvga/sisusb.c", i32 141, i32 2}
!13 = distinct !{null, !14, !"__already_done", i1 false, i1 false}
!14 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!15 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!20 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/usb/misc/sisusbvga/sisusb.c", i32 3203, i32 11}
!22 = !{ptr @sisusb_driver, !23, !"sisusb_driver", i1 false, i1 false}
!23 = !{!"../drivers/usb/misc/sisusbvga/sisusb.c", i32 3202, i32 26}
!24 = !{ptr @.str.5, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/usb/misc/sisusbvga/sisusb.c", i32 3018, i32 2}
!26 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @sisusb_probe._entry, !25, !"_entry", i1 false, i1 false}
!30 = !{ptr @sisusb_probe._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @sisusb_probe.__key, !32, !"__key", i1 false, i1 false}
!32 = !{!"../drivers/usb/misc/sisusbvga/sisusb.c", i32 3028, i32 2}
!33 = !{ptr @.str.9, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.11, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/usb/misc/sisusbvga/sisusb.c", i32 3040, i32 3}
!36 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @sisusb_probe._entry.10, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @sisusb_probe._entry_ptr.13, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.15, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/usb/misc/sisusbvga/sisusb.c", i32 3090, i32 2}
!41 = !{ptr @sisusb_probe._entry.14, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @sisusb_probe._entry_ptr.16, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @sisusb_probe.__key.17, !44, !"__key", i1 false, i1 false}
!44 = !{!"../drivers/usb/misc/sisusbvga/sisusb.c", i32 3104, i32 2}
!45 = !{ptr @.str.18, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.20, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/usb/misc/sisusbvga/sisusb.c", i32 3121, i32 4}
!48 = !{ptr @sisusb_probe._entry.19, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @sisusb_probe._entry_ptr.21, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.23, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/usb/misc/sisusbvga/sisusb.c", i32 3125, i32 3}
!52 = !{ptr @sisusb_probe._entry.22, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @sisusb_probe._entry_ptr.24, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.25, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/usb/misc/sisusbvga/sisusb.c", i32 3006, i32 11}
!56 = !{ptr @usb_sisusb_class, !57, !"usb_sisusb_class", i1 false, i1 false}
!57 = !{!"../drivers/usb/misc/sisusbvga/sisusb.c", i32 3005, i32 32}
!58 = !{ptr @usb_sisusb_fops, !59, !"usb_sisusb_fops", i1 false, i1 false}
!59 = !{!"../drivers/usb/misc/sisusbvga/sisusb.c", i32 2992, i32 37}
!60 = !{ptr @sisusb_write_mem_bulk.msgcount, !61, !"msgcount", i1 false, i1 false}
!61 = !{!"../drivers/usb/misc/sisusbvga/sisusb.c", i32 760, i32 13}
!62 = !{ptr @.str.26, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/usb/misc/sisusbvga/sisusb.c", i32 943, i32 6}
!64 = !{ptr @.str.27, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @sisusb_write_mem_bulk._entry, !63, !"_entry", i1 false, i1 false}
!66 = !{ptr @sisusb_write_mem_bulk._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.29, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/usb/misc/sisusbvga/sisusb.c", i32 948, i32 6}
!69 = !{ptr @sisusb_write_mem_bulk._entry.28, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @sisusb_write_mem_bulk._entry_ptr.30, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.31, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/usb/misc/sisusbvga/sisusb.c", i32 2413, i32 5}
!73 = !{ptr @.str.32, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @sisusb_open._entry, !72, !"_entry", i1 false, i1 false}
!75 = !{ptr @sisusb_open._entry_ptr, !72, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.34, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/usb/misc/sisusbvga/sisusb.c", i32 2419, i32 4}
!78 = !{ptr @sisusb_open._entry.33, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @sisusb_open._entry_ptr.35, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @sisusb_init_gfxcore.mclktable, !81, !"mclktable", i1 false, i1 false}
!81 = !{!"../drivers/usb/misc/sisusbvga/sisusb.c", i32 1883, i32 20}
!82 = !{ptr @sisusb_init_gfxcore.eclktable, !83, !"eclktable", i1 false, i1 false}
!83 = !{!"../drivers/usb/misc/sisusbvga/sisusb.c", i32 1889, i32 20}
!84 = !{ptr @sisusb_init_gfxcore.ramtypetable1, !85, !"ramtypetable1", i1 false, i1 false}
!85 = !{!"../drivers/usb/misc/sisusbvga/sisusb.c", i32 1895, i32 20}
!86 = !{ptr @sisusb_init_gfxcore.ramtypetable2, !87, !"ramtypetable2", i1 false, i1 false}
!87 = !{!"../drivers/usb/misc/sisusbvga/sisusb.c", i32 1904, i32 20}
!88 = !{ptr @.str.36, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/usb/misc/sisusbvga/sisusb.c", i32 2038, i32 5}
!90 = !{ptr @.str.37, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @sisusb_init_gfxcore._entry, !89, !"_entry", i1 false, i1 false}
!92 = !{ptr @sisusb_init_gfxcore._entry_ptr, !89, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.39, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/usb/misc/sisusbvga/sisusb.c", i32 2044, i32 4}
!95 = !{ptr @sisusb_init_gfxcore._entry.38, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @sisusb_init_gfxcore._entry_ptr.40, !94, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @sisusb_get_sdram_size.sdramtype, !98, !"sdramtype", i1 false, i1 false}
!98 = !{!"../drivers/usb/misc/sisusbvga/sisusb.c", i32 1672, i32 18}
!99 = !{ptr @sisusb_get_ramconfig.ram_datarate, !100, !"ram_datarate", i1 false, i1 false}
!100 = !{!"../drivers/usb/misc/sisusbvga/sisusb.c", i32 2082, i32 20}
!101 = !{ptr @sisusb_get_ramconfig.ram_dynamictype, !102, !"ram_dynamictype", i1 false, i1 false}
!102 = !{!"../drivers/usb/misc/sisusbvga/sisusb.c", i32 2083, i32 20}
!103 = !{ptr @sisusb_get_ramconfig.busSDR, !104, !"busSDR", i1 false, i1 false}
!104 = !{!"../drivers/usb/misc/sisusbvga/sisusb.c", i32 2084, i32 19}
!105 = !{ptr @sisusb_get_ramconfig.busDDR, !106, !"busDDR", i1 false, i1 false}
!106 = !{!"../drivers/usb/misc/sisusbvga/sisusb.c", i32 2085, i32 19}
!107 = !{ptr @sisusb_get_ramconfig.busDDRA, !108, !"busDDRA", i1 false, i1 false}
!108 = !{!"../drivers/usb/misc/sisusbvga/sisusb.c", i32 2086, i32 19}
!109 = !{ptr @.str.41, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/usb/misc/sisusbvga/sisusb.c", i32 2095, i32 18}
!111 = !{ptr @.str.42, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/usb/misc/sisusbvga/sisusb.c", i32 2103, i32 18}
!113 = !{ptr @.str.43, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/usb/misc/sisusbvga/sisusb.c", i32 2108, i32 18}
!115 = !{ptr @.str.44, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/usb/misc/sisusbvga/sisusb.c", i32 2113, i32 18}
!117 = !{ptr @.str.45, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/usb/misc/sisusbvga/sisusb.c", i32 2119, i32 2}
!119 = !{ptr @.str.46, !118, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @sisusb_get_ramconfig._entry, !118, !"_entry", i1 false, i1 false}
!121 = !{ptr @sisusb_get_ramconfig._entry_ptr, !118, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @sisusb_set_default_mode.attrdata, !123, !"attrdata", i1 false, i1 false}
!123 = !{!"../drivers/usb/misc/sisusbvga/sisusb.c", i32 1755, i32 20}
!124 = !{ptr @sisusb_set_default_mode.crtcrdata, !125, !"crtcrdata", i1 false, i1 false}
!125 = !{!"../drivers/usb/misc/sisusbvga/sisusb.c", i32 1760, i32 20}
!126 = distinct !{null, !127, !"grcdata", i1 false, i1 false}
!127 = !{!"../drivers/usb/misc/sisusbvga/sisusb.c", i32 1766, i32 20}
!128 = distinct !{null, !129, !"crtcdata", i1 false, i1 false}
!129 = !{!"../drivers/usb/misc/sisusbvga/sisusb.c", i32 1770, i32 20}
!130 = !{ptr @sisusb_table, !131, !"sisusb_table", i1 false, i1 false}
!131 = !{!"../drivers/usb/misc/sisusbvga/sisusb.c", i32 3185, i32 35}
!132 = !{ptr @.str.47, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/usb/misc/sisusbvga/sisusb.c", i32 3216, i32 9}
!134 = !{!"sp"}
!135 = !{i32 1, !"wchar_size", i32 2}
!136 = !{i32 1, !"min_enum_size", i32 4}
!137 = !{i32 8, !"branch-target-enforcement", i32 0}
!138 = !{i32 8, !"sign-return-address", i32 0}
!139 = !{i32 8, !"sign-return-address-all", i32 0}
!140 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!141 = !{i32 7, !"uwtable", i32 1}
!142 = !{i32 7, !"frame-pointer", i32 2}
!143 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!144 = !{!"auto-init"}
!145 = !{!"branch_weights", i32 2000, i32 1}
!146 = !{i64 2152483683, i64 2152483708}
!147 = !{i64 4979238}
!148 = !{i64 4979435}
!149 = !{i64 2152464668}
!150 = !{i64 2148516937}
!151 = !{i64 2148431401, i64 2148431433, i64 2148431462, i64 2148431496, i64 2148431527, i64 2148431550}
!152 = !{i64 2149391793}
!153 = !{i64 2154703275, i64 2154703555, i64 2154703889, i64 2154704223}
!154 = !{i64 2154714117, i64 2154714397, i64 2154714731, i64 2154715065}
!155 = !{i64 2154724959, i64 2154725239, i64 2154725573, i64 2154725907}
!156 = !{i64 2154733998, i64 2154734278, i64 2154734612, i64 2154734946}
!157 = !{i64 2154740547, i64 2154740827, i64 2154741161, i64 2154741495}
!158 = !{i64 2154755357, i64 2154755637, i64 2154755971, i64 2154756305}
!159 = !{i64 2154770167, i64 2154770447, i64 2154770781, i64 2154771115}
!160 = !{i64 2154782591, i64 2154782871, i64 2154783205, i64 2154783539}
!161 = !{i64 2154792997, i64 2154793277, i64 2154793611, i64 2154793945}
!162 = !{i64 2152484364, i64 2152484389}
!163 = !{i64 2148428936, i64 2148428968, i64 2148428997, i64 2148429031, i64 2148429062, i64 2148429085}
!164 = !{!"branch_weights", i32 1, i32 2000}
!165 = !{i64 2154644408, i64 2154644688, i64 2154645022, i64 2154645356}
!166 = !{i64 2154655270, i64 2154655550, i64 2154655884, i64 2154656218}
!167 = !{i64 2154666137, i64 2154666417, i64 2154666751, i64 2154667085}
!168 = !{i64 2154605394, i64 2154605674, i64 2154606008, i64 2154606342}
!169 = !{i64 2154620225, i64 2154620505, i64 2154620839, i64 2154621173}
!170 = !{i64 2154635061, i64 2154635341, i64 2154635675, i64 2154636009}
