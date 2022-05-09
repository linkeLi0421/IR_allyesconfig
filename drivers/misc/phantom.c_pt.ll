; ModuleID = '/llk/IR_all_yes/drivers/misc/phantom.c_pt.bc'
source_filename = "../drivers/misc/phantom.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pci_driver = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, %struct.pci_dynids }
%struct.list_head = type { ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.class_attribute_string = type { %struct.class_attribute, ptr }
%struct.class_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.70, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.70 = type { ptr }
%struct.phantom_device = type { i32, ptr, ptr, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.cdev, %struct.mutex, %struct.spinlock, %struct.phm_regs, i32 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.phm_regs = type { i32, i32, [8 x i32] }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.phm_reg = type { i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.71, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.72, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.73, ptr, %struct.address_space, %struct.list_head, %union.anon.74, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.71 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.72 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.73 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.74 = type { ptr }

@phantom_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @phantom_pci_tbl, ptr @phantom_probe, ptr @phantom_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @phantom_pm_ops, ptr null, ptr null }, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@phantom_major = internal global { i32, [28 x i8] } zeroinitializer, align 32
@phantom_class = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@class_attr_version = internal global { %struct.class_attribute_string, [32 x i8] } { %struct.class_attribute_string { %struct.class_attribute { %struct.attribute { ptr @.str.4, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_class_attr_string, ptr null }, ptr @.str.5 }, [32 x i8] zeroinitializer }, align 32
@phantom_exit.__UNIQUE_ID_ddebug250 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 -118, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"phantom\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"phantom_exit\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"drivers/misc/phantom.c\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"phantom: module successfully removed\0A\00", [58 x i8] zeroinitializer }, align 32
@__initcall__kmod_phantom__251_557_phantom_init6 = internal global ptr @phantom_init, section ".initcall6.init", align 4
@__exitcall_phantom_exit = internal global ptr @phantom_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author252 = internal constant [48 x i8] c"phantom.author=Jiri Slaby <jirislaby@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description253 = internal constant [58 x i8] c"phantom.description=Sensable Phantom driver (PCI devices)\00", section ".modinfo", align 1
@__UNIQUE_ID_file254 = internal constant [34 x i8] c"phantom.file=drivers/misc/phantom\00", section ".modinfo", align 1
@__UNIQUE_ID_license255 = internal constant [20 x i8] c"phantom.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_version256 = internal constant [23 x i8] c"phantom.version=n0.9.8\00", section ".modinfo", align 1
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"n0.9.8\00", [25 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str.4, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str, ptr @.str.5 }, section "__modver", align 4
@phantom_pci_tbl = internal global { [2 x %struct.pci_device_id], [32 x i8] } { [2 x %struct.pci_device_id] [%struct.pci_device_id { i32 4277, i32 36944, i32 4277, i32 36944, i32 425984, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@phantom_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @phantom_suspend, ptr @phantom_resume, ptr @phantom_suspend, ptr @phantom_resume, ptr @phantom_suspend, ptr @phantom_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@phantom_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 343, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"pci_enable_device failed!\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"phantom_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@phantom_probe._entry_ptr = internal global ptr @phantom_probe._entry, section ".printk_index", align 4
@phantom_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.7, ptr @.str.2, i32 349, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"too many devices found!\0A\00", [39 x i8] zeroinitializer }, align 32
@phantom_probe._entry_ptr.12 = internal global ptr @phantom_probe._entry.10, section ".printk_index", align 4
@phantom_devices = internal global { [8 x i8], [24 x i8] } zeroinitializer, align 32
@phantom_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.7, ptr @.str.2, i32 358, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"pci_request_regions failed!\0A\00", [35 x i8] zeroinitializer }, align 32
@phantom_probe._entry_ptr.15 = internal global ptr @phantom_probe._entry.13, section ".printk_index", align 4
@phantom_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.7, ptr @.str.2, i32 365, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"unable to allocate device\0A\00", [37 x i8] zeroinitializer }, align 32
@phantom_probe._entry_ptr.18 = internal global ptr @phantom_probe._entry.16, section ".printk_index", align 4
@phantom_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.7, ptr @.str.2, i32 371, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"can't remap conf space\0A\00", [40 x i8] zeroinitializer }, align 32
@phantom_probe._entry_ptr.21 = internal global ptr @phantom_probe._entry.19, section ".printk_index", align 4
@phantom_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.7, ptr @.str.2, i32 376, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"can't remap input space\0A\00", [39 x i8] zeroinitializer }, align 32
@phantom_probe._entry_ptr.24 = internal global ptr @phantom_probe._entry.22, section ".printk_index", align 4
@phantom_probe._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.7, ptr @.str.2, i32 381, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"can't remap output space\0A\00", [38 x i8] zeroinitializer }, align 32
@phantom_probe._entry_ptr.27 = internal global ptr @phantom_probe._entry.25, section ".printk_index", align 4
@phantom_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.28 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&pht->open_lock\00", [16 x i8] zeroinitializer }, align 32
@phantom_probe.__key.29 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.30 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&pht->regs_lock\00", [16 x i8] zeroinitializer }, align 32
@phantom_probe.__key.31 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.32 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&pht->wait\00", [21 x i8] zeroinitializer }, align 32
@phantom_file_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @phantom_poll, ptr @phantom_ioctl, ptr null, ptr null, i32 0, ptr @phantom_open, ptr null, ptr @phantom_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@phantom_probe._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.7, ptr @.str.2, i32 396, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"can't establish ISR\0A\00", [43 x i8] zeroinitializer }, align 32
@phantom_probe._entry_ptr.35 = internal global ptr @phantom_probe._entry.33, section ".printk_index", align 4
@phantom_probe._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.7, ptr @.str.2, i32 402, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"chardev registration failed\0A\00", [35 x i8] zeroinitializer }, align 32
@phantom_probe._entry_ptr.38 = internal global ptr @phantom_probe._entry.36, section ".printk_index", align 4
@.str.39 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"phantom%u\00", [22 x i8] zeroinitializer }, align 32
@phantom_probe._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.7, ptr @.str.2, i32 409, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"can't create device\0A\00", [43 x i8] zeroinitializer }, align 32
@phantom_probe._entry_ptr.42 = internal global ptr @phantom_probe._entry.40, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@phantom_poll.__UNIQUE_ID_ddebug246 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.43, ptr @.str.2, ptr @.str.44, i8 0, i8 65, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"phantom_poll\00", [19 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"phantom_poll: %d\0A\00", [46 x i8] zeroinitializer }, align 32
@phantom_poll.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.43, ptr @.str.2, ptr @.str.45, i8 0, i8 67, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"phantom_poll end: %x/%d\0A\00", [39 x i8] zeroinitializer }, align 32
@phantom_ioctl.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.46, ptr @.str.2, ptr @.str.47, i8 0, i8 27, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"phantom_ioctl\00", [18 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"phantom: writing %x to %u\0A\00", [37 x i8] zeroinitializer }, align 32
@phantom_ioctl.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.46, ptr @.str.2, ptr @.str.48, i8 0, i8 33, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"phantom: SRS %u regs %x\0A\00", [39 x i8] zeroinitializer }, align 32
@phantom_ioctl.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.46, ptr @.str.2, ptr @.str.49, i8 0, i8 41, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"phantom: GRS %u regs %x\0A\00", [39 x i8] zeroinitializer }, align 32
@phantom_ioctl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.46, ptr @.str.2, i32 182, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\013phantom: you need to set NOT_OH before you start the device!\0A\00", [32 x i8] zeroinitializer }, align 32
@phantom_ioctl._entry_ptr = internal global ptr @phantom_ioctl._entry, section ".printk_index", align 4
@.str.53 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@phantom_status.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.54, ptr @.str.2, ptr @.str.55, i8 0, i8 16, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.54 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"phantom_status\00", [17 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"phantom_status %lx %lx\0A\00", [40 x i8] zeroinitializer }, align 32
@phantom_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.56, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @phantom_mutex, i64 52), ptr getelementptr (i8, ptr @phantom_mutex, i64 52) }, ptr @phantom_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.57, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"phantom_mutex.wait_lock\00", [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"phantom_mutex\00", [18 x i8] zeroinitializer }, align 32
@phantom_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@phantom_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.59, ptr @.str.2, i32 509, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013phantom: can't register phantom class\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"phantom_init\00", [19 x i8] zeroinitializer }, align 32
@phantom_init._entry_ptr = internal global ptr @phantom_init._entry, section ".printk_index", align 4
@phantom_init._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.59, ptr @.str.2, i32 514, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013phantom: can't create sysfs version file\0A\00", [52 x i8] zeroinitializer }, align 32
@phantom_init._entry_ptr.62 = internal global ptr @phantom_init._entry.60, section ".printk_index", align 4
@phantom_init._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.59, ptr @.str.2, i32 520, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013phantom: can't register character device\0A\00", [52 x i8] zeroinitializer }, align 32
@phantom_init._entry_ptr.65 = internal global ptr @phantom_init._entry.63, section ".printk_index", align 4
@phantom_init._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.59, ptr @.str.2, i32 527, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013phantom: can't register pci driver\0A\00", [58 x i8] zeroinitializer }, align 32
@phantom_init._entry_ptr.68 = internal global ptr @phantom_init._entry.66, section ".printk_index", align 4
@phantom_init._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.59, ptr @.str.2, i32 532, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\016Phantom Linux Driver, version n0.9.8, init OK\0A\00", [47 x i8] zeroinitializer }, align 32
@phantom_init._entry_ptr.71 = internal global ptr @phantom_init._entry.69, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [11 x i64] [i64 9, i64 32, i64 28676, i64 1074032641, i64 1074032643, i64 1074294790, i64 1076391944, i64 3221516288, i64 3221516290, i64 3221778437, i64 3223875591]
@___asan_gen_.72 = private unnamed_addr constant [19 x i8] c"phantom_pci_driver\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 491, i32 26 }
@___asan_gen_.75 = private unnamed_addr constant [14 x i8] c"phantom_major\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 39, i32 12 }
@___asan_gen_.78 = private unnamed_addr constant [14 x i8] c"phantom_class\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 38, i32 22 }
@___asan_gen_.81 = private unnamed_addr constant [19 x i8] c"class_attr_version\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 499, i32 8 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 554, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 563, i32 1 }
@___asan_gen_.102 = private unnamed_addr constant [16 x i8] c"phantom_pci_tbl\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 481, i32 29 }
@___asan_gen_.105 = private unnamed_addr constant [15 x i8] c"phantom_pm_ops\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 489, i32 8 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 343, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 349, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant [16 x i8] c"phantom_devices\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 60, i32 22 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 358, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 365, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 371, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 376, i32 3 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 381, i32 3 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 385, i32 2 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 386, i32 2 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 387, i32 2 }
@___asan_gen_.180 = private unnamed_addr constant [17 x i8] c"phantom_file_ops\00", align 1
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 273, i32 37 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 396, i32 3 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 402, i32 3 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 408, i32 6 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 409, i32 3 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 260, i32 2 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 268, i32 2 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 111, i32 3 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 132, i32 3 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 167, i32 3 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 181, i32 4 }
@___asan_gen_.232 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 156, i32 2 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 64, i32 2 }
@___asan_gen_.240 = private unnamed_addr constant [14 x i8] c"phantom_mutex\00", align 1
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 37, i32 8 }
@___asan_gen_.249 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 506, i32 18 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 509, i32 3 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 514, i32 3 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 520, i32 3 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 527, i32 3 }
@___asan_gen_.279 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.282 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.283 = private constant [26 x i8] c"../drivers/misc/phantom.c\00", align 1
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 531, i32 2 }
@llvm.compiler.used = appending global [96 x ptr] [ptr @__UNIQUE_ID_author252, ptr @__UNIQUE_ID_description253, ptr @__UNIQUE_ID_file254, ptr @__UNIQUE_ID_license255, ptr @__UNIQUE_ID_version256, ptr @__exitcall_phantom_exit, ptr @__initcall__kmod_phantom__251_557_phantom_init6, ptr @__modver_attr, ptr @phantom_exit, ptr @phantom_init._entry, ptr @phantom_init._entry.60, ptr @phantom_init._entry.63, ptr @phantom_init._entry.66, ptr @phantom_init._entry.69, ptr @phantom_init._entry_ptr, ptr @phantom_init._entry_ptr.62, ptr @phantom_init._entry_ptr.65, ptr @phantom_init._entry_ptr.68, ptr @phantom_init._entry_ptr.71, ptr @phantom_ioctl._entry, ptr @phantom_ioctl._entry_ptr, ptr @phantom_probe._entry, ptr @phantom_probe._entry.10, ptr @phantom_probe._entry.13, ptr @phantom_probe._entry.16, ptr @phantom_probe._entry.19, ptr @phantom_probe._entry.22, ptr @phantom_probe._entry.25, ptr @phantom_probe._entry.33, ptr @phantom_probe._entry.36, ptr @phantom_probe._entry.40, ptr @phantom_probe._entry_ptr, ptr @phantom_probe._entry_ptr.12, ptr @phantom_probe._entry_ptr.15, ptr @phantom_probe._entry_ptr.18, ptr @phantom_probe._entry_ptr.21, ptr @phantom_probe._entry_ptr.24, ptr @phantom_probe._entry_ptr.27, ptr @phantom_probe._entry_ptr.35, ptr @phantom_probe._entry_ptr.38, ptr @phantom_probe._entry_ptr.42, ptr @phantom_pci_driver, ptr @phantom_major, ptr @phantom_class, ptr @class_attr_version, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @phantom_pci_tbl, ptr @phantom_pm_ops, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @phantom_devices, ptr @.str.14, ptr @.str.17, ptr @.str.20, ptr @.str.23, ptr @.str.26, ptr @phantom_probe.__key, ptr @.str.28, ptr @phantom_probe.__key.29, ptr @.str.30, ptr @phantom_probe.__key.31, ptr @.str.32, ptr @phantom_file_ops, ptr @.str.34, ptr @.str.37, ptr @.str.39, ptr @.str.41, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @phantom_mutex, ptr @.str.56, ptr @.str.57, ptr @phantom_init.__key, ptr @.str.58, ptr @.str.59, ptr @.str.61, ptr @.str.64, ptr @.str.67, ptr @.str.70], section "llvm.metadata"
@0 = internal global [71 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phantom_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phantom_major to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phantom_class to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @class_attr_version to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phantom_pci_tbl to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phantom_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phantom_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phantom_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phantom_devices to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phantom_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phantom_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phantom_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phantom_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phantom_probe._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phantom_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phantom_probe.__key.29 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phantom_probe.__key.31 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phantom_file_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phantom_probe._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phantom_probe._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phantom_probe._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phantom_ioctl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phantom_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phantom_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phantom_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phantom_init._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phantom_init._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phantom_init._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phantom_init._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @phantom_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @pci_unregister_driver(ptr noundef nonnull @phantom_pci_driver) #9
  %0 = load i32, ptr @phantom_major, align 4
  %shl = shl i32 %0, 20
  tail call void @unregister_chrdev_region(i32 noundef %shl, i32 noundef 8) #9
  %1 = load ptr, ptr @phantom_class, align 4
  tail call void @class_remove_file_ns(ptr noundef %1, ptr noundef nonnull @class_attr_version, ptr noundef null) #9
  %2 = load ptr, ptr @phantom_class, align 4
  tail call void @class_destroy(ptr noundef %2) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @phantom_exit.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@phantom_exit, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !161

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @phantom_exit.__UNIQUE_ID_ddebug250, ptr noundef nonnull @.str.3) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_chrdev_region(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @class_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @phantom_init() #0 section ".init.text" align 64 {
entry:
  %dev = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dev) #9
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %dev, align 4, !annotation !162
  %call = tail call ptr @__class_create(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @phantom_init.__key) #9
  store ptr %call, ptr @phantom_class, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %1 = ptrtoint ptr %call to i32
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call i32 @class_create_file_ns(ptr noundef %call, ptr noundef nonnull @class_attr_version, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end13, label %do.end10

do.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61) #12
  br label %err_class

