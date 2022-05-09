; ModuleID = '/llk/IR_all_yes/drivers/usb/misc/iowarrior.c_pt.bc'
source_filename = "../drivers/usb/misc/iowarrior.c"
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
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
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
%struct.iowarrior = type { %struct.mutex, ptr, ptr, i8, ptr, ptr, ptr, ptr, i8, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, i32, [9 x i8], i32, i16, %struct.usb_anchor }
%struct.usb_anchor = type { %struct.list_head, %struct.wait_queue_head, %struct.spinlock, %struct.atomic_t, i8 }
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
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
%struct.iowarrior_info = type { i32, i32, [9 x i8], i32, i32, i32, i32, i32 }
%struct.usb_config_descriptor = type <{ i8, i8, i16, i8, i8, i8, i8, i8 }>
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

@__UNIQUE_ID_author232 = internal constant [55 x i8] c"iowarrior.author=Christian Lucht <lucht@codemercs.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description233 = internal constant [44 x i8] c"iowarrior.description=USB IO-Warrior driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file234 = internal constant [42 x i8] c"iowarrior.file=drivers/usb/misc/iowarrior\00", section ".modinfo", align 1
@__UNIQUE_ID_license235 = internal constant [22 x i8] c"iowarrior.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_iowarrior__244_926_iowarrior_driver_init6 = internal global ptr @iowarrior_driver_init, section ".initcall6.init", align 4
@iowarrior_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str, ptr @iowarrior_probe, ptr @iowarrior_disconnect, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @iowarrior_ids, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 0 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_iowarrior_driver_exit = internal global ptr @iowarrior_driver_exit, section ".exitcall.exit", align 4
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"iowarrior\00", [22 x i8] zeroinitializer }, align 32
@iowarrior_ids = internal constant { [11 x %struct.usb_device_id], [88 x i8] } { [11 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 1984, i16 5376, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1984, i16 5377, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1984, i16 5393, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1984, i16 5394, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1984, i16 5379, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1984, i16 5514, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1984, i16 5515, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1984, i16 5380, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1984, i16 5381, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1984, i16 5382, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [88 x i8] zeroinitializer }, align 32
@iowarrior_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&dev->mutex\00", [20 x i8] zeroinitializer }, align 32
@iowarrior_probe.__key.2 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&dev->read_wait\00", [16 x i8] zeroinitializer }, align 32
@iowarrior_probe.__key.4 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&dev->write_wait\00", [47 x i8] zeroinitializer }, align 32
@iowarrior_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.8, i32 778, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"no interrupt-in endpoint found\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"iowarrior_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/usb/misc/iowarrior.c\00", [35 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@iowarrior_probe._entry_ptr = internal global ptr @iowarrior_probe._entry, section ".printk_index", align 4
@iowarrior_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.7, ptr @.str.8, i32 791, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"no interrupt-out endpoint found\0A\00", [63 x i8] zeroinitializer }, align 32
@iowarrior_probe._entry_ptr.13 = internal global ptr @iowarrior_probe._entry.11, section ".printk_index", align 4
@iowarrior_class = internal global { %struct.usb_class_driver, [16 x i8] } { %struct.usb_class_driver { ptr @.str.26, ptr @iowarrior_devnode, ptr @iowarrior_fops, i32 0 }, [16 x i8] zeroinitializer }, align 32
@iowarrior_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.7, ptr @.str.8, i32 864, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Not able to get a minor for this device.\0A\00", [54 x i8] zeroinitializer }, align 32
@iowarrior_probe._entry_ptr.16 = internal global ptr @iowarrior_probe._entry.14, section ".printk_index", align 4
@iowarrior_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.7, ptr @.str.8, i32 873, ptr @.str.19, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"IOWarrior product=0x%x, serial=%s interface=%d now attached to iowarrior%d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@iowarrior_probe._entry_ptr.20 = internal global ptr @iowarrior_probe._entry.17, section ".printk_index", align 4
@init_usb_anchor.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.21 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&anchor->wait\00", [18 x i8] zeroinitializer }, align 32
@init_usb_anchor.__key.22 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.23 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&anchor->lock\00", [18 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@iowarrior_callback._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.8, i32 216, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s - usb_submit_urb failed with result %d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"iowarrior_callback\00", [45 x i8] zeroinitializer }, align 32
@iowarrior_callback._entry_ptr = internal global ptr @iowarrior_callback._entry, section ".printk_index", align 4
@.str.26 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"iowarrior%d\00", [20 x i8] zeroinitializer }, align 32
@iowarrior_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @noop_llseek, ptr @iowarrior_read, ptr @iowarrior_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @iowarrior_poll, ptr @iowarrior_ioctl, ptr null, ptr null, i32 0, ptr @iowarrior_open, ptr null, ptr @iowarrior_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"usb/%s\00", [25 x i8] zeroinitializer }, align 32
@iowarrior_read.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.28, ptr @.str.8, ptr @.str.29, i8 0, i8 72, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"iowarrior_read\00", [17 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"minor %d, count = %zd\0A\00", [41 x i8] zeroinitializer }, align 32
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.30 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@iowarrior_write.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.33, ptr @.str.8, ptr @.str.29, i8 0, i8 89, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"iowarrior_write\00", [16 x i8] zeroinitializer }, align 32
@iowarrior_write.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.33, ptr @.str.8, ptr @.str.34, i8 0, i8 106, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Unable to allocate buffer\0A\00", [37 x i8] zeroinitializer }, align 32
@iowarrior_write.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.33, ptr @.str.8, ptr @.str.35, i8 0, i8 111, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"submit error %d for urb nr.%d\0A\00", [33 x i8] zeroinitializer }, align 32
@iowarrior_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.33, ptr @.str.8, i32 455, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s - not supported for product=0x%x\0A\00", [59 x i8] zeroinitializer }, align 32
@iowarrior_write._entry_ptr = internal global ptr @iowarrior_write._entry, section ".printk_index", align 4
@iowarrior_write_callback.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.37, ptr @.str.8, ptr @.str.38, i8 0, i8 58, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"iowarrior_write_callback\00", [39 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"nonzero write bulk status received: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@iowarrior_ioctl.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.39, ptr @.str.8, ptr @.str.40, i8 0, i8 125, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"iowarrior_ioctl\00", [16 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"minor %d, cmd 0x%.4x, arg %ld\0A\00", [33 x i8] zeroinitializer }, align 32
@iowarrior_ioctl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.39, ptr @.str.8, i32 528, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"ioctl 'IOW_WRITE' is not supported for product=0x%x.\0A\00", [42 x i8] zeroinitializer }, align 32
@iowarrior_ioctl._entry_ptr = internal global ptr @iowarrior_ioctl._entry, section ".printk_index", align 4
@iowarrior_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.8, i32 604, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013%s - error, can't find device for minor %d\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"iowarrior_open\00", [17 x i8] zeroinitializer }, align 32
@iowarrior_open._entry_ptr = internal global ptr @iowarrior_open._entry, section ".printk_index", align 4
@iowarrior_open._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.43, ptr @.str.8, i32 622, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Error %d while submitting URB\0A\00", [33 x i8] zeroinitializer }, align 32
@iowarrior_open._entry_ptr.46 = internal global ptr @iowarrior_open._entry.44, section ".printk_index", align 4
@iowarrior_release.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.47, ptr @.str.8, ptr @.str.48, i8 0, i8 -94, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"iowarrior_release\00", [46 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"minor %d\0A\00", [22 x i8] zeroinitializer }, align 32
@iowarrior_delete.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.49, ptr @.str.8, ptr @.str.48, i8 0, i8 62, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"iowarrior_delete\00", [47 x i8] zeroinitializer }, align 32
@iowarrior_disconnect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.8, i32 915, ptr @.str.19, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"I/O-Warror #%d now disconnected\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"iowarrior_disconnect\00", [43 x i8] zeroinitializer }, align 32
@iowarrior_disconnect._entry_ptr = internal global ptr @iowarrior_disconnect._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 16, i64 5379, i64 5380, i64 5381, i64 5382, i64 5515]
@__sancov_gen_cov_switch_values.52 = internal global [7 x i64] [i64 5, i64 16, i64 5379, i64 5380, i64 5381, i64 5382, i64 5515]
@__sancov_gen_cov_switch_values.53 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 4294967188, i64 4294967192, i64 4294967294]
@__sancov_gen_cov_switch_values.54 = internal global [12 x i64] [i64 10, i64 16, i64 5376, i64 5377, i64 5379, i64 5380, i64 5381, i64 5382, i64 5393, i64 5394, i64 5514, i64 5515]
@__sancov_gen_cov_switch_values.55 = internal global [5 x i64] [i64 3, i64 32, i64 1074053121, i64 1074053122, i64 2150154243]
@__sancov_gen_cov_switch_values.56 = internal global [7 x i64] [i64 5, i64 16, i64 5376, i64 5377, i64 5393, i64 5394, i64 5514]
@__sancov_gen_cov_switch_values.57 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 4294967188, i64 4294967192, i64 4294967294]
@___asan_gen_.58 = private unnamed_addr constant [17 x i8] c"iowarrior_driver\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 919, i32 26 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 926, i32 1 }
@___asan_gen_.64 = private unnamed_addr constant [14 x i8] c"iowarrior_ids\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 135, i32 35 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 759, i32 2 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 764, i32 2 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 766, i32 2 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 778, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 791, i32 4 }
@___asan_gen_.109 = private unnamed_addr constant [16 x i8] c"iowarrior_class\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 729, i32 32 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 864, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 871, i32 2 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 1367, i32 2 }
@___asan_gen_.133 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.137 = private unnamed_addr constant [23 x i8] c"../include/linux/usb.h\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 1368, i32 2 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 215, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 730, i32 10 }
@___asan_gen_.151 = private unnamed_addr constant [15 x i8] c"iowarrior_fops\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 709, i32 37 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 722, i32 31 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 287, i32 2 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 230, i32 6 }
@___asan_gen_.167 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 214, i32 2 }
@___asan_gen_.170 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 174, i32 2 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 356, i32 2 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 424, i32 4 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 442, i32 4 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 454, i32 3 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 233, i32 3 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 500, i32 2 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 526, i32 4 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 603, i32 3 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 622, i32 3 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 649, i32 2 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 249, i32 2 }
@___asan_gen_.229 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.235 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.236 = private constant [32 x i8] c"../drivers/usb/misc/iowarrior.c\00", align 1
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 914, i32 2 }
@llvm.compiler.used = appending global [77 x ptr] [ptr @__UNIQUE_ID_author232, ptr @__UNIQUE_ID_description233, ptr @__UNIQUE_ID_file234, ptr @__UNIQUE_ID_license235, ptr @__exitcall_iowarrior_driver_exit, ptr @__initcall__kmod_iowarrior__244_926_iowarrior_driver_init6, ptr @iowarrior_callback._entry, ptr @iowarrior_callback._entry_ptr, ptr @iowarrior_disconnect._entry, ptr @iowarrior_disconnect._entry_ptr, ptr @iowarrior_driver_exit, ptr @iowarrior_ioctl._entry, ptr @iowarrior_ioctl._entry_ptr, ptr @iowarrior_open._entry, ptr @iowarrior_open._entry.44, ptr @iowarrior_open._entry_ptr, ptr @iowarrior_open._entry_ptr.46, ptr @iowarrior_probe._entry, ptr @iowarrior_probe._entry.11, ptr @iowarrior_probe._entry.14, ptr @iowarrior_probe._entry.17, ptr @iowarrior_probe._entry_ptr, ptr @iowarrior_probe._entry_ptr.13, ptr @iowarrior_probe._entry_ptr.16, ptr @iowarrior_probe._entry_ptr.20, ptr @iowarrior_write._entry, ptr @iowarrior_write._entry_ptr, ptr @iowarrior_driver, ptr @.str, ptr @iowarrior_ids, ptr @iowarrior_probe.__key, ptr @.str.1, ptr @iowarrior_probe.__key.2, ptr @.str.3, ptr @iowarrior_probe.__key.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @iowarrior_class, ptr @.str.15, ptr @.str.18, ptr @.str.19, ptr @init_usb_anchor.__key, ptr @.str.21, ptr @init_usb_anchor.__key.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @iowarrior_fops, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.45, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51], section "llvm.metadata"
@0 = internal global [60 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iowarrior_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iowarrior_ids to i32), i32 264, i32 352, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iowarrior_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iowarrior_probe.__key.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iowarrior_probe.__key.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iowarrior_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iowarrior_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iowarrior_class to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iowarrior_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iowarrior_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_usb_anchor.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_usb_anchor.__key.22 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iowarrior_callback._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iowarrior_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iowarrior_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iowarrior_ioctl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iowarrior_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iowarrior_open._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iowarrior_disconnect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @iowarrior_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @iowarrior_driver, ptr noundef null, ptr noundef nonnull @.str) #12
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @iowarrior_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @usb_deregister(ptr noundef nonnull @iowarrior_driver) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iowarrior_probe(ptr noundef %interface, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 -128
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 388) #15
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body:                                          ; preds = %entry
  tail call void @__mutex_init(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.1, ptr noundef nonnull @iowarrior_probe.__key) #12
  %intr_idx = getelementptr inbounds %struct.iowarrior, ptr %call7.i.i, i32 0, i32 14
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %intr_idx, i32 noundef 4) #12
  %3 = ptrtoint ptr %intr_idx to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile i32 0, ptr %intr_idx, align 8
  %read_idx = getelementptr inbounds %struct.iowarrior, ptr %call7.i.i, i32 0, i32 13
  %call.i.i223 = tail call zeroext i1 @__kasan_check_write(ptr noundef %read_idx, i32 noundef 4) #12
  %4 = ptrtoint ptr %read_idx to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile i32 0, ptr %read_idx, align 4
  %overflow_flag = getelementptr inbounds %struct.iowarrior, ptr %call7.i.i, i32 0, i32 15
  %call.i.i224 = tail call zeroext i1 @__kasan_check_write(ptr noundef %overflow_flag, i32 noundef 4) #12
  %5 = ptrtoint ptr %overflow_flag to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile i32 0, ptr %overflow_flag, align 4
  %read_wait = getelementptr inbounds %struct.iowarrior, ptr %call7.i.i, i32 0, i32 10
  tail call void @__init_waitqueue_head(ptr noundef %read_wait, ptr noundef nonnull @.str.3, ptr noundef nonnull @iowarrior_probe.__key.2) #12
  %write_busy = getelementptr inbounds %struct.iowarrior, ptr %call7.i.i, i32 0, i32 12
  %call.i.i225 = tail call zeroext i1 @__kasan_check_write(ptr noundef %write_busy, i32 noundef 4) #12
  %6 = ptrtoint ptr %write_busy to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile i32 0, ptr %write_busy, align 8
  %write_wait = getelementptr inbounds %struct.iowarrior, ptr %call7.i.i, i32 0, i32 11
  tail call void @__init_waitqueue_head(ptr noundef %write_wait, ptr noundef nonnull @.str.5, ptr noundef nonnull @iowarrior_probe.__key.4) #12
  %udev9 = getelementptr inbounds %struct.iowarrior, ptr %call7.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %udev9 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %add.ptr.i, ptr %udev9, align 4
  %call10 = tail call ptr @usb_get_intf(ptr noundef %interface) #12
  %interface11 = getelementptr inbounds %struct.iowarrior, ptr %call7.i.i, i32 0, i32 2
  %8 = ptrtoint ptr %interface11 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call10, ptr %interface11, align 8
  %cur_altsetting = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 1
  %9 = ptrtoint ptr %cur_altsetting to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cur_altsetting, align 4
  %idProduct = getelementptr i8, ptr %1, i32 938
  %11 = ptrtoint ptr %idProduct to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %idProduct, align 2
  %13 = tail call i16 @llvm.bswap.i16(i16 %12)
  %product_id = getelementptr inbounds %struct.iowarrior, ptr %call7.i.i, i32 0, i32 20
  %14 = ptrtoint ptr %product_id to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %product_id, align 8
  %submitted = getelementptr inbounds %struct.iowarrior, ptr %call7.i.i, i32 0, i32 21
  %15 = getelementptr inbounds %struct.iowarrior, ptr %call7.i.i, i32 0, i32 21, i32 1
  %16 = call ptr @memset(ptr %15, i32 0, i32 104)
  %17 = ptrtoint ptr %submitted to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %submitted, ptr %submitted, align 4
  %prev.i.i = getelementptr inbounds %struct.iowarrior, ptr %call7.i.i, i32 0, i32 21, i32 0, i32 1
  %18 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %submitted, ptr %prev.i.i, align 8
  tail call void @__init_waitqueue_head(ptr noundef %15, ptr noundef nonnull @.str.21, ptr noundef nonnull @init_usb_anchor.__key) #12
  %lock.i = getelementptr inbounds %struct.iowarrior, ptr %call7.i.i, i32 0, i32 21, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.23, ptr noundef nonnull @init_usb_anchor.__key.22, i16 noundef signext 3) #12
  %int_in_endpoint = getelementptr inbounds %struct.iowarrior, ptr %call7.i.i, i32 0, i32 5
  %call.i = tail call i32 @usb_find_common_endpoints_reverse(ptr noundef %10, ptr noundef null, ptr noundef null, ptr noundef %int_in_endpoint, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool13.not = icmp eq i32 %call.i, 0
  br i1 %tobool13.not, label %if.end19, label %do.end17

do.end17:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %dev18 = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev18, ptr noundef nonnull @.str.6) #16
  br label %error

