; ModuleID = '/llk/IR_all_yes/drivers/staging/vme/devices/vme_user.c_pt.bc'
source_filename = "../drivers/staging/vme/devices/vme_user.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.vme_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver, %struct.list_head }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kparam_array = type { i32, i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.70 }
%union.anon.70 = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.image_desc = type { ptr, i32, i64, %struct.mutex, ptr, ptr, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vm_operations_struct = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vme_dev = type { i32, ptr, %struct.device, %struct.list_head, %struct.list_head }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.95, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.96, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.97, ptr, %struct.address_space, %struct.list_head, %union.anon.98, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.95 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.96 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.97 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.98 = type { ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.vme_master = type <{ i32, i64, i64, i32, i32, i32 }>
%struct.vme_slave = type <{ i32, i64, i64, i32, i32 }>
%struct.vme_irq_id = type { i8, i8 }
%struct.vme_user_vma_priv = type { i32, %struct.refcount_struct }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.11, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%union.anon.11 = type { %struct.anon.12 }
%struct.anon.12 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type { ptr }

@vme_user_driver = internal global { %struct.vme_driver, [60 x i8] } { %struct.vme_driver { ptr @driver_name, ptr @vme_user_match, ptr @vme_user_probe, ptr @vme_user_remove, %struct.device_driver zeroinitializer, %struct.list_head zeroinitializer }, [60 x i8] zeroinitializer }, align 32
@__UNIQUE_ID_bus271 = internal constant [73 x i8] c"vme_user.parm=bus:Enumeration of VMEbus to which the driver is connected\00", section ".modinfo", align 1
@__param_str_bus = internal constant [13 x i8] c"vme_user.bus\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_bus = internal constant %struct.kparam_array { i32 1, i32 4, ptr @bus_num, ptr @param_ops_int, ptr @bus }, align 4
@__param_bus = internal constant %struct.kernel_param { ptr @__param_str_bus, ptr null, ptr @param_array_ops, i16 0, i8 -1, i8 0, %union.anon.70 { ptr @__param_arr_bus } }, section "__param", align 4
@__UNIQUE_ID_bustype272 = internal constant [35 x i8] c"vme_user.parmtype=bus:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_description273 = internal constant [50 x i8] c"vme_user.description=VME User Space Access Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author274 = internal constant [50 x i8] c"vme_user.author=Martyn Welch <martyn.welch@ge.com\00", section ".modinfo", align 1
@__UNIQUE_ID_file275 = internal constant [51 x i8] c"vme_user.file=drivers/staging/vme/devices/vme_user\00", section ".modinfo", align 1
@__UNIQUE_ID_license276 = internal constant [21 x i8] c"vme_user.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_vme_user__277_779_vme_user_init6 = internal global ptr @vme_user_init, section ".initcall6.init", align 4
@__exitcall_vme_user_exit = internal global ptr @vme_user_exit, section ".exitcall.exit", align 4
@driver_name = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"vme_user\00", [23 x i8] zeroinitializer }, align 32
@bus_num = internal global { i32, [28 x i8] } zeroinitializer, align 32
@bus = internal global { [1 x i32], [28 x i8] } zeroinitializer, align 32
@vme_user_bridge = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@vme_user_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 527, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Driver can only be loaded for 1 device\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"vme_user_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/staging/vme/devices/vme_user.c\00", [57 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@vme_user_probe._entry_ptr = internal global ptr @vme_user_probe._entry, section ".printk_index", align 4
@image = internal global { [9 x %struct.image_desc], [264 x i8] } zeroinitializer, align 32
@vme_user_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&image[i].mutex\00", [16 x i8] zeroinitializer }, align 32
@vme_user_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 547, ptr @.str.8, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Error getting Major Number %d for driver.\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@vme_user_probe._entry_ptr.9 = internal global ptr @vme_user_probe._entry.6, section ".printk_index", align 4
@vme_user_cdev = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@vme_user_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @vme_user_llseek, ptr @vme_user_read, ptr @vme_user_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vme_user_unlocked_ioctl, ptr null, ptr @vme_user_mmap, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@vme_user_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.1, ptr @.str.2, i32 574, ptr @.str.8, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Unable to allocate slave resource\0A\00", [61 x i8] zeroinitializer }, align 32
@vme_user_probe._entry_ptr.12 = internal global ptr @vme_user_probe._entry.10, section ".printk_index", align 4
@vme_user_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.1, ptr @.str.2, i32 584, ptr @.str.8, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Unable to allocate memory for buffer\0A\00", [58 x i8] zeroinitializer }, align 32
@vme_user_probe._entry_ptr.15 = internal global ptr @vme_user_probe._entry.13, section ".printk_index", align 4
@vme_user_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.1, ptr @.str.2, i32 603, ptr @.str.8, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Unable to allocate master resource\0A\00", [60 x i8] zeroinitializer }, align 32
@vme_user_probe._entry_ptr.18 = internal global ptr @vme_user_probe._entry.16, section ".printk_index", align 4
@vme_user_probe.__key.19 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@vme_user_sysfs_class = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@vme_user_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.1, ptr @.str.2, i32 619, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Error creating vme_user class.\0A\00", [32 x i8] zeroinitializer }, align 32
@vme_user_probe._entry_ptr.22 = internal global ptr @vme_user_probe._entry.20, section ".printk_index", align 4
@type = internal constant { [9 x i32], [60 x i8] } { [9 x i32] [i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4, i32 8], [60 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"bus/vme/m%d\00", [20 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"bus/vme/ctl\00", [20 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"bus/vme/s%d\00", [20 x i8] zeroinitializer }, align 32
@vme_user_probe._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.1, ptr @.str.2, i32 648, ptr @.str.28, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Error creating sysfs device\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@vme_user_probe._entry_ptr.29 = internal global ptr @vme_user_probe._entry.26, section ".printk_index", align 4
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.30 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@vme_user_ioctl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.2, i32 309, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\014vme_user: Partial copy from userspace\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"vme_user_ioctl\00", [17 x i8] zeroinitializer }, align 32
@vme_user_ioctl._entry_ptr = internal global ptr @vme_user_ioctl._entry, section ".printk_index", align 4
@vme_user_ioctl._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.34, ptr @.str.2, i32 335, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\014vme_user: Partial copy to userspace\0A\00", [57 x i8] zeroinitializer }, align 32
@vme_user_ioctl._entry_ptr.37 = internal global ptr @vme_user_ioctl._entry.35, section ".printk_index", align 4
@vme_user_ioctl._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.34, ptr @.str.2, i32 344, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\014vme_user: Can't adjust mapped window\0A\00", [56 x i8] zeroinitializer }, align 32
@vme_user_ioctl._entry_ptr.40 = internal global ptr @vme_user_ioctl._entry.38, section ".printk_index", align 4
@vme_user_ioctl._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.2, i32 350, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vme_user_ioctl._entry_ptr.42 = internal global ptr @vme_user_ioctl._entry.41, section ".printk_index", align 4
@vme_user_ioctl._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.34, ptr @.str.2, i32 380, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vme_user_ioctl._entry_ptr.44 = internal global ptr @vme_user_ioctl._entry.43, section ".printk_index", align 4
@vme_user_ioctl._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.2, i32 390, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vme_user_ioctl._entry_ptr.46 = internal global ptr @vme_user_ioctl._entry.45, section ".printk_index", align 4
@vme_user_vm_ops = internal constant { %struct.vm_operations_struct, [40 x i8] } { %struct.vm_operations_struct { ptr @vme_user_vm_open, ptr @vme_user_vm_close, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@vme_user_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.2, i32 733, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016vme_user: VME User Space Access Driver\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"vme_user_init\00", [18 x i8] zeroinitializer }, align 32
@vme_user_init._entry_ptr = internal global ptr @vme_user_init._entry, section ".printk_index", align 4
@vme_user_init._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.48, ptr @.str.2, i32 736, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013vme_user: No cards, skipping registration\0A\00", [51 x i8] zeroinitializer }, align 32
@vme_user_init._entry_ptr.51 = internal global ptr @vme_user_init._entry.49, section ".printk_index", align 4
@vme_user_init._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.48, ptr @.str.2, i32 746, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013vme_user: Driver only able to handle %d buses\0A\00", [47 x i8] zeroinitializer }, align 32
@vme_user_init._entry_ptr.54 = internal global ptr @vme_user_init._entry.52, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.55 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4, i64 8]
@__sancov_gen_cov_switch_values.56 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4]
@__sancov_gen_cov_switch_values.57 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4]
@__sancov_gen_cov_switch_values.58 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4]
@__sancov_gen_cov_switch_values.59 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4, i64 8]
@__sancov_gen_cov_switch_values.60 = internal global [4 x i64] [i64 2, i64 32, i64 1075883524, i64 2149625347]
@__sancov_gen_cov_switch_values.61 = internal global [4 x i64] [i64 2, i64 32, i64 1075621378, i64 2149363201]
@___asan_gen_.62 = private unnamed_addr constant [16 x i8] c"vme_user_driver\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 722, i32 26 }
@___asan_gen_.65 = private unnamed_addr constant [12 x i8] c"driver_name\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 40, i32 19 }
@___asan_gen_.68 = private unnamed_addr constant [8 x i8] c"bus_num\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 43, i32 21 }
@___asan_gen_.71 = private unnamed_addr constant [4 x i8] c"bus\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 42, i32 12 }
@___asan_gen_.74 = private unnamed_addr constant [16 x i8] c"vme_user_bridge\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 105, i32 24 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 527, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant [6 x i8] c"image\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 101, i32 26 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 537, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 546, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant [14 x i8] c"vme_user_cdev\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 103, i32 21 }
@___asan_gen_.116 = private unnamed_addr constant [14 x i8] c"vme_user_fops\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 492, i32 37 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 573, i32 4 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 583, i32 4 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 602, i32 4 }
@___asan_gen_.137 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 617, i32 25 }
@___asan_gen_.140 = private unnamed_addr constant [21 x i8] c"vme_user_sysfs_class\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 104, i32 22 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 619, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 107, i32 18 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 630, i32 11 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 633, i32 11 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 636, i32 11 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 648, i32 4 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 230, i32 6 }
@___asan_gen_.174 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 214, i32 2 }
@___asan_gen_.177 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 174, i32 2 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 309, i32 5 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 335, i32 5 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 344, i32 5 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 350, i32 5 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 380, i32 5 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 390, i32 5 }
@___asan_gen_.209 = private unnamed_addr constant [16 x i8] c"vme_user_vm_ops\00", align 1
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 446, i32 42 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 733, i32 2 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 736, i32 3 }
@___asan_gen_.227 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.230 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.231 = private constant [42 x i8] c"../drivers/staging/vme/devices/vme_user.c\00", align 1
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 745, i32 3 }
@llvm.compiler.used = appending global [83 x ptr] [ptr @__UNIQUE_ID_author274, ptr @__UNIQUE_ID_bus271, ptr @__UNIQUE_ID_bustype272, ptr @__UNIQUE_ID_description273, ptr @__UNIQUE_ID_file275, ptr @__UNIQUE_ID_license276, ptr @__exitcall_vme_user_exit, ptr @__initcall__kmod_vme_user__277_779_vme_user_init6, ptr @__param_bus, ptr @vme_user_exit, ptr @vme_user_init._entry, ptr @vme_user_init._entry.49, ptr @vme_user_init._entry.52, ptr @vme_user_init._entry_ptr, ptr @vme_user_init._entry_ptr.51, ptr @vme_user_init._entry_ptr.54, ptr @vme_user_ioctl._entry, ptr @vme_user_ioctl._entry.35, ptr @vme_user_ioctl._entry.38, ptr @vme_user_ioctl._entry.41, ptr @vme_user_ioctl._entry.43, ptr @vme_user_ioctl._entry.45, ptr @vme_user_ioctl._entry_ptr, ptr @vme_user_ioctl._entry_ptr.37, ptr @vme_user_ioctl._entry_ptr.40, ptr @vme_user_ioctl._entry_ptr.42, ptr @vme_user_ioctl._entry_ptr.44, ptr @vme_user_ioctl._entry_ptr.46, ptr @vme_user_probe._entry, ptr @vme_user_probe._entry.10, ptr @vme_user_probe._entry.13, ptr @vme_user_probe._entry.16, ptr @vme_user_probe._entry.20, ptr @vme_user_probe._entry.26, ptr @vme_user_probe._entry.6, ptr @vme_user_probe._entry_ptr, ptr @vme_user_probe._entry_ptr.12, ptr @vme_user_probe._entry_ptr.15, ptr @vme_user_probe._entry_ptr.18, ptr @vme_user_probe._entry_ptr.22, ptr @vme_user_probe._entry_ptr.29, ptr @vme_user_probe._entry_ptr.9, ptr @vme_user_driver, ptr @driver_name, ptr @bus_num, ptr @bus, ptr @vme_user_bridge, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @image, ptr @vme_user_probe.__key, ptr @.str.5, ptr @.str.7, ptr @.str.8, ptr @vme_user_cdev, ptr @vme_user_fops, ptr @.str.11, ptr @.str.14, ptr @.str.17, ptr @vme_user_probe.__key.19, ptr @vme_user_sysfs_class, ptr @.str.21, ptr @type, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @.str.28, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.36, ptr @.str.39, ptr @vme_user_vm_ops, ptr @.str.47, ptr @.str.48, ptr @.str.50, ptr @.str.53], section "llvm.metadata"
@0 = internal global [57 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vme_user_driver to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @driver_name to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bus_num to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bus to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vme_user_bridge to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vme_user_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @image to i32), i32 1080, i32 1344, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vme_user_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vme_user_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vme_user_cdev to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vme_user_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vme_user_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vme_user_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vme_user_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vme_user_probe.__key.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vme_user_sysfs_class to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vme_user_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @type to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vme_user_probe._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vme_user_ioctl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vme_user_ioctl._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vme_user_ioctl._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vme_user_ioctl._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vme_user_ioctl._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vme_user_ioctl._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vme_user_vm_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vme_user_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vme_user_init._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vme_user_init._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @vme_user_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @vme_unregister_driver(ptr noundef nonnull @vme_user_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vme_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @vme_user_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47) #12
  %0 = load i32, ptr @bus_num, align 4
  %1 = zext i32 %0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values)
  switch i32 %0, label %do.end11 [
    i32 0, label %do.end4
    i32 1, label %entry.if.end14_crit_edge
  ]

entry.if.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

do.end4:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50) #12
  br label %err_nocard

do.end11:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, i32 noundef 1) #12
  store i32 1, ptr @bus_num, align 4
  br label %if.end14

if.end14:                                         ; preds = %do.end11, %entry.if.end14_crit_edge
  %call15 = tail call i32 @vme_register_driver(ptr noundef nonnull @vme_user_driver, i32 noundef 32) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool.not = icmp eq i32 %call15, 0
  br i1 %tobool.not, label %if.end14.cleanup_crit_edge, label %if.end14.err_nocard_crit_edge

if.end14.err_nocard_crit_edge:                    ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_nocard

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

err_nocard:                                       ; preds = %if.end14.err_nocard_crit_edge, %do.end4
  %retval1.0 = phi i32 [ -19, %do.end4 ], [ %call15, %if.end14.err_nocard_crit_edge ]
  br label %cleanup