if.end13:                                         ; preds = %if.end
  %call14 = call i32 @alloc_chrdev_region(ptr noundef nonnull %dev, i32 noundef 0, i32 noundef 8, ptr noundef nonnull @.str) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end22, label %do.end19

do.end19:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  %call21 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64) #12
  br label %err_attr

if.end22:                                         ; preds = %if.end13
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dev, align 4
  %shr = lshr i32 %3, 20
  store i32 %shr, ptr @phantom_major, align 4
  %call23 = call i32 @__pci_register_driver(ptr noundef nonnull @phantom_pci_driver, ptr noundef null, ptr noundef nonnull @.str) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %do.end34, label %do.end28

do.end28:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  %call30 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67) #12
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dev, align 4
  call void @unregister_chrdev_region(i32 noundef %5, i32 noundef 8) #9
  br label %err_attr

do.end34:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  %call36 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70) #12
  br label %cleanup

err_attr:                                         ; preds = %do.end28, %do.end19
  %retval1.0 = phi i32 [ %call14, %do.end19 ], [ %call23, %do.end28 ]
  %6 = load ptr, ptr @phantom_class, align 4
  call void @class_remove_file_ns(ptr noundef %6, ptr noundef nonnull @class_attr_version, ptr noundef null) #9
  br label %err_class

err_class:                                        ; preds = %err_attr, %do.end10
  %retval1.1 = phi i32 [ %call.i, %do.end10 ], [ %retval1.0, %err_attr ]
  %7 = load ptr, ptr @phantom_class, align 4
  call void @class_destroy(ptr noundef %7) #9
  br label %cleanup

cleanup:                                          ; preds = %err_class, %do.end34, %if.then
  %retval.0 = phi i32 [ 0, %do.end34 ], [ %1, %if.then ], [ %retval1.1, %err_class ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dev) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @phantom_probe(ptr noundef %pdev, ptr nocapture noundef readnone %pci_id) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @pci_enable_device(ptr noundef %pdev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.6) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = load i8, ptr @phantom_devices, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %cmp1.i = icmp eq i8 %0, 0
  br i1 %cmp1.i, label %if.end.if.end8_crit_edge, label %for.inc.i

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

for.inc.i:                                        ; preds = %if.end
  %1 = load i8, ptr getelementptr inbounds ([8 x i8], ptr @phantom_devices, i32 0, i32 1), align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp1.1.i = icmp eq i8 %1, 0
  br i1 %cmp1.1.i, label %for.inc.i.if.end8_crit_edge, label %for.inc.1.i

for.inc.i.if.end8_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

for.inc.1.i:                                      ; preds = %for.inc.i
  %2 = load i8, ptr getelementptr inbounds ([8 x i8], ptr @phantom_devices, i32 0, i32 2), align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %cmp1.2.i = icmp eq i8 %2, 0
  br i1 %cmp1.2.i, label %for.inc.1.i.if.end8_crit_edge, label %for.inc.2.i

for.inc.1.i.if.end8_crit_edge:                    ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

for.inc.2.i:                                      ; preds = %for.inc.1.i
  %3 = load i8, ptr getelementptr inbounds ([8 x i8], ptr @phantom_devices, i32 0, i32 3), align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp1.3.i = icmp eq i8 %3, 0
  br i1 %cmp1.3.i, label %for.inc.2.i.if.end8_crit_edge, label %for.inc.3.i

for.inc.2.i.if.end8_crit_edge:                    ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

for.inc.3.i:                                      ; preds = %for.inc.2.i
  %4 = load i8, ptr getelementptr inbounds ([8 x i8], ptr @phantom_devices, i32 0, i32 4), align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp1.4.i = icmp eq i8 %4, 0
  br i1 %cmp1.4.i, label %for.inc.3.i.if.end8_crit_edge, label %for.inc.4.i

for.inc.3.i.if.end8_crit_edge:                    ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

for.inc.4.i:                                      ; preds = %for.inc.3.i
  %5 = load i8, ptr getelementptr inbounds ([8 x i8], ptr @phantom_devices, i32 0, i32 5), align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp1.5.i = icmp eq i8 %5, 0
  br i1 %cmp1.5.i, label %for.inc.4.i.if.end8_crit_edge, label %for.inc.5.i

for.inc.4.i.if.end8_crit_edge:                    ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

for.inc.5.i:                                      ; preds = %for.inc.4.i
  %6 = load i8, ptr getelementptr inbounds ([8 x i8], ptr @phantom_devices, i32 0, i32 6), align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %cmp1.6.i = icmp eq i8 %6, 0
  br i1 %cmp1.6.i, label %for.inc.5.i.if.end8_crit_edge, label %for.inc.6.i

for.inc.5.i.if.end8_crit_edge:                    ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

for.inc.6.i:                                      ; preds = %for.inc.5.i
  %7 = load i8, ptr getelementptr inbounds ([8 x i8], ptr @phantom_devices, i32 0, i32 7), align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp1.7.i = icmp eq i8 %7, 0
  br i1 %cmp1.7.i, label %for.inc.6.i.if.end8_crit_edge, label %do.end6

for.inc.6.i.if.end8_crit_edge:                    ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

do.end6:                                          ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev7 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev7, ptr noundef nonnull @.str.11) #12
  br label %err_dis

if.end8:                                          ; preds = %for.inc.6.i.if.end8_crit_edge, %for.inc.5.i.if.end8_crit_edge, %for.inc.4.i.if.end8_crit_edge, %for.inc.3.i.if.end8_crit_edge, %for.inc.2.i.if.end8_crit_edge, %for.inc.1.i.if.end8_crit_edge, %for.inc.i.if.end8_crit_edge, %if.end.if.end8_crit_edge
  %i.0.lcssa.i.ph = phi i32 [ 6, %for.inc.5.i.if.end8_crit_edge ], [ 5, %for.inc.4.i.if.end8_crit_edge ], [ 4, %for.inc.3.i.if.end8_crit_edge ], [ 3, %for.inc.2.i.if.end8_crit_edge ], [ 2, %for.inc.1.i.if.end8_crit_edge ], [ 1, %for.inc.i.if.end8_crit_edge ], [ 0, %if.end.if.end8_crit_edge ], [ 7, %for.inc.6.i.if.end8_crit_edge ]
  %arrayidx = getelementptr [8 x i8], ptr @phantom_devices, i32 0, i32 %i.0.lcssa.i.ph
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %arrayidx, align 1
  %call9 = tail call i32 @pci_request_regions(ptr noundef %pdev, ptr noundef nonnull @.str) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end16, label %do.end14

do.end14:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  %dev15 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev15, ptr noundef nonnull @.str.14) #12
  br label %err_null

if.end16:                                         ; preds = %if.end8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %9 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3520, i32 noundef 416) #13
  %cmp18 = icmp eq ptr %call7.i.i, null
  br i1 %cmp18, label %do.end22, label %if.end24

do.end22:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  %dev23 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev23, ptr noundef nonnull @.str.17) #12
  br label %err_reg

if.end24:                                         ; preds = %if.end16
  %call25 = tail call ptr @pci_iomap(ptr noundef %pdev, i32 noundef 0, i32 noundef 0) #9
  %caddr = getelementptr inbounds %struct.phantom_device, ptr %call7.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %caddr to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call25, ptr %caddr, align 4
  %cmp27 = icmp eq ptr %call25, null
  br i1 %cmp27, label %do.end31, label %if.end33

do.end31:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  %dev32 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev32, ptr noundef nonnull @.str.20) #12
  br label %err_fr

if.end33:                                         ; preds = %if.end24
  %call34 = tail call ptr @pci_iomap(ptr noundef %pdev, i32 noundef 2, i32 noundef 0) #9
  %iaddr = getelementptr inbounds %struct.phantom_device, ptr %call7.i.i, i32 0, i32 2
  %11 = ptrtoint ptr %iaddr to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call34, ptr %iaddr, align 8
  %cmp36 = icmp eq ptr %call34, null
  br i1 %cmp36, label %do.end40, label %if.end42

do.end40:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  %dev41 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev41, ptr noundef nonnull @.str.23) #12
  br label %err_unmc

if.end42:                                         ; preds = %if.end33
  %call43 = tail call ptr @pci_iomap(ptr noundef %pdev, i32 noundef 3, i32 noundef 0) #9
  %oaddr = getelementptr inbounds %struct.phantom_device, ptr %call7.i.i, i32 0, i32 3
  %12 = ptrtoint ptr %oaddr to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call43, ptr %oaddr, align 4
  %cmp45 = icmp eq ptr %call43, null
  br i1 %cmp45, label %do.end49, label %do.body52

do.end49:                                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  %dev50 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev50, ptr noundef nonnull @.str.26) #12
  br label %err_unmi

do.body52:                                        ; preds = %if.end42
  %open_lock = getelementptr inbounds %struct.phantom_device, ptr %call7.i.i, i32 0, i32 8
  tail call void @__mutex_init(ptr noundef %open_lock, ptr noundef nonnull @.str.28, ptr noundef nonnull @phantom_probe.__key) #9
  %regs_lock = getelementptr inbounds %struct.phantom_device, ptr %call7.i.i, i32 0, i32 9
  tail call void @__raw_spin_lock_init(ptr noundef %regs_lock, ptr noundef nonnull @.str.30, ptr noundef nonnull @phantom_probe.__key.29, i16 noundef signext 3) #9
  %wait = getelementptr inbounds %struct.phantom_device, ptr %call7.i.i, i32 0, i32 6
  tail call void @__init_waitqueue_head(ptr noundef %wait, ptr noundef nonnull @.str.32, ptr noundef nonnull @phantom_probe.__key.31) #9
  %cdev = getelementptr inbounds %struct.phantom_device, ptr %call7.i.i, i32 0, i32 7
  tail call void @cdev_init(ptr noundef %cdev, ptr noundef nonnull @phantom_file_ops) #9
  %owner = getelementptr inbounds %struct.phantom_device, ptr %call7.i.i, i32 0, i32 7, i32 1
  %13 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %owner, align 4
  %14 = ptrtoint ptr %caddr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %caddr, align 4
  %add.ptr = getelementptr i8, ptr %15, i32 76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !163
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #9, !srcloc !164
  %16 = ptrtoint ptr %caddr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %caddr, align 4
  %add.ptr65 = getelementptr i8, ptr %17, i32 76
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr65) #9, !srcloc !165
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !166
  %irq = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 46
  %19 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %irq, align 4
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %20, ptr noundef nonnull @phantom_isr, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str, ptr noundef nonnull %call7.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool68.not = icmp eq i32 %call.i, 0
  br i1 %tobool68.not, label %if.end74, label %do.end72

do.end72:                                         ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #11
  %dev73 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev73, ptr noundef nonnull @.str.34) #12
  br label %err_unmo

if.end74:                                         ; preds = %do.body52
  %21 = load i32, ptr @phantom_major, align 4
  %shl = shl i32 %21, 20
  %or = or i32 %shl, %i.0.lcssa.i.ph
  %call76 = tail call i32 @cdev_add(ptr noundef %cdev, i32 noundef %or, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76)
  %tobool77.not = icmp eq i32 %call76, 0
  br i1 %tobool77.not, label %if.end83, label %do.end81

do.end81:                                         ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #11
  %dev82 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev82, ptr noundef nonnull @.str.37) #12
  %22 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %irq, align 4
  %call96 = tail call ptr @free_irq(i32 noundef %23, ptr noundef nonnull %call7.i.i) #9
  br label %err_unmo

if.end83:                                         ; preds = %if.end74
  %24 = load ptr, ptr @phantom_class, align 4
  %dev84 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %25 = load i32, ptr @phantom_major, align 4
  %shl85 = shl i32 %25, 20
  %or86 = or i32 %shl85, %i.0.lcssa.i.ph
  %call87 = tail call ptr (ptr, ptr, i32, ptr, ptr, ...) @device_create(ptr noundef %24, ptr noundef %dev84, i32 noundef %or86, ptr noundef null, ptr noundef nonnull @.str.39, i32 noundef %i.0.lcssa.i.ph) #9
  %cmp.i = icmp ugt ptr %call87, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end92, label %if.end83.if.end94_crit_edge

if.end83.if.end94_crit_edge:                      ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end94

do.end92:                                         ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev84, ptr noundef nonnull @.str.41) #12
  br label %if.end94

if.end94:                                         ; preds = %do.end92, %if.end83.if.end94_crit_edge
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %26 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  br label %cleanup

err_unmo:                                         ; preds = %do.end81, %do.end72
  %retval1.0 = phi i32 [ %call.i, %do.end72 ], [ %call76, %do.end81 ]
  %27 = ptrtoint ptr %oaddr to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %oaddr, align 4
  tail call void @pci_iounmap(ptr noundef %pdev, ptr noundef %28) #9
  br label %err_unmi

err_unmi:                                         ; preds = %err_unmo, %do.end49
  %retval1.1 = phi i32 [ -12, %do.end49 ], [ %retval1.0, %err_unmo ]
  %29 = ptrtoint ptr %iaddr to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %iaddr, align 8
  tail call void @pci_iounmap(ptr noundef %pdev, ptr noundef %30) #9
  br label %err_unmc