if.end19:                                         ; preds = %do.body
  %19 = ptrtoint ptr %product_id to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %product_id, align 8
  %21 = zext i16 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values)
  switch i16 %20, label %if.end19.if.end50_crit_edge [
    i16 5379, label %if.end19.if.then41_crit_edge
    i16 5515, label %if.end19.if.then41_crit_edge250
    i16 5380, label %if.end19.if.then41_crit_edge251
    i16 5381, label %if.end19.if.then41_crit_edge252
    i16 5382, label %if.end19.if.then41_crit_edge253
  ]

if.end19.if.then41_crit_edge253:                  ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then41

if.end19.if.then41_crit_edge252:                  ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then41

if.end19.if.then41_crit_edge251:                  ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then41

if.end19.if.then41_crit_edge250:                  ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then41

if.end19.if.then41_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then41

if.end19.if.end50_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end50

if.then41:                                        ; preds = %if.end19.if.then41_crit_edge, %if.end19.if.then41_crit_edge250, %if.end19.if.then41_crit_edge251, %if.end19.if.then41_crit_edge252, %if.end19.if.then41_crit_edge253
  %int_out_endpoint = getelementptr inbounds %struct.iowarrior, ptr %call7.i.i, i32 0, i32 4
  %call.i227 = tail call i32 @usb_find_common_endpoints_reverse(ptr noundef %10, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %int_out_endpoint) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i227)
  %tobool43.not = icmp eq i32 %call.i227, 0
  br i1 %tobool43.not, label %if.then41.if.end50_crit_edge, label %do.end47

if.then41.if.end50_crit_edge:                     ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end50

do.end47:                                         ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #14
  %dev48 = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev48, ptr noundef nonnull @.str.12) #16
  br label %error

if.end50:                                         ; preds = %if.then41.if.end50_crit_edge, %if.end19.if.end50_crit_edge
  %22 = ptrtoint ptr %int_in_endpoint to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %int_in_endpoint, align 4
  %wMaxPacketSize.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %23, i32 0, i32 4
  %24 = ptrtoint ptr %wMaxPacketSize.i to i32
  call void @__asan_loadN_noabort(i32 %24, i32 2)
  %25 = load i16, ptr %wMaxPacketSize.i, align 1
  %26 = and i16 %25, -249
  %27 = tail call i16 @llvm.bswap.i16(i16 %26) #12
  %and.i = zext i16 %27 to i32
  %report_size = getelementptr inbounds %struct.iowarrior, ptr %call7.i.i, i32 0, i32 19
  %28 = ptrtoint ptr %report_size to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %and.i, ptr %report_size, align 4
  %29 = ptrtoint ptr %interface11 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %interface11, align 8
  %cur_altsetting54 = getelementptr inbounds %struct.usb_interface, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %cur_altsetting54 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %cur_altsetting54, align 4
  %bInterfaceNumber = getelementptr inbounds %struct.usb_interface_descriptor, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %bInterfaceNumber to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %bInterfaceNumber, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %cmp56 = icmp eq i8 %34, 0
  br i1 %cmp56, label %if.then58, label %if.end50.if.end66_crit_edge

if.end50.if.end66_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end66

if.then58:                                        ; preds = %if.end50
  %35 = ptrtoint ptr %product_id to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %product_id, align 8
  %37 = zext i16 %36 to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.52)
  switch i16 %36, label %if.then58.if.end66_crit_edge [
    i16 5379, label %if.then58.if.end66.sink.split_crit_edge
    i16 5515, label %if.then58.if.end66.sink.split_crit_edge254
    i16 5380, label %if.then58.sw.bb62_crit_edge
    i16 5381, label %if.then58.sw.bb62_crit_edge255
    i16 5382, label %sw.bb64
  ]

if.then58.sw.bb62_crit_edge255:                   ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb62

if.then58.sw.bb62_crit_edge:                      ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb62

if.then58.if.end66.sink.split_crit_edge254:       ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end66.sink.split

if.then58.if.end66.sink.split_crit_edge:          ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end66.sink.split

if.then58.if.end66_crit_edge:                     ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end66

sw.bb62:                                          ; preds = %if.then58.sw.bb62_crit_edge, %if.then58.sw.bb62_crit_edge255
  br label %if.end66.sink.split

sw.bb64:                                          ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end66.sink.split

if.end66.sink.split:                              ; preds = %sw.bb64, %sw.bb62, %if.then58.if.end66.sink.split_crit_edge, %if.then58.if.end66.sink.split_crit_edge254
  %.sink = phi i32 [ 4, %sw.bb62 ], [ 13, %sw.bb64 ], [ 7, %if.then58.if.end66.sink.split_crit_edge ], [ 7, %if.then58.if.end66.sink.split_crit_edge254 ]
  %38 = ptrtoint ptr %report_size to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %.sink, ptr %report_size, align 4
  br label %if.end66

if.end66:                                         ; preds = %if.end66.sink.split, %if.then58.if.end66_crit_edge, %if.end50.if.end66_crit_edge
  %call67 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #12
  %int_in_urb = getelementptr inbounds %struct.iowarrior, ptr %call7.i.i, i32 0, i32 6
  %39 = ptrtoint ptr %int_in_urb to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call67, ptr %int_in_urb, align 8
  %tobool69.not = icmp eq ptr %call67, null
  br i1 %tobool69.not, label %if.end66.error_crit_edge, label %if.end8.i

if.end66.error_crit_edge:                         ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #14
  br label %error

if.end8.i:                                        ; preds = %if.end66
  %40 = ptrtoint ptr %report_size to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %report_size, align 4
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %41, i32 noundef 3264) #17
  %int_in_buffer = getelementptr inbounds %struct.iowarrior, ptr %call7.i.i, i32 0, i32 7
  %42 = ptrtoint ptr %int_in_buffer to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call9.i, ptr %int_in_buffer, align 4
  %tobool75.not = icmp eq ptr %call9.i, null
  br i1 %tobool75.not, label %if.end8.i.error_crit_edge, label %if.end77

if.end8.i.error_crit_edge:                        ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %error

if.end77:                                         ; preds = %if.end8.i
  %43 = ptrtoint ptr %int_in_urb to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %int_in_urb, align 8
  %45 = ptrtoint ptr %udev9 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %udev9, align 4
  %47 = ptrtoint ptr %int_in_endpoint to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %int_in_endpoint, align 4
  %bEndpointAddress = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %48, i32 0, i32 2
  %49 = ptrtoint ptr %bEndpointAddress to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %bEndpointAddress, align 1
  %conv82 = zext i8 %50 to i32
  %51 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %46, align 8
  %shl.i = shl i32 %52, 8
  %shl1.i = shl nuw nsw i32 %conv82, 15
  %or.i = or i32 %shl1.i, %shl.i
  %or84 = or i32 %or.i, 1073741952
  %53 = ptrtoint ptr %report_size to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %report_size, align 4
  %bInterval = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %48, i32 0, i32 5
  %55 = ptrtoint ptr %bInterval to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %bInterval, align 1
  %conv88 = zext i8 %56 to i32
  %dev1.i = getelementptr inbounds %struct.urb, ptr %44, i32 0, i32 8
  %57 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %46, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %44, i32 0, i32 10
  %58 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %or84, ptr %pipe2.i, align 4
  %transfer_buffer3.i = getelementptr inbounds %struct.urb, ptr %44, i32 0, i32 14
  %59 = ptrtoint ptr %transfer_buffer3.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %call9.i, ptr %transfer_buffer3.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %44, i32 0, i32 19
  %60 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %54, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %44, i32 0, i32 28
  %61 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr @iowarrior_callback, ptr %complete.i, align 4
  %context4.i = getelementptr inbounds %struct.urb, ptr %44, i32 0, i32 27
  %62 = ptrtoint ptr %context4.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %call7.i.i, ptr %context4.i, align 4
  %speed.i = getelementptr inbounds %struct.usb_device, ptr %46, i32 0, i32 4
  %63 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %speed.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %64)
  %cmp.i228 = icmp eq i32 %64, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %64)
  %cmp6.i = icmp ugt i32 %64, 4
  %or.cond.i = or i1 %cmp.i228, %cmp6.i
  br i1 %or.cond.i, label %if.then.i230, label %if.end77.usb_fill_int_urb.exit_crit_edge

if.end77.usb_fill_int_urb.exit_crit_edge:         ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #14
  br label %usb_fill_int_urb.exit

if.then.i230:                                     ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #14
  %65 = tail call i32 @llvm.smax.i32(i32 %conv88, i32 1) #12
  %66 = tail call i32 @llvm.umin.i32(i32 %65, i32 16) #12
  %sub.i = add nsw i32 %66, -1
  %shl.i229 = shl nuw nsw i32 1, %sub.i
  br label %usb_fill_int_urb.exit

usb_fill_int_urb.exit:                            ; preds = %if.then.i230, %if.end77.usb_fill_int_urb.exit_crit_edge
  %interval.sink.i = phi i32 [ %shl.i229, %if.then.i230 ], [ %conv88, %if.end77.usb_fill_int_urb.exit_crit_edge ]
  %67 = getelementptr inbounds %struct.urb, ptr %44, i32 0, i32 25
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %interval.sink.i, ptr %67, align 4
  %start_frame.i = getelementptr inbounds %struct.urb, ptr %44, i32 0, i32 23
  %69 = ptrtoint ptr %start_frame.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 -1, ptr %start_frame.i, align 4
  %70 = ptrtoint ptr %report_size to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %report_size, align 4
  %add = add i32 %71, 1
  %72 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add, i32 16) #12
  %73 = extractvalue { i32, i1 } %72, 1
  br i1 %73, label %kmalloc_array.exit.thread, label %if.end7.i, !prof !131

kmalloc_array.exit.thread:                        ; preds = %usb_fill_int_urb.exit
  call void @__sanitizer_cov_trace_pc() #14
  %read_queue244 = getelementptr inbounds %struct.iowarrior, ptr %call7.i.i, i32 0, i32 9
  %74 = ptrtoint ptr %read_queue244 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr null, ptr %read_queue244, align 4
  br label %error

if.end7.i:                                        ; preds = %usb_fill_int_urb.exit
  %75 = extractvalue { i32, i1 } %72, 0
  %call8.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %75, i32 noundef 3264) #17
  %read_queue = getelementptr inbounds %struct.iowarrior, ptr %call7.i.i, i32 0, i32 9
  %76 = ptrtoint ptr %read_queue to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %call8.i, ptr %read_queue, align 4
  %tobool92.not = icmp eq ptr %call8.i, null
  br i1 %tobool92.not, label %if.end7.i.error_crit_edge, label %if.end94

if.end7.i.error_crit_edge:                        ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %error

if.end94:                                         ; preds = %if.end7.i
  %chip_serial = getelementptr inbounds %struct.iowarrior, ptr %call7.i.i, i32 0, i32 18
  %77 = call ptr @memset(ptr %chip_serial, i32 0, i32 9)
  %iSerialNumber = getelementptr i8, ptr %1, i32 944
  %78 = ptrtoint ptr %iSerialNumber to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %iSerialNumber, align 8
  %conv96 = zext i8 %79 to i32
  %call99 = tail call i32 @usb_string(ptr noundef %add.ptr.i, i32 noundef %conv96, ptr noundef %chip_serial, i32 noundef 9) #12
  %call102 = tail call i32 @strlen(ptr noundef %chip_serial) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %call102)
  %cmp103.not = icmp eq i32 %call102, 8
  br i1 %cmp103.not, label %if.end94.if.end108_crit_edge, label %if.then105

if.end94.if.end108_crit_edge:                     ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end108

if.then105:                                       ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #14
  %80 = call ptr @memset(ptr %chip_serial, i32 0, i32 9)
  br label %if.end108

if.end108:                                        ; preds = %if.then105, %if.end94.if.end108_crit_edge
  %81 = ptrtoint ptr %interface11 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %interface11, align 8
  %cur_altsetting110 = getelementptr inbounds %struct.usb_interface, ptr %82, i32 0, i32 1
  %83 = ptrtoint ptr %cur_altsetting110 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %cur_altsetting110, align 4
  %bInterfaceNumber112 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %84, i32 0, i32 2
  %85 = ptrtoint ptr %bInterfaceNumber112 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %bInterfaceNumber112, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %86)
  %cmp114 = icmp eq i8 %86, 0
  br i1 %cmp114, label %if.then116, label %if.end108.if.end120_crit_edge

if.end108.if.end120_crit_edge:                    ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end120

if.then116:                                       ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #14
  %87 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %add.ptr.i, align 8
  %shl.i237 = shl i32 %88, 8
  %or118 = or i32 %shl.i237, -2147483648
  %call119 = tail call i32 @usb_control_msg(ptr noundef %add.ptr.i, i32 noundef %or118, i8 noundef zeroext 10, i8 noundef zeroext 33, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #12
  br label %if.end120

if.end120:                                        ; preds = %if.then116, %if.end108.if.end120_crit_edge
  %present = getelementptr inbounds %struct.iowarrior, ptr %call7.i.i, i32 0, i32 16
  %89 = ptrtoint ptr %present to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 1, ptr %present, align 8
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7, i32 8
  %90 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %call121 = tail call i32 @usb_register_dev(ptr noundef %interface, ptr noundef nonnull @iowarrior_class) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call121)
  %tobool122.not = icmp eq i32 %call121, 0
  br i1 %tobool122.not, label %if.end128, label %do.end126

do.end126:                                        ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #14
  %dev127 = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev127, ptr noundef nonnull @.str.15) #16
  br label %error

if.end128:                                        ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #14
  %minor = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 4
  %91 = ptrtoint ptr %minor to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %minor, align 8
  %conv129 = trunc i32 %92 to i8
  %minor130 = getelementptr inbounds %struct.iowarrior, ptr %call7.i.i, i32 0, i32 3
  %93 = ptrtoint ptr %minor130 to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 %conv129, ptr %minor130, align 4
  %dev134 = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7
  %94 = ptrtoint ptr %product_id to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %product_id, align 8
  %conv136 = zext i16 %95 to i32
  %bInterfaceNumber140 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %10, i32 0, i32 2
  %96 = ptrtoint ptr %bInterfaceNumber140 to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %bInterfaceNumber140, align 2
  %conv141 = zext i8 %97 to i32
  %conv143 = and i32 %92, 255
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev134, ptr noundef nonnull @.str.18, i32 noundef %conv136, ptr noundef %chip_serial, i32 noundef %conv141, i32 noundef %conv143) #16
  br label %cleanup