cleanup:                                          ; preds = %err_nocard, %if.end14.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval1.0, %err_nocard ], [ 0, %if.end14.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vme_user_match(ptr noundef %vdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @vme_bus_num(ptr noundef %vdev) #9
  %call1 = tail call i32 @vme_slot_num(ptr noundef %vdev) #9
  %0 = load i32, ptr @bus_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp10.not = icmp eq i32 %0, 0
  br i1 %cmp10.not, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.011 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr [1 x i32], ptr @bus, i32 0, i32 %i.011
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %2)
  %cmp2 = icmp eq i32 %call, %2
  br i1 %cmp2, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %3 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %vdev, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %call1, i32 %4)
  %cmp3 = icmp eq i32 %call1, %4
  br i1 %cmp3, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.011, 1
  %exitcond.not = icmp eq i32 %inc, %0
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ], [ 1, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vme_user_probe(ptr noundef %vdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @vme_user_bridge, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.vme_dev, ptr %vdev, i32 0, i32 2
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str) #12
  br label %cleanup165

if.end:                                           ; preds = %entry
  store ptr %vdev, ptr @vme_user_bridge, align 4
  store ptr null, ptr @image, align 8
  store i32 0, ptr getelementptr inbounds ([9 x %struct.image_desc], ptr @image, i32 0, i32 0, i32 1), align 4
  tail call void @__mutex_init(ptr noundef getelementptr inbounds ([9 x %struct.image_desc], ptr @image, i32 0, i32 0, i32 3), ptr noundef nonnull @.str.5, ptr noundef nonnull @vme_user_probe.__key) #9
  store ptr null, ptr getelementptr inbounds ([9 x %struct.image_desc], ptr @image, i32 0, i32 0, i32 4), align 4
  store ptr null, ptr getelementptr inbounds ([9 x %struct.image_desc], ptr @image, i32 0, i32 0, i32 5), align 8
  store ptr null, ptr getelementptr inbounds ([9 x %struct.image_desc], ptr @image, i32 0, i32 1), align 8
  store i32 0, ptr getelementptr inbounds ([9 x %struct.image_desc], ptr @image, i32 0, i32 1, i32 1), align 4
  tail call void @__mutex_init(ptr noundef getelementptr inbounds ([9 x %struct.image_desc], ptr @image, i32 0, i32 1, i32 3), ptr noundef nonnull @.str.5, ptr noundef nonnull @vme_user_probe.__key) #9
  store ptr null, ptr getelementptr inbounds ([9 x %struct.image_desc], ptr @image, i32 0, i32 1, i32 4), align 4
  store ptr null, ptr getelementptr inbounds ([9 x %struct.image_desc], ptr @image, i32 0, i32 1, i32 5), align 8
  store ptr null, ptr getelementptr inbounds ([9 x %struct.image_desc], ptr @image, i32 0, i32 2), align 8
  store i32 0, ptr getelementptr inbounds ([9 x %struct.image_desc], ptr @image, i32 0, i32 2, i32 1), align 4
  tail call void @__mutex_init(ptr noundef getelementptr inbounds ([9 x %struct.image_desc], ptr @image, i32 0, i32 2, i32 3), ptr noundef nonnull @.str.5, ptr noundef nonnull @vme_user_probe.__key) #9
  store ptr null, ptr getelementptr inbounds ([9 x %struct.image_desc], ptr @image, i32 0, i32 2, i32 4), align 4
  store ptr null, ptr getelementptr inbounds ([9 x %struct.image_desc], ptr @image, i32 0, i32 2, i32 5), align 8
  store ptr null, ptr getelementptr inbounds ([9 x %struct.image_desc], ptr @image, i32 0, i32 3), align 8
  store i32 0, ptr getelementptr inbounds ([9 x %struct.image_desc], ptr @image, i32 0, i32 3, i32 1), align 4
  tail call void @__mutex_init(ptr noundef getelementptr inbounds ([9 x %struct.image_desc], ptr @image, i32 0, i32 3, i32 3), ptr noundef nonnull @.str.5, ptr noundef nonnull @vme_user_probe.__key) #9
  store ptr null, ptr getelementptr inbounds ([9 x %struct.image_desc], ptr @image, i32 0, i32 3, i32 4), align 4
  store ptr null, ptr getelementptr inbounds ([9 x %struct.image_desc], ptr @image, i32 0, i32 3, i32 5), align 8
  store ptr null, ptr getelementptr inbounds ([9 x %struct.image_desc], ptr @image, i32 0, i32 4), align 8
  store i32 0, ptr getelementptr inbounds ([9 x %struct.image_desc], ptr @image, i32 0, i32 4, i32 1), align 4
  tail call void @__mutex_init(ptr noundef getelementptr inbounds ([9 x %struct.image_desc], ptr @image, i32 0, i32 4, i32 3), ptr noundef nonnull @.str.5, ptr noundef nonnull @vme_user_probe.__key) #9
  store ptr null, ptr getelementptr inbounds ([9 x %struct.image_desc], ptr @image, i32 0, i32 4, i32 4), align 4
  store ptr null, ptr getelementptr inbounds ([9 x %struct.image_desc], ptr @image, i32 0, i32 4, i32 5), align 8
  store ptr null, ptr getelementptr inbounds ([9 x %struct.image_desc], ptr @image, i32 0, i32 5), align 8
  store i32 0, ptr getelementptr inbounds ([9 x %struct.image_desc], ptr @image, i32 0, i32 5, i32 1), align 4
  tail call void @__mutex_init(ptr noundef getelementptr inbounds ([9 x %struct.image_desc], ptr @image, i32 0, i32 5, i32 3), ptr noundef nonnull @.str.5, ptr noundef nonnull @vme_user_probe.__key) #9
  store ptr null, ptr getelementptr inbounds ([9 x %struct.image_desc], ptr @image, i32 0, i32 5, i32 4), align 4
  store ptr null, ptr getelementptr inbounds ([9 x %struct.image_desc], ptr @image, i32 0, i32 5, i32 5), align 8
  store ptr null, ptr getelementptr inbounds ([9 x %struct.image_desc], ptr @image, i32 0, i32 6), align 8
  store i32 0, ptr getelementptr inbounds ([9 x %struct.image_desc], ptr @image, i32 0, i32 6, i32 1), align 4
  tail call void @__mutex_init(ptr noundef getelementptr inbounds ([9 x %struct.image_desc], ptr @image, i32 0, i32 6, i32 3), ptr noundef nonnull @.str.5, ptr noundef nonnull @vme_user_probe.__key) #9
  store ptr null, ptr getelementptr inbounds ([9 x %struct.image_desc], ptr @image, i32 0, i32 6, i32 4), align 4
  store ptr null, ptr getelementptr inbounds ([9 x %struct.image_desc], ptr @image, i32 0, i32 6, i32 5), align 8
  store ptr null, ptr getelementptr inbounds ([9 x %struct.image_desc], ptr @image, i32 0, i32 7), align 8
  store i32 0, ptr getelementptr inbounds ([9 x %struct.image_desc], ptr @image, i32 0, i32 7, i32 1), align 4
  tail call void @__mutex_init(ptr noundef getelementptr inbounds ([9 x %struct.image_desc], ptr @image, i32 0, i32 7, i32 3), ptr noundef nonnull @.str.5, ptr noundef nonnull @vme_user_probe.__key) #9
  store ptr null, ptr getelementptr inbounds ([9 x %struct.image_desc], ptr @image, i32 0, i32 7, i32 4), align 4
  store ptr null, ptr getelementptr inbounds ([9 x %struct.image_desc], ptr @image, i32 0, i32 7, i32 5), align 8
  store ptr null, ptr getelementptr inbounds ([9 x %struct.image_desc], ptr @image, i32 0, i32 8), align 8
  store i32 0, ptr getelementptr inbounds ([9 x %struct.image_desc], ptr @image, i32 0, i32 8, i32 1), align 4
  tail call void @__mutex_init(ptr noundef getelementptr inbounds ([9 x %struct.image_desc], ptr @image, i32 0, i32 8, i32 3), ptr noundef nonnull @.str.5, ptr noundef nonnull @vme_user_probe.__key) #9
  store ptr null, ptr getelementptr inbounds ([9 x %struct.image_desc], ptr @image, i32 0, i32 8, i32 4), align 4
  store ptr null, ptr getelementptr inbounds ([9 x %struct.image_desc], ptr @image, i32 0, i32 8, i32 5), align 8
  %call = tail call i32 @register_chrdev_region(i32 noundef 231735296, i32 noundef 9, ptr noundef nonnull @driver_name) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool8.not = icmp eq i32 %call, 0
  br i1 %tobool8.not, label %if.end14, label %do.end12

do.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %dev13 = getelementptr inbounds %struct.vme_dev, ptr %vdev, i32 0, i32 2
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev13, ptr noundef nonnull @.str.7, i32 noundef 221) #12
  br label %cleanup165

if.end14:                                         ; preds = %if.end
  %call15 = tail call ptr @cdev_alloc() #9
  store ptr %call15, ptr @vme_user_cdev, align 4
  %tobool16.not = icmp eq ptr %call15, null
  br i1 %tobool16.not, label %if.end14.err_char_crit_edge, label %if.end18

if.end14.err_char_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_char

if.end18:                                         ; preds = %if.end14
  %ops = getelementptr inbounds %struct.cdev, ptr %call15, i32 0, i32 2
  %1 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @vme_user_fops, ptr %ops, align 4
  %owner = getelementptr inbounds %struct.cdev, ptr %call15, i32 0, i32 1
  %2 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %owner, align 4
  %call19 = tail call i32 @cdev_add(ptr noundef nonnull %call15, i32 noundef 231735296, i32 noundef 9) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %for.body25.preheader, label %if.end18.err_class_crit_edge

if.end18.err_class_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_class

for.body25.preheader:                             ; preds = %if.end18
  %3 = load ptr, ptr @vme_user_bridge, align 4
  %call26 = tail call ptr @vme_slave_request(ptr noundef %3, i32 noundef 2, i32 noundef 1) #9
  store ptr %call26, ptr getelementptr inbounds ([9 x %struct.image_desc], ptr @image, i32 0, i32 4, i32 5), align 8
  %tobool31.not = icmp eq ptr %call26, null
  br i1 %tobool31.not, label %for.body25.preheader.do.end35_crit_edge, label %if.end37

for.body25.preheader.do.end35_crit_edge:          ; preds = %for.body25.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end35

do.end35:                                         ; preds = %for.inc61.2.do.end35_crit_edge, %for.inc61.1.do.end35_crit_edge, %for.inc61.do.end35_crit_edge, %for.body25.preheader.do.end35_crit_edge
  %i.1242.lcssa = phi i32 [ 4, %for.body25.preheader.do.end35_crit_edge ], [ 5, %for.inc61.do.end35_crit_edge ], [ 6, %for.inc61.1.do.end35_crit_edge ], [ 7, %for.inc61.2.do.end35_crit_edge ]
  %dev36 = getelementptr inbounds %struct.vme_dev, ptr %vdev, i32 0, i32 2
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev36, ptr noundef nonnull @.str.11) #12
  br label %err_slave

if.end37:                                         ; preds = %for.body25.preheader
  store i64 131072, ptr getelementptr inbounds ([9 x %struct.image_desc], ptr @image, i32 0, i32 4, i32 2), align 8
  %call45 = tail call ptr @vme_alloc_consistent(ptr noundef nonnull %call26, i32 noundef 131072, ptr noundef getelementptr inbounds ([9 x %struct.image_desc], ptr @image, i32 0, i32 4, i32 1)) #9
  store ptr %call45, ptr getelementptr inbounds ([9 x %struct.image_desc], ptr @image, i32 0, i32 4), align 8
  %tobool50.not = icmp eq ptr %call45, null
  br i1 %tobool50.not, label %if.end37.do.end54_crit_edge, label %for.inc61

if.end37.do.end54_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end54

do.end54:                                         ; preds = %if.end37.3.do.end54_crit_edge, %if.end37.2.do.end54_crit_edge, %if.end37.1.do.end54_crit_edge, %if.end37.do.end54_crit_edge
  %pci_buf44.lcssa = phi ptr [ getelementptr inbounds ([9 x %struct.image_desc], ptr @image, i32 0, i32 4, i32 1), %if.end37.do.end54_crit_edge ], [ getelementptr inbounds ([9 x %struct.image_desc], ptr @image, i32 0, i32 5, i32 1), %if.end37.1.do.end54_crit_edge ], [ getelementptr inbounds ([9 x %struct.image_desc], ptr @image, i32 0, i32 6, i32 1), %if.end37.2.do.end54_crit_edge ], [ getelementptr inbounds ([9 x %struct.image_desc], ptr @image, i32 0, i32 7, i32 1), %if.end37.3.do.end54_crit_edge ]
  %i.1242.lcssa261 = phi i32 [ 4, %if.end37.do.end54_crit_edge ], [ 5, %if.end37.1.do.end54_crit_edge ], [ 6, %if.end37.2.do.end54_crit_edge ], [ 7, %if.end37.3.do.end54_crit_edge ]
  %resource28.lcssa259 = phi ptr [ getelementptr inbounds ([9 x %struct.image_desc], ptr @image, i32 0, i32 4, i32 5), %if.end37.do.end54_crit_edge ], [ getelementptr inbounds ([9 x %struct.image_desc], ptr @image, i32 0, i32 5, i32 5), %if.end37.1.do.end54_crit_edge ], [ getelementptr inbounds ([9 x %struct.image_desc], ptr @image, i32 0, i32 6, i32 5), %if.end37.2.do.end54_crit_edge ], [ getelementptr inbounds ([9 x %struct.image_desc], ptr @image, i32 0, i32 7, i32 5), %if.end37.3.do.end54_crit_edge ]
  %dev55 = getelementptr inbounds %struct.vme_dev, ptr %vdev, i32 0, i32 2
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev55, ptr noundef nonnull @.str.14) #12
  %4 = ptrtoint ptr %pci_buf44.lcssa to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %pci_buf44.lcssa, align 4
  %5 = ptrtoint ptr %resource28.lcssa259 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %resource28.lcssa259, align 8
  tail call void @vme_slave_free(ptr noundef %6) #9
  br label %err_slave

for.inc61:                                        ; preds = %if.end37
  %7 = load ptr, ptr @vme_user_bridge, align 4
  %call26.1 = tail call ptr @vme_slave_request(ptr noundef %7, i32 noundef 2, i32 noundef 1) #9
  store ptr %call26.1, ptr getelementptr inbounds ([9 x %struct.image_desc], ptr @image, i32 0, i32 5, i32 5), align 8
  %tobool31.not.1 = icmp eq ptr %call26.1, null
  br i1 %tobool31.not.1, label %for.inc61.do.end35_crit_edge, label %if.end37.1

for.inc61.do.end35_crit_edge:                     ; preds = %for.inc61
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end35

if.end37.1:                                       ; preds = %for.inc61
  store i64 131072, ptr getelementptr inbounds ([9 x %struct.image_desc], ptr @image, i32 0, i32 5, i32 2), align 8
  %call45.1 = tail call ptr @vme_alloc_consistent(ptr noundef nonnull %call26.1, i32 noundef 131072, ptr noundef getelementptr inbounds ([9 x %struct.image_desc], ptr @image, i32 0, i32 5, i32 1)) #9
  store ptr %call45.1, ptr getelementptr inbounds ([9 x %struct.image_desc], ptr @image, i32 0, i32 5), align 8
  %tobool50.not.1 = icmp eq ptr %call45.1, null
  br i1 %tobool50.not.1, label %if.end37.1.do.end54_crit_edge, label %for.inc61.1

if.end37.1.do.end54_crit_edge:                    ; preds = %if.end37.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end54

for.inc61.1:                                      ; preds = %if.end37.1
  %8 = load ptr, ptr @vme_user_bridge, align 4
  %call26.2 = tail call ptr @vme_slave_request(ptr noundef %8, i32 noundef 2, i32 noundef 1) #9
  store ptr %call26.2, ptr getelementptr inbounds ([9 x %struct.image_desc], ptr @image, i32 0, i32 6, i32 5), align 8
  %tobool31.not.2 = icmp eq ptr %call26.2, null
  br i1 %tobool31.not.2, label %for.inc61.1.do.end35_crit_edge, label %if.end37.2

for.inc61.1.do.end35_crit_edge:                   ; preds = %for.inc61.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end35

if.end37.2:                                       ; preds = %for.inc61.1
  store i64 131072, ptr getelementptr inbounds ([9 x %struct.image_desc], ptr @image, i32 0, i32 6, i32 2), align 8
  %call45.2 = tail call ptr @vme_alloc_consistent(ptr noundef nonnull %call26.2, i32 noundef 131072, ptr noundef getelementptr inbounds ([9 x %struct.image_desc], ptr @image, i32 0, i32 6, i32 1)) #9
  store ptr %call45.2, ptr getelementptr inbounds ([9 x %struct.image_desc], ptr @image, i32 0, i32 6), align 8
  %tobool50.not.2 = icmp eq ptr %call45.2, null
  br i1 %tobool50.not.2, label %if.end37.2.do.end54_crit_edge, label %for.inc61.2

if.end37.2.do.end54_crit_edge:                    ; preds = %if.end37.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end54

for.inc61.2:                                      ; preds = %if.end37.2
  %9 = load ptr, ptr @vme_user_bridge, align 4
  %call26.3 = tail call ptr @vme_slave_request(ptr noundef %9, i32 noundef 2, i32 noundef 1) #9
  store ptr %call26.3, ptr getelementptr inbounds ([9 x %struct.image_desc], ptr @image, i32 0, i32 7, i32 5), align 8
  %tobool31.not.3 = icmp eq ptr %call26.3, null
  br i1 %tobool31.not.3, label %for.inc61.2.do.end35_crit_edge, label %if.end37.3

for.inc61.2.do.end35_crit_edge:                   ; preds = %for.inc61.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end35

if.end37.3:                                       ; preds = %for.inc61.2
  store i64 131072, ptr getelementptr inbounds ([9 x %struct.image_desc], ptr @image, i32 0, i32 7, i32 2), align 8
  %call45.3 = tail call ptr @vme_alloc_consistent(ptr noundef nonnull %call26.3, i32 noundef 131072, ptr noundef getelementptr inbounds ([9 x %struct.image_desc], ptr @image, i32 0, i32 7, i32 1)) #9
  store ptr %call45.3, ptr getelementptr inbounds ([9 x %struct.image_desc], ptr @image, i32 0, i32 7), align 8
  %tobool50.not.3 = icmp eq ptr %call45.3, null
  br i1 %tobool50.not.3, label %if.end37.3.do.end54_crit_edge, label %for.inc61.3

if.end37.3.do.end54_crit_edge:                    ; preds = %if.end37.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end54

for.inc61.3:                                      ; preds = %if.end37.3
  %10 = load ptr, ptr @vme_user_bridge, align 4
  %call68 = tail call ptr @vme_master_request(ptr noundef %10, i32 noundef 4, i32 noundef 1, i32 noundef 4) #9
  store ptr %call68, ptr getelementptr inbounds ([9 x %struct.image_desc], ptr @image, i32 0, i32 0, i32 5), align 8
  %tobool73.not = icmp eq ptr %call68, null
  br i1 %tobool73.not, label %for.inc61.3.do.end77_crit_edge, label %if.end79

for.inc61.3.do.end77_crit_edge:                   ; preds = %for.inc61.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end77