err_unmc:                                         ; preds = %err_unmi, %do.end40
  %retval1.2 = phi i32 [ -12, %do.end40 ], [ %retval1.1, %err_unmi ]
  %31 = ptrtoint ptr %caddr to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %caddr, align 4
  tail call void @pci_iounmap(ptr noundef %pdev, ptr noundef %32) #9
  br label %err_fr

err_fr:                                           ; preds = %err_unmc, %do.end31
  %retval1.3 = phi i32 [ -12, %do.end31 ], [ %retval1.2, %err_unmc ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %err_reg

err_reg:                                          ; preds = %err_fr, %do.end22
  %retval1.4 = phi i32 [ -12, %do.end22 ], [ %retval1.3, %err_fr ]
  tail call void @pci_release_regions(ptr noundef %pdev) #9
  br label %err_null

err_null:                                         ; preds = %err_reg, %do.end14
  %retval1.5 = phi i32 [ %call9, %do.end14 ], [ %retval1.4, %err_reg ]
  %33 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %arrayidx, align 1
  br label %err_dis

err_dis:                                          ; preds = %err_null, %do.end6
  %retval1.6 = phi i32 [ -5, %do.end6 ], [ %retval1.5, %err_null ]
  tail call void @pci_disable_device(ptr noundef %pdev) #9
  br label %cleanup

cleanup:                                          ; preds = %err_dis, %if.end94, %do.end
  %retval.0 = phi i32 [ 0, %if.end94 ], [ %call, %do.end ], [ %retval1.6, %err_dis ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @phantom_remove(ptr noundef %pdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %cdev = getelementptr inbounds %struct.phantom_device, ptr %1, i32 0, i32 7
  %dev = getelementptr inbounds %struct.phantom_device, ptr %1, i32 0, i32 7, i32 4
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dev, align 4
  %and = and i32 %3, 1048575
  %4 = load ptr, ptr @phantom_class, align 4
  %5 = load i32, ptr @phantom_major, align 4
  %shl = shl i32 %5, 20
  %or = or i32 %shl, %and
  tail call void @device_destroy(ptr noundef %4, i32 noundef %or) #9
  tail call void @cdev_del(ptr noundef %cdev) #9
  %caddr = getelementptr inbounds %struct.phantom_device, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %caddr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %caddr, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !163
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #9, !srcloc !164
  %8 = ptrtoint ptr %caddr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %caddr, align 4
  %add.ptr3 = getelementptr i8, ptr %9, i32 76
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3) #9, !srcloc !165
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !166
  %irq = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 46
  %11 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %irq, align 4
  %call5 = tail call ptr @free_irq(i32 noundef %12, ptr noundef %1) #9
  %oaddr = getelementptr inbounds %struct.phantom_device, ptr %1, i32 0, i32 3
  %13 = ptrtoint ptr %oaddr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %oaddr, align 4
  tail call void @pci_iounmap(ptr noundef %pdev, ptr noundef %14) #9
  %iaddr = getelementptr inbounds %struct.phantom_device, ptr %1, i32 0, i32 2
  %15 = ptrtoint ptr %iaddr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %iaddr, align 4
  tail call void @pci_iounmap(ptr noundef %pdev, ptr noundef %16) #9
  %17 = ptrtoint ptr %caddr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %caddr, align 4
  tail call void @pci_iounmap(ptr noundef %pdev, ptr noundef %18) #9
  tail call void @kfree(ptr noundef %1) #9
  tail call void @pci_release_regions(ptr noundef %pdev) #9
  %arrayidx = getelementptr [8 x i8], ptr @phantom_devices, i32 0, i32 %and
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %arrayidx, align 1
  tail call void @pci_disable_device(ptr noundef %pdev) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_regions(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_iomap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cdev_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @phantom_isr(i32 noundef %irq, ptr noundef %data) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %regs_lock = getelementptr inbounds %struct.phantom_device, ptr %data, i32 0, i32 9
  tail call void @_raw_spin_lock(ptr noundef %regs_lock) #9
  %iaddr = getelementptr inbounds %struct.phantom_device, ptr %data, i32 0, i32 2
  %0 = ptrtoint ptr %iaddr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iaddr, align 4
  %add.ptr = getelementptr i32, ptr %1, i32 6
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !165
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !166
  %3 = and i32 %2, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock(ptr noundef %regs_lock) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %iaddr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %iaddr, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !163
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 0) #9, !srcloc !164
  %6 = ptrtoint ptr %iaddr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %iaddr, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !163
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 -1073741824) #9, !srcloc !164
  %status = getelementptr inbounds %struct.phantom_device, ptr %data, i32 0, i32 4
  %8 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %status, align 4
  %and4 = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.end.if.end16_crit_edge, label %if.then6

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

if.then6:                                         ; preds = %if.end
  %oregs = getelementptr inbounds %struct.phantom_device, ptr %data, i32 0, i32 10
  %10 = ptrtoint ptr %oregs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %oregs, align 4
  %12 = tail call i32 @llvm.umin.i32(i32 %11, i32 8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp744.not = icmp eq i32 %12, 0
  br i1 %cmp744.not, label %if.then6.for.end_crit_edge, label %for.body.lr.ph

if.then6.for.end_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.then6
  %mask = getelementptr inbounds %struct.phantom_device, ptr %data, i32 0, i32 10, i32 1
  %oaddr = getelementptr inbounds %struct.phantom_device, ptr %data, i32 0, i32 3
  %13 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %mask, align 4
  %and8 = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %for.body.lr.ph.for.inc_crit_edge, label %if.then10

for.body.lr.ph.for.inc_crit_edge:                 ; preds = %for.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then10:                                        ; preds = %for.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx = getelementptr %struct.phantom_device, ptr %data, i32 0, i32 10, i32 2, i32 0
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx, align 4
  %17 = ptrtoint ptr %oaddr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %oaddr, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !163
  tail call void @arm_heavy_mb() #9
  %19 = tail call i32 @llvm.bswap.i32(i32 %16) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %19) #9, !srcloc !164
  br label %for.inc

for.inc:                                          ; preds = %if.then10, %for.body.lr.ph.for.inc_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %exitcond.not = icmp eq i32 %12, 1
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.body.1

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.1:                                       ; preds = %for.inc
  %20 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %mask, align 4
  %and8.1 = and i32 %21, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.1)
  %tobool9.not.1 = icmp eq i32 %and8.1, 0
  br i1 %tobool9.not.1, label %for.body.1.for.inc.1_crit_edge, label %if.then10.1

for.body.1.for.inc.1_crit_edge:                   ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.1

if.then10.1:                                      ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.1 = getelementptr %struct.phantom_device, ptr %data, i32 0, i32 10, i32 2, i32 1
  %22 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx.1, align 4
  %24 = ptrtoint ptr %oaddr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %oaddr, align 4
  %add.ptr11.1 = getelementptr i32, ptr %25, i32 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !163
  tail call void @arm_heavy_mb() #9
  %26 = tail call i32 @llvm.bswap.i32(i32 %23) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11.1, i32 %26) #9, !srcloc !164
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then10.1, %for.body.1.for.inc.1_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %12)
  %exitcond.not.1 = icmp eq i32 %12, 2
  br i1 %exitcond.not.1, label %for.inc.1.for.end_crit_edge, label %for.body.2

for.inc.1.for.end_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.2:                                       ; preds = %for.inc.1
  %27 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %mask, align 4
  %and8.2 = and i32 %28, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.2)
  %tobool9.not.2 = icmp eq i32 %and8.2, 0
  br i1 %tobool9.not.2, label %for.body.2.for.inc.2_crit_edge, label %if.then10.2

for.body.2.for.inc.2_crit_edge:                   ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.2

if.then10.2:                                      ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.2 = getelementptr %struct.phantom_device, ptr %data, i32 0, i32 10, i32 2, i32 2
  %29 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx.2, align 4
  %31 = ptrtoint ptr %oaddr to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %oaddr, align 4
  %add.ptr11.2 = getelementptr i32, ptr %32, i32 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !163
  tail call void @arm_heavy_mb() #9
  %33 = tail call i32 @llvm.bswap.i32(i32 %30) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11.2, i32 %33) #9, !srcloc !164
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then10.2, %for.body.2.for.inc.2_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %12)
  %exitcond.not.2 = icmp eq i32 %12, 3
  br i1 %exitcond.not.2, label %for.inc.2.for.end_crit_edge, label %for.body.3

for.inc.2.for.end_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.3:                                       ; preds = %for.inc.2
  %34 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %mask, align 4
  %and8.3 = and i32 %35, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.3)
  %tobool9.not.3 = icmp eq i32 %and8.3, 0
  br i1 %tobool9.not.3, label %for.body.3.for.inc.3_crit_edge, label %if.then10.3

for.body.3.for.inc.3_crit_edge:                   ; preds = %for.body.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.3

if.then10.3:                                      ; preds = %for.body.3
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.3 = getelementptr %struct.phantom_device, ptr %data, i32 0, i32 10, i32 2, i32 3
  %36 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx.3, align 4
  %38 = ptrtoint ptr %oaddr to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %oaddr, align 4
  %add.ptr11.3 = getelementptr i32, ptr %39, i32 3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !163
  tail call void @arm_heavy_mb() #9
  %40 = tail call i32 @llvm.bswap.i32(i32 %37) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11.3, i32 %40) #9, !srcloc !164
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then10.3, %for.body.3.for.inc.3_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %12)
  %exitcond.not.3 = icmp eq i32 %12, 4
  br i1 %exitcond.not.3, label %for.inc.3.for.end_crit_edge, label %for.body.4

for.inc.3.for.end_crit_edge:                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.4:                                       ; preds = %for.inc.3
  %41 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %mask, align 4
  %and8.4 = and i32 %42, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.4)
  %tobool9.not.4 = icmp eq i32 %and8.4, 0
  br i1 %tobool9.not.4, label %for.body.4.for.inc.4_crit_edge, label %if.then10.4

for.body.4.for.inc.4_crit_edge:                   ; preds = %for.body.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.4

if.then10.4:                                      ; preds = %for.body.4
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.4 = getelementptr %struct.phantom_device, ptr %data, i32 0, i32 10, i32 2, i32 4
  %43 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx.4, align 4
  %45 = ptrtoint ptr %oaddr to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %oaddr, align 4
  %add.ptr11.4 = getelementptr i32, ptr %46, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !163
  tail call void @arm_heavy_mb() #9
  %47 = tail call i32 @llvm.bswap.i32(i32 %44) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11.4, i32 %47) #9, !srcloc !164
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.then10.4, %for.body.4.for.inc.4_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %12)
  %exitcond.not.4 = icmp eq i32 %12, 5
  br i1 %exitcond.not.4, label %for.inc.4.for.end_crit_edge, label %for.body.5

for.inc.4.for.end_crit_edge:                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.5:                                       ; preds = %for.inc.4
  %48 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %mask, align 4
  %and8.5 = and i32 %49, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.5)
  %tobool9.not.5 = icmp eq i32 %and8.5, 0
  br i1 %tobool9.not.5, label %for.body.5.for.inc.5_crit_edge, label %if.then10.5

for.body.5.for.inc.5_crit_edge:                   ; preds = %for.body.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.5

if.then10.5:                                      ; preds = %for.body.5
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.5 = getelementptr %struct.phantom_device, ptr %data, i32 0, i32 10, i32 2, i32 5
  %50 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx.5, align 4
  %52 = ptrtoint ptr %oaddr to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %oaddr, align 4
  %add.ptr11.5 = getelementptr i32, ptr %53, i32 5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !163
  tail call void @arm_heavy_mb() #9
  %54 = tail call i32 @llvm.bswap.i32(i32 %51) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11.5, i32 %54) #9, !srcloc !164
  br label %for.inc.5

for.inc.5:                                        ; preds = %if.then10.5, %for.body.5.for.inc.5_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %12)
  %exitcond.not.5 = icmp eq i32 %12, 6
  br i1 %exitcond.not.5, label %for.inc.5.for.end_crit_edge, label %for.body.6

for.inc.5.for.end_crit_edge:                      ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.6:                                       ; preds = %for.inc.5
  %55 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %mask, align 4
  %and8.6 = and i32 %56, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.6)
  %tobool9.not.6 = icmp eq i32 %and8.6, 0
  br i1 %tobool9.not.6, label %for.body.6.for.inc.6_crit_edge, label %if.then10.6

for.body.6.for.inc.6_crit_edge:                   ; preds = %for.body.6
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.6

if.then10.6:                                      ; preds = %for.body.6
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.6 = getelementptr %struct.phantom_device, ptr %data, i32 0, i32 10, i32 2, i32 6
  %57 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx.6, align 4
  %59 = ptrtoint ptr %oaddr to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %oaddr, align 4
  %add.ptr11.6 = getelementptr i32, ptr %60, i32 6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !163
  tail call void @arm_heavy_mb() #9
  %61 = tail call i32 @llvm.bswap.i32(i32 %58) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11.6, i32 %61) #9, !srcloc !164
  br label %for.inc.6

for.inc.6:                                        ; preds = %if.then10.6, %for.body.6.for.inc.6_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %12)
  %exitcond.not.6 = icmp eq i32 %12, 7
  br i1 %exitcond.not.6, label %for.inc.6.for.end_crit_edge, label %for.body.7

for.inc.6.for.end_crit_edge:                      ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.7:                                       ; preds = %for.inc.6
  %62 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %mask, align 4
  %and8.7 = and i32 %63, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.7)
  %tobool9.not.7 = icmp eq i32 %and8.7, 0
  br i1 %tobool9.not.7, label %for.body.7.for.end_crit_edge, label %if.then10.7

for.body.7.for.end_crit_edge:                     ; preds = %for.body.7
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.then10.7:                                      ; preds = %for.body.7
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.7 = getelementptr %struct.phantom_device, ptr %data, i32 0, i32 10, i32 2, i32 7
  %64 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx.7, align 4
  %66 = ptrtoint ptr %oaddr to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %oaddr, align 4
  %add.ptr11.7 = getelementptr i32, ptr %67, i32 7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !163
  tail call void @arm_heavy_mb() #9
  %68 = tail call i32 @llvm.bswap.i32(i32 %65) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11.7, i32 %68) #9, !srcloc !164
  br label %for.end