error:                                            ; preds = %do.end126, %if.end7.i.error_crit_edge, %kmalloc_array.exit.thread, %if.end8.i.error_crit_edge, %if.end66.error_crit_edge, %do.end47, %do.end17
  %retval1.0 = phi i32 [ %call.i, %do.end17 ], [ %call.i227, %do.end47 ], [ %call121, %do.end126 ], [ -12, %if.end7.i.error_crit_edge ], [ -12, %if.end8.i.error_crit_edge ], [ -12, %if.end66.error_crit_edge ], [ -12, %kmalloc_array.exit.thread ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iowarrior_delete.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iowarrior_probe, %if.then.i238)) #12
          to label %iowarrior_delete.exit [label %if.then.i238], !srcloc !132

if.then.i238:                                     ; preds = %error
  call void @__sanitizer_cov_trace_pc() #14
  %98 = ptrtoint ptr %interface11 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %interface11, align 8
  %dev3.i = getelementptr inbounds %struct.usb_interface, ptr %99, i32 0, i32 7
  %minor.i = getelementptr inbounds %struct.iowarrior, ptr %call7.i.i, i32 0, i32 3
  %100 = ptrtoint ptr %minor.i to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %minor.i, align 4
  %conv.i = zext i8 %101 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @iowarrior_delete.__UNIQUE_ID_ddebug237, ptr noundef %dev3.i, ptr noundef nonnull @.str.48, i32 noundef %conv.i) #12
  br label %iowarrior_delete.exit

iowarrior_delete.exit:                            ; preds = %if.then.i238, %error
  %int_in_buffer.i = getelementptr inbounds %struct.iowarrior, ptr %call7.i.i, i32 0, i32 7
  %102 = ptrtoint ptr %int_in_buffer.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %int_in_buffer.i, align 4
  tail call void @kfree(ptr noundef %103) #12
  %int_in_urb.i = getelementptr inbounds %struct.iowarrior, ptr %call7.i.i, i32 0, i32 6
  %104 = ptrtoint ptr %int_in_urb.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %int_in_urb.i, align 8
  tail call void @usb_free_urb(ptr noundef %105) #12
  %read_queue.i = getelementptr inbounds %struct.iowarrior, ptr %call7.i.i, i32 0, i32 9
  %106 = ptrtoint ptr %read_queue.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %read_queue.i, align 4
  tail call void @kfree(ptr noundef %107) #12
  %108 = ptrtoint ptr %interface11 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %interface11, align 8
  tail call void @usb_put_intf(ptr noundef %109) #12
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #12
  br label %cleanup

cleanup:                                          ; preds = %iowarrior_delete.exit, %if.end128, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval1.0, %iowarrior_delete.exit ], [ 0, %if.end128 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iowarrior_disconnect(ptr noundef %interface) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %minor1 = getelementptr inbounds %struct.iowarrior, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %minor1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %minor1, align 4
  tail call void @usb_deregister_dev(ptr noundef %interface, ptr noundef nonnull @iowarrior_class) #12
  tail call void @mutex_lock_nested(ptr noundef %1, i32 noundef 0) #12
  %present = getelementptr inbounds %struct.iowarrior, ptr %1, i32 0, i32 16
  %4 = ptrtoint ptr %present to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %present, align 4
  %opened = getelementptr inbounds %struct.iowarrior, ptr %1, i32 0, i32 17
  %5 = ptrtoint ptr %opened to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %opened, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %int_in_urb = getelementptr inbounds %struct.iowarrior, ptr %1, i32 0, i32 6
  %7 = ptrtoint ptr %int_in_urb to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %int_in_urb, align 4
  tail call void @usb_kill_urb(ptr noundef %8) #12
  %submitted = getelementptr inbounds %struct.iowarrior, ptr %1, i32 0, i32 21
  tail call void @usb_kill_anchored_urbs(ptr noundef %submitted) #12
  %read_wait = getelementptr inbounds %struct.iowarrior, ptr %1, i32 0, i32 10
  tail call void @__wake_up(ptr noundef %read_wait, i32 noundef 1, i32 noundef 1, ptr noundef null) #12
  %write_wait = getelementptr inbounds %struct.iowarrior, ptr %1, i32 0, i32 11
  tail call void @__wake_up(ptr noundef %write_wait, i32 noundef 1, i32 noundef 1, ptr noundef null) #12
  tail call void @mutex_unlock(ptr noundef %1) #12
  br label %do.end

if.else:                                          ; preds = %entry
  tail call void @mutex_unlock(ptr noundef %1) #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iowarrior_delete.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iowarrior_disconnect, %if.then.i)) #12
          to label %iowarrior_delete.exit [label %if.then.i], !srcloc !132

if.then.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %interface.i = getelementptr inbounds %struct.iowarrior, ptr %1, i32 0, i32 2
  %9 = ptrtoint ptr %interface.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %interface.i, align 4
  %dev3.i = getelementptr inbounds %struct.usb_interface, ptr %10, i32 0, i32 7
  %11 = ptrtoint ptr %minor1 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %minor1, align 4
  %conv.i = zext i8 %12 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @iowarrior_delete.__UNIQUE_ID_ddebug237, ptr noundef %dev3.i, ptr noundef nonnull @.str.48, i32 noundef %conv.i) #12
  br label %iowarrior_delete.exit

iowarrior_delete.exit:                            ; preds = %if.then.i, %if.else
  %int_in_buffer.i = getelementptr inbounds %struct.iowarrior, ptr %1, i32 0, i32 7
  %13 = ptrtoint ptr %int_in_buffer.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %int_in_buffer.i, align 4
  tail call void @kfree(ptr noundef %14) #12
  %int_in_urb.i = getelementptr inbounds %struct.iowarrior, ptr %1, i32 0, i32 6
  %15 = ptrtoint ptr %int_in_urb.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %int_in_urb.i, align 4
  tail call void @usb_free_urb(ptr noundef %16) #12
  %read_queue.i = getelementptr inbounds %struct.iowarrior, ptr %1, i32 0, i32 9
  %17 = ptrtoint ptr %read_queue.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %read_queue.i, align 4
  tail call void @kfree(ptr noundef %18) #12
  %interface4.i = getelementptr inbounds %struct.iowarrior, ptr %1, i32 0, i32 2
  %19 = ptrtoint ptr %interface4.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %interface4.i, align 4
  tail call void @usb_put_intf(ptr noundef %20) #12
  tail call void @kfree(ptr noundef %1) #12
  br label %do.end

do.end:                                           ; preds = %iowarrior_delete.exit, %if.then
  %conv = zext i8 %3 to i32
  %dev4 = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev4, ptr noundef nonnull @.str.50, i32 noundef %conv) #16
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_get_intf(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_urb(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iowarrior_callback(ptr noundef %urb) #2 align 64 {
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
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.53)
  switch i32 %3, label %entry.exit_crit_edge [
    i32 0, label %sw.epilog
    i32 -104, label %entry.cleanup_crit_edge
    i32 -2, label %entry.cleanup_crit_edge95
    i32 -108, label %entry.cleanup_crit_edge96
  ]

entry.cleanup_crit_edge96:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

entry.cleanup_crit_edge95:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

entry.exit_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit

sw.epilog:                                        ; preds = %entry
  %intr_idx2 = getelementptr inbounds %struct.iowarrior, ptr %1, i32 0, i32 14
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %intr_idx2, i32 noundef 4) #12
  %5 = ptrtoint ptr %intr_idx2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %intr_idx2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp = icmp eq i32 %6, 0
  %sub = add i32 %6, -1
  %spec.select = select i1 %cmp, i32 15, i32 %sub
  %read_idx3 = getelementptr inbounds %struct.iowarrior, ptr %1, i32 0, i32 13
  %call.i.i91 = tail call zeroext i1 @__kasan_check_read(ptr noundef %read_idx3, i32 noundef 4) #12
  %7 = ptrtoint ptr %read_idx3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %read_idx3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %8)
  %cmp5.not = icmp eq i32 %6, %8
  br i1 %cmp5.not, label %sw.epilog.if.end11_crit_edge, label %land.lhs.true

sw.epilog.if.end11_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

land.lhs.true:                                    ; preds = %sw.epilog
  %interface = getelementptr inbounds %struct.iowarrior, ptr %1, i32 0, i32 2
  %9 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %interface, align 4
  %cur_altsetting = getelementptr inbounds %struct.usb_interface, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %cur_altsetting to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cur_altsetting, align 4
  %bInterfaceNumber = getelementptr inbounds %struct.usb_interface_descriptor, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %bInterfaceNumber to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %bInterfaceNumber, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %cmp6 = icmp eq i8 %14, 0
  br i1 %cmp6, label %if.then, label %land.lhs.true.if.end11_crit_edge

land.lhs.true.if.end11_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

if.then:                                          ; preds = %land.lhs.true
  %report_size = getelementptr inbounds %struct.iowarrior, ptr %1, i32 0, i32 19
  %15 = ptrtoint ptr %report_size to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %report_size, align 4
  %add = add i32 %16, 1
  %mul = mul i32 %add, %spec.select
  %read_queue = getelementptr inbounds %struct.iowarrior, ptr %1, i32 0, i32 9
  %17 = ptrtoint ptr %read_queue to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %read_queue, align 4
  %add.ptr = getelementptr i8, ptr %18, i32 %mul
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %19 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %transfer_buffer, align 4
  %bcmp = tail call i32 @bcmp(ptr %add.ptr, ptr %20, i32 %16) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool.not = icmp eq i32 %bcmp, 0
  br i1 %tobool.not, label %if.then.exit_crit_edge, label %if.then.if.end11_crit_edge

if.then.if.end11_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

if.then.exit_crit_edge:                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit

if.end11:                                         ; preds = %if.then.if.end11_crit_edge, %land.lhs.true.if.end11_crit_edge, %sw.epilog.if.end11_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %6)
  %cmp12 = icmp eq i32 %6, 15
  %add16 = add i32 %6, 1
  %spec.select89 = select i1 %cmp12, i32 0, i32 %add16
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %spec.select89)
  %cmp19 = icmp eq i32 %8, %spec.select89
  br i1 %cmp19, label %if.then21, label %if.end11.if.end29_crit_edge

if.end11.if.end29_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29

if.then21:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  %inc = add i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %inc)
  %cmp22 = icmp eq i32 %inc, 16
  %spec.select90 = select i1 %cmp22, i32 0, i32 %inc
  %call.i.i92 = tail call zeroext i1 @__kasan_check_write(ptr noundef %read_idx3, i32 noundef 4) #12
  %21 = ptrtoint ptr %read_idx3 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile i32 %spec.select90, ptr %read_idx3, align 4
  %overflow_flag = getelementptr inbounds %struct.iowarrior, ptr %1, i32 0, i32 15
  %call.i.i93 = tail call zeroext i1 @__kasan_check_write(ptr noundef %overflow_flag, i32 noundef 4) #12
  %22 = ptrtoint ptr %overflow_flag to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile i32 1, ptr %overflow_flag, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.then21, %if.end11.if.end29_crit_edge
  %report_size30 = getelementptr inbounds %struct.iowarrior, ptr %1, i32 0, i32 19
  %23 = ptrtoint ptr %report_size30 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %report_size30, align 4
  %add31 = add i32 %24, 1
  %mul32 = mul i32 %add31, %6
  %read_queue33 = getelementptr inbounds %struct.iowarrior, ptr %1, i32 0, i32 9
  %25 = ptrtoint ptr %read_queue33 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %read_queue33, align 4
  %add.ptr34 = getelementptr i8, ptr %26, i32 %mul32
  %transfer_buffer35 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %27 = ptrtoint ptr %transfer_buffer35 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %transfer_buffer35, align 4
  %29 = call ptr @memcpy(ptr %add.ptr34, ptr %28, i32 %24)
  %serial_number = getelementptr inbounds %struct.iowarrior, ptr %1, i32 0, i32 8
  %30 = ptrtoint ptr %serial_number to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %serial_number, align 4
  %inc37 = add i8 %31, 1
  store i8 %inc37, ptr %serial_number, align 4
  %32 = load ptr, ptr %read_queue33, align 4
  %add.ptr39 = getelementptr i8, ptr %32, i32 %mul32
  %33 = load i32, ptr %report_size30, align 4
  %add.ptr41 = getelementptr i8, ptr %add.ptr39, i32 %33
  %34 = ptrtoint ptr %add.ptr41 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %31, ptr %add.ptr41, align 1
  %call.i.i94 = tail call zeroext i1 @__kasan_check_write(ptr noundef %intr_idx2, i32 noundef 4) #12
  %35 = ptrtoint ptr %intr_idx2 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile i32 %spec.select89, ptr %intr_idx2, align 4
  %read_wait = getelementptr inbounds %struct.iowarrior, ptr %1, i32 0, i32 10
  tail call void @__wake_up(ptr noundef %read_wait, i32 noundef 1, i32 noundef 1, ptr noundef null) #12
  br label %exit

exit:                                             ; preds = %if.end29, %if.then.exit_crit_edge, %entry.exit_crit_edge
  %call43 = tail call i32 @usb_submit_urb(ptr noundef %urb, i32 noundef 2592) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %exit.cleanup_crit_edge, label %do.end

exit.cleanup_crit_edge:                           ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end:                                           ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #14
  %interface46 = getelementptr inbounds %struct.iowarrior, ptr %1, i32 0, i32 2
  %36 = ptrtoint ptr %interface46 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %interface46, align 4
  %dev47 = getelementptr inbounds %struct.usb_interface, ptr %37, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev47, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25, i32 noundef %call43) #16
  br label %cleanup

cleanup:                                          ; preds = %do.end, %exit.cleanup_crit_edge, %entry.cleanup_crit_edge, %entry.cleanup_crit_edge95, %entry.cleanup_crit_edge96
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_string(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_dev(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_find_common_endpoints_reverse(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal noalias ptr @iowarrior_devnode(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %mode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %init_name.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.dev_name.exit_crit_edge

entry.dev_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_name.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %entry.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %3, %if.end.i ], [ %1, %entry.dev_name.exit_crit_edge ]
  %call1 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.27, ptr noundef %retval.0.i) #12
  ret ptr %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @noop_llseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iowarrior_read(ptr nocapture noundef readonly %file, ptr noundef %buffer, i32 noundef %count, ptr nocapture noundef readnone %ppos) #2 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup81_crit_edge, label %lor.lhs.false

entry.cleanup81_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup81

lor.lhs.false:                                    ; preds = %entry
  %present = getelementptr inbounds %struct.iowarrior, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %present to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %present, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not = icmp eq i32 %3, 0
  br i1 %tobool1.not, label %lor.lhs.false.cleanup81_crit_edge, label %do.body

lor.lhs.false.cleanup81_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup81

do.body:                                          ; preds = %lor.lhs.false
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iowarrior_read.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iowarrior_read, %if.then5)) #12
          to label %do.end [label %if.then5], !srcloc !132

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %interface = getelementptr inbounds %struct.iowarrior, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %interface, align 4
  %dev6 = getelementptr inbounds %struct.usb_interface, ptr %5, i32 0, i32 7
  %minor = getelementptr inbounds %struct.iowarrior, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %minor to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %minor, align 4
  %conv = zext i8 %7 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @iowarrior_read.__UNIQUE_ID_ddebug238, ptr noundef %dev6, ptr noundef nonnull @.str.29, i32 noundef %conv, i32 noundef %count) #12
  br label %do.end