do.end77:                                         ; preds = %for.inc95.2.do.end77_crit_edge, %for.inc95.1.do.end77_crit_edge, %for.inc95.do.end77_crit_edge, %for.inc61.3.do.end77_crit_edge
  %i.2243.lcssa = phi i32 [ 0, %for.inc61.3.do.end77_crit_edge ], [ 1, %for.inc95.do.end77_crit_edge ], [ 2, %for.inc95.1.do.end77_crit_edge ], [ 3, %for.inc95.2.do.end77_crit_edge ]
  %dev78 = getelementptr inbounds %struct.vme_dev, ptr %vdev, i32 0, i32 2
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev78, ptr noundef nonnull @.str.17) #12
  br label %err_master

if.end79:                                         ; preds = %for.inc61.3
  store i64 131072, ptr getelementptr inbounds ([9 x %struct.image_desc], ptr @image, i32 0, i32 0, i32 2), align 8
  %call1.i.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 131072, i32 noundef 3264, i32 noundef 5) #13
  store ptr %call1.i.i, ptr @image, align 8
  %tobool90.not = icmp eq ptr %call1.i.i, null
  br i1 %tobool90.not, label %if.end79.if.then91_crit_edge, label %for.inc95

if.end79.if.then91_crit_edge:                     ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then91

if.then91:                                        ; preds = %if.end79.3.if.then91_crit_edge, %if.end79.2.if.then91_crit_edge, %if.end79.1.if.then91_crit_edge, %if.end79.if.then91_crit_edge
  %i.2243.lcssa257 = phi i32 [ 0, %if.end79.if.then91_crit_edge ], [ 1, %if.end79.1.if.then91_crit_edge ], [ 2, %if.end79.2.if.then91_crit_edge ], [ 3, %if.end79.3.if.then91_crit_edge ]
  %resource70.lcssa255 = phi ptr [ getelementptr inbounds ([9 x %struct.image_desc], ptr @image, i32 0, i32 0, i32 5), %if.end79.if.then91_crit_edge ], [ getelementptr inbounds ([9 x %struct.image_desc], ptr @image, i32 0, i32 1, i32 5), %if.end79.1.if.then91_crit_edge ], [ getelementptr inbounds ([9 x %struct.image_desc], ptr @image, i32 0, i32 2, i32 5), %if.end79.2.if.then91_crit_edge ], [ getelementptr inbounds ([9 x %struct.image_desc], ptr @image, i32 0, i32 3, i32 5), %if.end79.3.if.then91_crit_edge ]
  %11 = ptrtoint ptr %resource70.lcssa255 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %resource70.lcssa255, align 8
  tail call void @vme_master_free(ptr noundef %12) #9
  br label %err_master

for.inc95:                                        ; preds = %if.end79
  %13 = load ptr, ptr @vme_user_bridge, align 4
  %call68.1 = tail call ptr @vme_master_request(ptr noundef %13, i32 noundef 4, i32 noundef 1, i32 noundef 4) #9
  store ptr %call68.1, ptr getelementptr inbounds ([9 x %struct.image_desc], ptr @image, i32 0, i32 1, i32 5), align 8
  %tobool73.not.1 = icmp eq ptr %call68.1, null
  br i1 %tobool73.not.1, label %for.inc95.do.end77_crit_edge, label %if.end79.1

for.inc95.do.end77_crit_edge:                     ; preds = %for.inc95
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end77

if.end79.1:                                       ; preds = %for.inc95
  store i64 131072, ptr getelementptr inbounds ([9 x %struct.image_desc], ptr @image, i32 0, i32 1, i32 2), align 8
  %call1.i.i.1 = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 131072, i32 noundef 3264, i32 noundef 5) #13
  store ptr %call1.i.i.1, ptr getelementptr inbounds ([9 x %struct.image_desc], ptr @image, i32 0, i32 1), align 8
  %tobool90.not.1 = icmp eq ptr %call1.i.i.1, null
  br i1 %tobool90.not.1, label %if.end79.1.if.then91_crit_edge, label %for.inc95.1

if.end79.1.if.then91_crit_edge:                   ; preds = %if.end79.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then91

for.inc95.1:                                      ; preds = %if.end79.1
  %14 = load ptr, ptr @vme_user_bridge, align 4
  %call68.2 = tail call ptr @vme_master_request(ptr noundef %14, i32 noundef 4, i32 noundef 1, i32 noundef 4) #9
  store ptr %call68.2, ptr getelementptr inbounds ([9 x %struct.image_desc], ptr @image, i32 0, i32 2, i32 5), align 8
  %tobool73.not.2 = icmp eq ptr %call68.2, null
  br i1 %tobool73.not.2, label %for.inc95.1.do.end77_crit_edge, label %if.end79.2

for.inc95.1.do.end77_crit_edge:                   ; preds = %for.inc95.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end77

if.end79.2:                                       ; preds = %for.inc95.1
  store i64 131072, ptr getelementptr inbounds ([9 x %struct.image_desc], ptr @image, i32 0, i32 2, i32 2), align 8
  %call1.i.i.2 = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 131072, i32 noundef 3264, i32 noundef 5) #13
  store ptr %call1.i.i.2, ptr getelementptr inbounds ([9 x %struct.image_desc], ptr @image, i32 0, i32 2), align 8
  %tobool90.not.2 = icmp eq ptr %call1.i.i.2, null
  br i1 %tobool90.not.2, label %if.end79.2.if.then91_crit_edge, label %for.inc95.2

if.end79.2.if.then91_crit_edge:                   ; preds = %if.end79.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then91

for.inc95.2:                                      ; preds = %if.end79.2
  %15 = load ptr, ptr @vme_user_bridge, align 4
  %call68.3 = tail call ptr @vme_master_request(ptr noundef %15, i32 noundef 4, i32 noundef 1, i32 noundef 4) #9
  store ptr %call68.3, ptr getelementptr inbounds ([9 x %struct.image_desc], ptr @image, i32 0, i32 3, i32 5), align 8
  %tobool73.not.3 = icmp eq ptr %call68.3, null
  br i1 %tobool73.not.3, label %for.inc95.2.do.end77_crit_edge, label %if.end79.3

for.inc95.2.do.end77_crit_edge:                   ; preds = %for.inc95.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end77

if.end79.3:                                       ; preds = %for.inc95.2
  store i64 131072, ptr getelementptr inbounds ([9 x %struct.image_desc], ptr @image, i32 0, i32 3, i32 2), align 8
  %call1.i.i.3 = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 131072, i32 noundef 3264, i32 noundef 5) #13
  store ptr %call1.i.i.3, ptr getelementptr inbounds ([9 x %struct.image_desc], ptr @image, i32 0, i32 3), align 8
  %tobool90.not.3 = icmp eq ptr %call1.i.i.3, null
  br i1 %tobool90.not.3, label %if.end79.3.if.then91_crit_edge, label %for.inc95.3

if.end79.3.if.then91_crit_edge:                   ; preds = %if.end79.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then91

for.inc95.3:                                      ; preds = %if.end79.3
  %call98 = tail call ptr @__class_create(ptr noundef null, ptr noundef nonnull @driver_name, ptr noundef nonnull @vme_user_probe.__key.19) #9
  store ptr %call98, ptr @vme_user_sysfs_class, align 4
  %cmp.i = icmp ugt ptr %call98, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end103, label %for.inc95.3.for.body110_crit_edge

for.inc95.3.for.body110_crit_edge:                ; preds = %for.inc95.3
  br label %for.body110

do.end103:                                        ; preds = %for.inc95.3
  call void @__sanitizer_cov_trace_pc() #11
  %dev104 = getelementptr inbounds %struct.vme_dev, ptr %vdev, i32 0, i32 2
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev104, ptr noundef nonnull @.str.21) #12
  %16 = load ptr, ptr @vme_user_sysfs_class, align 4
  %17 = ptrtoint ptr %16 to i32
  br label %while.body141

for.body110:                                      ; preds = %for.inc132.for.body110_crit_edge, %for.inc95.3.for.body110_crit_edge
  %i.3244 = phi i32 [ %inc133, %for.inc132.for.body110_crit_edge ], [ 0, %for.inc95.3.for.body110_crit_edge ]
  %arrayidx111 = getelementptr [9 x i32], ptr @type, i32 0, i32 %i.3244
  %18 = ptrtoint ptr %arrayidx111 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx111, align 4
  %20 = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.55)
  switch i32 %19, label %for.body110.cleanup_crit_edge [
    i32 0, label %for.body110.sw.epilog_crit_edge
    i32 8, label %sw.bb112
    i32 4, label %sw.bb113
  ]

for.body110.sw.epilog_crit_edge:                  ; preds = %for.body110
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

for.body110.cleanup_crit_edge:                    ; preds = %for.body110
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb112:                                         ; preds = %for.body110
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb113:                                         ; preds = %for.body110
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb113, %sw.bb112, %for.body110.sw.epilog_crit_edge
  %name.0 = phi ptr [ @.str.25, %sw.bb113 ], [ @.str.24, %sw.bb112 ], [ @.str.23, %for.body110.sw.epilog_crit_edge ]
  %21 = and i32 %i.3244, 1073741820
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %21)
  %cmp115 = icmp eq i32 %21, 4
  %sub = add nsw i32 %i.3244, -4
  %cond = select i1 %cmp115, i32 %sub, i32 %i.3244
  %22 = load ptr, ptr @vme_user_sysfs_class, align 4
  %or = or i32 %i.3244, 231735296
  %call117 = tail call ptr (ptr, ptr, i32, ptr, ptr, ...) @device_create(ptr noundef %22, ptr noundef null, i32 noundef %or, ptr noundef null, ptr noundef nonnull %name.0, i32 noundef %cond) #9
  %device119 = getelementptr [9 x %struct.image_desc], ptr @image, i32 0, i32 %i.3244, i32 4
  %23 = ptrtoint ptr %device119 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call117, ptr %device119, align 4
  %cmp.i228 = icmp ugt ptr %call117, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i228, label %do.end126, label %for.inc132

do.end126:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %dev127 = getelementptr inbounds %struct.vme_dev, ptr %vdev, i32 0, i32 2
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev127, ptr noundef nonnull @.str.27) #12
  %24 = ptrtoint ptr %device119 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %device119, align 4
  %26 = ptrtoint ptr %25 to i32
  br label %cleanup

cleanup:                                          ; preds = %do.end126, %for.body110.cleanup_crit_edge
  %err.1 = phi i32 [ %26, %do.end126 ], [ -22, %for.body110.cleanup_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.3244)
  %cmp135245.not = icmp eq i32 %i.3244, 0
  br i1 %cmp135245.not, label %cleanup.while.end_crit_edge, label %while.body

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

for.inc132:                                       ; preds = %sw.epilog
  %inc133 = add nuw nsw i32 %i.3244, 1
  %exitcond.not = icmp eq i32 %inc133, 9
  br i1 %exitcond.not, label %for.inc132.cleanup165_crit_edge, label %for.inc132.for.body110_crit_edge

for.inc132.for.body110_crit_edge:                 ; preds = %for.inc132
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body110

for.inc132.cleanup165_crit_edge:                  ; preds = %for.inc132
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup165

while.body:                                       ; preds = %cleanup
  %dec = add nsw i32 %i.3244, -1
  %27 = load ptr, ptr @vme_user_sysfs_class, align 4
  %or137 = or i32 %dec, 231735296
  tail call void @device_destroy(ptr noundef %27, i32 noundef %or137) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.3244)
  %cmp135 = icmp ugt i32 %i.3244, 1
  br i1 %cmp135, label %while.body.1, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.1:                                     ; preds = %while.body
  %dec.1 = add nsw i32 %i.3244, -2
  %28 = load ptr, ptr @vme_user_sysfs_class, align 4
  %or137.1 = or i32 %dec.1, 231735296
  tail call void @device_destroy(ptr noundef %28, i32 noundef %or137.1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %i.3244)
  %cmp135.1.not = icmp eq i32 %i.3244, 2
  br i1 %cmp135.1.not, label %while.body.1.while.end_crit_edge, label %while.body.2

while.body.1.while.end_crit_edge:                 ; preds = %while.body.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.2:                                     ; preds = %while.body.1
  %dec.2 = add nsw i32 %i.3244, -3
  %29 = load ptr, ptr @vme_user_sysfs_class, align 4
  %or137.2 = or i32 %dec.2, 231735296
  tail call void @device_destroy(ptr noundef %29, i32 noundef %or137.2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %i.3244)
  %cmp135.2 = icmp ugt i32 %i.3244, 3
  br i1 %cmp135.2, label %while.body.3, label %while.body.2.while.end_crit_edge

while.body.2.while.end_crit_edge:                 ; preds = %while.body.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.3:                                     ; preds = %while.body.2
  %dec.3 = add nsw i32 %i.3244, -4
  %30 = load ptr, ptr @vme_user_sysfs_class, align 4
  %or137.3 = or i32 %dec.3, 231735296
  tail call void @device_destroy(ptr noundef %30, i32 noundef %or137.3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %i.3244)
  %cmp135.3.not = icmp eq i32 %i.3244, 4
  br i1 %cmp135.3.not, label %while.body.3.while.end_crit_edge, label %while.body.4

while.body.3.while.end_crit_edge:                 ; preds = %while.body.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.4:                                     ; preds = %while.body.3
  %dec.4 = add nsw i32 %i.3244, -5
  %31 = load ptr, ptr @vme_user_sysfs_class, align 4
  %or137.4 = or i32 %dec.4, 231735296
  tail call void @device_destroy(ptr noundef %31, i32 noundef %or137.4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %i.3244)
  %cmp135.4 = icmp ugt i32 %i.3244, 5
  br i1 %cmp135.4, label %while.body.5, label %while.body.4.while.end_crit_edge

while.body.4.while.end_crit_edge:                 ; preds = %while.body.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.5:                                     ; preds = %while.body.4
  %dec.5 = add nsw i32 %i.3244, -6
  %32 = load ptr, ptr @vme_user_sysfs_class, align 4
  %or137.5 = or i32 %dec.5, 231735296
  tail call void @device_destroy(ptr noundef %32, i32 noundef %or137.5) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %i.3244)
  %cmp135.5.not = icmp eq i32 %i.3244, 6
  br i1 %cmp135.5.not, label %while.body.5.while.end_crit_edge, label %while.body.6

while.body.5.while.end_crit_edge:                 ; preds = %while.body.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.6:                                     ; preds = %while.body.5
  %dec.6 = add nsw i32 %i.3244, -7
  %33 = load ptr, ptr @vme_user_sysfs_class, align 4
  %or137.6 = or i32 %dec.6, 231735296
  tail call void @device_destroy(ptr noundef %33, i32 noundef %or137.6) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %i.3244)
  %cmp135.6 = icmp ugt i32 %i.3244, 7
  br i1 %cmp135.6, label %while.body.7, label %while.body.6.while.end_crit_edge

while.body.6.while.end_crit_edge:                 ; preds = %while.body.6
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.7:                                     ; preds = %while.body.6
  call void @__sanitizer_cov_trace_pc() #11
  %dec.7 = add nsw i32 %i.3244, -8
  %34 = load ptr, ptr @vme_user_sysfs_class, align 4
  %or137.7 = or i32 %dec.7, 231735296
  tail call void @device_destroy(ptr noundef %34, i32 noundef %or137.7) #9
  br label %while.end

while.end:                                        ; preds = %while.body.7, %while.body.6.while.end_crit_edge, %while.body.5.while.end_crit_edge, %while.body.4.while.end_crit_edge, %while.body.3.while.end_crit_edge, %while.body.2.while.end_crit_edge, %while.body.1.while.end_crit_edge, %while.body.while.end_crit_edge, %cleanup.while.end_crit_edge
  %35 = load ptr, ptr @vme_user_sysfs_class, align 4
  tail call void @class_destroy(ptr noundef %35) #9
  br label %while.body141

err_master:                                       ; preds = %if.then91, %do.end77
  %i.5 = phi i32 [ %i.2243.lcssa257, %if.then91 ], [ %i.2243.lcssa, %do.end77 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.5)
  %cmp139247.not = icmp eq i32 %i.5, 0
  br i1 %cmp139247.not, label %err_master.while.body151_crit_edge, label %err_master.while.body141_crit_edge

err_master.while.body141_crit_edge:               ; preds = %err_master
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body141

err_master.while.body151_crit_edge:               ; preds = %err_master
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body151

while.body141:                                    ; preds = %err_master.while.body141_crit_edge, %while.end, %do.end103
  %err.2268 = phi i32 [ -12, %err_master.while.body141_crit_edge ], [ %err.1, %while.end ], [ %17, %do.end103 ]
  %i.5267 = phi i32 [ %i.5, %err_master.while.body141_crit_edge ], [ 4, %while.end ], [ 4, %do.end103 ]
  %dec142 = add nsw i32 %i.5267, -1
  %arrayidx143 = getelementptr [9 x %struct.image_desc], ptr @image, i32 0, i32 %dec142
  %36 = ptrtoint ptr %arrayidx143 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx143, align 8
  tail call void @kfree(ptr noundef %37) #9
  %resource146 = getelementptr [9 x %struct.image_desc], ptr @image, i32 0, i32 %dec142, i32 5
  %38 = ptrtoint ptr %resource146 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %resource146, align 8
  tail call void @vme_master_free(ptr noundef %39) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.5267)
  %cmp139 = icmp ugt i32 %i.5267, 1
  br i1 %cmp139, label %while.body141.1, label %while.body141.while.body151_crit_edge

while.body141.while.body151_crit_edge:            ; preds = %while.body141
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body151