for.end:                                          ; preds = %if.then10.7, %for.body.7.for.end_crit_edge, %for.inc.6.for.end_crit_edge, %for.inc.5.for.end_crit_edge, %for.inc.4.for.end_crit_edge, %for.inc.3.for.end_crit_edge, %for.inc.2.for.end_crit_edge, %for.inc.1.for.end_crit_edge, %for.inc.for.end_crit_edge, %if.then6.for.end_crit_edge
  %ctl_reg = getelementptr inbounds %struct.phantom_device, ptr %data, i32 0, i32 11
  %69 = ptrtoint ptr %ctl_reg to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %ctl_reg, align 4
  %xor = xor i32 %70, 1
  store i32 %xor, ptr %ctl_reg, align 4
  %71 = ptrtoint ptr %iaddr to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %iaddr, align 4
  %add.ptr15 = getelementptr i32, ptr %72, i32 6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !163
  tail call void @arm_heavy_mb() #9
  %73 = tail call i32 @llvm.bswap.i32(i32 %xor) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15, i32 %73) #9, !srcloc !164
  br label %if.end16

if.end16:                                         ; preds = %for.end, %if.end.if.end16_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %regs_lock) #9
  %74 = ptrtoint ptr %iaddr to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %iaddr, align 4
  %76 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %75) #9, !srcloc !165
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !166
  %counter = getelementptr inbounds %struct.phantom_device, ptr %data, i32 0, i32 5
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %counter, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %counter, i32 1, i32 3, i32 1) #9
  %77 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %counter, ptr %counter, i32 1, ptr elementtype(i32) %counter) #9, !srcloc !167
  %wait = getelementptr inbounds %struct.phantom_device, ptr %data, i32 0, i32 6
  tail call void @__wake_up(ptr noundef %wait, i32 noundef 1, i32 noundef 1, ptr noundef null) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.then
  %retval.0 = phi i32 [ 1, %if.end16 ], [ 0, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cdev_add(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_create(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_iounmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_release_regions(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @no_llseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @phantom_poll(ptr noundef %file, ptr noundef %wait) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @phantom_poll.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@phantom_poll, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !161

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %counter = getelementptr inbounds %struct.phantom_device, ptr %1, i32 0, i32 5
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %counter, i32 noundef 4) #9
  %2 = ptrtoint ptr %counter to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %counter, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @phantom_poll.__UNIQUE_ID_ddebug246, ptr noundef nonnull @.str.44, i32 noundef %3) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %wait4 = getelementptr inbounds %struct.phantom_device, ptr %1, i32 0, i32 6
  %tobool.not.i = icmp eq ptr %wait, null
  br i1 %tobool.not.i, label %do.end.poll_wait.exit_crit_edge, label %land.lhs.true.i

do.end.poll_wait.exit_crit_edge:                  ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %poll_wait.exit

land.lhs.true.i:                                  ; preds = %do.end
  %4 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wait, align 4
  %tobool1.not.i = icmp eq ptr %5, null
  %tobool3.not.i = icmp eq ptr %wait4, null
  %or.cond.i = or i1 %tobool3.not.i, %tobool1.not.i
  br i1 %or.cond.i, label %land.lhs.true.i.poll_wait.exit_crit_edge, label %if.then.i

land.lhs.true.i.poll_wait.exit_crit_edge:         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %poll_wait.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %5(ptr noundef %file, ptr noundef nonnull %wait4, ptr noundef nonnull %wait) #9
  br label %poll_wait.exit

poll_wait.exit:                                   ; preds = %if.then.i, %land.lhs.true.i.poll_wait.exit_crit_edge, %do.end.poll_wait.exit_crit_edge
  %status = getelementptr inbounds %struct.phantom_device, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %status, align 4
  %and = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %poll_wait.exit.do.body13_crit_edge, label %if.else

poll_wait.exit.do.body13_crit_edge:               ; preds = %poll_wait.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body13

if.else:                                          ; preds = %poll_wait.exit
  call void @__sanitizer_cov_trace_pc() #11
  %counter7 = getelementptr inbounds %struct.phantom_device, ptr %1, i32 0, i32 5
  %call.i.i37 = tail call zeroext i1 @__kasan_check_read(ptr noundef %counter7, i32 noundef 4) #9
  %8 = ptrtoint ptr %counter7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %counter7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool9.not = icmp eq i32 %9, 0
  %spec.select = select i1 %tobool9.not, i32 0, i32 65
  br label %do.body13

do.body13:                                        ; preds = %if.else, %poll_wait.exit.do.body13_crit_edge
  %mask.0 = phi i32 [ 8, %poll_wait.exit.do.body13_crit_edge ], [ %spec.select, %if.else ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @phantom_poll.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@phantom_poll, %if.then25)) #9
          to label %do.end30 [label %if.then25], !srcloc !161

if.then25:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #11
  %counter26 = getelementptr inbounds %struct.phantom_device, ptr %1, i32 0, i32 5
  %call.i.i41 = tail call zeroext i1 @__kasan_check_read(ptr noundef %counter26, i32 noundef 4) #9
  %10 = ptrtoint ptr %counter26 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %counter26, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @phantom_poll.__UNIQUE_ID_ddebug247, ptr noundef nonnull @.str.45, i32 noundef %mask.0, i32 noundef %11) #9
  br label %do.end30

do.end30:                                         ; preds = %if.then25, %do.body13
  ret i32 %mask.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @phantom_ioctl(ptr nocapture noundef readonly %file, i32 noundef %cmd, i32 noundef %arg) #3 align 64 {
entry:
  %rs = alloca %struct.phm_regs, align 4
  %r = alloca %struct.phm_reg, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %rs) #9
  %2 = call ptr @memset(ptr %rs, i32 255, i32 40)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %r) #9
  %3 = ptrtoint ptr %r to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %r, align 4, !annotation !162
  %4 = getelementptr inbounds %struct.phm_reg, ptr %r, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %4, align 4, !annotation !162
  %6 = inttoptr i32 %arg to ptr
  %7 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cmd, label %entry.cleanup236_crit_edge [
    i32 1074294790, label %entry.if.end59.i.i_crit_edge
    i32 1074032641, label %entry.if.end59.i.i_crit_edge430
    i32 1076391944, label %entry.if.end59.i.i300_crit_edge
    i32 1074032643, label %entry.if.end59.i.i300_crit_edge431
    i32 -1073188859, label %entry.if.end59.i.i326_crit_edge
    i32 -1073451008, label %entry.if.end59.i.i326_crit_edge432
    i32 -1071091705, label %entry.if.end59.i.i359_crit_edge
    i32 -1073451006, label %entry.if.end59.i.i359_crit_edge433
    i32 28676, label %do.body209
  ]

entry.if.end59.i.i359_crit_edge433:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end59.i.i359

entry.if.end59.i.i359_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end59.i.i359

entry.if.end59.i.i326_crit_edge432:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end59.i.i326

entry.if.end59.i.i326_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end59.i.i326

entry.if.end59.i.i300_crit_edge431:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end59.i.i300

entry.if.end59.i.i300_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end59.i.i300

entry.if.end59.i.i_crit_edge430:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end59.i.i

entry.if.end59.i.i_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end59.i.i

entry.cleanup236_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup236

if.end59.i.i:                                     ; preds = %entry.if.end59.i.i_crit_edge, %entry.if.end59.i.i_crit_edge430
  tail call void @__might_fault(ptr noundef nonnull @.str.53, i32 noundef 156) #9
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i, label %if.end59.i.i.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.end59.i.i.if.then11.i.i_crit_edge:             ; preds = %if.end59.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.end59.i.i
  %8 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %6, i32 8, i32 -1226833920) #14, !srcloc !168
  %asmresult.i.i = extractvalue { i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !169

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %r, i32 noundef 8) #9
  %9 = call i32 @llvm.read_register.i32(metadata !151) #9
  %and.i.i.i.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 4
  %11 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #6, !srcloc !170
  %and.i.i.i.i = and i32 %11, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #9, !srcloc !171
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %r, ptr noundef %6, i32 noundef 8) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %11) #9, !srcloc !171
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !169

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.end59.i.i.if.then11.i.i_crit_edge
  %res.0.i.i398 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 8, %if.end59.i.i.if.then11.i.i_crit_edge ], [ 8, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 8, %res.0.i.i398
  %add.ptr.i.i = getelementptr i8, ptr %r, i32 %sub.i.i
  %12 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i398)
  br label %cleanup236

if.end:                                           ; preds = %if.end.i.i
  %13 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %r, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %14)
  %cmp = icmp ugt i32 %14, 7
  br i1 %cmp, label %if.end.cleanup236_crit_edge, label %do.body3

if.end.cleanup236_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup236

do.body3:                                         ; preds = %if.end
  %regs_lock = getelementptr inbounds %struct.phantom_device, ptr %1, i32 0, i32 9
  %call6 = call i32 @_raw_spin_lock_irqsave(ptr noundef %regs_lock) #9
  %15 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %r, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %16)
  %cmp10 = icmp eq i32 %16, 6
  br i1 %cmp10, label %land.lhs.true, label %do.body3.do.body19_crit_edge

do.body3.do.body19_crit_edge:                     ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body19

land.lhs.true:                                    ; preds = %do.body3
  %17 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %4, align 4
  %and = and i32 %18, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool12.not = icmp eq i32 %and, 0
  br i1 %tobool12.not, label %land.lhs.true.do.body19_crit_edge, label %land.lhs.true13

land.lhs.true.do.body19_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body19

land.lhs.true13:                                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %status = getelementptr inbounds %struct.phantom_device, ptr %1, i32 0, i32 4
  %19 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %status, align 4
  %or = or i32 %20, 1
  call fastcc void @phantom_status(ptr noundef %1, i32 noundef %or)
  br label %do.body19

do.body19:                                        ; preds = %land.lhs.true13, %land.lhs.true.do.body19_crit_edge, %do.body3.do.body19_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @phantom_ioctl.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@phantom_ioctl, %if.then25)) #9
          to label %do.end30 [label %if.then25], !srcloc !161

if.then25:                                        ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #11
  %21 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %4, align 4
  %23 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %r, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @phantom_ioctl.__UNIQUE_ID_ddebug239, ptr noundef nonnull @.str.47, i32 noundef %22, i32 noundef %24) #9
  br label %do.end30

do.end30:                                         ; preds = %if.then25, %do.body19
  %25 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %r, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %26)
  %cmp32 = icmp eq i32 %26, 6
  br i1 %cmp32, label %land.lhs.true34, label %do.end30.if.end46_crit_edge

do.end30.if.end46_crit_edge:                      ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end46

land.lhs.true34:                                  ; preds = %do.end30
  %status35 = getelementptr inbounds %struct.phantom_device, ptr %1, i32 0, i32 4
  %27 = ptrtoint ptr %status35 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %status35, align 4
  %and36 = and i32 %28, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool37.not, label %land.lhs.true34.if.end46_crit_edge, label %if.then38

land.lhs.true34.if.end46_crit_edge:               ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end46

if.then38:                                        ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #11
  %29 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %4, align 4
  %and40 = and i32 %30, -2
  %ctl_reg = getelementptr inbounds %struct.phantom_device, ptr %1, i32 0, i32 11
  %31 = ptrtoint ptr %ctl_reg to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %ctl_reg, align 4
  %and41 = and i32 %32, 1
  %or43 = or i32 %and41, %and40
  store i32 %or43, ptr %4, align 4
  store i32 %or43, ptr %ctl_reg, align 4
  br label %if.end46

if.end46:                                         ; preds = %if.then38, %land.lhs.true34.if.end46_crit_edge, %do.end30.if.end46_crit_edge
  %33 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %4, align 4
  %iaddr = getelementptr inbounds %struct.phantom_device, ptr %1, i32 0, i32 2
  %35 = ptrtoint ptr %iaddr to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %iaddr, align 4
  %add.ptr = getelementptr i32, ptr %36, i32 %26
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !163
  call void @arm_heavy_mb() #9
  %37 = call i32 @llvm.bswap.i32(i32 %34) #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %37) #9, !srcloc !164
  %38 = ptrtoint ptr %iaddr to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %iaddr, align 4
  %40 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %39) #9, !srcloc !165
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !166
  %41 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %r, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %42)
  %cmp52 = icmp eq i32 %42, 6
  br i1 %cmp52, label %land.lhs.true54, label %if.end46.if.end62_crit_edge

if.end46.if.end62_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end62

land.lhs.true54:                                  ; preds = %if.end46
  %43 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %4, align 4
  %and56 = and i32 %44, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56)
  %tobool57.not = icmp eq i32 %and56, 0
  br i1 %tobool57.not, label %if.then58, label %land.lhs.true54.if.end62_crit_edge

land.lhs.true54.if.end62_crit_edge:               ; preds = %land.lhs.true54
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end62

if.then58:                                        ; preds = %land.lhs.true54
  call void @__sanitizer_cov_trace_pc() #11
  %status59 = getelementptr inbounds %struct.phantom_device, ptr %1, i32 0, i32 4
  %45 = ptrtoint ptr %status59 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %status59, align 4
  %and60 = and i32 %46, -2
  call fastcc void @phantom_status(ptr noundef %1, i32 noundef %and60)
  br label %if.end62

if.end62:                                         ; preds = %if.then58, %land.lhs.true54.if.end62_crit_edge, %if.end46.if.end62_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %regs_lock, i32 noundef %call6) #9
  br label %sw.epilog

if.end59.i.i300:                                  ; preds = %entry.if.end59.i.i300_crit_edge, %entry.if.end59.i.i300_crit_edge431
  tail call void @__might_fault(ptr noundef nonnull @.str.53, i32 noundef 156) #9
  %call.i.i301 = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i301, label %if.end59.i.i300.if.then11.i.i317_crit_edge, label %land.lhs.true.i.i304

if.end59.i.i300.if.then11.i.i317_crit_edge:       ; preds = %if.end59.i.i300
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i317

land.lhs.true.i.i304:                             ; preds = %if.end59.i.i300
  %47 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %6, i32 40, i32 -1226833920) #14, !srcloc !168
  %asmresult.i.i302 = extractvalue { i32, i32 } %47, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i302)
  %cmp.i6.i303 = icmp eq i32 %asmresult.i.i302, 0
  br i1 %cmp.i6.i303, label %if.end.i.i314, label %land.lhs.true.i.i304.if.then11.i.i317_crit_edge, !prof !169

land.lhs.true.i.i304.if.then11.i.i317_crit_edge:  ; preds = %land.lhs.true.i.i304
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i317