do.end:                                           ; preds = %if.then5, %do.body
  %report_size = getelementptr inbounds %struct.iowarrior, ptr %1, i32 0, i32 19
  %8 = ptrtoint ptr %report_size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %report_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %count)
  %cmp.not = icmp eq i32 %9, %count
  %add = add i32 %9, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %count)
  %cmp10.not = icmp eq i32 %add, %count
  %or.cond = or i1 %cmp.not, %cmp10.not
  br i1 %or.cond, label %do.body14.preheader, label %do.end.cleanup81_crit_edge

do.end.cleanup81_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup81

do.body14.preheader:                              ; preds = %do.end
  %overflow_flag = getelementptr inbounds %struct.iowarrior, ptr %1, i32 0, i32 15
  %read_idx1.i = getelementptr inbounds %struct.iowarrior, ptr %1, i32 0, i32 13
  %intr_idx2.i = getelementptr inbounds %struct.iowarrior, ptr %1, i32 0, i32 14
  %f_flags = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 7
  %read_wait = getelementptr inbounds %struct.iowarrior, ptr %1, i32 0, i32 10
  %read_queue = getelementptr inbounds %struct.iowarrior, ptr %1, i32 0, i32 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp9.i.i = icmp slt i32 %count, 0
  br label %do.body14

do.body14:                                        ; preds = %do.cond73.do.body14_crit_edge, %do.body14.preheader
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %overflow_flag, i32 noundef 4) #12
  %10 = ptrtoint ptr %overflow_flag to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile i32 0, ptr %overflow_flag, align 4
  %call.i.i.i118 = call zeroext i1 @__kasan_check_read(ptr noundef %read_idx1.i, i32 noundef 4) #12
  %11 = ptrtoint ptr %read_idx1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %read_idx1.i, align 4
  %call.i.i6.i = call zeroext i1 @__kasan_check_read(ptr noundef %intr_idx2.i, i32 noundef 4) #12
  %13 = ptrtoint ptr %intr_idx2.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %intr_idx2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %14)
  %cmp.i = icmp eq i32 %12, %14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %12)
  %cmp16159 = icmp eq i32 %12, -1
  %cmp16 = or i1 %cmp16159, %cmp.i
  br i1 %cmp16, label %if.then18, label %do.body14.if.end66_crit_edge

do.body14.if.end66_crit_edge:                     ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end66

if.then18:                                        ; preds = %do.body14
  %15 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %f_flags, align 4
  %and = and i32 %16, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool19.not = icmp eq i32 %and, 0
  br i1 %tobool19.not, label %if.else, label %if.then18.cleanup81_crit_edge

if.then18.cleanup81_crit_edge:                    ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup81

if.else:                                          ; preds = %if.then18
  call void @__might_sleep(ptr noundef nonnull @.str.8, i32 noundef 309) #12
  %17 = ptrtoint ptr %present to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %present, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool28.not = icmp eq i32 %18, 0
  br i1 %tobool28.not, label %if.else.cleanup81_crit_edge, label %lor.lhs.false29

if.else.cleanup81_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup81

lor.lhs.false29:                                  ; preds = %if.else
  %call.i.i.i120 = call zeroext i1 @__kasan_check_read(ptr noundef %read_idx1.i, i32 noundef 4) #12
  %19 = ptrtoint ptr %read_idx1.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %read_idx1.i, align 4
  %call.i.i6.i122 = call zeroext i1 @__kasan_check_read(ptr noundef %intr_idx2.i, i32 noundef 4) #12
  %21 = ptrtoint ptr %intr_idx2.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %intr_idx2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %22)
  %cmp.i123 = icmp eq i32 %20, %22
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %20)
  %cmp31.not160 = icmp eq i32 %20, -1
  %cmp31.not = or i1 %cmp31.not160, %cmp.i123
  br i1 %cmp31.not, label %if.then33, label %lor.lhs.false29.if.end53_crit_edge

lor.lhs.false29.if.end53_crit_edge:               ; preds = %lor.lhs.false29
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end53

if.then33:                                        ; preds = %lor.lhs.false29
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #12
  %23 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #12
  %call35171 = call i32 @prepare_to_wait_event(ptr noundef %read_wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #12
  %24 = ptrtoint ptr %present to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %present, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool37.not172 = icmp eq i32 %25, 0
  br i1 %tobool37.not172, label %if.then33.if.end49.thread148_crit_edge, label %if.then33.lor.lhs.false38_crit_edge

if.then33.lor.lhs.false38_crit_edge:              ; preds = %if.then33
  br label %lor.lhs.false38

if.then33.if.end49.thread148_crit_edge:           ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end49.thread148

lor.lhs.false38:                                  ; preds = %cleanup.lor.lhs.false38_crit_edge, %if.then33.lor.lhs.false38_crit_edge
  %call35173 = phi i32 [ %call35, %cleanup.lor.lhs.false38_crit_edge ], [ %call35171, %if.then33.lor.lhs.false38_crit_edge ]
  %call.i.i.i126 = call zeroext i1 @__kasan_check_read(ptr noundef %read_idx1.i, i32 noundef 4) #12
  %26 = ptrtoint ptr %read_idx1.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %read_idx1.i, align 4
  %call.i.i6.i128 = call zeroext i1 @__kasan_check_read(ptr noundef %intr_idx2.i, i32 noundef 4) #12
  %28 = ptrtoint ptr %intr_idx2.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %intr_idx2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %29)
  %cmp.i129 = icmp eq i32 %27, %29
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %27)
  %cmp40.not161 = icmp eq i32 %27, -1
  %cmp40.not = or i1 %cmp40.not161, %cmp.i129
  br i1 %cmp40.not, label %if.end43, label %lor.lhs.false38.if.end49.thread148_crit_edge

lor.lhs.false38.if.end49.thread148_crit_edge:     ; preds = %lor.lhs.false38
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end49.thread148

if.end43:                                         ; preds = %lor.lhs.false38
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35173)
  %tobool44.not = icmp eq i32 %call35173, 0
  br i1 %tobool44.not, label %cleanup, label %if.end49

cleanup:                                          ; preds = %if.end43
  call void @schedule() #12
  %call35 = call i32 @prepare_to_wait_event(ptr noundef %read_wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #12
  %30 = ptrtoint ptr %present to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %present, align 4
  %tobool37.not = icmp eq i32 %31, 0
  br i1 %tobool37.not, label %cleanup.if.end49.thread148_crit_edge, label %cleanup.lor.lhs.false38_crit_edge

cleanup.lor.lhs.false38_crit_edge:                ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false38

cleanup.if.end49.thread148_crit_edge:             ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end49.thread148

if.end49.thread148:                               ; preds = %cleanup.if.end49.thread148_crit_edge, %lor.lhs.false38.if.end49.thread148_crit_edge, %if.then33.if.end49.thread148_crit_edge
  %read_idx.2.ph = phi i32 [ -1, %if.then33.if.end49.thread148_crit_edge ], [ -1, %cleanup.if.end49.thread148_crit_edge ], [ %27, %lor.lhs.false38.if.end49.thread148_crit_edge ]
  call void @finish_wait(ptr noundef %read_wait, ptr noundef nonnull %__wq_entry) #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #12
  br label %if.end53

if.end49:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #12
  br label %cleanup81

if.end53:                                         ; preds = %if.end49.thread148, %lor.lhs.false29.if.end53_crit_edge
  %read_idx.3147.ph = phi i32 [ %20, %lor.lhs.false29.if.end53_crit_edge ], [ %read_idx.2.ph, %if.end49.thread148 ]
  %32 = ptrtoint ptr %present to i32
  call void @__asan_load4_noabort(i32 %32)
  %.pr = load i32, ptr %present, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool55.not = icmp eq i32 %.pr, 0
  br i1 %tobool55.not, label %if.end53.cleanup81_crit_edge, label %cleanup62

if.end53.cleanup81_crit_edge:                     ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup81

cleanup62:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %read_idx.3147.ph)
  %cmp58 = icmp eq i32 %read_idx.3147.ph, -1
  br i1 %cmp58, label %cleanup62.cleanup81_crit_edge, label %cleanup62.if.end66_crit_edge

cleanup62.if.end66_crit_edge:                     ; preds = %cleanup62
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end66

cleanup62.cleanup81_crit_edge:                    ; preds = %cleanup62
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup81

if.end66:                                         ; preds = %cleanup62.if.end66_crit_edge, %do.body14.if.end66_crit_edge
  %read_idx.4 = phi i32 [ %read_idx.3147.ph, %cleanup62.if.end66_crit_edge ], [ %12, %do.body14.if.end66_crit_edge ]
  %33 = ptrtoint ptr %report_size to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %report_size, align 4
  %add68 = add i32 %34, 1
  %mul = mul i32 %add68, %read_idx.4
  %35 = ptrtoint ptr %read_queue to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %read_queue, align 4
  %add.ptr = getelementptr i8, ptr %36, i32 %mul
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %if.end66
  %.b71.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i, label %land.rhs16.i.i.cleanup81_crit_edge, label %if.then27.i.i, !prof !133

land.rhs16.i.i.cleanup81_crit_edge:               ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup81

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.30, i32 noundef 230, i32 noundef 9, ptr noundef null) #12
  br label %cleanup81

if.then.i.i.i:                                    ; preds = %if.end66
  call void @__check_object_size(ptr noundef %add.ptr, i32 noundef %count, i1 noundef zeroext true) #12
  call void @__might_fault(ptr noundef nonnull @.str.32, i32 noundef 174) #12
  %call.i.i115 = call zeroext i1 @should_fail_usercopy() #12
  br i1 %call.i.i115, label %if.then.i.i.i.copy_to_user.exit_crit_edge, label %if.end.i.i

if.then.i.i.i.copy_to_user.exit_crit_edge:        ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %copy_to_user.exit

if.end.i.i:                                       ; preds = %if.then.i.i.i
  %37 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buffer, i32 %count, i32 -1226833920) #19, !srcloc !134
  %asmresult.i.i = extractvalue { i32, i32 } %37, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i.copy_to_user.exit_crit_edge

if.end.i.i.copy_to_user.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %add.ptr, i32 noundef %count) #12
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %buffer, ptr noundef %add.ptr, i32 noundef %count) #12
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i.copy_to_user.exit_crit_edge, %if.then.i.i.i.copy_to_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ %count, %if.then.i.i.i.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %count, %if.end.i.i.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i)
  %tobool70.not = icmp eq i32 %n.addr.0.i, 0
  br i1 %tobool70.not, label %do.cond73, label %copy_to_user.exit.cleanup81_crit_edge

copy_to_user.exit.cleanup81_crit_edge:            ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup81

do.cond73:                                        ; preds = %copy_to_user.exit
  %call.i.i116 = call zeroext i1 @__kasan_check_read(ptr noundef %overflow_flag, i32 noundef 4) #12
  %38 = ptrtoint ptr %overflow_flag to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %overflow_flag, align 4
  %tobool76.not = icmp eq i32 %39, 0
  br i1 %tobool76.not, label %do.end77, label %do.cond73.do.body14_crit_edge

do.cond73.do.body14_crit_edge:                    ; preds = %do.cond73
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body14

do.end77:                                         ; preds = %do.cond73
  call void @__sanitizer_cov_trace_pc() #14
  %inc = add nuw i32 %read_idx.4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %inc)
  %cmp78 = icmp eq i32 %inc, 16
  %spec.select = select i1 %cmp78, i32 0, i32 %inc
  %call.i.i117 = call zeroext i1 @__kasan_check_write(ptr noundef %read_idx1.i, i32 noundef 4) #12
  %40 = ptrtoint ptr %read_idx1.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile i32 %spec.select, ptr %read_idx1.i, align 4
  br label %cleanup81

cleanup81:                                        ; preds = %do.end77, %copy_to_user.exit.cleanup81_crit_edge, %if.then27.i.i, %land.rhs16.i.i.cleanup81_crit_edge, %cleanup62.cleanup81_crit_edge, %if.end53.cleanup81_crit_edge, %if.end49, %if.else.cleanup81_crit_edge, %if.then18.cleanup81_crit_edge, %do.end.cleanup81_crit_edge, %lor.lhs.false.cleanup81_crit_edge, %entry.cleanup81_crit_edge
  %retval.3 = phi i32 [ %count, %do.end77 ], [ -19, %lor.lhs.false.cleanup81_crit_edge ], [ -19, %entry.cleanup81_crit_edge ], [ -22, %do.end.cleanup81_crit_edge ], [ -85, %if.end49 ], [ -14, %if.then27.i.i ], [ -14, %land.rhs16.i.i.cleanup81_crit_edge ], [ -19, %if.else.cleanup81_crit_edge ], [ -19, %if.end53.cleanup81_crit_edge ], [ -14, %copy_to_user.exit.cleanup81_crit_edge ], [ -11, %if.then18.cleanup81_crit_edge ], [ 0, %cleanup62.cleanup81_crit_edge ]
  ret i32 %retval.3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iowarrior_write(ptr nocapture noundef readonly %file, ptr noundef %user_buffer, i32 noundef %count, ptr nocapture noundef readnone %ppos) #2 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  tail call void @mutex_lock_nested(ptr noundef %1, i32 noundef 0) #12
  %present = getelementptr inbounds %struct.iowarrior, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %present to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %present, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.exit_crit_edge, label %do.body

entry.exit_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iowarrior_write.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iowarrior_write, %if.then5)) #12
          to label %do.end [label %if.then5], !srcloc !132

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %interface = getelementptr inbounds %struct.iowarrior, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %interface, align 4
  %dev6 = getelementptr inbounds %struct.usb_interface, ptr %5, i32 0, i32 7
  %minor = getelementptr inbounds %struct.iowarrior, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %minor to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %minor, align 4
  %conv = zext i8 %7 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @iowarrior_write.__UNIQUE_ID_ddebug239, ptr noundef %dev6, ptr noundef nonnull @.str.29, i32 noundef %conv, i32 noundef %count) #12
  br label %do.end

do.end:                                           ; preds = %if.then5, %do.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp = icmp eq i32 %count, 0
  br i1 %cmp, label %do.end.exit_crit_edge, label %if.end10

do.end.exit_crit_edge:                            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit

if.end10:                                         ; preds = %do.end
  %report_size = getelementptr inbounds %struct.iowarrior, ptr %1, i32 0, i32 19
  %8 = ptrtoint ptr %report_size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %report_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %count)
  %cmp11.not = icmp eq i32 %9, %count
  br i1 %cmp11.not, label %if.end14, label %if.end10.exit_crit_edge

if.end10.exit_crit_edge:                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit

if.end14:                                         ; preds = %if.end10
  %product_id = getelementptr inbounds %struct.iowarrior, ptr %1, i32 0, i32 20
  %10 = ptrtoint ptr %product_id to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %product_id, align 4
  %12 = zext i16 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.54)
  switch i16 %11, label %do.end139 [
    i16 5377, label %if.end14.sw.bb_crit_edge
    i16 5514, label %if.end14.sw.bb_crit_edge257
    i16 5393, label %if.end14.sw.bb_crit_edge258
    i16 5394, label %if.end14.sw.bb_crit_edge259
    i16 5376, label %if.end14.sw.bb_crit_edge260
    i16 5379, label %if.end14.sw.bb23_crit_edge
    i16 5515, label %if.end14.sw.bb23_crit_edge261
    i16 5380, label %if.end14.sw.bb23_crit_edge262
    i16 5381, label %if.end14.sw.bb23_crit_edge263
    i16 5382, label %if.end14.sw.bb23_crit_edge264
  ]

if.end14.sw.bb23_crit_edge264:                    ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb23

if.end14.sw.bb23_crit_edge263:                    ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb23

if.end14.sw.bb23_crit_edge262:                    ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb23