while.body141.1:                                  ; preds = %while.body141
  %dec142.1 = add nsw i32 %i.5267, -2
  %arrayidx143.1 = getelementptr [9 x %struct.image_desc], ptr @image, i32 0, i32 %dec142.1
  %40 = ptrtoint ptr %arrayidx143.1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx143.1, align 8
  tail call void @kfree(ptr noundef %41) #9
  %resource146.1 = getelementptr [9 x %struct.image_desc], ptr @image, i32 0, i32 %dec142.1, i32 5
  %42 = ptrtoint ptr %resource146.1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %resource146.1, align 8
  tail call void @vme_master_free(ptr noundef %43) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec142)
  %cmp139.1 = icmp ugt i32 %dec142, 1
  br i1 %cmp139.1, label %while.body141.2, label %while.body141.1.while.body151_crit_edge

while.body141.1.while.body151_crit_edge:          ; preds = %while.body141.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body151

while.body141.2:                                  ; preds = %while.body141.1
  %dec142.2 = add nsw i32 %i.5267, -3
  %arrayidx143.2 = getelementptr [9 x %struct.image_desc], ptr @image, i32 0, i32 %dec142.2
  %44 = ptrtoint ptr %arrayidx143.2 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx143.2, align 8
  tail call void @kfree(ptr noundef %45) #9
  %resource146.2 = getelementptr [9 x %struct.image_desc], ptr @image, i32 0, i32 %dec142.2, i32 5
  %46 = ptrtoint ptr %resource146.2 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %resource146.2, align 8
  tail call void @vme_master_free(ptr noundef %47) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec142.1)
  %cmp139.2 = icmp ugt i32 %dec142.1, 1
  br i1 %cmp139.2, label %while.body141.3, label %while.body141.2.while.body151_crit_edge

while.body141.2.while.body151_crit_edge:          ; preds = %while.body141.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body151

while.body141.3:                                  ; preds = %while.body141.2
  call void @__sanitizer_cov_trace_pc() #11
  %dec142.3 = add nsw i32 %i.5267, -4
  %arrayidx143.3 = getelementptr [9 x %struct.image_desc], ptr @image, i32 0, i32 %dec142.3
  %48 = ptrtoint ptr %arrayidx143.3 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx143.3, align 8
  tail call void @kfree(ptr noundef %49) #9
  %resource146.3 = getelementptr [9 x %struct.image_desc], ptr @image, i32 0, i32 %dec142.3, i32 5
  %50 = ptrtoint ptr %resource146.3 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %resource146.3, align 8
  tail call void @vme_master_free(ptr noundef %51) #9
  br label %while.body151

err_slave:                                        ; preds = %do.end54, %do.end35
  %i.7 = phi i32 [ %i.1242.lcssa261, %do.end54 ], [ %i.1242.lcssa, %do.end35 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %i.7)
  %cmp149249 = icmp ugt i32 %i.7, 4
  br i1 %cmp149249, label %err_slave.while.body151_crit_edge, label %err_slave.err_class_crit_edge

err_slave.err_class_crit_edge:                    ; preds = %err_slave
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_class

err_slave.while.body151_crit_edge:                ; preds = %err_slave
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body151

while.body151:                                    ; preds = %err_slave.while.body151_crit_edge, %while.body141.3, %while.body141.2.while.body151_crit_edge, %while.body141.1.while.body151_crit_edge, %while.body141.while.body151_crit_edge, %err_master.while.body151_crit_edge
  %err.3273 = phi i32 [ -12, %err_slave.while.body151_crit_edge ], [ -12, %err_master.while.body151_crit_edge ], [ %err.2268, %while.body141.3 ], [ %err.2268, %while.body141.2.while.body151_crit_edge ], [ %err.2268, %while.body141.1.while.body151_crit_edge ], [ %err.2268, %while.body141.while.body151_crit_edge ]
  %i.7272 = phi i32 [ %i.7, %err_slave.while.body151_crit_edge ], [ 8, %err_master.while.body151_crit_edge ], [ 8, %while.body141.3 ], [ 8, %while.body141.2.while.body151_crit_edge ], [ 8, %while.body141.1.while.body151_crit_edge ], [ 8, %while.body141.while.body151_crit_edge ]
  %dec152 = add nsw i32 %i.7272, -1
  %arrayidx153 = getelementptr [9 x %struct.image_desc], ptr @image, i32 0, i32 %dec152
  %resource154 = getelementptr [9 x %struct.image_desc], ptr @image, i32 0, i32 %dec152, i32 5
  %52 = ptrtoint ptr %resource154 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %resource154, align 8
  %size_buf156 = getelementptr [9 x %struct.image_desc], ptr @image, i32 0, i32 %dec152, i32 2
  %54 = ptrtoint ptr %size_buf156 to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %size_buf156, align 8
  %conv157 = trunc i64 %55 to i32
  %56 = ptrtoint ptr %arrayidx153 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx153, align 8
  %pci_buf161 = getelementptr [9 x %struct.image_desc], ptr @image, i32 0, i32 %dec152, i32 1
  %58 = ptrtoint ptr %pci_buf161 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %pci_buf161, align 4
  tail call void @vme_free_consistent(ptr noundef %53, i32 noundef %conv157, ptr noundef %57, i32 noundef %59) #9
  %60 = ptrtoint ptr %resource154 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %resource154, align 8
  tail call void @vme_slave_free(ptr noundef %61) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %i.7272)
  %cmp149 = icmp ugt i32 %i.7272, 5
  br i1 %cmp149, label %while.body151.1, label %while.body151.err_class_crit_edge

while.body151.err_class_crit_edge:                ; preds = %while.body151
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_class

while.body151.1:                                  ; preds = %while.body151
  %dec152.1 = add nsw i32 %i.7272, -2
  %arrayidx153.1 = getelementptr [9 x %struct.image_desc], ptr @image, i32 0, i32 %dec152.1
  %resource154.1 = getelementptr [9 x %struct.image_desc], ptr @image, i32 0, i32 %dec152.1, i32 5
  %62 = ptrtoint ptr %resource154.1 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %resource154.1, align 8
  %size_buf156.1 = getelementptr [9 x %struct.image_desc], ptr @image, i32 0, i32 %dec152.1, i32 2
  %64 = ptrtoint ptr %size_buf156.1 to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %size_buf156.1, align 8
  %conv157.1 = trunc i64 %65 to i32
  %66 = ptrtoint ptr %arrayidx153.1 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %arrayidx153.1, align 8
  %pci_buf161.1 = getelementptr [9 x %struct.image_desc], ptr @image, i32 0, i32 %dec152.1, i32 1
  %68 = ptrtoint ptr %pci_buf161.1 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %pci_buf161.1, align 4
  tail call void @vme_free_consistent(ptr noundef %63, i32 noundef %conv157.1, ptr noundef %67, i32 noundef %69) #9
  %70 = ptrtoint ptr %resource154.1 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %resource154.1, align 8
  tail call void @vme_slave_free(ptr noundef %71) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %dec152)
  %cmp149.1 = icmp ugt i32 %dec152, 5
  br i1 %cmp149.1, label %while.body151.2, label %while.body151.1.err_class_crit_edge

while.body151.1.err_class_crit_edge:              ; preds = %while.body151.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_class

while.body151.2:                                  ; preds = %while.body151.1
  %dec152.2 = add nsw i32 %i.7272, -3
  %arrayidx153.2 = getelementptr [9 x %struct.image_desc], ptr @image, i32 0, i32 %dec152.2
  %resource154.2 = getelementptr [9 x %struct.image_desc], ptr @image, i32 0, i32 %dec152.2, i32 5
  %72 = ptrtoint ptr %resource154.2 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %resource154.2, align 8
  %size_buf156.2 = getelementptr [9 x %struct.image_desc], ptr @image, i32 0, i32 %dec152.2, i32 2
  %74 = ptrtoint ptr %size_buf156.2 to i32
  call void @__asan_load8_noabort(i32 %74)
  %75 = load i64, ptr %size_buf156.2, align 8
  %conv157.2 = trunc i64 %75 to i32
  %76 = ptrtoint ptr %arrayidx153.2 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %arrayidx153.2, align 8
  %pci_buf161.2 = getelementptr [9 x %struct.image_desc], ptr @image, i32 0, i32 %dec152.2, i32 1
  %78 = ptrtoint ptr %pci_buf161.2 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %pci_buf161.2, align 4
  tail call void @vme_free_consistent(ptr noundef %73, i32 noundef %conv157.2, ptr noundef %77, i32 noundef %79) #9
  %80 = ptrtoint ptr %resource154.2 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %resource154.2, align 8
  tail call void @vme_slave_free(ptr noundef %81) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %dec152.1)
  %cmp149.2 = icmp ugt i32 %dec152.1, 5
  br i1 %cmp149.2, label %while.body151.3, label %while.body151.2.err_class_crit_edge

while.body151.2.err_class_crit_edge:              ; preds = %while.body151.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_class

while.body151.3:                                  ; preds = %while.body151.2
  call void @__sanitizer_cov_trace_pc() #11
  %dec152.3 = add nsw i32 %i.7272, -4
  %arrayidx153.3 = getelementptr [9 x %struct.image_desc], ptr @image, i32 0, i32 %dec152.3
  %resource154.3 = getelementptr [9 x %struct.image_desc], ptr @image, i32 0, i32 %dec152.3, i32 5
  %82 = ptrtoint ptr %resource154.3 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %resource154.3, align 8
  %size_buf156.3 = getelementptr [9 x %struct.image_desc], ptr @image, i32 0, i32 %dec152.3, i32 2
  %84 = ptrtoint ptr %size_buf156.3 to i32
  call void @__asan_load8_noabort(i32 %84)
  %85 = load i64, ptr %size_buf156.3, align 8
  %conv157.3 = trunc i64 %85 to i32
  %86 = ptrtoint ptr %arrayidx153.3 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %arrayidx153.3, align 8
  %pci_buf161.3 = getelementptr [9 x %struct.image_desc], ptr @image, i32 0, i32 %dec152.3, i32 1
  %88 = ptrtoint ptr %pci_buf161.3 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %pci_buf161.3, align 4
  tail call void @vme_free_consistent(ptr noundef %83, i32 noundef %conv157.3, ptr noundef %87, i32 noundef %89) #9
  %90 = ptrtoint ptr %resource154.3 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %resource154.3, align 8
  tail call void @vme_slave_free(ptr noundef %91) #9
  br label %err_class

err_class:                                        ; preds = %while.body151.3, %while.body151.2.err_class_crit_edge, %while.body151.1.err_class_crit_edge, %while.body151.err_class_crit_edge, %err_slave.err_class_crit_edge, %if.end18.err_class_crit_edge
  %err.4 = phi i32 [ %call19, %if.end18.err_class_crit_edge ], [ -12, %err_slave.err_class_crit_edge ], [ %err.3273, %while.body151.3 ], [ %err.3273, %while.body151.2.err_class_crit_edge ], [ %err.3273, %while.body151.1.err_class_crit_edge ], [ %err.3273, %while.body151.err_class_crit_edge ]
  %92 = load ptr, ptr @vme_user_cdev, align 4
  tail call void @cdev_del(ptr noundef %92) #9
  br label %err_char

err_char:                                         ; preds = %err_class, %if.end14.err_char_crit_edge
  %err.5 = phi i32 [ %err.4, %err_class ], [ -12, %if.end14.err_char_crit_edge ]
  tail call void @unregister_chrdev_region(i32 noundef 231735296, i32 noundef 9) #9
  br label %cleanup165