if.end.i.i314:                                    ; preds = %land.lhs.true.i.i304
  %call.i.i.i305 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %rs, i32 noundef 40) #9
  %48 = call i32 @llvm.read_register.i32(metadata !151) #9
  %and.i.i.i.i.i.i306 = and i32 %48, -16384
  %49 = inttoptr i32 %and.i.i.i.i.i.i306 to ptr
  %cpu_domain.i.i.i.i.i307 = getelementptr inbounds %struct.thread_info, ptr %49, i32 0, i32 4
  %50 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i307) #6, !srcloc !170
  %and.i.i.i.i308 = and i32 %50, -13
  %or.i.i.i.i309 = or i32 %and.i.i.i.i308, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i309) #9, !srcloc !171
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  %call1.i.i.i310 = call i32 @arm_copy_from_user(ptr noundef nonnull %rs, ptr noundef %6, i32 noundef 40) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %50) #9, !srcloc !171
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i310)
  %tobool4.not.i.i313 = icmp eq i32 %call1.i.i.i310, 0
  br i1 %tobool4.not.i.i313, label %do.body69, label %if.end.i.i314.if.then11.i.i317_crit_edge, !prof !169

if.end.i.i314.if.then11.i.i317_crit_edge:         ; preds = %if.end.i.i314
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i317

if.then11.i.i317:                                 ; preds = %if.end.i.i314.if.then11.i.i317_crit_edge, %land.lhs.true.i.i304.if.then11.i.i317_crit_edge, %if.end59.i.i300.if.then11.i.i317_crit_edge
  %res.0.i.i312404 = phi i32 [ %call1.i.i.i310, %if.end.i.i314.if.then11.i.i317_crit_edge ], [ 40, %if.end59.i.i300.if.then11.i.i317_crit_edge ], [ 40, %land.lhs.true.i.i304.if.then11.i.i317_crit_edge ]
  %sub.i.i315 = sub i32 40, %res.0.i.i312404
  %add.ptr.i.i316 = getelementptr i8, ptr %rs, i32 %sub.i.i315
  %51 = call ptr @memset(ptr %add.ptr.i.i316, i32 0, i32 %res.0.i.i312404)
  br label %cleanup236

do.body69:                                        ; preds = %if.end.i.i314
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @phantom_ioctl.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@phantom_ioctl, %if.then81)) #9
          to label %do.body86 [label %if.then81], !srcloc !161

if.then81:                                        ; preds = %do.body69
  call void @__sanitizer_cov_trace_pc() #11
  %52 = ptrtoint ptr %rs to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %rs, align 4
  %mask = getelementptr inbounds %struct.phm_regs, ptr %rs, i32 0, i32 1
  %54 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %mask, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @phantom_ioctl.__UNIQUE_ID_ddebug240, ptr noundef nonnull @.str.48, i32 noundef %53, i32 noundef %55) #9
  br label %do.body86

do.body86:                                        ; preds = %if.then81, %do.body69
  %regs_lock92 = getelementptr inbounds %struct.phantom_device, ptr %1, i32 0, i32 9
  %call94 = call i32 @_raw_spin_lock_irqsave(ptr noundef %regs_lock92) #9
  %status99 = getelementptr inbounds %struct.phantom_device, ptr %1, i32 0, i32 4
  %56 = ptrtoint ptr %status99 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %status99, align 4
  %and100 = and i32 %57, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and100)
  %tobool101.not = icmp eq i32 %and100, 0
  br i1 %tobool101.not, label %if.else, label %if.then102

if.then102:                                       ; preds = %do.body86
  call void @__sanitizer_cov_trace_pc() #11
  %oregs = getelementptr inbounds %struct.phantom_device, ptr %1, i32 0, i32 10
  %58 = call ptr @memcpy(ptr %oregs, ptr %rs, i32 40)
  br label %if.end117

if.else:                                          ; preds = %do.body86
  %59 = ptrtoint ptr %rs to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %rs, align 4
  %61 = call i32 @llvm.umin.i32(i32 %60, i32 8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %cmp107426.not = icmp eq i32 %61, 0
  br i1 %cmp107426.not, label %if.else.for.end_crit_edge, label %for.body.lr.ph

if.else.for.end_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.else
  %mask109 = getelementptr inbounds %struct.phm_regs, ptr %rs, i32 0, i32 1
  %oaddr = getelementptr inbounds %struct.phantom_device, ptr %1, i32 0, i32 3
  %62 = ptrtoint ptr %mask109 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %mask109, align 4
  %and110 = and i32 %63, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and110)
  %tobool111.not = icmp eq i32 %and110, 0
  br i1 %tobool111.not, label %for.body.lr.ph.for.inc_crit_edge, label %if.then112

for.body.lr.ph.for.inc_crit_edge:                 ; preds = %for.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then112:                                       ; preds = %for.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx = getelementptr inbounds %struct.phm_regs, ptr %rs, i32 0, i32 2, i32 0
  %64 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx, align 4
  %66 = ptrtoint ptr %oaddr to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %oaddr, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !163
  call void @arm_heavy_mb() #9
  %68 = call i32 @llvm.bswap.i32(i32 %65) #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %67, i32 %68) #9, !srcloc !164
  br label %for.inc

for.inc:                                          ; preds = %if.then112, %for.body.lr.ph.for.inc_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %61)
  %exitcond429.not = icmp eq i32 %61, 1
  br i1 %exitcond429.not, label %for.inc.for.end_crit_edge, label %for.body.1

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.1:                                       ; preds = %for.inc
  %69 = ptrtoint ptr %mask109 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %mask109, align 4
  %and110.1 = and i32 %70, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and110.1)
  %tobool111.not.1 = icmp eq i32 %and110.1, 0
  br i1 %tobool111.not.1, label %for.body.1.for.inc.1_crit_edge, label %if.then112.1

for.body.1.for.inc.1_crit_edge:                   ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.1

if.then112.1:                                     ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.1 = getelementptr inbounds %struct.phm_regs, ptr %rs, i32 0, i32 2, i32 1
  %71 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %arrayidx.1, align 4
  %73 = ptrtoint ptr %oaddr to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %oaddr, align 4
  %add.ptr113.1 = getelementptr i32, ptr %74, i32 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !163
  call void @arm_heavy_mb() #9
  %75 = call i32 @llvm.bswap.i32(i32 %72) #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr113.1, i32 %75) #9, !srcloc !164
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then112.1, %for.body.1.for.inc.1_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %61)
  %exitcond429.not.1 = icmp eq i32 %61, 2
  br i1 %exitcond429.not.1, label %for.inc.1.for.end_crit_edge, label %for.body.2

for.inc.1.for.end_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.2:                                       ; preds = %for.inc.1
  %76 = ptrtoint ptr %mask109 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %mask109, align 4
  %and110.2 = and i32 %77, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and110.2)
  %tobool111.not.2 = icmp eq i32 %and110.2, 0
  br i1 %tobool111.not.2, label %for.body.2.for.inc.2_crit_edge, label %if.then112.2

for.body.2.for.inc.2_crit_edge:                   ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.2

if.then112.2:                                     ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.2 = getelementptr inbounds %struct.phm_regs, ptr %rs, i32 0, i32 2, i32 2
  %78 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %arrayidx.2, align 4
  %80 = ptrtoint ptr %oaddr to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %oaddr, align 4
  %add.ptr113.2 = getelementptr i32, ptr %81, i32 2
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !163
  call void @arm_heavy_mb() #9
  %82 = call i32 @llvm.bswap.i32(i32 %79) #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr113.2, i32 %82) #9, !srcloc !164
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then112.2, %for.body.2.for.inc.2_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %61)
  %exitcond429.not.2 = icmp eq i32 %61, 3
  br i1 %exitcond429.not.2, label %for.inc.2.for.end_crit_edge, label %for.body.3

for.inc.2.for.end_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.3:                                       ; preds = %for.inc.2
  %83 = ptrtoint ptr %mask109 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %mask109, align 4
  %and110.3 = and i32 %84, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and110.3)
  %tobool111.not.3 = icmp eq i32 %and110.3, 0
  br i1 %tobool111.not.3, label %for.body.3.for.inc.3_crit_edge, label %if.then112.3

for.body.3.for.inc.3_crit_edge:                   ; preds = %for.body.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.3

if.then112.3:                                     ; preds = %for.body.3
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.3 = getelementptr inbounds %struct.phm_regs, ptr %rs, i32 0, i32 2, i32 3
  %85 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %arrayidx.3, align 4
  %87 = ptrtoint ptr %oaddr to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %oaddr, align 4
  %add.ptr113.3 = getelementptr i32, ptr %88, i32 3
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !163
  call void @arm_heavy_mb() #9
  %89 = call i32 @llvm.bswap.i32(i32 %86) #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr113.3, i32 %89) #9, !srcloc !164
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then112.3, %for.body.3.for.inc.3_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %61)
  %exitcond429.not.3 = icmp eq i32 %61, 4
  br i1 %exitcond429.not.3, label %for.inc.3.for.end_crit_edge, label %for.body.4

for.inc.3.for.end_crit_edge:                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.4:                                       ; preds = %for.inc.3
  %90 = ptrtoint ptr %mask109 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %mask109, align 4
  %and110.4 = and i32 %91, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and110.4)
  %tobool111.not.4 = icmp eq i32 %and110.4, 0
  br i1 %tobool111.not.4, label %for.body.4.for.inc.4_crit_edge, label %if.then112.4

for.body.4.for.inc.4_crit_edge:                   ; preds = %for.body.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.4

if.then112.4:                                     ; preds = %for.body.4
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.4 = getelementptr inbounds %struct.phm_regs, ptr %rs, i32 0, i32 2, i32 4
  %92 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %arrayidx.4, align 4
  %94 = ptrtoint ptr %oaddr to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %oaddr, align 4
  %add.ptr113.4 = getelementptr i32, ptr %95, i32 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !163
  call void @arm_heavy_mb() #9
  %96 = call i32 @llvm.bswap.i32(i32 %93) #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr113.4, i32 %96) #9, !srcloc !164
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.then112.4, %for.body.4.for.inc.4_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %61)
  %exitcond429.not.4 = icmp eq i32 %61, 5
  br i1 %exitcond429.not.4, label %for.inc.4.for.end_crit_edge, label %for.body.5

for.inc.4.for.end_crit_edge:                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.5:                                       ; preds = %for.inc.4
  %97 = ptrtoint ptr %mask109 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %mask109, align 4
  %and110.5 = and i32 %98, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and110.5)
  %tobool111.not.5 = icmp eq i32 %and110.5, 0
  br i1 %tobool111.not.5, label %for.body.5.for.inc.5_crit_edge, label %if.then112.5

for.body.5.for.inc.5_crit_edge:                   ; preds = %for.body.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.5

if.then112.5:                                     ; preds = %for.body.5
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.5 = getelementptr inbounds %struct.phm_regs, ptr %rs, i32 0, i32 2, i32 5
  %99 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %arrayidx.5, align 4
  %101 = ptrtoint ptr %oaddr to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %oaddr, align 4
  %add.ptr113.5 = getelementptr i32, ptr %102, i32 5
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !163
  call void @arm_heavy_mb() #9
  %103 = call i32 @llvm.bswap.i32(i32 %100) #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr113.5, i32 %103) #9, !srcloc !164
  br label %for.inc.5

for.inc.5:                                        ; preds = %if.then112.5, %for.body.5.for.inc.5_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %61)
  %exitcond429.not.5 = icmp eq i32 %61, 6
  br i1 %exitcond429.not.5, label %for.inc.5.for.end_crit_edge, label %for.body.6

for.inc.5.for.end_crit_edge:                      ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.6:                                       ; preds = %for.inc.5
  %104 = ptrtoint ptr %mask109 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %mask109, align 4
  %and110.6 = and i32 %105, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and110.6)
  %tobool111.not.6 = icmp eq i32 %and110.6, 0
  br i1 %tobool111.not.6, label %for.body.6.for.inc.6_crit_edge, label %if.then112.6

for.body.6.for.inc.6_crit_edge:                   ; preds = %for.body.6
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.6

if.then112.6:                                     ; preds = %for.body.6
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.6 = getelementptr inbounds %struct.phm_regs, ptr %rs, i32 0, i32 2, i32 6
  %106 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %arrayidx.6, align 4
  %108 = ptrtoint ptr %oaddr to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %oaddr, align 4
  %add.ptr113.6 = getelementptr i32, ptr %109, i32 6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !163
  call void @arm_heavy_mb() #9
  %110 = call i32 @llvm.bswap.i32(i32 %107) #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr113.6, i32 %110) #9, !srcloc !164
  br label %for.inc.6

for.inc.6:                                        ; preds = %if.then112.6, %for.body.6.for.inc.6_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %61)
  %exitcond429.not.6 = icmp eq i32 %61, 7
  br i1 %exitcond429.not.6, label %for.inc.6.for.end_crit_edge, label %for.body.7

for.inc.6.for.end_crit_edge:                      ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.7:                                       ; preds = %for.inc.6
  %111 = ptrtoint ptr %mask109 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %mask109, align 4
  %and110.7 = and i32 %112, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and110.7)
  %tobool111.not.7 = icmp eq i32 %and110.7, 0
  br i1 %tobool111.not.7, label %for.body.7.for.end_crit_edge, label %if.then112.7

for.body.7.for.end_crit_edge:                     ; preds = %for.body.7
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.then112.7:                                     ; preds = %for.body.7
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.7 = getelementptr inbounds %struct.phm_regs, ptr %rs, i32 0, i32 2, i32 7
  %113 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %arrayidx.7, align 4
  %115 = ptrtoint ptr %oaddr to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %oaddr, align 4
  %add.ptr113.7 = getelementptr i32, ptr %116, i32 7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !163
  call void @arm_heavy_mb() #9
  %117 = call i32 @llvm.bswap.i32(i32 %114) #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr113.7, i32 %117) #9, !srcloc !164
  br label %for.end

for.end:                                          ; preds = %if.then112.7, %for.body.7.for.end_crit_edge, %for.inc.6.for.end_crit_edge, %for.inc.5.for.end_crit_edge, %for.inc.4.for.end_crit_edge, %for.inc.3.for.end_crit_edge, %for.inc.2.for.end_crit_edge, %for.inc.1.for.end_crit_edge, %for.inc.for.end_crit_edge, %if.else.for.end_crit_edge
  %iaddr115 = getelementptr inbounds %struct.phantom_device, ptr %1, i32 0, i32 2
  %118 = ptrtoint ptr %iaddr115 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %iaddr115, align 4
  %120 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %119) #9, !srcloc !165
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !166
  br label %if.end117