if.end14.sw.bb23_crit_edge261:                    ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb23

if.end14.sw.bb23_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb23

if.end14.sw.bb_crit_edge260:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb

if.end14.sw.bb_crit_edge259:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb

if.end14.sw.bb_crit_edge258:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb

if.end14.sw.bb_crit_edge257:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb

if.end14.sw.bb_crit_edge:                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb

sw.bb:                                            ; preds = %if.end14.sw.bb_crit_edge, %if.end14.sw.bb_crit_edge257, %if.end14.sw.bb_crit_edge258, %if.end14.sw.bb_crit_edge259, %if.end14.sw.bb_crit_edge260
  %call16 = tail call ptr @memdup_user(ptr noundef %user_buffer, i32 noundef %count) #12
  %cmp.i = icmp ugt ptr %call16, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then18, label %if.end20

if.then18:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  %13 = ptrtoint ptr %call16 to i32
  br label %exit

if.end20:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  %interface21 = getelementptr inbounds %struct.iowarrior, ptr %1, i32 0, i32 2
  %14 = ptrtoint ptr %interface21 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %interface21, align 4
  %parent.i.i = getelementptr inbounds %struct.usb_interface, ptr %15, i32 0, i32 7, i32 1
  %16 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %parent.i.i, align 8
  %add.ptr.i.i229 = getelementptr i8, ptr %17, i32 -128
  %18 = ptrtoint ptr %add.ptr.i.i229 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %add.ptr.i.i229, align 8
  %shl.i.i = shl i32 %19, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %cur_altsetting.i = getelementptr inbounds %struct.usb_interface, ptr %15, i32 0, i32 1
  %20 = ptrtoint ptr %cur_altsetting.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cur_altsetting.i, align 4
  %bInterfaceNumber.i = getelementptr inbounds %struct.usb_interface_descriptor, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %bInterfaceNumber.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %bInterfaceNumber.i, align 2
  %conv5.i = zext i8 %23 to i16
  %conv6.i = trunc i32 %count to i16
  %call7.i = tail call i32 @usb_control_msg(ptr noundef %add.ptr.i.i229, i32 noundef %or.i, i8 noundef zeroext 9, i8 noundef zeroext 33, i16 noundef zeroext 512, i16 noundef zeroext %conv5.i, ptr noundef %call16, i16 noundef zeroext %conv6.i, i32 noundef 1000) #12
  tail call void @kfree(ptr noundef %call16) #12
  br label %exit

sw.bb23:                                          ; preds = %if.end14.sw.bb23_crit_edge, %if.end14.sw.bb23_crit_edge261, %if.end14.sw.bb23_crit_edge262, %if.end14.sw.bb23_crit_edge263, %if.end14.sw.bb23_crit_edge264
  %write_busy = getelementptr inbounds %struct.iowarrior, ptr %1, i32 0, i32 12
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %write_busy, i32 noundef 4) #12
  %24 = ptrtoint ptr %write_busy to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %write_busy, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %25)
  %cmp25 = icmp eq i32 %25, 4
  br i1 %cmp25, label %if.then27, label %sw.bb23.if.end72_crit_edge

sw.bb23.if.end72_crit_edge:                       ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end72

if.then27:                                        ; preds = %sw.bb23
  %f_flags = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 7
  %26 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %f_flags, align 4
  %and = and i32 %27, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool28.not = icmp eq i32 %and, 0
  br i1 %tobool28.not, label %if.else, label %if.then27.exit_crit_edge

if.then27.exit_crit_edge:                         ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit

if.else:                                          ; preds = %if.then27
  tail call void @__might_sleep(ptr noundef nonnull @.str.8, i32 noundef 396) #12
  %28 = ptrtoint ptr %present to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %present, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool37.not = icmp eq i32 %29, 0
  br i1 %tobool37.not, label %if.else.exit_crit_edge, label %lor.lhs.false

if.else.exit_crit_edge:                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit

lor.lhs.false:                                    ; preds = %if.else
  %call.i.i217 = tail call zeroext i1 @__kasan_check_read(ptr noundef %write_busy, i32 noundef 4) #12
  %30 = ptrtoint ptr %write_busy to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %write_busy, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %31)
  %cmp40 = icmp slt i32 %31, 4
  br i1 %cmp40, label %lor.lhs.false.if.end63_crit_edge, label %if.then42

lor.lhs.false.if.end63_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end63

if.then42:                                        ; preds = %lor.lhs.false
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #12
  %32 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #12
  %write_wait = getelementptr inbounds %struct.iowarrior, ptr %1, i32 0, i32 11
  %call44253 = call i32 @prepare_to_wait_event(ptr noundef %write_wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #12
  %33 = ptrtoint ptr %present to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %present, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool46.not254 = icmp eq i32 %34, 0
  br i1 %tobool46.not254, label %if.then42.if.end59.thread244_crit_edge, label %if.then42.lor.lhs.false47_crit_edge

if.then42.lor.lhs.false47_crit_edge:              ; preds = %if.then42
  br label %lor.lhs.false47

if.then42.if.end59.thread244_crit_edge:           ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end59.thread244

lor.lhs.false47:                                  ; preds = %cleanup.lor.lhs.false47_crit_edge, %if.then42.lor.lhs.false47_crit_edge
  %call44255 = phi i32 [ %call44, %cleanup.lor.lhs.false47_crit_edge ], [ %call44253, %if.then42.lor.lhs.false47_crit_edge ]
  %call.i.i218 = call zeroext i1 @__kasan_check_read(ptr noundef %write_busy, i32 noundef 4) #12
  %35 = ptrtoint ptr %write_busy to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %write_busy, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %36)
  %cmp50 = icmp slt i32 %36, 4
  br i1 %cmp50, label %lor.lhs.false47.if.end59.thread244_crit_edge, label %if.end53

lor.lhs.false47.if.end59.thread244_crit_edge:     ; preds = %lor.lhs.false47
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end59.thread244

if.end53:                                         ; preds = %lor.lhs.false47
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44255)
  %tobool54.not = icmp eq i32 %call44255, 0
  br i1 %tobool54.not, label %cleanup, label %if.end59

cleanup:                                          ; preds = %if.end53
  call void @schedule() #12
  %call44 = call i32 @prepare_to_wait_event(ptr noundef %write_wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #12
  %37 = ptrtoint ptr %present to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %present, align 4
  %tobool46.not = icmp eq i32 %38, 0
  br i1 %tobool46.not, label %cleanup.if.end59.thread244_crit_edge, label %cleanup.lor.lhs.false47_crit_edge

cleanup.lor.lhs.false47_crit_edge:                ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false47

cleanup.if.end59.thread244_crit_edge:             ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end59.thread244

if.end59.thread244:                               ; preds = %cleanup.if.end59.thread244_crit_edge, %lor.lhs.false47.if.end59.thread244_crit_edge, %if.then42.if.end59.thread244_crit_edge
  call void @finish_wait(ptr noundef %write_wait, ptr noundef nonnull %__wq_entry) #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #12
  br label %if.end63

if.end59:                                         ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #12
  br label %exit

if.end63:                                         ; preds = %if.end59.thread244, %lor.lhs.false.if.end63_crit_edge
  %39 = ptrtoint ptr %present to i32
  call void @__asan_load4_noabort(i32 %39)
  %.pr = load i32, ptr %present, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool65.not = icmp eq i32 %.pr, 0
  br i1 %tobool65.not, label %if.end63.exit_crit_edge, label %if.end67

if.end63.exit_crit_edge:                          ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit

if.end67:                                         ; preds = %if.end63
  %opened = getelementptr inbounds %struct.iowarrior, ptr %1, i32 0, i32 17
  %40 = ptrtoint ptr %opened to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %opened, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool68.not = icmp eq i32 %41, 0
  br i1 %tobool68.not, label %if.end67.exit_crit_edge, label %if.end67.if.end72_crit_edge

if.end67.if.end72_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end72

if.end67.exit_crit_edge:                          ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit

if.end72:                                         ; preds = %if.end67.if.end72_crit_edge, %sw.bb23.if.end72_crit_edge
  %call.i.i219 = call zeroext i1 @__kasan_check_write(ptr noundef %write_busy, i32 noundef 4) #12
  call void @llvm.prefetch.p0(ptr %write_busy, i32 1, i32 3, i32 1) #12
  %42 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %write_busy, ptr %write_busy, i32 1, ptr elementtype(i32) %write_busy) #12, !srcloc !135
  %call74 = call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #12
  %tobool75.not = icmp eq ptr %call74, null
  br i1 %tobool75.not, label %if.end72.error_no_urb_crit_edge, label %if.end77

if.end72.error_no_urb_crit_edge:                  ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #14
  br label %error_no_urb

if.end77:                                         ; preds = %if.end72
  %udev = getelementptr inbounds %struct.iowarrior, ptr %1, i32 0, i32 1
  %43 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %udev, align 4
  %45 = ptrtoint ptr %report_size to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %report_size, align 4
  %transfer_dma = getelementptr inbounds %struct.urb, ptr %call74, i32 0, i32 15
  %call79 = call ptr @usb_alloc_coherent(ptr noundef %44, i32 noundef %46, i32 noundef 3264, ptr noundef %transfer_dma) #12
  %tobool80.not = icmp eq ptr %call79, null
  br i1 %tobool80.not, label %if.then81, label %if.end100

if.then81:                                        ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iowarrior_write.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iowarrior_write, %if.then94)) #12
          to label %error_no_buffer [label %if.then94], !srcloc !132

if.then94:                                        ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #14
  %interface95 = getelementptr inbounds %struct.iowarrior, ptr %1, i32 0, i32 2
  %47 = ptrtoint ptr %interface95 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %interface95, align 4
  %dev96 = getelementptr inbounds %struct.usb_interface, ptr %48, i32 0, i32 7
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @iowarrior_write.__UNIQUE_ID_ddebug240, ptr noundef %dev96, ptr noundef nonnull @.str.34) #12
  br label %error_no_buffer

if.end100:                                        ; preds = %if.end77
  %49 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %udev, align 4
  %int_out_endpoint = getelementptr inbounds %struct.iowarrior, ptr %1, i32 0, i32 4
  %51 = ptrtoint ptr %int_out_endpoint to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %int_out_endpoint, align 4
  %bEndpointAddress = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %52, i32 0, i32 2
  %53 = ptrtoint ptr %bEndpointAddress to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %bEndpointAddress, align 1
  %conv103 = zext i8 %54 to i32
  %55 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %50, align 8
  %shl.i = shl i32 %56, 8
  %shl1.i = shl nuw nsw i32 %conv103, 15
  %or.i230 = or i32 %shl1.i, %shl.i
  %or = or i32 %or.i230, 1073741824
  %57 = ptrtoint ptr %report_size to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %report_size, align 4
  %bInterval = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %52, i32 0, i32 5
  %59 = ptrtoint ptr %bInterval to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %bInterval, align 1
  %conv107 = zext i8 %60 to i32
  %dev1.i = getelementptr inbounds %struct.urb, ptr %call74, i32 0, i32 8
  %61 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %50, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %call74, i32 0, i32 10
  %62 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %or, ptr %pipe2.i, align 4
  %transfer_buffer3.i = getelementptr inbounds %struct.urb, ptr %call74, i32 0, i32 14
  %63 = ptrtoint ptr %transfer_buffer3.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %call79, ptr %transfer_buffer3.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %call74, i32 0, i32 19
  %64 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %58, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %call74, i32 0, i32 28
  %65 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr @iowarrior_write_callback, ptr %complete.i, align 4
  %context4.i = getelementptr inbounds %struct.urb, ptr %call74, i32 0, i32 27
  %66 = ptrtoint ptr %context4.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %1, ptr %context4.i, align 4
  %speed.i = getelementptr inbounds %struct.usb_device, ptr %50, i32 0, i32 4
  %67 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %speed.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %68)
  %cmp.i231 = icmp eq i32 %68, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %68)
  %cmp6.i = icmp ugt i32 %68, 4
  %or.cond.i = or i1 %cmp.i231, %cmp6.i
  br i1 %or.cond.i, label %if.then.i233, label %if.end100.usb_fill_int_urb.exit_crit_edge

if.end100.usb_fill_int_urb.exit_crit_edge:        ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #14
  br label %usb_fill_int_urb.exit

if.then.i233:                                     ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #14
  %69 = call i32 @llvm.smax.i32(i32 %conv107, i32 1) #12
  %70 = call i32 @llvm.umin.i32(i32 %69, i32 16) #12
  %sub.i = add nsw i32 %70, -1
  %shl.i232 = shl nuw nsw i32 1, %sub.i
  br label %usb_fill_int_urb.exit

usb_fill_int_urb.exit:                            ; preds = %if.then.i233, %if.end100.usb_fill_int_urb.exit_crit_edge
  %interval.sink.i = phi i32 [ %shl.i232, %if.then.i233 ], [ %conv107, %if.end100.usb_fill_int_urb.exit_crit_edge ]
  %71 = getelementptr inbounds %struct.urb, ptr %call74, i32 0, i32 25
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %interval.sink.i, ptr %71, align 4
  %start_frame.i = getelementptr inbounds %struct.urb, ptr %call74, i32 0, i32 23
  %73 = ptrtoint ptr %start_frame.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 -1, ptr %start_frame.i, align 4
  %transfer_flags = getelementptr inbounds %struct.urb, ptr %call74, i32 0, i32 13
  %74 = ptrtoint ptr %transfer_flags to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %transfer_flags, align 4
  %or108 = or i32 %75, 4
  store i32 %or108, ptr %transfer_flags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp9.i.i = icmp slt i32 %count, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %usb_fill_int_urb.exit
  %.b71.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i, label %land.rhs16.i.i.error_crit_edge, label %if.then27.i.i, !prof !133

land.rhs16.i.i.error_crit_edge:                   ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %error

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.30, i32 noundef 230, i32 noundef 9, ptr noundef null) #12
  br label %error

if.then.i.i.i:                                    ; preds = %usb_fill_int_urb.exit
  call void @__check_object_size(ptr noundef nonnull %call79, i32 noundef %count, i1 noundef zeroext false) #12
  call void @__might_fault(ptr noundef nonnull @.str.32, i32 noundef 156) #12
  %call.i.i223 = call zeroext i1 @should_fail_usercopy() #12
  br i1 %call.i.i223, label %if.then.i.i.i.if.end.i.i_crit_edge, label %land.lhs.true.i.i

if.then.i.i.i.if.end.i.i_crit_edge:               ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i.i.i
  %76 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %user_buffer, i32 %count, i32 -1226833920) #19, !srcloc !136
  %asmresult.i.i = extractvalue { i32, i32 } %76, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !133

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call79, i32 noundef %count) #12
  %77 = call i32 @llvm.read_register.i32(metadata !121) #12
  %and.i.i.i.i.i.i = and i32 %77, -16384
  %78 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %78, i32 0, i32 4
  %79 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #10, !srcloc !137
  %and.i.i.i.i = and i32 %79, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #12, !srcloc !138
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !139
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %call79, ptr noundef %user_buffer, i32 noundef %count) #12
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %79) #12, !srcloc !138
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !139
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %if.then.i.i.i.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %count, %if.then.i.i.i.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %count, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end112, label %if.then11.i.i, !prof !133

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i = sub i32 %count, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %call79, i32 %sub.i.i
  %80 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %error

if.end112:                                        ; preds = %if.end.i.i
  %submitted = getelementptr inbounds %struct.iowarrior, ptr %1, i32 0, i32 21
  call void @usb_anchor_urb(ptr noundef nonnull %call74, ptr noundef %submitted) #12
  %call113 = call i32 @usb_submit_urb(ptr noundef nonnull %call74, i32 noundef 3264) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call113)
  %tobool114.not = icmp eq i32 %call113, 0
  br i1 %tobool114.not, label %if.end136, label %do.body116