cleanup165:                                       ; preds = %err_char, %for.inc132.cleanup165_crit_edge, %do.end12, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call, %do.end12 ], [ %err.5, %err_char ], [ 0, %for.inc132.cleanup165_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vme_user_remove(ptr nocapture noundef readnone %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_destroy(ptr noundef getelementptr inbounds ([9 x %struct.image_desc], ptr @image, i32 0, i32 0, i32 3)) #9
  %0 = load ptr, ptr @vme_user_sysfs_class, align 4
  tail call void @device_destroy(ptr noundef %0, i32 noundef 231735296) #9
  tail call void @mutex_destroy(ptr noundef getelementptr inbounds ([9 x %struct.image_desc], ptr @image, i32 0, i32 1, i32 3)) #9
  %1 = load ptr, ptr @vme_user_sysfs_class, align 4
  tail call void @device_destroy(ptr noundef %1, i32 noundef 231735297) #9
  tail call void @mutex_destroy(ptr noundef getelementptr inbounds ([9 x %struct.image_desc], ptr @image, i32 0, i32 2, i32 3)) #9
  %2 = load ptr, ptr @vme_user_sysfs_class, align 4
  tail call void @device_destroy(ptr noundef %2, i32 noundef 231735298) #9
  tail call void @mutex_destroy(ptr noundef getelementptr inbounds ([9 x %struct.image_desc], ptr @image, i32 0, i32 3, i32 3)) #9
  %3 = load ptr, ptr @vme_user_sysfs_class, align 4
  tail call void @device_destroy(ptr noundef %3, i32 noundef 231735299) #9
  tail call void @mutex_destroy(ptr noundef getelementptr inbounds ([9 x %struct.image_desc], ptr @image, i32 0, i32 4, i32 3)) #9
  %4 = load ptr, ptr @vme_user_sysfs_class, align 4
  tail call void @device_destroy(ptr noundef %4, i32 noundef 231735300) #9
  tail call void @mutex_destroy(ptr noundef getelementptr inbounds ([9 x %struct.image_desc], ptr @image, i32 0, i32 5, i32 3)) #9
  %5 = load ptr, ptr @vme_user_sysfs_class, align 4
  tail call void @device_destroy(ptr noundef %5, i32 noundef 231735301) #9
  tail call void @mutex_destroy(ptr noundef getelementptr inbounds ([9 x %struct.image_desc], ptr @image, i32 0, i32 6, i32 3)) #9
  %6 = load ptr, ptr @vme_user_sysfs_class, align 4
  tail call void @device_destroy(ptr noundef %6, i32 noundef 231735302) #9
  tail call void @mutex_destroy(ptr noundef getelementptr inbounds ([9 x %struct.image_desc], ptr @image, i32 0, i32 7, i32 3)) #9
  %7 = load ptr, ptr @vme_user_sysfs_class, align 4
  tail call void @device_destroy(ptr noundef %7, i32 noundef 231735303) #9
  tail call void @mutex_destroy(ptr noundef getelementptr inbounds ([9 x %struct.image_desc], ptr @image, i32 0, i32 8, i32 3)) #9
  %8 = load ptr, ptr @vme_user_sysfs_class, align 4
  tail call void @device_destroy(ptr noundef %8, i32 noundef 231735304) #9
  %9 = load ptr, ptr @vme_user_sysfs_class, align 4
  tail call void @class_destroy(ptr noundef %9) #9
  %10 = load ptr, ptr @image, align 8
  tail call void @kfree(ptr noundef %10) #9
  %11 = load ptr, ptr getelementptr inbounds ([9 x %struct.image_desc], ptr @image, i32 0, i32 0, i32 5), align 8
  tail call void @vme_master_free(ptr noundef %11) #9
  %12 = load ptr, ptr getelementptr inbounds ([9 x %struct.image_desc], ptr @image, i32 0, i32 1), align 8
  tail call void @kfree(ptr noundef %12) #9
  %13 = load ptr, ptr getelementptr inbounds ([9 x %struct.image_desc], ptr @image, i32 0, i32 1, i32 5), align 8
  tail call void @vme_master_free(ptr noundef %13) #9
  %14 = load ptr, ptr getelementptr inbounds ([9 x %struct.image_desc], ptr @image, i32 0, i32 2), align 8
  tail call void @kfree(ptr noundef %14) #9
  %15 = load ptr, ptr getelementptr inbounds ([9 x %struct.image_desc], ptr @image, i32 0, i32 2, i32 5), align 8
  tail call void @vme_master_free(ptr noundef %15) #9
  %16 = load ptr, ptr getelementptr inbounds ([9 x %struct.image_desc], ptr @image, i32 0, i32 3), align 8
  tail call void @kfree(ptr noundef %16) #9
  %17 = load ptr, ptr getelementptr inbounds ([9 x %struct.image_desc], ptr @image, i32 0, i32 3, i32 5), align 8
  tail call void @vme_master_free(ptr noundef %17) #9
  %18 = load ptr, ptr getelementptr inbounds ([9 x %struct.image_desc], ptr @image, i32 0, i32 4, i32 5), align 8
  %call = tail call i32 @vme_slave_set(ptr noundef %18, i32 noundef 0, i64 noundef 0, i64 noundef 0, i32 noundef 0, i32 noundef 4, i32 noundef 0) #9
  %19 = load ptr, ptr getelementptr inbounds ([9 x %struct.image_desc], ptr @image, i32 0, i32 4, i32 5), align 8
  %20 = load i64, ptr getelementptr inbounds ([9 x %struct.image_desc], ptr @image, i32 0, i32 4, i32 2), align 8
  %conv = trunc i64 %20 to i32
  %21 = load ptr, ptr getelementptr inbounds ([9 x %struct.image_desc], ptr @image, i32 0, i32 4), align 8
  %22 = load i32, ptr getelementptr inbounds ([9 x %struct.image_desc], ptr @image, i32 0, i32 4, i32 1), align 4
  tail call void @vme_free_consistent(ptr noundef %19, i32 noundef %conv, ptr noundef %21, i32 noundef %22) #9
  %23 = load ptr, ptr getelementptr inbounds ([9 x %struct.image_desc], ptr @image, i32 0, i32 4, i32 5), align 8
  tail call void @vme_slave_free(ptr noundef %23) #9
  %24 = load ptr, ptr getelementptr inbounds ([9 x %struct.image_desc], ptr @image, i32 0, i32 5, i32 5), align 8
  %call.1 = tail call i32 @vme_slave_set(ptr noundef %24, i32 noundef 0, i64 noundef 0, i64 noundef 0, i32 noundef 0, i32 noundef 4, i32 noundef 0) #9
  %25 = load ptr, ptr getelementptr inbounds ([9 x %struct.image_desc], ptr @image, i32 0, i32 5, i32 5), align 8
  %26 = load i64, ptr getelementptr inbounds ([9 x %struct.image_desc], ptr @image, i32 0, i32 5, i32 2), align 8
  %conv.1 = trunc i64 %26 to i32
  %27 = load ptr, ptr getelementptr inbounds ([9 x %struct.image_desc], ptr @image, i32 0, i32 5), align 8
  %28 = load i32, ptr getelementptr inbounds ([9 x %struct.image_desc], ptr @image, i32 0, i32 5, i32 1), align 4
  tail call void @vme_free_consistent(ptr noundef %25, i32 noundef %conv.1, ptr noundef %27, i32 noundef %28) #9
  %29 = load ptr, ptr getelementptr inbounds ([9 x %struct.image_desc], ptr @image, i32 0, i32 5, i32 5), align 8
  tail call void @vme_slave_free(ptr noundef %29) #9
  %30 = load ptr, ptr getelementptr inbounds ([9 x %struct.image_desc], ptr @image, i32 0, i32 6, i32 5), align 8
  %call.2 = tail call i32 @vme_slave_set(ptr noundef %30, i32 noundef 0, i64 noundef 0, i64 noundef 0, i32 noundef 0, i32 noundef 4, i32 noundef 0) #9
  %31 = load ptr, ptr getelementptr inbounds ([9 x %struct.image_desc], ptr @image, i32 0, i32 6, i32 5), align 8
  %32 = load i64, ptr getelementptr inbounds ([9 x %struct.image_desc], ptr @image, i32 0, i32 6, i32 2), align 8
  %conv.2 = trunc i64 %32 to i32
  %33 = load ptr, ptr getelementptr inbounds ([9 x %struct.image_desc], ptr @image, i32 0, i32 6), align 8
  %34 = load i32, ptr getelementptr inbounds ([9 x %struct.image_desc], ptr @image, i32 0, i32 6, i32 1), align 4
  tail call void @vme_free_consistent(ptr noundef %31, i32 noundef %conv.2, ptr noundef %33, i32 noundef %34) #9
  %35 = load ptr, ptr getelementptr inbounds ([9 x %struct.image_desc], ptr @image, i32 0, i32 6, i32 5), align 8
  tail call void @vme_slave_free(ptr noundef %35) #9
  %36 = load ptr, ptr getelementptr inbounds ([9 x %struct.image_desc], ptr @image, i32 0, i32 7, i32 5), align 8
  %call.3 = tail call i32 @vme_slave_set(ptr noundef %36, i32 noundef 0, i64 noundef 0, i64 noundef 0, i32 noundef 0, i32 noundef 4, i32 noundef 0) #9
  %37 = load ptr, ptr getelementptr inbounds ([9 x %struct.image_desc], ptr @image, i32 0, i32 7, i32 5), align 8
  %38 = load i64, ptr getelementptr inbounds ([9 x %struct.image_desc], ptr @image, i32 0, i32 7, i32 2), align 8
  %conv.3 = trunc i64 %38 to i32
  %39 = load ptr, ptr getelementptr inbounds ([9 x %struct.image_desc], ptr @image, i32 0, i32 7), align 8
  %40 = load i32, ptr getelementptr inbounds ([9 x %struct.image_desc], ptr @image, i32 0, i32 7, i32 1), align 4
  tail call void @vme_free_consistent(ptr noundef %37, i32 noundef %conv.3, ptr noundef %39, i32 noundef %40) #9
  %41 = load ptr, ptr getelementptr inbounds ([9 x %struct.image_desc], ptr @image, i32 0, i32 7, i32 5), align 8
  tail call void @vme_slave_free(ptr noundef %41) #9
  %42 = load ptr, ptr @vme_user_cdev, align 4
  tail call void @cdev_del(ptr noundef %42) #9
  tail call void @unregister_chrdev_region(i32 noundef 231735296, i32 noundef 9) #9
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vme_bus_num(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vme_slot_num(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_chrdev_region(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cdev_alloc() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cdev_add(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vme_slave_request(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vme_alloc_consistent(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vme_slave_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vme_master_request(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vme_master_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__class_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_create(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_destroy(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @class_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vme_free_consistent(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cdev_del(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_chrdev_region(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @vme_user_llseek(ptr noundef %file, i64 noundef %off, i32 noundef %whence) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %i_rdev.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %i_rdev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %i_rdev.i, align 8
  %and.i = and i32 %3, 1048575
  %arrayidx = getelementptr [9 x i32], ptr @type, i32 0, i32 %and.i
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.56)
  switch i32 %5, label %entry.cleanup_crit_edge [
    i32 0, label %entry.sw.bb_crit_edge
    i32 4, label %entry.sw.bb_crit_edge14
  ]

entry.sw.bb_crit_edge14:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge14
  %mutex = getelementptr [9 x %struct.image_desc], ptr @image, i32 0, i32 %and.i, i32 3
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #9
  %resource = getelementptr [9 x %struct.image_desc], ptr @image, i32 0, i32 %and.i, i32 5
  %7 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %resource, align 8
  %call4 = tail call i32 @vme_get_size(ptr noundef %8) #9
  %conv = zext i32 %call4 to i64
  %call5 = tail call i64 @fixed_size_llseek(ptr noundef %file, i64 noundef %off, i32 noundef %whence, i64 noundef %conv) #9
  tail call void @mutex_unlock(ptr noundef %mutex) #9
  br label %cleanup

cleanup:                                          ; preds = %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i64 [ %call5, %sw.bb ], [ -22, %entry.cleanup_crit_edge ]
  ret i64 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vme_user_read(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef %ppos) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %i_rdev.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %i_rdev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %i_rdev.i, align 8
  %and.i = and i32 %3, 1048575
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %and.i)
  %cmp = icmp eq i32 %and.i, 8
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %mutex = getelementptr [9 x %struct.image_desc], ptr @image, i32 0, i32 %and.i, i32 3
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #9
  %resource = getelementptr [9 x %struct.image_desc], ptr @image, i32 0, i32 %and.i, i32 5
  %4 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %resource, align 8
  %call4 = tail call i32 @vme_get_size(ptr noundef %5) #9
  %6 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %ppos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %7)
  %cmp5 = icmp slt i64 %7, 0
  br i1 %cmp5, label %if.end.if.then8_crit_edge, label %lor.lhs.false

if.end.if.then8_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then8

lor.lhs.false:                                    ; preds = %if.end
  %sub = add i32 %call4, -1
  %conv = zext i32 %sub to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %7, i64 %conv)
  %cmp6 = icmp ugt i64 %7, %conv
  br i1 %cmp6, label %lor.lhs.false.if.then8_crit_edge, label %if.end11

lor.lhs.false.if.then8_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then8

if.then8:                                         ; preds = %lor.lhs.false.if.then8_crit_edge, %if.end.if.then8_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #9
  br label %cleanup

if.end11:                                         ; preds = %lor.lhs.false
  %conv12 = zext i32 %count to i64
  %add = add nuw i64 %7, %conv12
  %conv13 = zext i32 %call4 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %conv13)
  %cmp14 = icmp sgt i64 %add, %conv13
  %8 = trunc i64 %7 to i32
  %conv19 = sub i32 %call4, %8
  %count.addr.0 = select i1 %cmp14, i32 %conv19, i32 %count
  %arrayidx21 = getelementptr [9 x i32], ptr @type, i32 0, i32 %and.i
  %9 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx21, align 4
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.57)
  switch i32 %10, label %if.end11.sw.epilog.thread_crit_edge [
    i32 0, label %sw.bb
    i32 4, label %sw.bb23
  ]

if.end11.sw.epilog.thread_crit_edge:              ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.thread

sw.bb:                                            ; preds = %if.end11
  %conv.i = zext i32 %count.addr.0 to i64
  %arrayidx.i = getelementptr [9 x %struct.image_desc], ptr @image, i32 0, i32 %and.i
  %size_buf.i = getelementptr [9 x %struct.image_desc], ptr @image, i32 0, i32 %and.i, i32 2
  %12 = ptrtoint ptr %size_buf.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %size_buf.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %13, i64 %conv.i)
  %cmp.i = icmp ult i64 %13, %conv.i
  %conv4.i = trunc i64 %13 to i32
  %spec.select.i = select i1 %cmp.i, i32 %conv4.i, i32 %count.addr.0
  %14 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %resource, align 8
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.i, align 8
  %call.i = tail call i32 @vme_master_read(ptr noundef %15, ptr noundef %17, i32 noundef %spec.select.i, i64 noundef %7) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp7.i = icmp slt i32 %call.i, 0
  br i1 %cmp7.i, label %sw.bb.sw.epilog.thread_crit_edge, label %if.end10.i

sw.bb.sw.epilog.thread_crit_edge:                 ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.thread

if.end10.i:                                       ; preds = %sw.bb
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.i, align 8
  tail call void @__check_object_size(ptr noundef %19, i32 noundef %call.i, i1 noundef zeroext true) #9
  tail call void @__might_fault(ptr noundef nonnull @.str.32, i32 noundef 174) #9
  %call.i.i.i = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i.i, label %if.end10.i.copy_to_user.exit.i_crit_edge, label %if.end.i.i.i

if.end10.i.copy_to_user.exit.i_crit_edge:         ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_to_user.exit.i

if.end.i.i.i:                                     ; preds = %if.end10.i
  %20 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 %call.i, i32 -1226833920) #14, !srcloc !137
  %asmresult.i.i.i = extractvalue { i32, i32 } %20, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %if.then2.i.i.i, label %if.end.i.i.i.copy_to_user.exit.i_crit_edge

if.end.i.i.i.copy_to_user.exit.i_crit_edge:       ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_to_user.exit.i

if.then2.i.i.i:                                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %19, i32 noundef %call.i) #9
  %call.i12.i.i.i = tail call i32 @arm_copy_to_user(ptr noundef %buf, ptr noundef %19, i32 noundef %call.i) #9
  br label %copy_to_user.exit.i

copy_to_user.exit.i:                              ; preds = %if.then2.i.i.i, %if.end.i.i.i.copy_to_user.exit.i_crit_edge, %if.end10.i.copy_to_user.exit.i_crit_edge
  %n.addr.0.i.i = phi i32 [ %call.i, %if.end10.i.copy_to_user.exit.i_crit_edge ], [ %call.i12.i.i.i, %if.then2.i.i.i ], [ %call.i, %if.end.i.i.i.copy_to_user.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i.i)
  %tobool.not.i = icmp eq i32 %n.addr.0.i.i, 0
  br i1 %tobool.not.i, label %copy_to_user.exit.i.sw.epilog_crit_edge, label %copy_to_user.exit.i.sw.epilog.thread_crit_edge

copy_to_user.exit.i.sw.epilog.thread_crit_edge:   ; preds = %copy_to_user.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.thread

copy_to_user.exit.i.sw.epilog_crit_edge:          ; preds = %copy_to_user.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb23:                                          ; preds = %if.end11
  %arrayidx.i55 = getelementptr [9 x %struct.image_desc], ptr @image, i32 0, i32 %and.i
  %21 = ptrtoint ptr %arrayidx.i55 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx.i55, align 8
  %add.ptr.i = getelementptr i8, ptr %22, i32 %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.addr.0)
  %cmp9.i.i.i = icmp slt i32 %count.addr.0, 0
  br i1 %cmp9.i.i.i, label %land.rhs16.i.i.i, label %if.then.i.i.i.i63

land.rhs16.i.i.i:                                 ; preds = %sw.bb23
  %.b71.i.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i.i, label %land.rhs16.i.i.i.sw.epilog.thread_crit_edge, label %if.then27.i.i.i, !prof !138

land.rhs16.i.i.i.sw.epilog.thread_crit_edge:      ; preds = %land.rhs16.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.thread

if.then27.i.i.i:                                  ; preds = %land.rhs16.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.30, i32 noundef 230, i32 noundef 9, ptr noundef null) #9
  br label %sw.epilog.thread

if.then.i.i.i.i63:                                ; preds = %sw.bb23
  tail call void @__check_object_size(ptr noundef %add.ptr.i, i32 noundef %count.addr.0, i1 noundef zeroext true) #9
  tail call void @__might_fault(ptr noundef nonnull @.str.32, i32 noundef 174) #9
  %call.i.i.i64 = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i.i64, label %if.then.i.i.i.i63.copy_to_user.exit.i75_crit_edge, label %if.end.i.i.i68

if.then.i.i.i.i63.copy_to_user.exit.i75_crit_edge: ; preds = %if.then.i.i.i.i63
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_to_user.exit.i75

if.end.i.i.i68:                                   ; preds = %if.then.i.i.i.i63
  %23 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 %count.addr.0, i32 -1226833920) #14, !srcloc !137
  %asmresult.i.i.i66 = extractvalue { i32, i32 } %23, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i66)
  %cmp.i6.i.i67 = icmp eq i32 %asmresult.i.i.i66, 0
  br i1 %cmp.i6.i.i67, label %if.then2.i.i.i71, label %if.end.i.i.i68.copy_to_user.exit.i75_crit_edge

if.end.i.i.i68.copy_to_user.exit.i75_crit_edge:   ; preds = %if.end.i.i.i68
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_to_user.exit.i75

if.then2.i.i.i71:                                 ; preds = %if.end.i.i.i68
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i.i69 = tail call zeroext i1 @__kasan_check_read(ptr noundef %add.ptr.i, i32 noundef %count.addr.0) #9
  %call.i12.i.i.i70 = tail call i32 @arm_copy_to_user(ptr noundef %buf, ptr noundef %add.ptr.i, i32 noundef %count.addr.0) #9
  br label %copy_to_user.exit.i75

copy_to_user.exit.i75:                            ; preds = %if.then2.i.i.i71, %if.end.i.i.i68.copy_to_user.exit.i75_crit_edge, %if.then.i.i.i.i63.copy_to_user.exit.i75_crit_edge
  %n.addr.0.i.i72 = phi i32 [ %count.addr.0, %if.then.i.i.i.i63.copy_to_user.exit.i75_crit_edge ], [ %call.i12.i.i.i70, %if.then2.i.i.i71 ], [ %count.addr.0, %if.end.i.i.i68.copy_to_user.exit.i75_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i.i72)
  %tobool.not.i73 = icmp eq i32 %n.addr.0.i.i72, 0
  br i1 %tobool.not.i73, label %copy_to_user.exit.i75.sw.epilog_crit_edge, label %copy_to_user.exit.i75.sw.epilog.thread_crit_edge

copy_to_user.exit.i75.sw.epilog.thread_crit_edge: ; preds = %copy_to_user.exit.i75
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.thread

copy_to_user.exit.i75.sw.epilog_crit_edge:        ; preds = %copy_to_user.exit.i75
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.epilog.thread:                                 ; preds = %copy_to_user.exit.i75.sw.epilog.thread_crit_edge, %if.then27.i.i.i, %land.rhs16.i.i.i.sw.epilog.thread_crit_edge, %copy_to_user.exit.i.sw.epilog.thread_crit_edge, %sw.bb.sw.epilog.thread_crit_edge, %if.end11.sw.epilog.thread_crit_edge
  %retval2.0.ph = phi i32 [ -14, %copy_to_user.exit.i75.sw.epilog.thread_crit_edge ], [ -14, %land.rhs16.i.i.i.sw.epilog.thread_crit_edge ], [ -14, %if.then27.i.i.i ], [ -14, %copy_to_user.exit.i.sw.epilog.thread_crit_edge ], [ %call.i, %sw.bb.sw.epilog.thread_crit_edge ], [ -22, %if.end11.sw.epilog.thread_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #9
  br label %cleanup

sw.epilog:                                        ; preds = %copy_to_user.exit.i75.sw.epilog_crit_edge, %copy_to_user.exit.i.sw.epilog_crit_edge
  %retval2.0 = phi i32 [ %call.i, %copy_to_user.exit.i.sw.epilog_crit_edge ], [ %count.addr.0, %copy_to_user.exit.i75.sw.epilog_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval2.0)
  %cmp27.not = icmp eq i32 %retval2.0, 0
  br i1 %cmp27.not, label %sw.epilog.cleanup_crit_edge, label %if.then29

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then29:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %conv3079 = zext i32 %retval2.0 to i64
  %24 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %ppos, align 8
  %add31 = add i64 %25, %conv3079
  store i64 %add31, ptr %ppos, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then29, %sw.epilog.cleanup_crit_edge, %sw.epilog.thread, %if.then8, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then8 ], [ 0, %entry.cleanup_crit_edge ], [ %retval2.0, %if.then29 ], [ 0, %sw.epilog.cleanup_crit_edge ], [ %retval2.0.ph, %sw.epilog.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vme_user_write(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef %ppos) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %i_rdev.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %i_rdev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %i_rdev.i, align 8
  %and.i = and i32 %3, 1048575
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %and.i)
  %cmp = icmp eq i32 %and.i, 8
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %mutex = getelementptr [9 x %struct.image_desc], ptr @image, i32 0, i32 %and.i, i32 3
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #9
  %resource = getelementptr [9 x %struct.image_desc], ptr @image, i32 0, i32 %and.i, i32 5
  %4 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %resource, align 8
  %call4 = tail call i32 @vme_get_size(ptr noundef %5) #9
  %6 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %ppos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %7)
  %cmp5 = icmp slt i64 %7, 0
  br i1 %cmp5, label %if.end.if.then8_crit_edge, label %lor.lhs.false