if.end117:                                        ; preds = %for.end, %if.then102
  call void @_raw_spin_unlock_irqrestore(ptr noundef %regs_lock92, i32 noundef %call94) #9
  br label %sw.epilog

if.end59.i.i326:                                  ; preds = %entry.if.end59.i.i326_crit_edge, %entry.if.end59.i.i326_crit_edge432
  tail call void @__might_fault(ptr noundef nonnull @.str.53, i32 noundef 156) #9
  %call.i.i327 = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i327, label %if.end59.i.i326.if.then11.i.i343_crit_edge, label %land.lhs.true.i.i330

if.end59.i.i326.if.then11.i.i343_crit_edge:       ; preds = %if.end59.i.i326
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i343

land.lhs.true.i.i330:                             ; preds = %if.end59.i.i326
  %121 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %6, i32 8, i32 -1226833920) #14
  %asmresult.i.i328 = extractvalue { i32, i32 } %121, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i328)
  %cmp.i6.i329 = icmp eq i32 %asmresult.i.i328, 0
  br i1 %cmp.i6.i329, label %if.end.i.i340, label %land.lhs.true.i.i330.if.then11.i.i343_crit_edge, !prof !169

land.lhs.true.i.i330.if.then11.i.i343_crit_edge:  ; preds = %land.lhs.true.i.i330
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i343

if.end.i.i340:                                    ; preds = %land.lhs.true.i.i330
  %call.i.i.i331 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %r, i32 noundef 8) #9
  %122 = call i32 @llvm.read_register.i32(metadata !151) #9
  %and.i.i.i.i.i.i332 = and i32 %122, -16384
  %123 = inttoptr i32 %and.i.i.i.i.i.i332 to ptr
  %cpu_domain.i.i.i.i.i333 = getelementptr inbounds %struct.thread_info, ptr %123, i32 0, i32 4
  %124 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i333) #6, !srcloc !170
  %and.i.i.i.i334 = and i32 %124, -13
  %or.i.i.i.i335 = or i32 %and.i.i.i.i334, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i335) #9, !srcloc !171
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  %call1.i.i.i336 = call i32 @arm_copy_from_user(ptr noundef nonnull %r, ptr noundef %6, i32 noundef 8) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %124) #9, !srcloc !171
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i336)
  %tobool4.not.i.i339 = icmp eq i32 %call1.i.i.i336, 0
  br i1 %tobool4.not.i.i339, label %if.end123, label %if.end.i.i340.if.then11.i.i343_crit_edge, !prof !169

if.end.i.i340.if.then11.i.i343_crit_edge:         ; preds = %if.end.i.i340
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i343

if.then11.i.i343:                                 ; preds = %if.end.i.i340.if.then11.i.i343_crit_edge, %land.lhs.true.i.i330.if.then11.i.i343_crit_edge, %if.end59.i.i326.if.then11.i.i343_crit_edge
  %res.0.i.i338410 = phi i32 [ %call1.i.i.i336, %if.end.i.i340.if.then11.i.i343_crit_edge ], [ 8, %if.end59.i.i326.if.then11.i.i343_crit_edge ], [ 8, %land.lhs.true.i.i330.if.then11.i.i343_crit_edge ]
  %sub.i.i341 = sub i32 8, %res.0.i.i338410
  %add.ptr.i.i342 = getelementptr i8, ptr %r, i32 %sub.i.i341
  %125 = call ptr @memset(ptr %add.ptr.i.i342, i32 0, i32 %res.0.i.i338410)
  br label %cleanup236

if.end123:                                        ; preds = %if.end.i.i340
  %126 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %r, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %127)
  %cmp125 = icmp ugt i32 %127, 7
  br i1 %cmp125, label %if.end123.cleanup236_crit_edge, label %if.end59.i.i349

if.end123.cleanup236_crit_edge:                   ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup236

if.end59.i.i349:                                  ; preds = %if.end123
  %iaddr129 = getelementptr inbounds %struct.phantom_device, ptr %1, i32 0, i32 2
  %128 = ptrtoint ptr %iaddr129 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %iaddr129, align 4
  %add.ptr131 = getelementptr i32, ptr %129, i32 %127
  %130 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr131) #9, !srcloc !165
  %131 = call i32 @llvm.bswap.i32(i32 %130) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !166
  %132 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %131, ptr %4, align 4
  call void @__might_fault(ptr noundef nonnull @.str.53, i32 noundef 174) #9
  %call.i.i350 = call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i350, label %if.end59.i.i349.cleanup236_crit_edge, label %copy_to_user.exit

if.end59.i.i349.cleanup236_crit_edge:             ; preds = %if.end59.i.i349
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup236

copy_to_user.exit:                                ; preds = %if.end59.i.i349
  %call.i.i.i354 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %r, i32 noundef 8) #9
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %6, ptr noundef nonnull %r, i32 noundef 8) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool135.not = icmp eq i32 %call.i12.i.i, 0
  br i1 %tobool135.not, label %copy_to_user.exit.sw.epilog_crit_edge, label %copy_to_user.exit.cleanup236_crit_edge

copy_to_user.exit.cleanup236_crit_edge:           ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup236

copy_to_user.exit.sw.epilog_crit_edge:            ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.end59.i.i359:                                  ; preds = %entry.if.end59.i.i359_crit_edge, %entry.if.end59.i.i359_crit_edge433
  tail call void @__might_fault(ptr noundef nonnull @.str.53, i32 noundef 156) #9
  %call.i.i360 = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i360, label %if.end59.i.i359.if.then11.i.i376_crit_edge, label %land.lhs.true.i.i363

if.end59.i.i359.if.then11.i.i376_crit_edge:       ; preds = %if.end59.i.i359
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i376

land.lhs.true.i.i363:                             ; preds = %if.end59.i.i359
  %133 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %6, i32 40, i32 -1226833920) #14
  %asmresult.i.i361 = extractvalue { i32, i32 } %133, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i361)
  %cmp.i6.i362 = icmp eq i32 %asmresult.i.i361, 0
  br i1 %cmp.i6.i362, label %if.end.i.i373, label %land.lhs.true.i.i363.if.then11.i.i376_crit_edge, !prof !169

land.lhs.true.i.i363.if.then11.i.i376_crit_edge:  ; preds = %land.lhs.true.i.i363
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i376

if.end.i.i373:                                    ; preds = %land.lhs.true.i.i363
  %call.i.i.i364 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %rs, i32 noundef 40) #9
  %134 = call i32 @llvm.read_register.i32(metadata !151) #9
  %and.i.i.i.i.i.i365 = and i32 %134, -16384
  %135 = inttoptr i32 %and.i.i.i.i.i.i365 to ptr
  %cpu_domain.i.i.i.i.i366 = getelementptr inbounds %struct.thread_info, ptr %135, i32 0, i32 4
  %136 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i366) #6, !srcloc !170
  %and.i.i.i.i367 = and i32 %136, -13
  %or.i.i.i.i368 = or i32 %and.i.i.i.i367, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i368) #9, !srcloc !171
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  %call1.i.i.i369 = call i32 @arm_copy_from_user(ptr noundef nonnull %rs, ptr noundef %6, i32 noundef 40) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %136) #9, !srcloc !171
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i369)
  %tobool4.not.i.i372 = icmp eq i32 %call1.i.i.i369, 0
  br i1 %tobool4.not.i.i372, label %if.end143, label %if.end.i.i373.if.then11.i.i376_crit_edge, !prof !169

if.end.i.i373.if.then11.i.i376_crit_edge:         ; preds = %if.end.i.i373
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i376

if.then11.i.i376:                                 ; preds = %if.end.i.i373.if.then11.i.i376_crit_edge, %land.lhs.true.i.i363.if.then11.i.i376_crit_edge, %if.end59.i.i359.if.then11.i.i376_crit_edge
  %res.0.i.i371417 = phi i32 [ %call1.i.i.i369, %if.end.i.i373.if.then11.i.i376_crit_edge ], [ 40, %if.end59.i.i359.if.then11.i.i376_crit_edge ], [ 40, %land.lhs.true.i.i363.if.then11.i.i376_crit_edge ]
  %sub.i.i374 = sub i32 40, %res.0.i.i371417
  %add.ptr.i.i375 = getelementptr i8, ptr %rs, i32 %sub.i.i374
  %137 = call ptr @memset(ptr %add.ptr.i.i375, i32 0, i32 %res.0.i.i371417)
  br label %cleanup236

if.end143:                                        ; preds = %if.end.i.i373
  %138 = ptrtoint ptr %rs to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %rs, align 4
  %140 = call i32 @llvm.umin.i32(i32 %139, i32 8)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @phantom_ioctl.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@phantom_ioctl, %if.then164)) #9
          to label %do.body171 [label %if.then164], !srcloc !161

if.then164:                                       ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #11
  %141 = ptrtoint ptr %rs to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %rs, align 4
  %mask166 = getelementptr inbounds %struct.phm_regs, ptr %rs, i32 0, i32 1
  %143 = ptrtoint ptr %mask166 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %mask166, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @phantom_ioctl.__UNIQUE_ID_ddebug245, ptr noundef nonnull @.str.49, i32 noundef %142, i32 noundef %144) #9
  br label %do.body171

do.body171:                                       ; preds = %if.then164, %if.end143
  %regs_lock177 = getelementptr inbounds %struct.phantom_device, ptr %1, i32 0, i32 9
  %call179 = call i32 @_raw_spin_lock_irqsave(ptr noundef %regs_lock177) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %140)
  %cmp185423.not = icmp eq i32 %140, 0
  br i1 %cmp185423.not, label %do.body171.for.end201_crit_edge, label %for.body187.lr.ph

do.body171.for.end201_crit_edge:                  ; preds = %do.body171
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end201

for.body187.lr.ph:                                ; preds = %do.body171
  %mask188 = getelementptr inbounds %struct.phm_regs, ptr %rs, i32 0, i32 1
  %iaddr193 = getelementptr inbounds %struct.phantom_device, ptr %1, i32 0, i32 2
  %145 = ptrtoint ptr %mask188 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %mask188, align 4
  %and190 = and i32 %146, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and190)
  %tobool191.not = icmp eq i32 %and190, 0
  br i1 %tobool191.not, label %for.body187.lr.ph.for.inc199_crit_edge, label %if.then192

for.body187.lr.ph.for.inc199_crit_edge:           ; preds = %for.body187.lr.ph
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc199

if.then192:                                       ; preds = %for.body187.lr.ph
  call void @__sanitizer_cov_trace_pc() #11
  %147 = ptrtoint ptr %iaddr193 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %iaddr193, align 4
  %149 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %148) #9, !srcloc !165
  %150 = call i32 @llvm.bswap.i32(i32 %149) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !166
  %arrayidx197 = getelementptr inbounds %struct.phm_regs, ptr %rs, i32 0, i32 2, i32 0
  %151 = ptrtoint ptr %arrayidx197 to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 %150, ptr %arrayidx197, align 4
  br label %for.inc199

for.inc199:                                       ; preds = %if.then192, %for.body187.lr.ph.for.inc199_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %140)
  %exitcond.not = icmp eq i32 %140, 1
  br i1 %exitcond.not, label %for.inc199.for.end201_crit_edge, label %for.body187.1

for.inc199.for.end201_crit_edge:                  ; preds = %for.inc199
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end201

for.body187.1:                                    ; preds = %for.inc199
  %152 = ptrtoint ptr %mask188 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %mask188, align 4
  %and190.1 = and i32 %153, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and190.1)
  %tobool191.not.1 = icmp eq i32 %and190.1, 0
  br i1 %tobool191.not.1, label %for.body187.1.for.inc199.1_crit_edge, label %if.then192.1

for.body187.1.for.inc199.1_crit_edge:             ; preds = %for.body187.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc199.1

if.then192.1:                                     ; preds = %for.body187.1
  call void @__sanitizer_cov_trace_pc() #11
  %154 = ptrtoint ptr %iaddr193 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %iaddr193, align 4
  %add.ptr194.1 = getelementptr i32, ptr %155, i32 1
  %156 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr194.1) #9, !srcloc !165
  %157 = call i32 @llvm.bswap.i32(i32 %156) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !166
  %arrayidx197.1 = getelementptr inbounds %struct.phm_regs, ptr %rs, i32 0, i32 2, i32 1
  %158 = ptrtoint ptr %arrayidx197.1 to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 %157, ptr %arrayidx197.1, align 4
  br label %for.inc199.1

for.inc199.1:                                     ; preds = %if.then192.1, %for.body187.1.for.inc199.1_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %140)
  %exitcond.not.1 = icmp eq i32 %140, 2
  br i1 %exitcond.not.1, label %for.inc199.1.for.end201_crit_edge, label %for.body187.2

for.inc199.1.for.end201_crit_edge:                ; preds = %for.inc199.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end201

for.body187.2:                                    ; preds = %for.inc199.1
  %159 = ptrtoint ptr %mask188 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %mask188, align 4
  %and190.2 = and i32 %160, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and190.2)
  %tobool191.not.2 = icmp eq i32 %and190.2, 0
  br i1 %tobool191.not.2, label %for.body187.2.for.inc199.2_crit_edge, label %if.then192.2

for.body187.2.for.inc199.2_crit_edge:             ; preds = %for.body187.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc199.2

if.then192.2:                                     ; preds = %for.body187.2
  call void @__sanitizer_cov_trace_pc() #11
  %161 = ptrtoint ptr %iaddr193 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %iaddr193, align 4
  %add.ptr194.2 = getelementptr i32, ptr %162, i32 2
  %163 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr194.2) #9, !srcloc !165
  %164 = call i32 @llvm.bswap.i32(i32 %163) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !166
  %arrayidx197.2 = getelementptr inbounds %struct.phm_regs, ptr %rs, i32 0, i32 2, i32 2
  %165 = ptrtoint ptr %arrayidx197.2 to i32
  call void @__asan_store4_noabort(i32 %165)
  store i32 %164, ptr %arrayidx197.2, align 4
  br label %for.inc199.2

for.inc199.2:                                     ; preds = %if.then192.2, %for.body187.2.for.inc199.2_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %140)
  %exitcond.not.2 = icmp eq i32 %140, 3
  br i1 %exitcond.not.2, label %for.inc199.2.for.end201_crit_edge, label %for.body187.3

for.inc199.2.for.end201_crit_edge:                ; preds = %for.inc199.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end201