do.body116:                                       ; preds = %if.end112
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iowarrior_write.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iowarrior_write, %if.then128)) #12
          to label %do.end135 [label %if.then128], !srcloc !132

if.then128:                                       ; preds = %do.body116
  call void @__sanitizer_cov_trace_pc() #14
  %interface129 = getelementptr inbounds %struct.iowarrior, ptr %1, i32 0, i32 2
  %81 = ptrtoint ptr %interface129 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %interface129, align 4
  %dev130 = getelementptr inbounds %struct.usb_interface, ptr %82, i32 0, i32 7
  %call.i.i227 = call zeroext i1 @__kasan_check_read(ptr noundef %write_busy, i32 noundef 4) #12
  %83 = ptrtoint ptr %write_busy to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load volatile i32, ptr %write_busy, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @iowarrior_write.__UNIQUE_ID_ddebug241, ptr noundef %dev130, ptr noundef nonnull @.str.35, i32 noundef %call113, i32 noundef %84) #12
  br label %do.end135

do.end135:                                        ; preds = %if.then128, %do.body116
  call void @usb_unanchor_urb(ptr noundef nonnull %call74) #12
  br label %error

if.end136:                                        ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #14
  call void @usb_free_urb(ptr noundef nonnull %call74) #12
  br label %exit

do.end139:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  %conv15 = zext i16 %11 to i32
  %interface140 = getelementptr inbounds %struct.iowarrior, ptr %1, i32 0, i32 2
  %85 = ptrtoint ptr %interface140 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %interface140, align 4
  %dev141 = getelementptr inbounds %struct.usb_interface, ptr %86, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev141, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.33, i32 noundef %conv15) #16
  br label %exit

error:                                            ; preds = %do.end135, %if.then11.i.i, %if.then27.i.i, %land.rhs16.i.i.error_crit_edge
  %retval1.0 = phi i32 [ %call113, %do.end135 ], [ -14, %if.then11.i.i ], [ -14, %if.then27.i.i ], [ -14, %land.rhs16.i.i.error_crit_edge ]
  %87 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %udev, align 4
  %89 = ptrtoint ptr %report_size to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %report_size, align 4
  %91 = ptrtoint ptr %transfer_dma to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %transfer_dma, align 4
  call void @usb_free_coherent(ptr noundef %88, i32 noundef %90, ptr noundef nonnull %call79, i32 noundef %92) #12
  br label %error_no_buffer

error_no_buffer:                                  ; preds = %error, %if.then94, %if.then81
  %retval1.1 = phi i32 [ %retval1.0, %error ], [ -12, %if.then94 ], [ -12, %if.then81 ]
  call void @usb_free_urb(ptr noundef nonnull %call74) #12
  br label %error_no_urb

error_no_urb:                                     ; preds = %error_no_buffer, %if.end72.error_no_urb_crit_edge
  %retval1.2 = phi i32 [ %retval1.1, %error_no_buffer ], [ -12, %if.end72.error_no_urb_crit_edge ]
  %call.i.i228 = call zeroext i1 @__kasan_check_write(ptr noundef %write_busy, i32 noundef 4) #12
  call void @llvm.prefetch.p0(ptr %write_busy, i32 1, i32 3, i32 1) #12
  %93 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %write_busy, ptr %write_busy, i32 1, ptr elementtype(i32) %write_busy) #12, !srcloc !140
  %write_wait148 = getelementptr inbounds %struct.iowarrior, ptr %1, i32 0, i32 11
  call void @__wake_up(ptr noundef %write_wait148, i32 noundef 1, i32 noundef 1, ptr noundef null) #12
  br label %exit

exit:                                             ; preds = %error_no_urb, %do.end139, %if.end136, %if.end67.exit_crit_edge, %if.end63.exit_crit_edge, %if.end59, %if.else.exit_crit_edge, %if.then27.exit_crit_edge, %if.end20, %if.then18, %if.end10.exit_crit_edge, %do.end.exit_crit_edge, %entry.exit_crit_edge
  %retval1.3 = phi i32 [ -14, %do.end139 ], [ %retval1.2, %error_no_urb ], [ %count, %if.end136 ], [ %13, %if.then18 ], [ %call7.i, %if.end20 ], [ -19, %entry.exit_crit_edge ], [ 0, %do.end.exit_crit_edge ], [ -22, %if.end10.exit_crit_edge ], [ -11, %if.then27.exit_crit_edge ], [ -85, %if.end59 ], [ -19, %if.end63.exit_crit_edge ], [ -19, %if.end67.exit_crit_edge ], [ -19, %if.else.exit_crit_edge ]
  call void @mutex_unlock(ptr noundef %1) #12
  ret i32 %retval1.3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iowarrior_poll(ptr noundef %file, ptr noundef %wait) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %present = getelementptr inbounds %struct.iowarrior, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %present to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %present, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %read_wait = getelementptr inbounds %struct.iowarrior, ptr %1, i32 0, i32 10
  %tobool.not.i = icmp eq ptr %wait, null
  br i1 %tobool.not.i, label %if.end.if.end4_crit_edge, label %land.lhs.true.i

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4

land.lhs.true.i:                                  ; preds = %if.end
  %4 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wait, align 4
  %tobool1.not.i = icmp eq ptr %5, null
  %tobool3.not.i = icmp eq ptr %read_wait, null
  %or.cond.i = or i1 %tobool3.not.i, %tobool1.not.i
  br i1 %or.cond.i, label %land.lhs.true.i.land.lhs.true.i27_crit_edge, label %if.then.i

land.lhs.true.i.land.lhs.true.i27_crit_edge:      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true.i27

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void %5(ptr noundef %file, ptr noundef nonnull %read_wait, ptr noundef nonnull %wait) #12
  br label %land.lhs.true.i27

land.lhs.true.i27:                                ; preds = %if.then.i, %land.lhs.true.i.land.lhs.true.i27_crit_edge
  %write_wait30 = getelementptr inbounds %struct.iowarrior, ptr %1, i32 0, i32 11
  %6 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %wait, align 4
  %tobool1.not.i24 = icmp eq ptr %7, null
  %tobool3.not.i25 = icmp eq ptr %write_wait30, null
  %or.cond.i26 = or i1 %tobool3.not.i25, %tobool1.not.i24
  br i1 %or.cond.i26, label %land.lhs.true.i27.poll_wait.exit29_crit_edge, label %if.then.i28

land.lhs.true.i27.poll_wait.exit29_crit_edge:     ; preds = %land.lhs.true.i27
  call void @__sanitizer_cov_trace_pc() #14
  br label %poll_wait.exit29

if.then.i28:                                      ; preds = %land.lhs.true.i27
  call void @__sanitizer_cov_trace_pc() #14
  tail call void %7(ptr noundef %file, ptr noundef nonnull %write_wait30, ptr noundef nonnull %wait) #12
  br label %poll_wait.exit29

poll_wait.exit29:                                 ; preds = %if.then.i28, %land.lhs.true.i27.poll_wait.exit29_crit_edge
  %8 = ptrtoint ptr %present to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pr = load i32, ptr %present, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool2.not = icmp eq i32 %.pr, 0
  br i1 %tobool2.not, label %poll_wait.exit29.cleanup_crit_edge, label %poll_wait.exit29.if.end4_crit_edge

poll_wait.exit29.if.end4_crit_edge:               ; preds = %poll_wait.exit29
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4

poll_wait.exit29.cleanup_crit_edge:               ; preds = %poll_wait.exit29
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end4:                                          ; preds = %poll_wait.exit29.if.end4_crit_edge, %if.end.if.end4_crit_edge
  %read_idx1.i = getelementptr inbounds %struct.iowarrior, ptr %1, i32 0, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %read_idx1.i, i32 noundef 4) #12
  %9 = ptrtoint ptr %read_idx1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %read_idx1.i, align 4
  %intr_idx2.i = getelementptr inbounds %struct.iowarrior, ptr %1, i32 0, i32 14
  %call.i.i6.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %intr_idx2.i, i32 noundef 4) #12
  %11 = ptrtoint ptr %intr_idx2.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %intr_idx2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %12)
  %cmp.i = icmp eq i32 %10, %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %10)
  %cmp.not32 = icmp eq i32 %10, -1
  %cmp.not = or i1 %cmp.not32, %cmp.i
  %spec.select = select i1 %cmp.not, i32 0, i32 65
  %write_busy = getelementptr inbounds %struct.iowarrior, ptr %1, i32 0, i32 12
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %write_busy, i32 noundef 4) #12
  %13 = ptrtoint ptr %write_busy to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %write_busy, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %14)
  %cmp8 = icmp slt i32 %14, 4
  %or10 = or i32 %spec.select, 260
  %mask.1 = select i1 %cmp8, i32 %or10, i32 %spec.select
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %poll_wait.exit29.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %mask.1, %if.end4 ], [ 24, %entry.cleanup_crit_edge ], [ 24, %poll_wait.exit29.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iowarrior_ioctl(ptr nocapture noundef readonly %file, i32 noundef %cmd, i32 noundef %arg) #2 align 64 {
entry:
  %info = alloca %struct.iowarrior_info, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %report_size = getelementptr inbounds %struct.iowarrior, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %report_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %report_size, align 4
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %3, i32 noundef 3520) #17
  %tobool2.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end4:                                          ; preds = %if.end
  tail call void @mutex_lock_nested(ptr noundef nonnull %1, i32 noundef 0) #12
  %present = getelementptr inbounds %struct.iowarrior, ptr %1, i32 0, i32 16
  %4 = ptrtoint ptr %present to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %present, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool5.not = icmp eq i32 %5, 0
  br i1 %tobool5.not, label %if.end4.error_out_crit_edge, label %do.body

if.end4.error_out_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %error_out

do.body:                                          ; preds = %if.end4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iowarrior_ioctl.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iowarrior_ioctl, %if.then12)) #12
          to label %do.end [label %if.then12], !srcloc !132

if.then12:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %interface = getelementptr inbounds %struct.iowarrior, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %interface, align 4
  %dev13 = getelementptr inbounds %struct.usb_interface, ptr %7, i32 0, i32 7
  %minor = getelementptr inbounds %struct.iowarrior, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %minor to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %minor, align 4
  %conv = zext i8 %9 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @iowarrior_ioctl.__UNIQUE_ID_ddebug242, ptr noundef %dev13, ptr noundef nonnull @.str.40, i32 noundef %conv, i32 noundef %cmd, i32 noundef %arg) #12
  br label %do.end

do.end:                                           ; preds = %if.then12, %do.body
  %10 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.55)
  switch i32 %cmd, label %do.end.error_out_crit_edge [
    i32 1074053121, label %sw.bb
    i32 1074053122, label %sw.bb58
    i32 -2144813053, label %sw.bb72
  ]

do.end.error_out_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %error_out

sw.bb:                                            ; preds = %do.end
  %product_id = getelementptr inbounds %struct.iowarrior, ptr %1, i32 0, i32 20
  %11 = ptrtoint ptr %product_id to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %product_id, align 4
  %13 = zext i16 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.56)
  switch i16 %12, label %if.else49 [
    i16 5377, label %sw.bb.if.then36_crit_edge
    i16 5514, label %sw.bb.if.then36_crit_edge215
    i16 5393, label %sw.bb.if.then36_crit_edge216
    i16 5394, label %sw.bb.if.then36_crit_edge217
    i16 5376, label %sw.bb.if.then36_crit_edge218
  ]

sw.bb.if.then36_crit_edge218:                     ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then36

sw.bb.if.then36_crit_edge217:                     ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then36

sw.bb.if.then36_crit_edge216:                     ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then36

sw.bb.if.then36_crit_edge215:                     ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then36

sw.bb.if.then36_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then36

if.then36:                                        ; preds = %sw.bb.if.then36_crit_edge, %sw.bb.if.then36_crit_edge215, %sw.bb.if.then36_crit_edge216, %sw.bb.if.then36_crit_edge217, %sw.bb.if.then36_crit_edge218
  %14 = inttoptr i32 %arg to ptr
  %15 = ptrtoint ptr %report_size to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %report_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp9.i.i = icmp slt i32 %16, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %if.then36
  %.b71.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i, label %land.rhs16.i.i.error_out_crit_edge, label %if.then27.i.i, !prof !133

land.rhs16.i.i.error_out_crit_edge:               ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %error_out

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.30, i32 noundef 230, i32 noundef 9, ptr noundef null) #12
  br label %error_out

if.then.i.i.i:                                    ; preds = %if.then36
  tail call void @__check_object_size(ptr noundef nonnull %call9.i.i, i32 noundef %16, i1 noundef zeroext false) #12
  tail call void @__might_fault(ptr noundef nonnull @.str.32, i32 noundef 156) #12
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #12
  br i1 %call.i.i, label %if.then.i.i.i.if.end.i.i_crit_edge, label %land.lhs.true.i.i

if.then.i.i.i.if.end.i.i_crit_edge:               ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i.i.i
  %17 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %14, i32 %16, i32 -1226833920) #19, !srcloc !136
  %asmresult.i.i = extractvalue { i32, i32 } %17, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !133

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call9.i.i, i32 noundef %16) #12
  %18 = tail call i32 @llvm.read_register.i32(metadata !121) #12
  %and.i.i.i.i.i.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 4
  %20 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #10, !srcloc !137
  %and.i.i.i.i = and i32 %20, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #12, !srcloc !138
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !139
  %call1.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef nonnull %call9.i.i, ptr noundef %14, i32 noundef %16) #12
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %20) #12, !srcloc !138
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !139
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %if.then.i.i.i.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %16, %if.then.i.i.i.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %16, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.else, label %if.then11.i.i, !prof !133

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i = sub i32 %16, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %call9.i.i, i32 %sub.i.i
  %21 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %error_out

if.else:                                          ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %interface41 = getelementptr inbounds %struct.iowarrior, ptr %1, i32 0, i32 2
  %22 = ptrtoint ptr %interface41 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %interface41, align 4
  %24 = ptrtoint ptr %report_size to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %report_size, align 4
  %parent.i.i = getelementptr inbounds %struct.usb_interface, ptr %23, i32 0, i32 7, i32 1
  %26 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %parent.i.i, align 8
  %add.ptr.i.i195 = getelementptr i8, ptr %27, i32 -128
  %28 = ptrtoint ptr %add.ptr.i.i195 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %add.ptr.i.i195, align 8
  %shl.i.i = shl i32 %29, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %cur_altsetting.i = getelementptr inbounds %struct.usb_interface, ptr %23, i32 0, i32 1
  %30 = ptrtoint ptr %cur_altsetting.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %cur_altsetting.i, align 4
  %bInterfaceNumber.i = getelementptr inbounds %struct.usb_interface_descriptor, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %bInterfaceNumber.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %bInterfaceNumber.i, align 2
  %conv5.i = zext i8 %33 to i16
  %conv6.i = trunc i32 %25 to i16
  %call7.i = tail call i32 @usb_control_msg(ptr noundef %add.ptr.i.i195, i32 noundef %or.i, i8 noundef zeroext 9, i8 noundef zeroext 33, i16 noundef zeroext 512, i16 noundef zeroext %conv5.i, ptr noundef nonnull %call9.i.i, i16 noundef zeroext %conv6.i, i32 noundef 1000) #12
  %34 = tail call i32 @llvm.smin.i32(i32 %call7.i, i32 0)
  br label %error_out

if.else49:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  %conv15 = zext i16 %12 to i32
  %interface53 = getelementptr inbounds %struct.iowarrior, ptr %1, i32 0, i32 2
  %35 = ptrtoint ptr %interface53 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %interface53, align 4
  %dev54 = getelementptr inbounds %struct.usb_interface, ptr %36, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev54, ptr noundef nonnull @.str.41, i32 noundef %conv15) #16
  br label %error_out