if.end.if.then8_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then8

lor.lhs.false:                                    ; preds = %if.end
  %sub = add i32 %call4, -1
  %conv = zext i32 %sub to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %7, i64 %conv)
  %cmp6 = icmp ugt i64 %7, %conv
  br i1 %cmp6, label %lor.lhs.false.if.then8_crit_edge, label %if.end11

lor.lhs.false.if.then8_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then8

if.then8:                                         ; preds = %lor.lhs.false.if.then8_crit_edge, %if.end.if.then8_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #9
  br label %cleanup

if.end11:                                         ; preds = %lor.lhs.false
  %conv12 = zext i32 %count to i64
  %add = add nuw i64 %7, %conv12
  %conv13 = zext i32 %call4 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %conv13)
  %cmp14 = icmp sgt i64 %add, %conv13
  %8 = trunc i64 %7 to i32
  %conv19 = sub i32 %call4, %8
  %count.addr.0 = select i1 %cmp14, i32 %conv19, i32 %count
  %arrayidx21 = getelementptr [9 x i32], ptr @type, i32 0, i32 %and.i
  %9 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx21, align 4
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.58)
  switch i32 %10, label %if.end11.sw.epilog.thread_crit_edge [
    i32 0, label %sw.bb
    i32 4, label %sw.bb23
  ]

if.end11.sw.epilog.thread_crit_edge:              ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.thread

sw.bb:                                            ; preds = %if.end11
  %conv.i = zext i32 %count.addr.0 to i64
  %arrayidx.i = getelementptr [9 x %struct.image_desc], ptr @image, i32 0, i32 %and.i
  %size_buf.i = getelementptr [9 x %struct.image_desc], ptr @image, i32 0, i32 %and.i, i32 2
  %12 = ptrtoint ptr %size_buf.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %size_buf.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %13, i64 %conv.i)
  %cmp.i = icmp ult i64 %13, %conv.i
  %conv4.i = trunc i64 %13 to i32
  %spec.select.i = select i1 %cmp.i, i32 %conv4.i, i32 %count.addr.0
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i)
  %cmp9.i.i.i = icmp slt i32 %spec.select.i, 0
  br i1 %cmp9.i.i.i, label %land.rhs16.i.i.i, label %if.then.i.i.i.i

land.rhs16.i.i.i:                                 ; preds = %sw.bb
  %.b71.i.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i.i, label %land.rhs16.i.i.i.sw.epilog.thread_crit_edge, label %if.then27.i.i.i, !prof !138

land.rhs16.i.i.i.sw.epilog.thread_crit_edge:      ; preds = %land.rhs16.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.thread

if.then27.i.i.i:                                  ; preds = %land.rhs16.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.30, i32 noundef 230, i32 noundef 9, ptr noundef null) #9
  br label %sw.epilog.thread

if.then.i.i.i.i:                                  ; preds = %sw.bb
  tail call void @__check_object_size(ptr noundef %15, i32 noundef %spec.select.i, i1 noundef zeroext false) #9
  tail call void @__might_fault(ptr noundef nonnull @.str.32, i32 noundef 156) #9
  %call.i.i.i = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i.i, label %if.then.i.i.i.i.if.end.i.i.i_crit_edge, label %land.lhs.true.i.i.i

if.then.i.i.i.i.if.end.i.i.i_crit_edge:           ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.then.i.i.i.i
  %16 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 %spec.select.i, i32 -1226833920) #14, !srcloc !139
  %asmresult.i.i.i = extractvalue { i32, i32 } %16, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %if.then.i7.i.i, label %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge, !prof !138

land.lhs.true.i.i.i.if.end.i.i.i_crit_edge:       ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i.i

if.then.i7.i.i:                                   ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %15, i32 noundef %spec.select.i) #9
  %17 = tail call i32 @llvm.read_register.i32(metadata !127) #9
  %and.i.i.i.i.i.i.i = and i32 %17, -16384
  %18 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 4
  %19 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i) #5, !srcloc !140
  %and.i.i.i.i.i = and i32 %19, -13
  %or.i.i.i.i.i = or i32 %and.i.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i) #9, !srcloc !141
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !142
  %call1.i.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef %15, ptr noundef %buf, i32 noundef %spec.select.i) #9
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %19) #9, !srcloc !141
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !142
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.then.i7.i.i, %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge, %if.then.i.i.i.i.if.end.i.i.i_crit_edge
  %res.0.i.i.i = phi i32 [ %spec.select.i, %if.then.i.i.i.i.if.end.i.i.i_crit_edge ], [ %call1.i.i.i.i, %if.then.i7.i.i ], [ %spec.select.i, %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %res.0.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end7.i, label %if.then11.i.i.i, !prof !138

if.then11.i.i.i:                                  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i.i = sub i32 %spec.select.i, %res.0.i.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %15, i32 %sub.i.i.i
  %20 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 %res.0.i.i.i)
  br label %sw.epilog.thread

if.end7.i:                                        ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %21 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %resource, align 8
  %23 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx.i, align 8
  %25 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %ppos, align 8
  %call11.i = tail call i32 @vme_master_write(ptr noundef %22, ptr noundef %24, i32 noundef %spec.select.i, i64 noundef %26) #9
  br label %sw.epilog

sw.bb23:                                          ; preds = %if.end11
  %arrayidx.i55 = getelementptr [9 x %struct.image_desc], ptr @image, i32 0, i32 %and.i
  %27 = ptrtoint ptr %arrayidx.i55 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx.i55, align 8
  %add.ptr.i = getelementptr i8, ptr %28, i32 %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.addr.0)
  %cmp9.i.i.i62 = icmp slt i32 %count.addr.0, 0
  br i1 %cmp9.i.i.i62, label %land.rhs16.i.i.i65, label %if.then.i.i.i.i68

land.rhs16.i.i.i65:                               ; preds = %sw.bb23
  %.b71.i.i.i64 = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i.i64, label %land.rhs16.i.i.i65.sw.epilog.thread_crit_edge, label %if.then27.i.i.i66, !prof !138

land.rhs16.i.i.i65.sw.epilog.thread_crit_edge:    ; preds = %land.rhs16.i.i.i65
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.thread

if.then27.i.i.i66:                                ; preds = %land.rhs16.i.i.i65
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.30, i32 noundef 230, i32 noundef 9, ptr noundef null) #9
  br label %sw.epilog.thread

if.then.i.i.i.i68:                                ; preds = %sw.bb23
  tail call void @__check_object_size(ptr noundef %add.ptr.i, i32 noundef %count.addr.0, i1 noundef zeroext false) #9
  tail call void @__might_fault(ptr noundef nonnull @.str.32, i32 noundef 156) #9
  %call.i.i.i69 = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i.i69, label %if.then.i.i.i.i68.if.end.i.i.i83_crit_edge, label %land.lhs.true.i.i.i73

if.then.i.i.i.i68.if.end.i.i.i83_crit_edge:       ; preds = %if.then.i.i.i.i68
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i.i83

land.lhs.true.i.i.i73:                            ; preds = %if.then.i.i.i.i68
  %29 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 %count.addr.0, i32 -1226833920) #14, !srcloc !139
  %asmresult.i.i.i71 = extractvalue { i32, i32 } %29, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i71)
  %cmp.i6.i.i72 = icmp eq i32 %asmresult.i.i.i71, 0
  br i1 %cmp.i6.i.i72, label %if.then.i7.i.i80, label %land.lhs.true.i.i.i73.if.end.i.i.i83_crit_edge, !prof !138

land.lhs.true.i.i.i73.if.end.i.i.i83_crit_edge:   ; preds = %land.lhs.true.i.i.i73
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i.i83

if.then.i7.i.i80:                                 ; preds = %land.lhs.true.i.i.i73
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i.i74 = tail call zeroext i1 @__kasan_check_write(ptr noundef %add.ptr.i, i32 noundef %count.addr.0) #9
  %30 = tail call i32 @llvm.read_register.i32(metadata !127) #9
  %and.i.i.i.i.i.i.i75 = and i32 %30, -16384
  %31 = inttoptr i32 %and.i.i.i.i.i.i.i75 to ptr
  %cpu_domain.i.i.i.i.i.i76 = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 4
  %32 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i76) #5, !srcloc !140
  %and.i.i.i.i.i77 = and i32 %32, -13
  %or.i.i.i.i.i78 = or i32 %and.i.i.i.i.i77, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i78) #9, !srcloc !141
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !142
  %call1.i.i.i.i79 = tail call i32 @arm_copy_from_user(ptr noundef %add.ptr.i, ptr noundef %buf, i32 noundef %count.addr.0) #9
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %32) #9, !srcloc !141
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !142
  br label %if.end.i.i.i83

if.end.i.i.i83:                                   ; preds = %if.then.i7.i.i80, %land.lhs.true.i.i.i73.if.end.i.i.i83_crit_edge, %if.then.i.i.i.i68.if.end.i.i.i83_crit_edge
  %res.0.i.i.i81 = phi i32 [ %count.addr.0, %if.then.i.i.i.i68.if.end.i.i.i83_crit_edge ], [ %call1.i.i.i.i79, %if.then.i7.i.i80 ], [ %count.addr.0, %land.lhs.true.i.i.i73.if.end.i.i.i83_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i.i81)
  %tobool4.not.i.i.i82 = icmp eq i32 %res.0.i.i.i81, 0
  br i1 %tobool4.not.i.i.i82, label %if.end.i.i.i83.sw.epilog_crit_edge, label %if.then11.i.i.i86, !prof !138

if.end.i.i.i83.sw.epilog_crit_edge:               ; preds = %if.end.i.i.i83
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then11.i.i.i86:                                ; preds = %if.end.i.i.i83
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i.i84 = sub i32 %count.addr.0, %res.0.i.i.i81
  %add.ptr.i.i.i85 = getelementptr i8, ptr %add.ptr.i, i32 %sub.i.i.i84
  %33 = call ptr @memset(ptr %add.ptr.i.i.i85, i32 0, i32 %res.0.i.i.i81)
  br label %sw.epilog.thread

sw.epilog.thread:                                 ; preds = %if.then11.i.i.i86, %if.then27.i.i.i66, %land.rhs16.i.i.i65.sw.epilog.thread_crit_edge, %if.then11.i.i.i, %if.then27.i.i.i, %land.rhs16.i.i.i.sw.epilog.thread_crit_edge, %if.end11.sw.epilog.thread_crit_edge
  %retval2.0.ph = phi i32 [ -14, %land.rhs16.i.i.i65.sw.epilog.thread_crit_edge ], [ -14, %if.then27.i.i.i66 ], [ -14, %if.then11.i.i.i86 ], [ -14, %land.rhs16.i.i.i.sw.epilog.thread_crit_edge ], [ -14, %if.then27.i.i.i ], [ -14, %if.then11.i.i.i ], [ -22, %if.end11.sw.epilog.thread_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #9
  br label %cleanup

sw.epilog:                                        ; preds = %if.end.i.i.i83.sw.epilog_crit_edge, %if.end7.i
  %retval2.0 = phi i32 [ %call11.i, %if.end7.i ], [ %count.addr.0, %if.end.i.i.i83.sw.epilog_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval2.0)
  %cmp27 = icmp sgt i32 %retval2.0, 0
  br i1 %cmp27, label %if.then29, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then29:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %conv3089 = zext i32 %retval2.0 to i64
  %34 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %ppos, align 8
  %add31 = add i64 %35, %conv3089
  store i64 %add31, ptr %ppos, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then29, %sw.epilog.cleanup_crit_edge, %sw.epilog.thread, %if.then8, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then8 ], [ 0, %entry.cleanup_crit_edge ], [ %retval2.0, %if.then29 ], [ %retval2.0, %sw.epilog.cleanup_crit_edge ], [ %retval2.0.ph, %sw.epilog.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vme_user_unlocked_ioctl(ptr nocapture noundef readonly %file, i32 noundef %cmd, i32 noundef %arg) #2 align 64 {
entry:
  %master.i = alloca %struct.vme_master, align 4
  %slave.i = alloca %struct.vme_slave, align 4
  %irq_req.i = alloca %struct.vme_irq_id, align 1
  %pci_addr.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %i_rdev.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %i_rdev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %i_rdev.i, align 8
  %and.i = and i32 %3, 1048575
  %mutex = getelementptr [9 x %struct.image_desc], ptr @image, i32 0, i32 %and.i, i32 3
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #9
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %master.i) #9
  %4 = getelementptr inbounds %struct.vme_master, ptr %master.i, i32 0, i32 1
  %5 = getelementptr inbounds %struct.vme_master, ptr %master.i, i32 0, i32 2
  %6 = getelementptr inbounds %struct.vme_master, ptr %master.i, i32 0, i32 3
  %7 = getelementptr inbounds %struct.vme_master, ptr %master.i, i32 0, i32 4
  %8 = getelementptr inbounds %struct.vme_master, ptr %master.i, i32 0, i32 5
  %9 = call ptr @memset(ptr %master.i, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %slave.i) #9
  %10 = getelementptr inbounds %struct.vme_slave, ptr %slave.i, i32 0, i32 1
  %11 = getelementptr inbounds %struct.vme_slave, ptr %slave.i, i32 0, i32 2
  %12 = getelementptr inbounds %struct.vme_slave, ptr %slave.i, i32 0, i32 3
  %13 = getelementptr inbounds %struct.vme_slave, ptr %slave.i, i32 0, i32 4
  %14 = call ptr @memset(ptr %slave.i, i32 255, i32 28)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %irq_req.i) #9
  %15 = ptrtoint ptr %irq_req.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 -1, ptr %irq_req.i, align 1, !annotation !143
  %16 = getelementptr inbounds %struct.vme_irq_id, ptr %irq_req.i, i32 0, i32 1
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 -1, ptr %16, align 1, !annotation !143
  %18 = ptrtoint ptr %i_rdev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %i_rdev.i, align 8
  %and.i.i = and i32 %19, 1048575
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pci_addr.i) #9
  %20 = ptrtoint ptr %pci_addr.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -1, ptr %pci_addr.i, align 4, !annotation !143
  %21 = inttoptr i32 %arg to ptr
  %arrayidx.i = getelementptr [9 x i32], ptr @type, i32 0, i32 %and.i.i
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx.i, align 4
  %24 = zext i32 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.59)
  switch i32 %23, label %entry.vme_user_ioctl.exit_crit_edge [
    i32 8, label %sw.bb.i
    i32 0, label %sw.bb7.i
    i32 4, label %sw.bb49.i
  ]

entry.vme_user_ioctl.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %vme_user_ioctl.exit

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073917445, i32 %cmd)
  %cond.i = icmp eq i32 %cmd, 1073917445
  br i1 %cond.i, label %if.end8.i.i.i, label %sw.bb.i.vme_user_ioctl.exit_crit_edge

sw.bb.i.vme_user_ioctl.exit_crit_edge:            ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %vme_user_ioctl.exit

if.end8.i.i.i:                                    ; preds = %sw.bb.i
  tail call void @__might_fault(ptr noundef nonnull @.str.32, i32 noundef 156) #9
  %call.i.i.i = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i.i, label %if.end8.i.i.i.if.then11.i.i.i_crit_edge, label %land.lhs.true.i.i.i

if.end8.i.i.i.if.then11.i.i.i_crit_edge:          ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end8.i.i.i
  %25 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %21, i32 2, i32 -1226833920) #14, !srcloc !139
  %asmresult.i.i.i = extractvalue { i32, i32 } %25, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %if.end.i.i.i, label %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, !prof !138

land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge:    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i.i

if.end.i.i.i:                                     ; preds = %land.lhs.true.i.i.i
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %irq_req.i, i32 noundef 2) #9
  %26 = call i32 @llvm.read_register.i32(metadata !127) #9
  %and.i.i.i.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 4
  %28 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i) #5, !srcloc !140
  %and.i.i.i.i.i = and i32 %28, -13
  %or.i.i.i.i.i = or i32 %and.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i) #9, !srcloc !141
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !142
  %call1.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %irq_req.i, ptr noundef %21, i32 noundef 2) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %28) #9, !srcloc !141
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !142
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end.i, label %if.end.i.i.i.if.then11.i.i.i_crit_edge, !prof !138

if.end.i.i.i.if.then11.i.i.i_crit_edge:           ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i.i

if.then11.i.i.i:                                  ; preds = %if.end.i.i.i.if.then11.i.i.i_crit_edge, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, %if.end8.i.i.i.if.then11.i.i.i_crit_edge
  %res.0.i.i72.i = phi i32 [ %call1.i.i.i.i, %if.end.i.i.i.if.then11.i.i.i_crit_edge ], [ 2, %if.end8.i.i.i.if.then11.i.i.i_crit_edge ], [ 2, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge ]
  %sub.i.i.i = sub i32 2, %res.0.i.i72.i
  %add.ptr.i.i.i = getelementptr i8, ptr %irq_req.i, i32 %sub.i.i.i
  %29 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 %res.0.i.i72.i)
  %call4.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33) #12
  br label %vme_user_ioctl.exit