for.body187.3:                                    ; preds = %for.inc199.2
  %166 = ptrtoint ptr %mask188 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %mask188, align 4
  %and190.3 = and i32 %167, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and190.3)
  %tobool191.not.3 = icmp eq i32 %and190.3, 0
  br i1 %tobool191.not.3, label %for.body187.3.for.inc199.3_crit_edge, label %if.then192.3

for.body187.3.for.inc199.3_crit_edge:             ; preds = %for.body187.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc199.3

if.then192.3:                                     ; preds = %for.body187.3
  call void @__sanitizer_cov_trace_pc() #11
  %168 = ptrtoint ptr %iaddr193 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %iaddr193, align 4
  %add.ptr194.3 = getelementptr i32, ptr %169, i32 3
  %170 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr194.3) #9, !srcloc !165
  %171 = call i32 @llvm.bswap.i32(i32 %170) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !166
  %arrayidx197.3 = getelementptr inbounds %struct.phm_regs, ptr %rs, i32 0, i32 2, i32 3
  %172 = ptrtoint ptr %arrayidx197.3 to i32
  call void @__asan_store4_noabort(i32 %172)
  store i32 %171, ptr %arrayidx197.3, align 4
  br label %for.inc199.3

for.inc199.3:                                     ; preds = %if.then192.3, %for.body187.3.for.inc199.3_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %140)
  %exitcond.not.3 = icmp eq i32 %140, 4
  br i1 %exitcond.not.3, label %for.inc199.3.for.end201_crit_edge, label %for.body187.4

for.inc199.3.for.end201_crit_edge:                ; preds = %for.inc199.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end201

for.body187.4:                                    ; preds = %for.inc199.3
  %173 = ptrtoint ptr %mask188 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %mask188, align 4
  %and190.4 = and i32 %174, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and190.4)
  %tobool191.not.4 = icmp eq i32 %and190.4, 0
  br i1 %tobool191.not.4, label %for.body187.4.for.inc199.4_crit_edge, label %if.then192.4

for.body187.4.for.inc199.4_crit_edge:             ; preds = %for.body187.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc199.4

if.then192.4:                                     ; preds = %for.body187.4
  call void @__sanitizer_cov_trace_pc() #11
  %175 = ptrtoint ptr %iaddr193 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %iaddr193, align 4
  %add.ptr194.4 = getelementptr i32, ptr %176, i32 4
  %177 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr194.4) #9, !srcloc !165
  %178 = call i32 @llvm.bswap.i32(i32 %177) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !166
  %arrayidx197.4 = getelementptr inbounds %struct.phm_regs, ptr %rs, i32 0, i32 2, i32 4
  %179 = ptrtoint ptr %arrayidx197.4 to i32
  call void @__asan_store4_noabort(i32 %179)
  store i32 %178, ptr %arrayidx197.4, align 4
  br label %for.inc199.4

for.inc199.4:                                     ; preds = %if.then192.4, %for.body187.4.for.inc199.4_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %140)
  %exitcond.not.4 = icmp eq i32 %140, 5
  br i1 %exitcond.not.4, label %for.inc199.4.for.end201_crit_edge, label %for.body187.5

for.inc199.4.for.end201_crit_edge:                ; preds = %for.inc199.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end201

for.body187.5:                                    ; preds = %for.inc199.4
  %180 = ptrtoint ptr %mask188 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %mask188, align 4
  %and190.5 = and i32 %181, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and190.5)
  %tobool191.not.5 = icmp eq i32 %and190.5, 0
  br i1 %tobool191.not.5, label %for.body187.5.for.inc199.5_crit_edge, label %if.then192.5

for.body187.5.for.inc199.5_crit_edge:             ; preds = %for.body187.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc199.5

if.then192.5:                                     ; preds = %for.body187.5
  call void @__sanitizer_cov_trace_pc() #11
  %182 = ptrtoint ptr %iaddr193 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %iaddr193, align 4
  %add.ptr194.5 = getelementptr i32, ptr %183, i32 5
  %184 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr194.5) #9, !srcloc !165
  %185 = call i32 @llvm.bswap.i32(i32 %184) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !166
  %arrayidx197.5 = getelementptr inbounds %struct.phm_regs, ptr %rs, i32 0, i32 2, i32 5
  %186 = ptrtoint ptr %arrayidx197.5 to i32
  call void @__asan_store4_noabort(i32 %186)
  store i32 %185, ptr %arrayidx197.5, align 4
  br label %for.inc199.5

for.inc199.5:                                     ; preds = %if.then192.5, %for.body187.5.for.inc199.5_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %140)
  %exitcond.not.5 = icmp eq i32 %140, 6
  br i1 %exitcond.not.5, label %for.inc199.5.for.end201_crit_edge, label %for.body187.6

for.inc199.5.for.end201_crit_edge:                ; preds = %for.inc199.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end201

for.body187.6:                                    ; preds = %for.inc199.5
  %187 = ptrtoint ptr %mask188 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %mask188, align 4
  %and190.6 = and i32 %188, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and190.6)
  %tobool191.not.6 = icmp eq i32 %and190.6, 0
  br i1 %tobool191.not.6, label %for.body187.6.for.inc199.6_crit_edge, label %if.then192.6

for.body187.6.for.inc199.6_crit_edge:             ; preds = %for.body187.6
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc199.6

if.then192.6:                                     ; preds = %for.body187.6
  call void @__sanitizer_cov_trace_pc() #11
  %189 = ptrtoint ptr %iaddr193 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %iaddr193, align 4
  %add.ptr194.6 = getelementptr i32, ptr %190, i32 6
  %191 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr194.6) #9, !srcloc !165
  %192 = call i32 @llvm.bswap.i32(i32 %191) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !166
  %arrayidx197.6 = getelementptr inbounds %struct.phm_regs, ptr %rs, i32 0, i32 2, i32 6
  %193 = ptrtoint ptr %arrayidx197.6 to i32
  call void @__asan_store4_noabort(i32 %193)
  store i32 %192, ptr %arrayidx197.6, align 4
  br label %for.inc199.6

for.inc199.6:                                     ; preds = %if.then192.6, %for.body187.6.for.inc199.6_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %140)
  %exitcond.not.6 = icmp eq i32 %140, 7
  br i1 %exitcond.not.6, label %for.inc199.6.for.end201_crit_edge, label %for.body187.7

for.inc199.6.for.end201_crit_edge:                ; preds = %for.inc199.6
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end201

for.body187.7:                                    ; preds = %for.inc199.6
  %194 = ptrtoint ptr %mask188 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %mask188, align 4
  %and190.7 = and i32 %195, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and190.7)
  %tobool191.not.7 = icmp eq i32 %and190.7, 0
  br i1 %tobool191.not.7, label %for.body187.7.for.end201_crit_edge, label %if.then192.7

for.body187.7.for.end201_crit_edge:               ; preds = %for.body187.7
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end201

if.then192.7:                                     ; preds = %for.body187.7
  call void @__sanitizer_cov_trace_pc() #11
  %196 = ptrtoint ptr %iaddr193 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %iaddr193, align 4
  %add.ptr194.7 = getelementptr i32, ptr %197, i32 7
  %198 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr194.7) #9, !srcloc !165
  %199 = call i32 @llvm.bswap.i32(i32 %198) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !166
  %arrayidx197.7 = getelementptr inbounds %struct.phm_regs, ptr %rs, i32 0, i32 2, i32 7
  %200 = ptrtoint ptr %arrayidx197.7 to i32
  call void @__asan_store4_noabort(i32 %200)
  store i32 %199, ptr %arrayidx197.7, align 4
  br label %for.end201

for.end201:                                       ; preds = %if.then192.7, %for.body187.7.for.end201_crit_edge, %for.inc199.6.for.end201_crit_edge, %for.inc199.5.for.end201_crit_edge, %for.inc199.4.for.end201_crit_edge, %for.inc199.3.for.end201_crit_edge, %for.inc199.2.for.end201_crit_edge, %for.inc199.1.for.end201_crit_edge, %for.inc199.for.end201_crit_edge, %do.body171.for.end201_crit_edge
  %counter = getelementptr inbounds %struct.phantom_device, ptr %1, i32 0, i32 5
  %call.i.i382 = call zeroext i1 @__kasan_check_write(ptr noundef %counter, i32 noundef 4) #9
  %201 = ptrtoint ptr %counter to i32
  call void @__asan_store4_noabort(i32 %201)
  store volatile i32 0, ptr %counter, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %regs_lock177, i32 noundef %call179) #9
  call void @__might_fault(ptr noundef nonnull @.str.53, i32 noundef 174) #9
  %call.i.i387 = call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i387, label %for.end201.cleanup236_crit_edge, label %copy_to_user.exit395

for.end201.cleanup236_crit_edge:                  ; preds = %for.end201
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup236

copy_to_user.exit395:                             ; preds = %for.end201
  %call.i.i.i391 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %rs, i32 noundef 40) #9
  %call.i12.i.i392 = call i32 @arm_copy_to_user(ptr noundef %6, ptr noundef nonnull %rs, i32 noundef 40) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i392)
  %tobool204.not = icmp eq i32 %call.i12.i.i392, 0
  br i1 %tobool204.not, label %copy_to_user.exit395.sw.epilog_crit_edge, label %copy_to_user.exit395.cleanup236_crit_edge

copy_to_user.exit395.cleanup236_crit_edge:        ; preds = %copy_to_user.exit395
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup236

copy_to_user.exit395.sw.epilog_crit_edge:         ; preds = %copy_to_user.exit395
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

do.body209:                                       ; preds = %entry
  %regs_lock215 = getelementptr inbounds %struct.phantom_device, ptr %1, i32 0, i32 9
  %call217 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %regs_lock215) #9
  %status222 = getelementptr inbounds %struct.phantom_device, ptr %1, i32 0, i32 4
  %202 = ptrtoint ptr %status222 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %status222, align 4
  %and223 = and i32 %203, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and223)
  %tobool224.not = icmp eq i32 %and223, 0
  br i1 %tobool224.not, label %if.end232, label %do.end228

do.end228:                                        ; preds = %do.body209
  call void @__sanitizer_cov_trace_pc() #11
  %call230 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50) #12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %regs_lock215, i32 noundef %call217) #9
  br label %cleanup236

if.end232:                                        ; preds = %do.body209
  call void @__sanitizer_cov_trace_pc() #11
  %or234 = or i32 %203, 2
  %204 = ptrtoint ptr %status222 to i32
  call void @__asan_store4_noabort(i32 %204)
  store i32 %or234, ptr %status222, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %regs_lock215, i32 noundef %call217) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end232, %copy_to_user.exit395.sw.epilog_crit_edge, %copy_to_user.exit.sw.epilog_crit_edge, %if.end117, %if.end62
  br label %cleanup236

cleanup236:                                       ; preds = %sw.epilog, %do.end228, %copy_to_user.exit395.cleanup236_crit_edge, %for.end201.cleanup236_crit_edge, %if.then11.i.i376, %copy_to_user.exit.cleanup236_crit_edge, %if.end59.i.i349.cleanup236_crit_edge, %if.end123.cleanup236_crit_edge, %if.then11.i.i343, %if.then11.i.i317, %if.end.cleanup236_crit_edge, %if.then11.i.i, %entry.cleanup236_crit_edge
  %retval.1 = phi i32 [ -22, %do.end228 ], [ 0, %sw.epilog ], [ -14, %copy_to_user.exit395.cleanup236_crit_edge ], [ -22, %if.end.cleanup236_crit_edge ], [ -22, %if.end123.cleanup236_crit_edge ], [ -14, %copy_to_user.exit.cleanup236_crit_edge ], [ -25, %entry.cleanup236_crit_edge ], [ -14, %if.then11.i.i ], [ -14, %if.then11.i.i317 ], [ -14, %if.then11.i.i343 ], [ -14, %if.end59.i.i349.cleanup236_crit_edge ], [ -14, %if.then11.i.i376 ], [ -14, %for.end201.cleanup236_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %r) #9
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %rs) #9
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @phantom_open(ptr noundef %inode, ptr noundef %file) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 48
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %add.ptr = getelementptr i8, ptr %2, i32 -76
  tail call void @mutex_lock_nested(ptr noundef nonnull @phantom_mutex, i32 noundef 0) #9
  %call = tail call i32 @nonseekable_open(ptr noundef %inode, ptr noundef %file) #9
  %open_lock = getelementptr i8, ptr %2, i32 160
  %call1 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %open_lock, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %add.ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool2.not = icmp eq i32 %4, 0
  br i1 %tobool2.not, label %if.end5, label %if.end.cleanup.sink.split_crit_edge

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.end5:                                          ; preds = %if.end
  %status = getelementptr i8, ptr %2, i32 -60
  %5 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %status, align 4
  %and = and i32 %6, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %if.end5.if.end21_crit_edge, label %do.end, !prof !169

if.end5.if.end21_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

do.end:                                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 229, i32 noundef 9, ptr noundef null) #9
  br label %if.end21

if.end21:                                         ; preds = %do.end, %if.end5.if.end21_crit_edge
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %7 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %add.ptr, ptr %private_data, align 4
  %counter = getelementptr i8, ptr %2, i32 -56
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %counter, i32 noundef 4) #9
  %8 = ptrtoint ptr %counter to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile i32 0, ptr %counter, align 4
  %9 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %add.ptr, align 4
  %inc = add i32 %10, 1
  store i32 %inc, ptr %add.ptr, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end21, %if.end.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ 0, %if.end21 ], [ -22, %if.end.cleanup.sink.split_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %open_lock) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -512, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  tail call void @mutex_unlock(ptr noundef nonnull @phantom_mutex) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @phantom_release(ptr nocapture noundef readnone %inode, ptr nocapture noundef readonly %file) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %open_lock = getelementptr inbounds %struct.phantom_device, ptr %1, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %open_lock, i32 noundef 0) #9
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %1, align 4
  %status = getelementptr inbounds %struct.phantom_device, ptr %1, i32 0, i32 4
  %3 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %status, align 4
  %and = and i32 %4, -2
  tail call fastcc void @phantom_status(ptr noundef %1, i32 noundef %and)
  %5 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %status, align 4
  %and2 = and i32 %6, -3
  store i32 %and2, ptr %status, align 4
  tail call void @mutex_unlock(ptr noundef %open_lock) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @phantom_status(ptr noundef %dev, i32 noundef %newstat) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @phantom_status.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@phantom_status, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !161

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %status = getelementptr inbounds %struct.phantom_device, ptr %dev, i32 0, i32 4
  %0 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %status, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @phantom_status.__UNIQUE_ID_ddebug238, ptr noundef nonnull @.str.55, i32 noundef %1, i32 noundef %newstat) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %status3 = getelementptr inbounds %struct.phantom_device, ptr %dev, i32 0, i32 4
  %2 = ptrtoint ptr %status3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %status3, align 4
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp ne i32 %and, 0
  %and5 = and i32 %newstat, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  %or.cond = or i1 %tobool6.not, %tobool4.not
  br i1 %or.cond, label %if.else, label %if.then7