sw.bb58:                                          ; preds = %do.end
  %udev = getelementptr inbounds %struct.iowarrior, ptr %1, i32 0, i32 1
  %37 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %udev, align 4
  %interface59 = getelementptr inbounds %struct.iowarrior, ptr %1, i32 0, i32 2
  %39 = ptrtoint ptr %interface59 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %interface59, align 4
  %cur_altsetting = getelementptr inbounds %struct.usb_interface, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %cur_altsetting to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %cur_altsetting, align 4
  %43 = ptrtoint ptr %report_size to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %report_size, align 4
  %45 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %38, align 8
  %shl.i.i196 = shl i32 %46, 8
  %or1.i = or i32 %shl.i.i196, -2147483520
  %bInterfaceNumber.i197 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %42, i32 0, i32 2
  %47 = ptrtoint ptr %bInterfaceNumber.i197 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %bInterfaceNumber.i197, align 2
  %conv4.i = zext i8 %48 to i16
  %conv5.i198 = trunc i32 %44 to i16
  %call6.i = tail call i32 @usb_control_msg(ptr noundef %38, i32 noundef %or1.i, i8 noundef zeroext 1, i8 noundef zeroext -95, i16 noundef zeroext 256, i16 noundef zeroext %conv4.i, ptr noundef nonnull %call9.i.i, i16 noundef zeroext %conv5.i198, i32 noundef 5000) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp62 = icmp slt i32 %call6.i, 0
  br i1 %cmp62, label %sw.bb58.error_out_crit_edge, label %if.else65

sw.bb58.error_out_crit_edge:                      ; preds = %sw.bb58
  call void @__sanitizer_cov_trace_pc() #14
  br label %error_out

if.else65:                                        ; preds = %sw.bb58
  %49 = inttoptr i32 %arg to ptr
  %50 = ptrtoint ptr %report_size to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %report_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %cmp9.i.i160 = icmp slt i32 %51, 0
  br i1 %cmp9.i.i160, label %land.rhs16.i.i163, label %if.then.i.i.i166

land.rhs16.i.i163:                                ; preds = %if.else65
  %.b71.i.i162 = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i162, label %land.rhs16.i.i163.error_out_crit_edge, label %if.then27.i.i164, !prof !133

land.rhs16.i.i163.error_out_crit_edge:            ; preds = %land.rhs16.i.i163
  call void @__sanitizer_cov_trace_pc() #14
  br label %error_out

if.then27.i.i164:                                 ; preds = %land.rhs16.i.i163
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.30, i32 noundef 230, i32 noundef 9, ptr noundef null) #12
  br label %error_out

if.then.i.i.i166:                                 ; preds = %if.else65
  tail call void @__check_object_size(ptr noundef nonnull %call9.i.i, i32 noundef %51, i1 noundef zeroext true) #12
  tail call void @__might_fault(ptr noundef nonnull @.str.32, i32 noundef 174) #12
  %call.i.i167 = tail call zeroext i1 @should_fail_usercopy() #12
  br i1 %call.i.i167, label %if.then.i.i.i166.copy_to_user.exit_crit_edge, label %if.end.i.i171

if.then.i.i.i166.copy_to_user.exit_crit_edge:     ; preds = %if.then.i.i.i166
  call void @__sanitizer_cov_trace_pc() #14
  br label %copy_to_user.exit

if.end.i.i171:                                    ; preds = %if.then.i.i.i166
  %52 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %49, i32 %51, i32 -1226833920) #19, !srcloc !134
  %asmresult.i.i169 = extractvalue { i32, i32 } %52, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i169)
  %cmp.i6.i170 = icmp eq i32 %asmresult.i.i169, 0
  br i1 %cmp.i6.i170, label %if.then2.i.i, label %if.end.i.i171.copy_to_user.exit_crit_edge

if.end.i.i171.copy_to_user.exit_crit_edge:        ; preds = %if.end.i.i171
  call void @__sanitizer_cov_trace_pc() #14
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i171
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i.i172 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull %call9.i.i, i32 noundef %51) #12
  %call.i12.i.i = tail call i32 @arm_copy_to_user(ptr noundef %49, ptr noundef nonnull %call9.i.i, i32 noundef %51) #12
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i171.copy_to_user.exit_crit_edge, %if.then.i.i.i166.copy_to_user.exit_crit_edge
  %n.addr.0.i173 = phi i32 [ %51, %if.then.i.i.i166.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %51, %if.end.i.i171.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i173)
  %tobool68.not = icmp eq i32 %n.addr.0.i173, 0
  %spec.select = select i1 %tobool68.not, i32 0, i32 -14
  br label %error_out

sw.bb72:                                          ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %info) #12
  %udev73 = getelementptr inbounds %struct.iowarrior, ptr %1, i32 0, i32 1
  %53 = ptrtoint ptr %udev73 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %udev73, align 4
  %actconfig = getelementptr inbounds %struct.usb_device, ptr %54, i32 0, i32 20
  %55 = ptrtoint ptr %actconfig to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %actconfig, align 4
  %57 = getelementptr inbounds i8, ptr %info, i32 16
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 0, ptr %57, align 4
  %idVendor = getelementptr inbounds %struct.usb_device, ptr %54, i32 0, i32 16, i32 7
  %59 = ptrtoint ptr %idVendor to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %idVendor, align 8
  %61 = tail call i16 @llvm.bswap.i16(i16 %60)
  %conv75 = zext i16 %61 to i32
  %62 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %conv75, ptr %info, align 4
  %product_id76 = getelementptr inbounds %struct.iowarrior, ptr %1, i32 0, i32 20
  %63 = ptrtoint ptr %product_id76 to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %product_id76, align 4
  %conv77 = zext i16 %64 to i32
  %product = getelementptr inbounds %struct.iowarrior_info, ptr %info, i32 0, i32 1
  %65 = ptrtoint ptr %product to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %conv77, ptr %product, align 4
  %bcdDevice = getelementptr inbounds %struct.usb_device, ptr %54, i32 0, i32 16, i32 9
  %66 = ptrtoint ptr %bcdDevice to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %bcdDevice, align 4
  %68 = tail call i16 @llvm.bswap.i16(i16 %67)
  %conv80 = zext i16 %68 to i32
  %revision = getelementptr inbounds %struct.iowarrior_info, ptr %info, i32 0, i32 3
  %69 = ptrtoint ptr %revision to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %conv80, ptr %revision, align 4
  %speed = getelementptr inbounds %struct.usb_device, ptr %54, i32 0, i32 4
  %70 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %speed, align 4
  %speed82 = getelementptr inbounds %struct.iowarrior_info, ptr %info, i32 0, i32 4
  %72 = ptrtoint ptr %speed82 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %71, ptr %speed82, align 4
  %interface83 = getelementptr inbounds %struct.iowarrior, ptr %1, i32 0, i32 2
  %73 = ptrtoint ptr %interface83 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %interface83, align 4
  %cur_altsetting84 = getelementptr inbounds %struct.usb_interface, ptr %74, i32 0, i32 1
  %75 = ptrtoint ptr %cur_altsetting84 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %cur_altsetting84, align 4
  %bInterfaceNumber = getelementptr inbounds %struct.usb_interface_descriptor, ptr %76, i32 0, i32 2
  %77 = ptrtoint ptr %bInterfaceNumber to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %bInterfaceNumber, align 2
  %conv86 = zext i8 %78 to i32
  %if_num = getelementptr inbounds %struct.iowarrior_info, ptr %info, i32 0, i32 6
  %79 = ptrtoint ptr %if_num to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %conv86, ptr %if_num, align 4
  %80 = ptrtoint ptr %report_size to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %report_size, align 4
  %report_size88 = getelementptr inbounds %struct.iowarrior_info, ptr %info, i32 0, i32 7
  %82 = ptrtoint ptr %report_size88 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %81, ptr %report_size88, align 4
  %serial = getelementptr inbounds %struct.iowarrior_info, ptr %info, i32 0, i32 2
  %chip_serial = getelementptr inbounds %struct.iowarrior, ptr %1, i32 0, i32 18
  %83 = call ptr @memcpy(ptr %serial, ptr %chip_serial, i32 9)
  %cmp90 = icmp eq ptr %56, null
  br i1 %cmp90, label %sw.bb72.if.end96_crit_edge, label %if.else93

sw.bb72.if.end96_crit_edge:                       ; preds = %sw.bb72
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end96

if.else93:                                        ; preds = %sw.bb72
  call void @__sanitizer_cov_trace_pc() #14
  %bMaxPower = getelementptr inbounds %struct.usb_config_descriptor, ptr %56, i32 0, i32 7
  %84 = ptrtoint ptr %bMaxPower to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %bMaxPower, align 1
  %conv94 = zext i8 %85 to i32
  %mul = shl nuw nsw i32 %conv94, 1
  br label %if.end96

if.end96:                                         ; preds = %if.else93, %sw.bb72.if.end96_crit_edge
  %mul.sink = phi i32 [ %mul, %if.else93 ], [ -1, %sw.bb72.if.end96_crit_edge ]
  %86 = getelementptr inbounds %struct.iowarrior_info, ptr %info, i32 0, i32 5
  %87 = ptrtoint ptr %86 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %mul.sink, ptr %86, align 4
  %88 = inttoptr i32 %arg to ptr
  tail call void @__might_fault(ptr noundef nonnull @.str.32, i32 noundef 174) #12
  %call.i.i180 = tail call zeroext i1 @should_fail_usercopy() #12
  br i1 %call.i.i180, label %if.end96.copy_to_user.exit189.thread_crit_edge, label %if.end.i.i184

if.end96.copy_to_user.exit189.thread_crit_edge:   ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #14
  br label %copy_to_user.exit189.thread

if.end.i.i184:                                    ; preds = %if.end96
  %89 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %88, i32 40, i32 -1226833920) #19, !srcloc !134
  %asmresult.i.i182 = extractvalue { i32, i32 } %89, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i182)
  %cmp.i6.i183 = icmp eq i32 %asmresult.i.i182, 0
  br i1 %cmp.i6.i183, label %copy_to_user.exit189, label %if.end.i.i184.copy_to_user.exit189.thread_crit_edge

if.end.i.i184.copy_to_user.exit189.thread_crit_edge: ; preds = %if.end.i.i184
  call void @__sanitizer_cov_trace_pc() #14
  br label %copy_to_user.exit189.thread

copy_to_user.exit189:                             ; preds = %if.end.i.i184
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i.i185 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %info, i32 noundef 40) #12
  %call.i12.i.i186 = call i32 @arm_copy_to_user(ptr noundef %88, ptr noundef nonnull %info, i32 noundef 40) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i186)
  %tobool98.not = icmp eq i32 %call.i12.i.i186, 0
  %spec.select212 = select i1 %tobool98.not, i32 0, i32 -14
  br label %copy_to_user.exit189.thread

copy_to_user.exit189.thread:                      ; preds = %copy_to_user.exit189, %if.end.i.i184.copy_to_user.exit189.thread_crit_edge, %if.end96.copy_to_user.exit189.thread_crit_edge
  %90 = phi i32 [ -14, %if.end96.copy_to_user.exit189.thread_crit_edge ], [ -14, %if.end.i.i184.copy_to_user.exit189.thread_crit_edge ], [ %spec.select212, %copy_to_user.exit189 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %info) #12
  br label %error_out

error_out:                                        ; preds = %copy_to_user.exit189.thread, %copy_to_user.exit, %if.then27.i.i164, %land.rhs16.i.i163.error_out_crit_edge, %sw.bb58.error_out_crit_edge, %if.else49, %if.else, %if.then11.i.i, %if.then27.i.i, %land.rhs16.i.i.error_out_crit_edge, %do.end.error_out_crit_edge, %if.end4.error_out_crit_edge
  %retval1.1 = phi i32 [ %90, %copy_to_user.exit189.thread ], [ -22, %if.else49 ], [ -19, %if.end4.error_out_crit_edge ], [ %34, %if.else ], [ %call6.i, %sw.bb58.error_out_crit_edge ], [ -25, %do.end.error_out_crit_edge ], [ -14, %if.then11.i.i ], [ -14, %if.then27.i.i ], [ -14, %land.rhs16.i.i.error_out_crit_edge ], [ -14, %if.then27.i.i164 ], [ -14, %land.rhs16.i.i163.error_out_crit_edge ], [ %spec.select, %copy_to_user.exit ]
  call void @mutex_unlock(ptr noundef nonnull %1) #12
  call void @kfree(ptr noundef nonnull %call9.i.i) #12
  br label %cleanup

cleanup:                                          ; preds = %error_out, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval1.1, %error_out ], [ -19, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iowarrior_open(ptr nocapture noundef readonly %inode, ptr nocapture noundef writeonly %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %i_rdev.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 13
  %0 = ptrtoint ptr %i_rdev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i_rdev.i, align 8
  %and.i = and i32 %1, 1048575
  %call2 = tail call ptr @usb_find_interface(ptr noundef nonnull @iowarrior_driver, i32 noundef %and.i) #12
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.43, i32 noundef %and.i) #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %call2, i32 0, i32 7, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %tobool5.not = icmp eq ptr %3, null
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end7:                                          ; preds = %if.end
  tail call void @mutex_lock_nested(ptr noundef nonnull %3, i32 noundef 0) #12
  %opened = getelementptr inbounds %struct.iowarrior, ptr %3, i32 0, i32 17
  %4 = ptrtoint ptr %opened to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %opened, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool8.not = icmp eq i32 %5, 0
  br i1 %tobool8.not, label %if.end10, label %if.end7.out_crit_edge

if.end7.out_crit_edge:                            ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end10:                                         ; preds = %if.end7
  %int_in_urb = getelementptr inbounds %struct.iowarrior, ptr %3, i32 0, i32 6
  %6 = ptrtoint ptr %int_in_urb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %int_in_urb, align 4
  %call11 = tail call i32 @usb_submit_urb(ptr noundef %7, i32 noundef 3264) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp = icmp slt i32 %call11, 0
  br i1 %cmp, label %do.end15, label %if.end17

do.end15:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  %dev16 = getelementptr inbounds %struct.usb_interface, ptr %call2, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev16, ptr noundef nonnull @.str.45, i32 noundef %call11) #16
  br label %out

if.end17:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  %8 = ptrtoint ptr %opened to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %opened, align 4
  %inc = add i32 %9, 1
  store i32 %inc, ptr %opened, align 4
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %10 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %3, ptr %private_data, align 4
  br label %out

out:                                              ; preds = %if.end17, %do.end15, %if.end7.out_crit_edge
  %retval1.0 = phi i32 [ -14, %do.end15 ], [ 0, %if.end17 ], [ -16, %if.end7.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull %3) #12
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %retval1.0, %out ], [ -19, %do.end ], [ -19, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iowarrior_release(ptr nocapture noundef readnone %inode, ptr nocapture noundef readonly %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iowarrior_release.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iowarrior_release, %if.then5)) #12
          to label %do.end [label %if.then5], !srcloc !132

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %interface = getelementptr inbounds %struct.iowarrior, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %interface, align 4
  %dev6 = getelementptr inbounds %struct.usb_interface, ptr %3, i32 0, i32 7
  %minor = getelementptr inbounds %struct.iowarrior, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %minor to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %minor, align 4
  %conv = zext i8 %5 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @iowarrior_release.__UNIQUE_ID_ddebug243, ptr noundef %dev6, ptr noundef nonnull @.str.48, i32 noundef %conv) #12
  br label %do.end

do.end:                                           ; preds = %if.then5, %do.body
  tail call void @mutex_lock_nested(ptr noundef nonnull %1, i32 noundef 0) #12
  %opened = getelementptr inbounds %struct.iowarrior, ptr %1, i32 0, i32 17
  %6 = ptrtoint ptr %opened to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %opened, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp = icmp slt i32 %7, 1
  br i1 %cmp, label %if.then9, label %if.else