if.end.i:                                         ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %30 = load ptr, ptr @vme_user_bridge, align 4
  %31 = ptrtoint ptr %irq_req.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %irq_req.i, align 1
  %conv.i = zext i8 %32 to i32
  %33 = ptrtoint ptr %16 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %16, align 1
  %conv5.i = zext i8 %34 to i32
  %call6.i = call i32 @vme_irq_generate(ptr noundef %30, i32 noundef %conv.i, i32 noundef %conv5.i) #9
  br label %vme_user_ioctl.exit

sw.bb7.i:                                         ; preds = %entry
  %35 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values.60)
  switch i32 %cmd, label %sw.bb7.i.vme_user_ioctl.exit_crit_edge [
    i32 -2145341949, label %sw.bb8.i
    i32 1075883524, label %sw.bb20.i
  ]

sw.bb7.i.vme_user_ioctl.exit_crit_edge:           ; preds = %sw.bb7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %vme_user_ioctl.exit

sw.bb8.i:                                         ; preds = %sw.bb7.i
  %36 = call ptr @memset(ptr %master.i, i32 0, i32 32)
  %resource.i = getelementptr [9 x %struct.image_desc], ptr @image, i32 0, i32 %and.i.i, i32 5
  %37 = ptrtoint ptr %resource.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %resource.i, align 8
  %call10.i = call i32 @vme_master_get(ptr noundef %38, ptr noundef nonnull %master.i, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) #9
  call void @__might_fault(ptr noundef nonnull @.str.32, i32 noundef 174) #9
  %call.i.i5.i = call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i5.i, label %sw.bb8.i.do.end16.i_crit_edge, label %if.end.i.i8.i

sw.bb8.i.do.end16.i_crit_edge:                    ; preds = %sw.bb8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end16.i

if.end.i.i8.i:                                    ; preds = %sw.bb8.i
  %39 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %21, i32 32, i32 -1226833920) #14, !srcloc !137
  %asmresult.i.i6.i = extractvalue { i32, i32 } %39, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i6.i)
  %cmp.i6.i7.i = icmp eq i32 %asmresult.i.i6.i, 0
  br i1 %cmp.i6.i7.i, label %copy_to_user.exit.i, label %if.end.i.i8.i.do.end16.i_crit_edge

if.end.i.i8.i.do.end16.i_crit_edge:               ; preds = %if.end.i.i8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end16.i

copy_to_user.exit.i:                              ; preds = %if.end.i.i8.i
  %call.i.i.i9.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %master.i, i32 noundef 32) #9
  %call.i12.i.i.i = call i32 @arm_copy_to_user(ptr noundef %21, ptr noundef nonnull %master.i, i32 noundef 32) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i.i)
  %tobool12.not.i = icmp eq i32 %call.i12.i.i.i, 0
  br i1 %tobool12.not.i, label %copy_to_user.exit.i.vme_user_ioctl.exit_crit_edge, label %copy_to_user.exit.i.do.end16.i_crit_edge

copy_to_user.exit.i.do.end16.i_crit_edge:         ; preds = %copy_to_user.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end16.i

copy_to_user.exit.i.vme_user_ioctl.exit_crit_edge: ; preds = %copy_to_user.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %vme_user_ioctl.exit

do.end16.i:                                       ; preds = %copy_to_user.exit.i.do.end16.i_crit_edge, %if.end.i.i8.i.do.end16.i_crit_edge, %sw.bb8.i.do.end16.i_crit_edge
  %call18.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36) #12
  br label %vme_user_ioctl.exit

sw.bb20.i:                                        ; preds = %sw.bb7.i
  %mmap_count.i = getelementptr [9 x %struct.image_desc], ptr @image, i32 0, i32 %and.i.i, i32 6
  %40 = ptrtoint ptr %mmap_count.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %mmap_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp.not.i = icmp eq i32 %41, 0
  br i1 %cmp.not.i, label %if.end8.i.i14.i, label %do.end26.i

do.end26.i:                                       ; preds = %sw.bb20.i
  call void @__sanitizer_cov_trace_pc() #11
  %call28.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39) #12
  br label %vme_user_ioctl.exit

if.end8.i.i14.i:                                  ; preds = %sw.bb20.i
  tail call void @__might_fault(ptr noundef nonnull @.str.32, i32 noundef 156) #9
  %call.i.i15.i = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i15.i, label %if.end8.i.i14.i.if.then11.i.i31.i_crit_edge, label %land.lhs.true.i.i18.i

if.end8.i.i14.i.if.then11.i.i31.i_crit_edge:      ; preds = %if.end8.i.i14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i31.i

land.lhs.true.i.i18.i:                            ; preds = %if.end8.i.i14.i
  %42 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %21, i32 32, i32 -1226833920) #14, !srcloc !139
  %asmresult.i.i16.i = extractvalue { i32, i32 } %42, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i16.i)
  %cmp.i6.i17.i = icmp eq i32 %asmresult.i.i16.i, 0
  br i1 %cmp.i6.i17.i, label %if.end.i.i28.i, label %land.lhs.true.i.i18.i.if.then11.i.i31.i_crit_edge, !prof !138

land.lhs.true.i.i18.i.if.then11.i.i31.i_crit_edge: ; preds = %land.lhs.true.i.i18.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i31.i

if.end.i.i28.i:                                   ; preds = %land.lhs.true.i.i18.i
  %call.i.i.i19.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %master.i, i32 noundef 32) #9
  %43 = call i32 @llvm.read_register.i32(metadata !127) #9
  %and.i.i.i.i.i.i20.i = and i32 %43, -16384
  %44 = inttoptr i32 %and.i.i.i.i.i.i20.i to ptr
  %cpu_domain.i.i.i.i.i21.i = getelementptr inbounds %struct.thread_info, ptr %44, i32 0, i32 4
  %45 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i21.i) #5, !srcloc !140
  %and.i.i.i.i22.i = and i32 %45, -13
  %or.i.i.i.i23.i = or i32 %and.i.i.i.i22.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i23.i) #9, !srcloc !141
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !142
  %call1.i.i.i24.i = call i32 @arm_copy_from_user(ptr noundef nonnull %master.i, ptr noundef %21, i32 noundef 32) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %45) #9, !srcloc !141
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !142
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i24.i)
  %tobool4.not.i.i27.i = icmp eq i32 %call1.i.i.i24.i, 0
  br i1 %tobool4.not.i.i27.i, label %if.end38.i, label %if.end.i.i28.i.if.then11.i.i31.i_crit_edge, !prof !138

if.end.i.i28.i.if.then11.i.i31.i_crit_edge:       ; preds = %if.end.i.i28.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i31.i

if.then11.i.i31.i:                                ; preds = %if.end.i.i28.i.if.then11.i.i31.i_crit_edge, %land.lhs.true.i.i18.i.if.then11.i.i31.i_crit_edge, %if.end8.i.i14.i.if.then11.i.i31.i_crit_edge
  %res.0.i.i2679.i = phi i32 [ %call1.i.i.i24.i, %if.end.i.i28.i.if.then11.i.i31.i_crit_edge ], [ 32, %if.end8.i.i14.i.if.then11.i.i31.i_crit_edge ], [ 32, %land.lhs.true.i.i18.i.if.then11.i.i31.i_crit_edge ]
  %sub.i.i29.i = sub i32 32, %res.0.i.i2679.i
  %add.ptr.i.i30.i = getelementptr i8, ptr %master.i, i32 %sub.i.i29.i
  %46 = call ptr @memset(ptr %add.ptr.i.i30.i, i32 0, i32 %res.0.i.i2679.i)
  %call37.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33) #12
  br label %vme_user_ioctl.exit

if.end38.i:                                       ; preds = %if.end.i.i28.i
  call void @__sanitizer_cov_trace_pc() #11
  %resource40.i = getelementptr [9 x %struct.image_desc], ptr @image, i32 0, i32 %and.i.i, i32 5
  %47 = ptrtoint ptr %resource40.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %resource40.i, align 8
  %49 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %master.i, align 4
  %51 = ptrtoint ptr %4 to i32
  call void @__asan_loadN_noabort(i32 %51, i32 8)
  %52 = load i64, ptr %4, align 4
  %53 = ptrtoint ptr %5 to i32
  call void @__asan_loadN_noabort(i32 %53, i32 8)
  %54 = load i64, ptr %5, align 4
  %55 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %6, align 4
  %57 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %7, align 4
  %59 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %8, align 4
  %call47.i = call i32 @vme_master_set(ptr noundef %48, i32 noundef %50, i64 noundef %52, i64 noundef %54, i32 noundef %56, i32 noundef %58, i32 noundef %60) #9
  br label %vme_user_ioctl.exit

sw.bb49.i:                                        ; preds = %entry
  %61 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %61, ptr @__sancov_gen_cov_switch_values.61)
  switch i32 %cmd, label %sw.bb49.i.vme_user_ioctl.exit_crit_edge [
    i32 -2145604095, label %sw.bb50.i
    i32 1075621378, label %if.end8.i.i50.i
  ]

sw.bb49.i.vme_user_ioctl.exit_crit_edge:          ; preds = %sw.bb49.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %vme_user_ioctl.exit

sw.bb50.i:                                        ; preds = %sw.bb49.i
  %62 = call ptr @memset(ptr %slave.i, i32 0, i32 28)
  %resource52.i = getelementptr [9 x %struct.image_desc], ptr @image, i32 0, i32 %and.i.i, i32 5
  %63 = ptrtoint ptr %resource52.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %resource52.i, align 8
  %call58.i = call i32 @vme_slave_get(ptr noundef %64, ptr noundef nonnull %slave.i, ptr noundef %10, ptr noundef %11, ptr noundef nonnull %pci_addr.i, ptr noundef %12, ptr noundef %13) #9
  call void @__might_fault(ptr noundef nonnull @.str.32, i32 noundef 174) #9
  %call.i.i38.i = call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i38.i, label %sw.bb50.i.do.end64.i_crit_edge, label %if.end.i.i41.i

sw.bb50.i.do.end64.i_crit_edge:                   ; preds = %sw.bb50.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end64.i

if.end.i.i41.i:                                   ; preds = %sw.bb50.i
  %65 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %21, i32 28, i32 -1226833920) #14, !srcloc !137
  %asmresult.i.i39.i = extractvalue { i32, i32 } %65, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i39.i)
  %cmp.i6.i40.i = icmp eq i32 %asmresult.i.i39.i, 0
  br i1 %cmp.i6.i40.i, label %copy_to_user.exit46.i, label %if.end.i.i41.i.do.end64.i_crit_edge

if.end.i.i41.i.do.end64.i_crit_edge:              ; preds = %if.end.i.i41.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end64.i

copy_to_user.exit46.i:                            ; preds = %if.end.i.i41.i
  %call.i.i.i42.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %slave.i, i32 noundef 28) #9
  %call.i12.i.i43.i = call i32 @arm_copy_to_user(ptr noundef %21, ptr noundef nonnull %slave.i, i32 noundef 28) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i43.i)
  %tobool60.not.i = icmp eq i32 %call.i12.i.i43.i, 0
  br i1 %tobool60.not.i, label %copy_to_user.exit46.i.vme_user_ioctl.exit_crit_edge, label %copy_to_user.exit46.i.do.end64.i_crit_edge

copy_to_user.exit46.i.do.end64.i_crit_edge:       ; preds = %copy_to_user.exit46.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end64.i

copy_to_user.exit46.i.vme_user_ioctl.exit_crit_edge: ; preds = %copy_to_user.exit46.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %vme_user_ioctl.exit

do.end64.i:                                       ; preds = %copy_to_user.exit46.i.do.end64.i_crit_edge, %if.end.i.i41.i.do.end64.i_crit_edge, %sw.bb50.i.do.end64.i_crit_edge
  %call66.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36) #12
  br label %vme_user_ioctl.exit

if.end8.i.i50.i:                                  ; preds = %sw.bb49.i
  tail call void @__might_fault(ptr noundef nonnull @.str.32, i32 noundef 156) #9
  %call.i.i51.i = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i51.i, label %if.end8.i.i50.i.if.then11.i.i67.i_crit_edge, label %land.lhs.true.i.i54.i

if.end8.i.i50.i.if.then11.i.i67.i_crit_edge:      ; preds = %if.end8.i.i50.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i67.i

land.lhs.true.i.i54.i:                            ; preds = %if.end8.i.i50.i
  %66 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %21, i32 28, i32 -1226833920) #14, !srcloc !139
  %asmresult.i.i52.i = extractvalue { i32, i32 } %66, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i52.i)
  %cmp.i6.i53.i = icmp eq i32 %asmresult.i.i52.i, 0
  br i1 %cmp.i6.i53.i, label %if.end.i.i64.i, label %land.lhs.true.i.i54.i.if.then11.i.i67.i_crit_edge, !prof !138

land.lhs.true.i.i54.i.if.then11.i.i67.i_crit_edge: ; preds = %land.lhs.true.i.i54.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i67.i

if.end.i.i64.i:                                   ; preds = %land.lhs.true.i.i54.i
  %call.i.i.i55.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %slave.i, i32 noundef 28) #9
  %67 = call i32 @llvm.read_register.i32(metadata !127) #9
  %and.i.i.i.i.i.i56.i = and i32 %67, -16384
  %68 = inttoptr i32 %and.i.i.i.i.i.i56.i to ptr
  %cpu_domain.i.i.i.i.i57.i = getelementptr inbounds %struct.thread_info, ptr %68, i32 0, i32 4
  %69 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i57.i) #5, !srcloc !140
  %and.i.i.i.i58.i = and i32 %69, -13
  %or.i.i.i.i59.i = or i32 %and.i.i.i.i58.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i59.i) #9, !srcloc !141
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !142
  %call1.i.i.i60.i = call i32 @arm_copy_from_user(ptr noundef nonnull %slave.i, ptr noundef %21, i32 noundef 28) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %69) #9, !srcloc !141
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !142
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i60.i)
  %tobool4.not.i.i63.i = icmp eq i32 %call1.i.i.i60.i, 0
  br i1 %tobool4.not.i.i63.i, label %if.end77.i, label %if.end.i.i64.i.if.then11.i.i67.i_crit_edge, !prof !138

if.end.i.i64.i.if.then11.i.i67.i_crit_edge:       ; preds = %if.end.i.i64.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i67.i

if.then11.i.i67.i:                                ; preds = %if.end.i.i64.i.if.then11.i.i67.i_crit_edge, %land.lhs.true.i.i54.i.if.then11.i.i67.i_crit_edge, %if.end8.i.i50.i.if.then11.i.i67.i_crit_edge
  %res.0.i.i6286.i = phi i32 [ %call1.i.i.i60.i, %if.end.i.i64.i.if.then11.i.i67.i_crit_edge ], [ 28, %if.end8.i.i50.i.if.then11.i.i67.i_crit_edge ], [ 28, %land.lhs.true.i.i54.i.if.then11.i.i67.i_crit_edge ]
  %sub.i.i65.i = sub i32 28, %res.0.i.i6286.i
  %add.ptr.i.i66.i = getelementptr i8, ptr %slave.i, i32 %sub.i.i65.i
  %70 = call ptr @memset(ptr %add.ptr.i.i66.i, i32 0, i32 %res.0.i.i6286.i)
  %call76.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33) #12
  br label %vme_user_ioctl.exit

if.end77.i:                                       ; preds = %if.end.i.i64.i
  call void @__sanitizer_cov_trace_pc() #11
  %resource79.i = getelementptr [9 x %struct.image_desc], ptr @image, i32 0, i32 %and.i.i, i32 5
  %71 = ptrtoint ptr %resource79.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %resource79.i, align 8
  %73 = ptrtoint ptr %slave.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %slave.i, align 4
  %75 = ptrtoint ptr %10 to i32
  call void @__asan_loadN_noabort(i32 %75, i32 8)
  %76 = load i64, ptr %10, align 4
  %77 = ptrtoint ptr %11 to i32
  call void @__asan_loadN_noabort(i32 %77, i32 8)
  %78 = load i64, ptr %11, align 4
  %pci_buf.i = getelementptr [9 x %struct.image_desc], ptr @image, i32 0, i32 %and.i.i, i32 1
  %79 = ptrtoint ptr %pci_buf.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %pci_buf.i, align 4
  %81 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %12, align 4
  %83 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %13, align 4
  %call86.i = call i32 @vme_slave_set(ptr noundef %72, i32 noundef %74, i64 noundef %76, i64 noundef %78, i32 noundef %80, i32 noundef %82, i32 noundef %84) #9
  br label %vme_user_ioctl.exit