if.then7:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %counter = getelementptr inbounds %struct.phantom_device, ptr %dev, i32 0, i32 5
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %counter, i32 noundef 4) #9
  %4 = ptrtoint ptr %counter to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile i32 0, ptr %counter, align 4
  %iaddr = getelementptr inbounds %struct.phantom_device, ptr %dev, i32 0, i32 2
  %5 = ptrtoint ptr %iaddr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %iaddr, align 4
  %add.ptr = getelementptr i32, ptr %6, i32 6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !163
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 268435456) #9, !srcloc !164
  %caddr = getelementptr inbounds %struct.phantom_device, ptr %dev, i32 0, i32 1
  %7 = ptrtoint ptr %caddr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %caddr, align 4
  %add.ptr8 = getelementptr i8, ptr %8, i32 76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !163
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 1124073472) #9, !srcloc !164
  %9 = ptrtoint ptr %caddr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %caddr, align 4
  %add.ptr10 = getelementptr i8, ptr %10, i32 76
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10) #9, !srcloc !165
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !166
  br label %if.end25

if.else:                                          ; preds = %do.end
  %or.cond1 = and i1 %tobool6.not, %tobool4.not
  br i1 %or.cond1, label %if.then18, label %if.else.if.end25_crit_edge

if.else.if.end25_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

if.then18:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %caddr19 = getelementptr inbounds %struct.phantom_device, ptr %dev, i32 0, i32 1
  %12 = ptrtoint ptr %caddr19 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %caddr19, align 4
  %add.ptr20 = getelementptr i8, ptr %13, i32 76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !163
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20, i32 0) #9, !srcloc !164
  %14 = ptrtoint ptr %caddr19 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %caddr19, align 4
  %add.ptr22 = getelementptr i8, ptr %15, i32 76
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr22) #9, !srcloc !165
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !166
  br label %if.end25

if.end25:                                         ; preds = %if.then18, %if.else.if.end25_crit_edge, %if.then7
  %17 = ptrtoint ptr %status3 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %newstat, ptr %status3, align 4
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nonseekable_open(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_destroy(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cdev_del(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @phantom_suspend(ptr nocapture noundef readonly %dev_d) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev_d, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %caddr = getelementptr inbounds %struct.phantom_device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %caddr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %caddr, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !163
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #9, !srcloc !164
  %4 = ptrtoint ptr %caddr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %caddr, align 4
  %add.ptr2 = getelementptr i8, ptr %5, i32 76
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #9, !srcloc !165
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !166
  %irq = getelementptr i8, ptr %dev_d, i32 932
  %7 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %irq, align 4
  tail call void @synchronize_irq(i32 noundef %8) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @phantom_resume(ptr nocapture noundef readonly %dev_d) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev_d, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %caddr = getelementptr inbounds %struct.phantom_device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %caddr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %caddr, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !163
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #9, !srcloc !164
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @class_remove_file_ns(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @show_class_attr_string(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__class_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @alloc_chrdev_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @class_create_file_ns(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

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
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind readonly }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !12, !14, !16, !17, !19, !20, !21, !22, !24, !26, !28, !30, !32, !33, !34, !35, !36, !37, !39, !40, !41, !43, !44, !45, !47, !48, !49, !51, !52, !53, !55, !56, !57, !59, !60, !61, !63, !64, !66, !67, !69, !70, !72, !73, !74, !76, !77, !78, !80, !82, !83, !84, !86, !88, !90, !91, !92, !94, !95, !97, !98, !99, !101, !102, !104, !105, !107, !108, !109, !111, !112, !114, !116, !118, !119, !120, !122, !123, !124, !126, !128, !130, !132, !133, !134, !135, !137, !138, !139, !141, !142, !143, !145, !146, !147, !149, !150}
!llvm.named.register.sp = !{!151}
!llvm.module.flags = !{!152, !153, !154, !155, !156, !157, !158, !159}
!llvm.ident = !{!160}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/misc/phantom.c", i32 554, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @phantom_exit.__UNIQUE_ID_ddebug250, !1, !"__UNIQUE_ID_ddebug250", i1 false, i1 false}
!6 = !{ptr @__initcall__kmod_phantom__251_557_phantom_init6, !7, !"__initcall__kmod_phantom__251_557_phantom_init6", i1 false, i1 false}
!7 = !{!"../drivers/misc/phantom.c", i32 557, i32 1}
!8 = !{ptr @__exitcall_phantom_exit, !9, !"__exitcall_phantom_exit", i1 false, i1 false}
!9 = !{!"../drivers/misc/phantom.c", i32 558, i32 1}
!10 = !{ptr @__UNIQUE_ID_author252, !11, !"__UNIQUE_ID_author252", i1 false, i1 false}
!11 = !{!"../drivers/misc/phantom.c", i32 560, i32 1}
!12 = !{ptr @__UNIQUE_ID_description253, !13, !"__UNIQUE_ID_description253", i1 false, i1 false}
!13 = !{!"../drivers/misc/phantom.c", i32 561, i32 1}
!14 = !{ptr @__UNIQUE_ID_file254, !15, !"__UNIQUE_ID_file254", i1 false, i1 false}
!15 = !{!"../drivers/misc/phantom.c", i32 562, i32 1}
!16 = !{ptr @__UNIQUE_ID_license255, !15, !"__UNIQUE_ID_license255", i1 false, i1 false}
!17 = !{ptr @__UNIQUE_ID_version256, !18, !"__UNIQUE_ID_version256", i1 false, i1 false}
!18 = !{!"../drivers/misc/phantom.c", i32 563, i32 1}
!19 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @__modver_attr, !18, !"__modver_attr", i1 false, i1 false}
!22 = !{ptr @phantom_class, !23, !"phantom_class", i1 false, i1 false}
!23 = !{!"../drivers/misc/phantom.c", i32 38, i32 22}
!24 = !{ptr @phantom_major, !25, !"phantom_major", i1 false, i1 false}
!25 = !{!"../drivers/misc/phantom.c", i32 39, i32 12}
!26 = !{ptr @phantom_pci_driver, !27, !"phantom_pci_driver", i1 false, i1 false}
!27 = !{!"../drivers/misc/phantom.c", i32 491, i32 26}
!28 = !{ptr @phantom_pci_tbl, !29, !"phantom_pci_tbl", i1 false, i1 false}
!29 = !{!"../drivers/misc/phantom.c", i32 481, i32 29}
!30 = !{ptr @.str.6, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/misc/phantom.c", i32 343, i32 3}
!32 = !{ptr @.str.7, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.8, !31, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @phantom_probe._entry, !31, !"_entry", i1 false, i1 false}
!36 = !{ptr @phantom_probe._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.11, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/misc/phantom.c", i32 349, i32 3}
!39 = !{ptr @phantom_probe._entry.10, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @phantom_probe._entry_ptr.12, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.14, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/misc/phantom.c", i32 358, i32 3}
!43 = !{ptr @phantom_probe._entry.13, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @phantom_probe._entry_ptr.15, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.17, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/misc/phantom.c", i32 365, i32 3}
!47 = !{ptr @phantom_probe._entry.16, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @phantom_probe._entry_ptr.18, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.20, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/misc/phantom.c", i32 371, i32 3}
!51 = !{ptr @phantom_probe._entry.19, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @phantom_probe._entry_ptr.21, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.23, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/misc/phantom.c", i32 376, i32 3}
!55 = !{ptr @phantom_probe._entry.22, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @phantom_probe._entry_ptr.24, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.26, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/misc/phantom.c", i32 381, i32 3}
!59 = !{ptr @phantom_probe._entry.25, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @phantom_probe._entry_ptr.27, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @phantom_probe.__key, !62, !"__key", i1 false, i1 false}
!62 = !{!"../drivers/misc/phantom.c", i32 385, i32 2}
!63 = !{ptr @.str.28, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @phantom_probe.__key.29, !65, !"__key", i1 false, i1 false}
!65 = !{!"../drivers/misc/phantom.c", i32 386, i32 2}
!66 = !{ptr @.str.30, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @phantom_probe.__key.31, !68, !"__key", i1 false, i1 false}
!68 = !{!"../drivers/misc/phantom.c", i32 387, i32 2}
!69 = !{ptr @.str.32, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @.str.34, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/misc/phantom.c", i32 396, i32 3}
!72 = !{ptr @phantom_probe._entry.33, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @phantom_probe._entry_ptr.35, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.37, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/misc/phantom.c", i32 402, i32 3}
!76 = !{ptr @phantom_probe._entry.36, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @phantom_probe._entry_ptr.38, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.39, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/misc/phantom.c", i32 408, i32 6}
!80 = !{ptr @.str.41, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/misc/phantom.c", i32 409, i32 3}
!82 = !{ptr @phantom_probe._entry.40, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @phantom_probe._entry_ptr.42, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @phantom_devices, !85, !"phantom_devices", i1 false, i1 false}
!85 = !{!"../drivers/misc/phantom.c", i32 60, i32 22}
!86 = !{ptr @phantom_file_ops, !87, !"phantom_file_ops", i1 false, i1 false}
!87 = !{!"../drivers/misc/phantom.c", i32 273, i32 37}
!88 = !{ptr @.str.43, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/misc/phantom.c", i32 260, i32 2}
!90 = !{ptr @.str.44, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @phantom_poll.__UNIQUE_ID_ddebug246, !89, !"__UNIQUE_ID_ddebug246", i1 false, i1 false}
!92 = !{ptr @.str.45, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/misc/phantom.c", i32 268, i32 2}
!94 = !{ptr @phantom_poll.__UNIQUE_ID_ddebug247, !93, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!95 = !{ptr @.str.46, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/misc/phantom.c", i32 111, i32 3}
!97 = !{ptr @.str.47, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @phantom_ioctl.__UNIQUE_ID_ddebug239, !96, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!99 = !{ptr @.str.48, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/misc/phantom.c", i32 132, i32 3}
!101 = !{ptr @phantom_ioctl.__UNIQUE_ID_ddebug240, !100, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!102 = !{ptr @.str.49, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/misc/phantom.c", i32 167, i32 3}
!104 = !{ptr @phantom_ioctl.__UNIQUE_ID_ddebug245, !103, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!105 = !{ptr @.str.50, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/misc/phantom.c", i32 181, i32 4}
!107 = !{ptr @phantom_ioctl._entry, !106, !"_entry", i1 false, i1 false}
!108 = !{ptr @phantom_ioctl._entry_ptr, !106, !"_entry_ptr", i1 false, i1 false}
!109 = distinct !{null, !110, !"__already_done", i1 false, i1 false}
!110 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!111 = distinct !{null, !110, !"<string literal>", i1 false, i1 false}
!112 = distinct !{null, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!114 = !{ptr @.str.53, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!116 = !{ptr @.str.54, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/misc/phantom.c", i32 64, i32 2}
!118 = !{ptr @.str.55, !117, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @phantom_status.__UNIQUE_ID_ddebug238, !117, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!120 = !{ptr @.str.56, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/misc/phantom.c", i32 37, i32 8}
!122 = !{ptr @.str.57, !121, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @phantom_mutex, !121, !"phantom_mutex", i1 false, i1 false}
!124 = !{ptr @phantom_pm_ops, !125, !"phantom_pm_ops", i1 false, i1 false}
!125 = !{!"../drivers/misc/phantom.c", i32 489, i32 8}
!126 = !{ptr @class_attr_version, !127, !"class_attr_version", i1 false, i1 false}
!127 = !{!"../drivers/misc/phantom.c", i32 499, i32 8}
!128 = !{ptr @phantom_init.__key, !129, !"__key", i1 false, i1 false}
!129 = !{!"../drivers/misc/phantom.c", i32 506, i32 18}
!130 = !{ptr @.str.58, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/misc/phantom.c", i32 509, i32 3}
!132 = !{ptr @.str.59, !131, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @phantom_init._entry, !131, !"_entry", i1 false, i1 false}
!134 = !{ptr @phantom_init._entry_ptr, !131, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @.str.61, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/misc/phantom.c", i32 514, i32 3}
!137 = !{ptr @phantom_init._entry.60, !136, !"_entry", i1 false, i1 false}
!138 = !{ptr @phantom_init._entry_ptr.62, !136, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @.str.64, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/misc/phantom.c", i32 520, i32 3}
!141 = !{ptr @phantom_init._entry.63, !140, !"_entry", i1 false, i1 false}
!142 = !{ptr @phantom_init._entry_ptr.65, !140, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @.str.67, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/misc/phantom.c", i32 527, i32 3}
!145 = !{ptr @phantom_init._entry.66, !144, !"_entry", i1 false, i1 false}
!146 = !{ptr @phantom_init._entry_ptr.68, !144, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @.str.70, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/misc/phantom.c", i32 531, i32 2}
!149 = !{ptr @phantom_init._entry.69, !148, !"_entry", i1 false, i1 false}
!150 = !{ptr @phantom_init._entry_ptr.71, !148, !"_entry_ptr", i1 false, i1 false}
!151 = !{!"sp"}
!152 = !{i32 1, !"wchar_size", i32 2}
!153 = !{i32 1, !"min_enum_size", i32 4}
!154 = !{i32 8, !"branch-target-enforcement", i32 0}
!155 = !{i32 8, !"sign-return-address", i32 0}
!156 = !{i32 8, !"sign-return-address-all", i32 0}
!157 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!158 = !{i32 7, !"uwtable", i32 1}
!159 = !{i32 7, !"frame-pointer", i32 2}
!160 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!161 = !{i64 2148943422, i64 2148943427, i64 2148943440, i64 2148943484, i64 2148943518, i64 2148943539}
!162 = !{!"auto-init"}
!163 = !{i64 2153368571}
!164 = !{i64 5826449}
!165 = !{i64 5826867}
!166 = !{i64 2153367216}
!167 = !{i64 2148243492, i64 2148243518, i64 2148243547, i64 2148243581, i64 2148243612, i64 2148243635}
!168 = !{i64 2152274691, i64 2152274716}
!169 = !{!"branch_weights", i32 2000, i32 1}
!170 = !{i64 4770246}
!171 = !{i64 4770443}
!172 = !{i64 2152255676}