if.then9:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @mutex_unlock(ptr noundef nonnull %1) #12
  br label %cleanup

if.else:                                          ; preds = %do.end
  %8 = ptrtoint ptr %opened to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %opened, align 4
  %present = getelementptr inbounds %struct.iowarrior, ptr %1, i32 0, i32 16
  %9 = ptrtoint ptr %present to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %present, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool12.not = icmp eq i32 %10, 0
  br i1 %tobool12.not, label %if.else15, label %if.then13

if.then13:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %int_in_urb = getelementptr inbounds %struct.iowarrior, ptr %1, i32 0, i32 6
  %11 = ptrtoint ptr %int_in_urb to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %int_in_urb, align 4
  tail call void @usb_kill_urb(ptr noundef %12) #12
  %read_wait = getelementptr inbounds %struct.iowarrior, ptr %1, i32 0, i32 10
  tail call void @__wake_up(ptr noundef %read_wait, i32 noundef 1, i32 noundef 1, ptr noundef null) #12
  %write_wait = getelementptr inbounds %struct.iowarrior, ptr %1, i32 0, i32 11
  tail call void @__wake_up(ptr noundef %write_wait, i32 noundef 1, i32 noundef 1, ptr noundef null) #12
  tail call void @mutex_unlock(ptr noundef nonnull %1) #12
  br label %cleanup

if.else15:                                        ; preds = %if.else
  tail call void @mutex_unlock(ptr noundef nonnull %1) #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iowarrior_delete.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iowarrior_release, %if.then.i)) #12
          to label %iowarrior_delete.exit [label %if.then.i], !srcloc !132

if.then.i:                                        ; preds = %if.else15
  call void @__sanitizer_cov_trace_pc() #14
  %interface.i = getelementptr inbounds %struct.iowarrior, ptr %1, i32 0, i32 2
  %13 = ptrtoint ptr %interface.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %interface.i, align 4
  %dev3.i = getelementptr inbounds %struct.usb_interface, ptr %14, i32 0, i32 7
  %minor.i = getelementptr inbounds %struct.iowarrior, ptr %1, i32 0, i32 3
  %15 = ptrtoint ptr %minor.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %minor.i, align 4
  %conv.i = zext i8 %16 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @iowarrior_delete.__UNIQUE_ID_ddebug237, ptr noundef %dev3.i, ptr noundef nonnull @.str.48, i32 noundef %conv.i) #12
  br label %iowarrior_delete.exit

iowarrior_delete.exit:                            ; preds = %if.then.i, %if.else15
  %int_in_buffer.i = getelementptr inbounds %struct.iowarrior, ptr %1, i32 0, i32 7
  %17 = ptrtoint ptr %int_in_buffer.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %int_in_buffer.i, align 4
  tail call void @kfree(ptr noundef %18) #12
  %int_in_urb.i = getelementptr inbounds %struct.iowarrior, ptr %1, i32 0, i32 6
  %19 = ptrtoint ptr %int_in_urb.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %int_in_urb.i, align 4
  tail call void @usb_free_urb(ptr noundef %20) #12
  %read_queue.i = getelementptr inbounds %struct.iowarrior, ptr %1, i32 0, i32 9
  %21 = ptrtoint ptr %read_queue.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %read_queue.i, align 4
  tail call void @kfree(ptr noundef %22) #12
  %interface4.i = getelementptr inbounds %struct.iowarrior, ptr %1, i32 0, i32 2
  %23 = ptrtoint ptr %interface4.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %interface4.i, align 4
  tail call void @usb_put_intf(ptr noundef %24) #12
  tail call void @kfree(ptr noundef nonnull %1) #12
  br label %cleanup

cleanup:                                          ; preds = %iowarrior_delete.exit, %if.then13, %if.then9, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %entry.cleanup_crit_edge ], [ -19, %if.then9 ], [ 0, %if.then13 ], [ 0, %iowarrior_delete.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memdup_user(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_coherent(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iowarrior_write_callback(ptr nocapture noundef readonly %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %status1 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %0 = ptrtoint ptr %status1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %status1, align 4
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %2 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %context, align 4
  %4 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.57)
  switch i32 %1, label %do.body [
    i32 0, label %entry.if.end10_crit_edge
    i32 -2, label %entry.if.end10_crit_edge24
    i32 -104, label %entry.if.end10_crit_edge25
    i32 -108, label %entry.if.end10_crit_edge26
  ]

entry.if.end10_crit_edge26:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

entry.if.end10_crit_edge25:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

entry.if.end10_crit_edge24:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iowarrior_write_callback.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iowarrior_write_callback, %if.then8)) #12
          to label %if.end10 [label %if.then8], !srcloc !132

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %interface = getelementptr inbounds %struct.iowarrior, ptr %3, i32 0, i32 2
  %5 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %interface, align 4
  %dev9 = getelementptr inbounds %struct.usb_interface, ptr %6, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @iowarrior_write_callback.__UNIQUE_ID_ddebug236, ptr noundef %dev9, ptr noundef nonnull @.str.38, i32 noundef %1) #12
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %do.body, %entry.if.end10_crit_edge, %entry.if.end10_crit_edge24, %entry.if.end10_crit_edge25, %entry.if.end10_crit_edge26
  %dev11 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %7 = ptrtoint ptr %dev11 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev11, align 4
  %transfer_buffer_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 19
  %9 = ptrtoint ptr %transfer_buffer_length to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %transfer_buffer_length, align 4
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %11 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %transfer_buffer, align 4
  %transfer_dma = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 15
  %13 = ptrtoint ptr %transfer_dma to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %transfer_dma, align 4
  tail call void @usb_free_coherent(ptr noundef %8, i32 noundef %10, ptr noundef %12, i32 noundef %14) #12
  %write_busy = getelementptr inbounds %struct.iowarrior, ptr %3, i32 0, i32 12
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %write_busy, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %write_busy, i32 1, i32 3, i32 1) #12
  %15 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %write_busy, ptr %write_busy, i32 1, ptr elementtype(i32) %write_busy) #12, !srcloc !140
  %write_wait = getelementptr inbounds %struct.iowarrior, ptr %3, i32 0, i32 11
  tail call void @__wake_up(ptr noundef %write_wait, i32 noundef 1, i32 noundef 1, ptr noundef null) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_anchor_urb(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_unanchor_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_coherent(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #10

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_find_interface(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_kill_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_put_intf(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister_dev(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_kill_anchored_urbs(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 60)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 60)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { nounwind readonly }
attributes #11 = { argmemonly nofree nounwind readonly willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { cold nounwind }
attributes #17 = { nounwind allocsize(0) }
attributes #18 = { nobuiltin }
attributes #19 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !11, !13, !15, !16, !18, !19, !21, !22, !24, !25, !26, !27, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !41, !42, !43, !45, !46, !48, !49, !51, !52, !53, !54, !56, !58, !60, !62, !64, !65, !66, !68, !69, !71, !73, !75, !76, !78, !79, !81, !82, !84, !85, !86, !88, !89, !90, !92, !93, !94, !96, !97, !98, !100, !101, !102, !103, !105, !106, !107, !109, !110, !111, !113, !114, !116, !117, !118, !119}
!llvm.named.register.sp = !{!121}
!llvm.module.flags = !{!122, !123, !124, !125, !126, !127, !128, !129}
!llvm.ident = !{!130}

!0 = !{ptr @__UNIQUE_ID_author232, !1, !"__UNIQUE_ID_author232", i1 false, i1 false}
!1 = !{!"../drivers/usb/misc/iowarrior.c", i32 62, i32 1}
!2 = !{ptr @__UNIQUE_ID_description233, !3, !"__UNIQUE_ID_description233", i1 false, i1 false}
!3 = !{!"../drivers/usb/misc/iowarrior.c", i32 63, i32 1}
!4 = !{ptr @__UNIQUE_ID_file234, !5, !"__UNIQUE_ID_file234", i1 false, i1 false}
!5 = !{!"../drivers/usb/misc/iowarrior.c", i32 64, i32 1}
!6 = !{ptr @__UNIQUE_ID_license235, !5, !"__UNIQUE_ID_license235", i1 false, i1 false}
!7 = !{ptr @__initcall__kmod_iowarrior__244_926_iowarrior_driver_init6, !8, !"__initcall__kmod_iowarrior__244_926_iowarrior_driver_init6", i1 false, i1 false}
!8 = !{!"../drivers/usb/misc/iowarrior.c", i32 926, i32 1}
!9 = !{ptr @__exitcall_iowarrior_driver_exit, !8, !"__exitcall_iowarrior_driver_exit", i1 false, i1 false}
!10 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @iowarrior_driver, !12, !"iowarrior_driver", i1 false, i1 false}
!12 = !{!"../drivers/usb/misc/iowarrior.c", i32 919, i32 26}
!13 = !{ptr @iowarrior_probe.__key, !14, !"__key", i1 false, i1 false}
!14 = !{!"../drivers/usb/misc/iowarrior.c", i32 759, i32 2}
!15 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @iowarrior_probe.__key.2, !17, !"__key", i1 false, i1 false}
!17 = !{!"../drivers/usb/misc/iowarrior.c", i32 764, i32 2}
!18 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @iowarrior_probe.__key.4, !20, !"__key", i1 false, i1 false}
!20 = !{!"../drivers/usb/misc/iowarrior.c", i32 766, i32 2}
!21 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/usb/misc/iowarrior.c", i32 778, i32 3}
!24 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @iowarrior_probe._entry, !23, !"_entry", i1 false, i1 false}
!29 = !{ptr @iowarrior_probe._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/usb/misc/iowarrior.c", i32 791, i32 4}
!32 = !{ptr @iowarrior_probe._entry.11, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @iowarrior_probe._entry_ptr.13, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/usb/misc/iowarrior.c", i32 864, i32 3}
!36 = !{ptr @iowarrior_probe._entry.14, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @iowarrior_probe._entry_ptr.16, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/usb/misc/iowarrior.c", i32 871, i32 2}
!40 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @iowarrior_probe._entry.17, !39, !"_entry", i1 false, i1 false}
!42 = !{ptr @iowarrior_probe._entry_ptr.20, !39, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @init_usb_anchor.__key, !44, !"__key", i1 false, i1 false}
!44 = !{!"../include/linux/usb.h", i32 1367, i32 2}
!45 = !{ptr @.str.21, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @init_usb_anchor.__key.22, !47, !"__key", i1 false, i1 false}
!47 = !{!"../include/linux/usb.h", i32 1368, i32 2}
!48 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.24, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/usb/misc/iowarrior.c", i32 215, i32 3}
!51 = !{ptr @.str.25, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @iowarrior_callback._entry, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @iowarrior_callback._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.26, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/usb/misc/iowarrior.c", i32 730, i32 10}
!56 = !{ptr @iowarrior_class, !57, !"iowarrior_class", i1 false, i1 false}
!57 = !{!"../drivers/usb/misc/iowarrior.c", i32 729, i32 32}
!58 = !{ptr @.str.27, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/usb/misc/iowarrior.c", i32 722, i32 31}
!60 = !{ptr @iowarrior_fops, !61, !"iowarrior_fops", i1 false, i1 false}
!61 = !{!"../drivers/usb/misc/iowarrior.c", i32 709, i32 37}
!62 = !{ptr @.str.28, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/usb/misc/iowarrior.c", i32 287, i32 2}
!64 = !{ptr @.str.29, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @iowarrior_read.__UNIQUE_ID_ddebug238, !63, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!66 = distinct !{null, !67, !"__already_done", i1 false, i1 false}
!67 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!68 = !{ptr @.str.30, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @.str.31, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!71 = !{ptr @.str.32, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!73 = !{ptr @.str.33, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/usb/misc/iowarrior.c", i32 356, i32 2}
!75 = !{ptr @iowarrior_write.__UNIQUE_ID_ddebug239, !74, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!76 = !{ptr @.str.34, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/usb/misc/iowarrior.c", i32 424, i32 4}
!78 = !{ptr @iowarrior_write.__UNIQUE_ID_ddebug240, !77, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!79 = !{ptr @.str.35, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/usb/misc/iowarrior.c", i32 442, i32 4}
!81 = !{ptr @iowarrior_write.__UNIQUE_ID_ddebug241, !80, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!82 = !{ptr @.str.36, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/usb/misc/iowarrior.c", i32 454, i32 3}
!84 = !{ptr @iowarrior_write._entry, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @iowarrior_write._entry_ptr, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.37, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/usb/misc/iowarrior.c", i32 233, i32 3}
!88 = !{ptr @.str.38, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @iowarrior_write_callback.__UNIQUE_ID_ddebug236, !87, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!90 = !{ptr @.str.39, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/usb/misc/iowarrior.c", i32 500, i32 2}
!92 = !{ptr @.str.40, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @iowarrior_ioctl.__UNIQUE_ID_ddebug242, !91, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!94 = !{ptr @.str.41, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/usb/misc/iowarrior.c", i32 526, i32 4}
!96 = !{ptr @iowarrior_ioctl._entry, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @iowarrior_ioctl._entry_ptr, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.42, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/usb/misc/iowarrior.c", i32 603, i32 3}
!100 = !{ptr @.str.43, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @iowarrior_open._entry, !99, !"_entry", i1 false, i1 false}
!102 = !{ptr @iowarrior_open._entry_ptr, !99, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.45, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/usb/misc/iowarrior.c", i32 622, i32 3}
!105 = !{ptr @iowarrior_open._entry.44, !104, !"_entry", i1 false, i1 false}
!106 = !{ptr @iowarrior_open._entry_ptr.46, !104, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.47, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/usb/misc/iowarrior.c", i32 649, i32 2}
!109 = !{ptr @.str.48, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @iowarrior_release.__UNIQUE_ID_ddebug243, !108, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!111 = !{ptr @.str.49, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/usb/misc/iowarrior.c", i32 249, i32 2}
!113 = !{ptr @iowarrior_delete.__UNIQUE_ID_ddebug237, !112, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!114 = !{ptr @.str.50, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/usb/misc/iowarrior.c", i32 914, i32 2}
!116 = !{ptr @.str.51, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @iowarrior_disconnect._entry, !115, !"_entry", i1 false, i1 false}
!118 = !{ptr @iowarrior_disconnect._entry_ptr, !115, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @iowarrior_ids, !120, !"iowarrior_ids", i1 false, i1 false}
!120 = !{!"../drivers/usb/misc/iowarrior.c", i32 135, i32 35}
!121 = !{!"sp"}
!122 = !{i32 1, !"wchar_size", i32 2}
!123 = !{i32 1, !"min_enum_size", i32 4}
!124 = !{i32 8, !"branch-target-enforcement", i32 0}
!125 = !{i32 8, !"sign-return-address", i32 0}
!126 = !{i32 8, !"sign-return-address-all", i32 0}
!127 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!128 = !{i32 7, !"uwtable", i32 1}
!129 = !{i32 7, !"frame-pointer", i32 2}
!130 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!131 = !{!"branch_weights", i32 1, i32 2000}
!132 = !{i64 2148977748, i64 2148977753, i64 2148977766, i64 2148977810, i64 2148977844, i64 2148977865}
!133 = !{!"branch_weights", i32 2000, i32 1}
!134 = !{i64 2153540632, i64 2153540657}
!135 = !{i64 2148364371, i64 2148364397, i64 2148364426, i64 2148364460, i64 2148364491, i64 2148364514}
!136 = !{i64 2153539951, i64 2153539976}
!137 = !{i64 6035506}
!138 = !{i64 6035703}
!139 = !{i64 2153520936}
!140 = !{i64 2148366836, i64 2148366862, i64 2148366891, i64 2148366925, i64 2148366956, i64 2148366979}