vme_user_ioctl.exit:                              ; preds = %if.end77.i, %if.then11.i.i67.i, %do.end64.i, %copy_to_user.exit46.i.vme_user_ioctl.exit_crit_edge, %sw.bb49.i.vme_user_ioctl.exit_crit_edge, %if.end38.i, %if.then11.i.i31.i, %do.end26.i, %do.end16.i, %copy_to_user.exit.i.vme_user_ioctl.exit_crit_edge, %sw.bb7.i.vme_user_ioctl.exit_crit_edge, %if.end.i, %if.then11.i.i.i, %sw.bb.i.vme_user_ioctl.exit_crit_edge, %entry.vme_user_ioctl.exit_crit_edge
  %retval.0.i = phi i32 [ -14, %if.then11.i.i67.i ], [ %call86.i, %if.end77.i ], [ -14, %do.end64.i ], [ -1, %do.end26.i ], [ -14, %if.then11.i.i31.i ], [ %call47.i, %if.end38.i ], [ -14, %do.end16.i ], [ -14, %if.then11.i.i.i ], [ %call6.i, %if.end.i ], [ %call10.i, %copy_to_user.exit.i.vme_user_ioctl.exit_crit_edge ], [ %call58.i, %copy_to_user.exit46.i.vme_user_ioctl.exit_crit_edge ], [ -22, %sw.bb49.i.vme_user_ioctl.exit_crit_edge ], [ -22, %sw.bb7.i.vme_user_ioctl.exit_crit_edge ], [ -22, %sw.bb.i.vme_user_ioctl.exit_crit_edge ], [ -22, %entry.vme_user_ioctl.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pci_addr.i) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %irq_req.i) #9
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %slave.i) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %master.i) #9
  call void @mutex_unlock(ptr noundef %mutex) #9
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vme_user_mmap(ptr nocapture noundef readonly %file, ptr noundef %vma) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %i_rdev.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %i_rdev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %i_rdev.i, align 8
  %and.i = and i32 %3, 1048575
  %4 = and i32 %3, 1048572
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then:                                          ; preds = %entry
  %mutex.i = getelementptr [9 x %struct.image_desc], ptr @image, i32 0, i32 %and.i, i32 3
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #9
  %resource.i = getelementptr [9 x %struct.image_desc], ptr @image, i32 0, i32 %and.i, i32 5
  %5 = ptrtoint ptr %resource.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %resource.i, align 8
  %call.i = tail call i32 @vme_master_mmap(ptr noundef %6, ptr noundef %vma) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.vme_user_master_mmap.exit_crit_edge

if.then.vme_user_master_mmap.exit_crit_edge:      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %vme_user_master_mmap.exit

if.end.i:                                         ; preds = %if.then
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %7 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3264, i32 noundef 8) #15
  %tobool5.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool5.not.i, label %if.end.i.vme_user_master_mmap.exit_crit_edge, label %if.end9.i

if.end.i.vme_user_master_mmap.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %vme_user_master_mmap.exit

if.end9.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %and.i, ptr %call7.i.i, align 8
  %refcnt.i = getelementptr inbounds %struct.vme_user_vma_priv, ptr %call7.i.i, i32 0, i32 1
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #9
  %9 = ptrtoint ptr %refcnt.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile i32 1, ptr %refcnt.i, align 4
  %vm_ops.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 12
  %10 = ptrtoint ptr %vm_ops.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @vme_user_vm_ops, ptr %vm_ops.i, align 4
  %vm_private_data.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 15
  %11 = ptrtoint ptr %vm_private_data.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call7.i.i, ptr %vm_private_data.i, align 4
  %mmap_count.i = getelementptr [9 x %struct.image_desc], ptr @image, i32 0, i32 %and.i, i32 6
  %12 = ptrtoint ptr %mmap_count.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mmap_count.i, align 4
  %inc.i = add i32 %13, 1
  store i32 %inc.i, ptr %mmap_count.i, align 4
  br label %vme_user_master_mmap.exit

vme_user_master_mmap.exit:                        ; preds = %if.end9.i, %if.end.i.vme_user_master_mmap.exit_crit_edge, %if.then.vme_user_master_mmap.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end9.i ], [ %call.i, %if.then.vme_user_master_mmap.exit_crit_edge ], [ -12, %if.end.i.vme_user_master_mmap.exit_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex.i) #9
  br label %cleanup

cleanup:                                          ; preds = %vme_user_master_mmap.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %vme_user_master_mmap.exit ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vme_get_size(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @fixed_size_llseek(ptr noundef, i64 noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vme_master_read(ptr noundef, ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

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
declare dso_local i32 @vme_master_write(ptr noundef, ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vme_irq_generate(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vme_master_get(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vme_master_set(ptr noundef, i32 noundef, i64 noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vme_slave_get(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vme_slave_set(ptr noundef, i32 noundef, i64 noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vme_master_mmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vme_user_vm_open(ptr nocapture noundef readonly %vma) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %vm_private_data = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 15
  %0 = ptrtoint ptr %vm_private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vm_private_data, align 4
  %refcnt = getelementptr inbounds %struct.vme_user_vma_priv, ptr %1, i32 0, i32 1
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %refcnt, i32 1, i32 3, i32 1) #9
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt, ptr %refcnt, i32 1, ptr elementtype(i32) %refcnt) #9, !srcloc !144
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %entry.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !145

entry.if.end15.sink.split.i.i.i_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %entry
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %3 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %.not.i.i.i = icmp sgt i32 %3, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.refcount_inc.exit_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !138

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.refcount_inc.exit_crit_edge:        ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %refcount_inc.exit

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %entry.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %entry.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcnt, i32 noundef %.sink.i.i.i) #9
  br label %refcount_inc.exit

refcount_inc.exit:                                ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.refcount_inc.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vme_user_vm_close(ptr nocapture noundef readonly %vma) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %vm_private_data = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 15
  %0 = ptrtoint ptr %vm_private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vm_private_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %refcnt = getelementptr inbounds %struct.vme_user_vma_priv, ptr %1, i32 0, i32 1
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !146
  tail call void @llvm.prefetch.p0(ptr %refcnt, i32 1, i32 3, i32 1) #9
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt, ptr %refcnt, i32 1, ptr elementtype(i32) %refcnt) #9, !srcloc !147
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.end, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i, !prof !138

if.end5.i.i.i.cleanup_crit_edge:                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %refcnt, i32 noundef 3) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !148
  %mutex = getelementptr [9 x %struct.image_desc], ptr @image, i32 0, i32 %3, i32 3
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #9
  %mmap_count = getelementptr [9 x %struct.image_desc], ptr @image, i32 0, i32 %3, i32 6
  %5 = ptrtoint ptr %mmap_count to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mmap_count, align 4
  %dec = add i32 %6, -1
  store i32 %dec, ptr %mmap_count, align 4
  tail call void @mutex_unlock(ptr noundef %mutex) #9
  tail call void @kfree(ptr noundef %1) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then10.i.i.i, %if.end5.i.i.i.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vme_register_driver(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 57)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 57)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind readonly }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { nounwind readnone }
attributes #15 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !11, !12, !14, !16, !18, !20, !22, !24, !26, !27, !28, !29, !30, !31, !32, !34, !35, !37, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54, !56, !57, !58, !60, !62, !64, !66, !67, !68, !69, !71, !73, !75, !77, !79, !80, !82, !84, !86, !87, !88, !89, !91, !92, !93, !95, !96, !97, !99, !100, !102, !103, !105, !106, !108, !110, !112, !113, !114, !116, !117, !118, !119, !121, !122, !123, !125, !126}
!llvm.named.register.sp = !{!127}
!llvm.module.flags = !{!128, !129, !130, !131, !132, !133, !134, !135}
!llvm.ident = !{!136}

!0 = !{ptr @__UNIQUE_ID_bus271, !1, !"__UNIQUE_ID_bus271", i1 false, i1 false}
!1 = !{!"../drivers/staging/vme/devices/vme_user.c", i32 772, i32 1}
!2 = !{ptr @__param_bus, !3, !"__param_bus", i1 false, i1 false}
!3 = !{!"../drivers/staging/vme/devices/vme_user.c", i32 773, i32 1}
!4 = !{ptr @__UNIQUE_ID_bustype272, !3, !"__UNIQUE_ID_bustype272", i1 false, i1 false}
!5 = !{ptr @__UNIQUE_ID_description273, !6, !"__UNIQUE_ID_description273", i1 false, i1 false}
!6 = !{!"../drivers/staging/vme/devices/vme_user.c", i32 775, i32 1}
!7 = !{ptr @__UNIQUE_ID_author274, !8, !"__UNIQUE_ID_author274", i1 false, i1 false}
!8 = !{!"../drivers/staging/vme/devices/vme_user.c", i32 776, i32 1}
!9 = !{ptr @__UNIQUE_ID_file275, !10, !"__UNIQUE_ID_file275", i1 false, i1 false}
!10 = !{!"../drivers/staging/vme/devices/vme_user.c", i32 777, i32 1}
!11 = !{ptr @__UNIQUE_ID_license276, !10, !"__UNIQUE_ID_license276", i1 false, i1 false}
!12 = !{ptr @__initcall__kmod_vme_user__277_779_vme_user_init6, !13, !"__initcall__kmod_vme_user__277_779_vme_user_init6", i1 false, i1 false}
!13 = !{!"../drivers/staging/vme/devices/vme_user.c", i32 779, i32 1}
!14 = !{ptr @__exitcall_vme_user_exit, !15, !"__exitcall_vme_user_exit", i1 false, i1 false}
!15 = !{!"../drivers/staging/vme/devices/vme_user.c", i32 780, i32 1}
!16 = !{ptr @vme_user_driver, !17, !"vme_user_driver", i1 false, i1 false}
!17 = !{!"../drivers/staging/vme/devices/vme_user.c", i32 722, i32 26}
!18 = !{ptr @driver_name, !19, !"driver_name", i1 false, i1 false}
!19 = !{!"../drivers/staging/vme/devices/vme_user.c", i32 40, i32 19}
!20 = !{ptr @bus_num, !21, !"bus_num", i1 false, i1 false}
!21 = !{!"../drivers/staging/vme/devices/vme_user.c", i32 43, i32 21}
!22 = !{ptr @bus, !23, !"bus", i1 false, i1 false}
!23 = !{!"../drivers/staging/vme/devices/vme_user.c", i32 42, i32 12}
!24 = !{ptr @.str, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/staging/vme/devices/vme_user.c", i32 527, i32 3}
!26 = !{ptr @.str.1, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.2, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.3, !25, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.4, !25, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @vme_user_probe._entry, !25, !"_entry", i1 false, i1 false}
!31 = !{ptr @vme_user_probe._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @vme_user_probe.__key, !33, !"__key", i1 false, i1 false}
!33 = !{!"../drivers/staging/vme/devices/vme_user.c", i32 537, i32 3}
!34 = !{ptr @.str.5, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.7, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/staging/vme/devices/vme_user.c", i32 546, i32 3}
!37 = !{ptr @.str.8, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @vme_user_probe._entry.6, !36, !"_entry", i1 false, i1 false}
!39 = !{ptr @vme_user_probe._entry_ptr.9, !36, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.11, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/staging/vme/devices/vme_user.c", i32 573, i32 4}
!42 = !{ptr @vme_user_probe._entry.10, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @vme_user_probe._entry_ptr.12, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.14, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/staging/vme/devices/vme_user.c", i32 583, i32 4}
!46 = !{ptr @vme_user_probe._entry.13, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @vme_user_probe._entry_ptr.15, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.17, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/staging/vme/devices/vme_user.c", i32 602, i32 4}
!50 = !{ptr @vme_user_probe._entry.16, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @vme_user_probe._entry_ptr.18, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @vme_user_probe.__key.19, !53, !"__key", i1 false, i1 false}
!53 = !{!"../drivers/staging/vme/devices/vme_user.c", i32 617, i32 25}
!54 = !{ptr @.str.21, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/staging/vme/devices/vme_user.c", i32 619, i32 3}
!56 = !{ptr @vme_user_probe._entry.20, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @vme_user_probe._entry_ptr.22, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.23, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/staging/vme/devices/vme_user.c", i32 630, i32 11}
!60 = !{ptr @.str.24, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/staging/vme/devices/vme_user.c", i32 633, i32 11}
!62 = !{ptr @.str.25, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/staging/vme/devices/vme_user.c", i32 636, i32 11}
!64 = !{ptr @.str.27, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/staging/vme/devices/vme_user.c", i32 648, i32 4}
!66 = !{ptr @.str.28, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @vme_user_probe._entry.26, !65, !"_entry", i1 false, i1 false}
!68 = !{ptr @vme_user_probe._entry_ptr.29, !65, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @vme_user_bridge, !70, !"vme_user_bridge", i1 false, i1 false}
!70 = !{!"../drivers/staging/vme/devices/vme_user.c", i32 105, i32 24}
!71 = !{ptr @image, !72, !"image", i1 false, i1 false}
!72 = !{!"../drivers/staging/vme/devices/vme_user.c", i32 101, i32 26}
!73 = !{ptr @vme_user_cdev, !74, !"vme_user_cdev", i1 false, i1 false}
!74 = !{!"../drivers/staging/vme/devices/vme_user.c", i32 103, i32 21}
!75 = !{ptr @vme_user_fops, !76, !"vme_user_fops", i1 false, i1 false}
!76 = !{!"../drivers/staging/vme/devices/vme_user.c", i32 492, i32 37}
!77 = distinct !{null, !78, !"__already_done", i1 false, i1 false}
!78 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!79 = !{ptr @.str.30, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @.str.31, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!82 = !{ptr @.str.32, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!84 = !{ptr @.str.33, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/staging/vme/devices/vme_user.c", i32 309, i32 5}
!86 = !{ptr @.str.34, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @vme_user_ioctl._entry, !85, !"_entry", i1 false, i1 false}
!88 = !{ptr @vme_user_ioctl._entry_ptr, !85, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.36, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/staging/vme/devices/vme_user.c", i32 335, i32 5}
!91 = !{ptr @vme_user_ioctl._entry.35, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @vme_user_ioctl._entry_ptr.37, !90, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.39, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/staging/vme/devices/vme_user.c", i32 344, i32 5}
!95 = !{ptr @vme_user_ioctl._entry.38, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @vme_user_ioctl._entry_ptr.40, !94, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @vme_user_ioctl._entry.41, !98, !"_entry", i1 false, i1 false}
!98 = !{!"../drivers/staging/vme/devices/vme_user.c", i32 350, i32 5}
!99 = !{ptr @vme_user_ioctl._entry_ptr.42, !98, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @vme_user_ioctl._entry.43, !101, !"_entry", i1 false, i1 false}
!101 = !{!"../drivers/staging/vme/devices/vme_user.c", i32 380, i32 5}
!102 = !{ptr @vme_user_ioctl._entry_ptr.44, !101, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @vme_user_ioctl._entry.45, !104, !"_entry", i1 false, i1 false}
!104 = !{!"../drivers/staging/vme/devices/vme_user.c", i32 390, i32 5}
!105 = !{ptr @vme_user_ioctl._entry_ptr.46, !104, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @vme_user_vm_ops, !107, !"vme_user_vm_ops", i1 false, i1 false}
!107 = !{!"../drivers/staging/vme/devices/vme_user.c", i32 446, i32 42}
!108 = !{ptr @vme_user_sysfs_class, !109, !"vme_user_sysfs_class", i1 false, i1 false}
!109 = !{!"../drivers/staging/vme/devices/vme_user.c", i32 104, i32 22}
!110 = !{ptr @type, !111, !"type", i1 false, i1 false}
!111 = !{!"../drivers/staging/vme/devices/vme_user.c", i32 107, i32 18}
!112 = !{ptr @__param_str_bus, !3, !"__param_str_bus", i1 false, i1 false}
!113 = !{ptr @__param_arr_bus, !3, !"__param_arr_bus", i1 false, i1 false}
!114 = !{ptr @.str.47, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/staging/vme/devices/vme_user.c", i32 733, i32 2}
!116 = !{ptr @.str.48, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @vme_user_init._entry, !115, !"_entry", i1 false, i1 false}
!118 = !{ptr @vme_user_init._entry_ptr, !115, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.50, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/staging/vme/devices/vme_user.c", i32 736, i32 3}
!121 = !{ptr @vme_user_init._entry.49, !120, !"_entry", i1 false, i1 false}
!122 = !{ptr @vme_user_init._entry_ptr.51, !120, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.53, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/staging/vme/devices/vme_user.c", i32 745, i32 3}
!125 = !{ptr @vme_user_init._entry.52, !124, !"_entry", i1 false, i1 false}
!126 = !{ptr @vme_user_init._entry_ptr.54, !124, !"_entry_ptr", i1 false, i1 false}
!127 = !{!"sp"}
!128 = !{i32 1, !"wchar_size", i32 2}
!129 = !{i32 1, !"min_enum_size", i32 4}
!130 = !{i32 8, !"branch-target-enforcement", i32 0}
!131 = !{i32 8, !"sign-return-address", i32 0}
!132 = !{i32 8, !"sign-return-address-all", i32 0}
!133 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!134 = !{i32 7, !"uwtable", i32 1}
!135 = !{i32 7, !"frame-pointer", i32 2}
!136 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!137 = !{i64 2153239646, i64 2153239671}
!138 = !{!"branch_weights", i32 2000, i32 1}
!139 = !{i64 2153238965, i64 2153238990}
!140 = !{i64 5734520}
!141 = !{i64 5734717}
!142 = !{i64 2153219950}
!143 = !{!"auto-init"}
!144 = !{i64 2148149916, i64 2148149948, i64 2148149977, i64 2148150011, i64 2148150042, i64 2148150065}
!145 = !{!"branch_weights", i32 1, i32 2000}
!146 = !{i64 2148237917}
!147 = !{i64 2148152381, i64 2148152413, i64 2148152442, i64 2148152476, i64 2148152507, i64 2148152530}
!148 = !{i64 2148605307}
