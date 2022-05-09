; ModuleID = '/llk/IR_all_yes/drivers/rpmsg/rpmsg_char.c_pt.bc'
source_filename = "../drivers/rpmsg/rpmsg_char.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.rpmsg_driver = type { %struct.device_driver, ptr, ptr, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.rpmsg_ctrldev = type { ptr, %struct.cdev, %struct.device }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
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
%struct.rpmsg_endpoint_info = type { [32 x i8], i32, i32 }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
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
%struct.rpmsg_eptdev = type { %struct.device, %struct.cdev, ptr, %struct.rpmsg_channel_info, %struct.mutex, ptr, %struct.spinlock, %struct.sk_buff_head, %struct.wait_queue_head }
%struct.rpmsg_channel_info = type { [32 x i8], i32, i32 }
%struct.sk_buff_head = type { %union.anon.74, i32, %struct.spinlock }
%union.anon.74 = type { %struct.anon.75 }
%struct.anon.75 = type { ptr, ptr }
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
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.73 = type { ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.59, %union.anon.60 }
%union.anon.59 = type { ptr }
%union.anon.60 = type { i64 }
%struct.sk_buff = type { %union.anon.76, %union.anon.79, %union.anon.80, [48 x i8], %union.anon.81, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.83, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.76 = type { %struct.anon.77 }
%struct.anon.77 = type { ptr, ptr, %union.anon.78 }
%union.anon.78 = type { ptr }
%union.anon.79 = type { ptr }
%union.anon.80 = type { i64 }
%union.anon.81 = type { %struct.anon.82 }
%struct.anon.82 = type { i32, ptr }
%union.anon.83 = type { %struct.anon.84 }
%struct.anon.84 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.85, i32, i32, i32, i16, i16, %union.anon.87, i32, %union.anon.88, %union.anon.89, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.85 = type { i32 }
%union.anon.87 = type { i32 }
%union.anon.88 = type { i32 }
%union.anon.89 = type { i16 }

@__initcall__kmod_rpmsg_char__273_562_rpmsg_chrdev_init2 = internal global ptr @rpmsg_chrdev_init, section ".initcall2.init", align 4
@__exitcall_rpmsg_chrdev_exit = internal global ptr @rpmsg_chrdev_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias274 = internal constant [36 x i8] c"rpmsg_char.alias=rpmsg:rpmsg_chrdev\00", section ".modinfo", align 1
@__UNIQUE_ID_file275 = internal constant [41 x i8] c"rpmsg_char.file=drivers/rpmsg/rpmsg_char\00", section ".modinfo", align 1
@__UNIQUE_ID_license276 = internal constant [26 x i8] c"rpmsg_char.license=GPL v2\00", section ".modinfo", align 1
@rpmsg_major = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"rpmsg\00", [26 x i8] zeroinitializer }, align 32
@rpmsg_chrdev_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 542, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013rpmsg_char: failed to allocate char dev region\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rpmsg_chrdev_init\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/rpmsg/rpmsg_char.c\00", [37 x i8] zeroinitializer }, align 32
@rpmsg_chrdev_init._entry_ptr = internal global ptr @rpmsg_chrdev_init._entry, section ".printk_index", align 4
@rpmsg_chrdev_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@rpmsg_class = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@rpmsg_chrdev_init._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 548, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013rpmsg_char: failed to create rpmsg class\0A\00", [52 x i8] zeroinitializer }, align 32
@rpmsg_chrdev_init._entry_ptr.6 = internal global ptr @rpmsg_chrdev_init._entry.4, section ".printk_index", align 4
@rpmsg_chrdev_driver = internal global { %struct.rpmsg_driver, [36 x i8] } { %struct.rpmsg_driver { %struct.device_driver { ptr @.str.10, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, ptr @rpmsg_chrdev_probe, ptr @rpmsg_chrdev_remove, ptr null }, [36 x i8] zeroinitializer }, align 32
@rpmsg_chrdev_init._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 555, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013rpmsg_char: failed to register rpmsg driver\0A\00", [49 x i8] zeroinitializer }, align 32
@rpmsg_chrdev_init._entry_ptr.9 = internal global ptr @rpmsg_chrdev_init._entry.7, section ".printk_index", align 4
@.str.10 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rpmsg_chrdev\00", [19 x i8] zeroinitializer }, align 32
@rpmsg_ctrldev_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rpmsg_ctrldev_ioctl, ptr null, ptr null, i32 0, ptr @rpmsg_ctrldev_open, ptr null, ptr @rpmsg_ctrldev_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@rpmsg_minor_ida = internal global { %struct.ida, [44 x i8] } { %struct.ida { %struct.xarray { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.32, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, i32 67108869, ptr null } }, [44 x i8] zeroinitializer }, align 32
@rpmsg_ctrl_ida = internal global { %struct.ida, [44 x i8] } { %struct.ida { %struct.xarray { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.33, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, i32 67108869, ptr null } }, [44 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rpmsg_ctrl%d\00", [19 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.12 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@rpmsg_eptdev_create.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&eptdev->ept_lock\00", [46 x i8] zeroinitializer }, align 32
@rpmsg_eptdev_create.__key.16 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&eptdev->queue_lock\00", [44 x i8] zeroinitializer }, align 32
@rpmsg_eptdev_create.__key.18 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.19 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&eptdev->readq\00", [17 x i8] zeroinitializer }, align 32
@rpmsg_eptdev_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @rpmsg_eptdev_group, ptr null], [24 x i8] zeroinitializer }, align 32
@rpmsg_eptdev_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr null, ptr null, ptr null, ptr @rpmsg_eptdev_read_iter, ptr @rpmsg_eptdev_write_iter, ptr null, ptr null, ptr null, ptr @rpmsg_eptdev_poll, ptr @rpmsg_eptdev_ioctl, ptr null, ptr null, i32 0, ptr @rpmsg_eptdev_open, ptr null, ptr @rpmsg_eptdev_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@rpmsg_ept_ida = internal global { %struct.ida, [44 x i8] } { %struct.ida { %struct.xarray { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.31, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, i32 67108869, ptr null } }, [44 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"rpmsg%d\00", [24 x i8] zeroinitializer }, align 32
@skb_queue_head_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.21 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&list->lock\00", [20 x i8] zeroinitializer }, align 32
@rpmsg_eptdev_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @rpmsg_eptdev_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@rpmsg_eptdev_attrs = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @dev_attr_name, ptr @dev_attr_src, ptr @dev_attr_dst, ptr null], [16 x i8] zeroinitializer }, align 32
@dev_attr_name = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.22, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @name_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_src = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.24, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @src_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_dst = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.26, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @dst_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"name\00", [27 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"src\00", [28 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dst\00", [28 x i8] zeroinitializer }, align 32
@rpmsg_eptdev_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.3, i32 138, ptr @.str.29, ptr @.str.30 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"failed to open %s\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rpmsg_eptdev_open\00", [46 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rpmsg_eptdev_open._entry_ptr = internal global ptr @rpmsg_eptdev_open._entry, section ".printk_index", align 4
@.str.31 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rpmsg_ept_ida.xa_lock\00", [42 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rpmsg_minor_ida.xa_lock\00", [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rpmsg_ctrl_ida.xa_lock\00", [41 x i8] zeroinitializer }, align 32
@rpmsg_chrdev_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.3, i32 522, ptr @.str.36, ptr @.str.30 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to nuke endpoints: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rpmsg_chrdev_remove\00", [44 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@rpmsg_chrdev_remove._entry_ptr = internal global ptr @rpmsg_chrdev_remove._entry, section ".printk_index", align 4
@___asan_gen_.37 = private unnamed_addr constant [12 x i8] c"rpmsg_major\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 30, i32 14 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 540, i32 60 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 542, i32 3 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 546, i32 16 }
@___asan_gen_.58 = private unnamed_addr constant [12 x i8] c"rpmsg_class\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 31, i32 22 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 548, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant [20 x i8] c"rpmsg_chrdev_driver\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 528, i32 28 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 555, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 532, i32 11 }
@___asan_gen_.79 = private unnamed_addr constant [19 x i8] c"rpmsg_ctrldev_fops\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 444, i32 37 }
@___asan_gen_.82 = private unnamed_addr constant [16 x i8] c"rpmsg_minor_ida\00", align 1
@___asan_gen_.85 = private unnamed_addr constant [15 x i8] c"rpmsg_ctrl_ida\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 490, i32 30 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 230, i32 6 }
@___asan_gen_.95 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 214, i32 2 }
@___asan_gen_.98 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 156, i32 2 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 358, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 359, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 361, i32 2 }
@___asan_gen_.118 = private unnamed_addr constant [20 x i8] c"rpmsg_eptdev_groups\00", align 1
@___asan_gen_.121 = private unnamed_addr constant [18 x i8] c"rpmsg_eptdev_fops\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 287, i32 37 }
@___asan_gen_.124 = private unnamed_addr constant [14 x i8] c"rpmsg_ept_ida\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 381, i32 20 }
@___asan_gen_.130 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.134 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 1984, i32 2 }
@___asan_gen_.136 = private unnamed_addr constant [19 x i8] c"rpmsg_eptdev_group\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 331, i32 1 }
@___asan_gen_.139 = private unnamed_addr constant [19 x i8] c"rpmsg_eptdev_attrs\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 325, i32 26 }
@___asan_gen_.142 = private unnamed_addr constant [14 x i8] c"dev_attr_name\00", align 1
@___asan_gen_.145 = private unnamed_addr constant [13 x i8] c"dev_attr_src\00", align 1
@___asan_gen_.148 = private unnamed_addr constant [13 x i8] c"dev_attr_dst\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 305, i32 8 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 303, i32 22 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 314, i32 8 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 312, i32 22 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 323, i32 8 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 138, i32 3 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 34, i32 8 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 35, i32 8 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 33, i32 8 }
@___asan_gen_.190 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.199 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.200 = private constant [30 x i8] c"../drivers/rpmsg/rpmsg_char.c\00", align 1
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 522, i32 3 }
@llvm.compiler.used = appending global [65 x ptr] [ptr @__UNIQUE_ID_alias274, ptr @__UNIQUE_ID_file275, ptr @__UNIQUE_ID_license276, ptr @__exitcall_rpmsg_chrdev_exit, ptr @__initcall__kmod_rpmsg_char__273_562_rpmsg_chrdev_init2, ptr @rpmsg_chrdev_init._entry, ptr @rpmsg_chrdev_init._entry.4, ptr @rpmsg_chrdev_init._entry.7, ptr @rpmsg_chrdev_init._entry_ptr, ptr @rpmsg_chrdev_init._entry_ptr.6, ptr @rpmsg_chrdev_init._entry_ptr.9, ptr @rpmsg_chrdev_remove._entry, ptr @rpmsg_chrdev_remove._entry_ptr, ptr @rpmsg_eptdev_open._entry, ptr @rpmsg_eptdev_open._entry_ptr, ptr @rpmsg_major, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @rpmsg_chrdev_init.__key, ptr @rpmsg_class, ptr @.str.5, ptr @rpmsg_chrdev_driver, ptr @.str.8, ptr @.str.10, ptr @rpmsg_ctrldev_fops, ptr @rpmsg_minor_ida, ptr @rpmsg_ctrl_ida, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @rpmsg_eptdev_create.__key, ptr @.str.15, ptr @rpmsg_eptdev_create.__key.16, ptr @.str.17, ptr @rpmsg_eptdev_create.__key.18, ptr @.str.19, ptr @rpmsg_eptdev_groups, ptr @rpmsg_eptdev_fops, ptr @rpmsg_ept_ida, ptr @.str.20, ptr @skb_queue_head_init.__key, ptr @.str.21, ptr @rpmsg_eptdev_group, ptr @rpmsg_eptdev_attrs, ptr @dev_attr_name, ptr @dev_attr_src, ptr @dev_attr_dst, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36], section "llvm.metadata"
@0 = internal global [55 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpmsg_major to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpmsg_chrdev_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpmsg_chrdev_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpmsg_class to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpmsg_chrdev_init._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpmsg_chrdev_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpmsg_chrdev_init._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpmsg_ctrldev_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpmsg_minor_ida to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpmsg_ctrl_ida to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpmsg_eptdev_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpmsg_eptdev_create.__key.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpmsg_eptdev_create.__key.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpmsg_eptdev_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpmsg_eptdev_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpmsg_ept_ida to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skb_queue_head_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpmsg_eptdev_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpmsg_eptdev_attrs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_name to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_src to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_dst to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpmsg_eptdev_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpmsg_chrdev_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rpmsg_chrdev_init() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @alloc_chrdev_region(ptr noundef nonnull @rpmsg_major, i32 noundef 0, i32 noundef 1048576, ptr noundef nonnull @.str) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call ptr @__class_create(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @rpmsg_chrdev_init.__key) #10
  store ptr %call3, ptr @rpmsg_class, align 4
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end8, label %if.end12

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #13
  %0 = load i32, ptr @rpmsg_major, align 4
  tail call void @unregister_chrdev_region(i32 noundef %0, i32 noundef 1048576) #10
  %1 = load ptr, ptr @rpmsg_class, align 4
  %2 = ptrtoint ptr %1 to i32
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %call13 = tail call i32 @__register_rpmsg_driver(ptr noundef nonnull @rpmsg_chrdev_driver, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %do.end18, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end18:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #13
  %3 = load ptr, ptr @rpmsg_class, align 4
  tail call void @class_destroy(ptr noundef %3) #10
  %4 = load i32, ptr @rpmsg_major, align 4
  tail call void @unregister_chrdev_region(i32 noundef %4, i32 noundef 1048576) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end18, %if.end12.cleanup_crit_edge, %do.end8, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %2, %do.end8 ], [ %call13, %do.end18 ], [ %call13, %if.end12.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rpmsg_chrdev_exit() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @unregister_rpmsg_driver(ptr noundef nonnull @rpmsg_chrdev_driver) #10
  %0 = load ptr, ptr @rpmsg_class, align 4
  tail call void @class_destroy(ptr noundef %0) #10
  %1 = load i32, ptr @rpmsg_major, align 4
  tail call void @unregister_chrdev_region(i32 noundef %1, i32 noundef 1048576) #10
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @alloc_chrdev_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__class_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_chrdev_region(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__register_rpmsg_driver(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @class_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rpmsg_chrdev_probe(ptr noundef %rpdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 1096) #14
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %rpdev, ptr %call7.i.i, align 8
  %dev2 = getelementptr inbounds %struct.rpmsg_ctrldev, ptr %call7.i.i, i32 0, i32 2
  tail call void @device_initialize(ptr noundef %dev2) #10
  %parent = getelementptr inbounds %struct.rpmsg_ctrldev, ptr %call7.i.i, i32 0, i32 2, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %rpdev, ptr %parent, align 8
  %3 = load ptr, ptr @rpmsg_class, align 4
  %class = getelementptr inbounds %struct.rpmsg_ctrldev, ptr %call7.i.i, i32 0, i32 2, i32 33
  %4 = ptrtoint ptr %class to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %class, align 4
  %cdev = getelementptr inbounds %struct.rpmsg_ctrldev, ptr %call7.i.i, i32 0, i32 1
  tail call void @cdev_init(ptr noundef %cdev, ptr noundef nonnull @rpmsg_ctrldev_fops) #10
  %owner = getelementptr inbounds %struct.rpmsg_ctrldev, ptr %call7.i.i, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %owner, align 4
  %call5 = tail call i32 @ida_alloc_range(ptr noundef nonnull @rpmsg_minor_ida, i32 noundef 0, i32 noundef 1048575, i32 noundef 3264) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp = icmp slt i32 %call5, 0
  br i1 %cmp, label %if.end.free_ctrldev_crit_edge, label %if.end7

if.end.free_ctrldev_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %free_ctrldev

if.end7:                                          ; preds = %if.end
  %6 = load i32, ptr @rpmsg_major, align 4
  %shr = and i32 %6, -1048576
  %or = or i32 %shr, %call5
  %devt = getelementptr inbounds %struct.rpmsg_ctrldev, ptr %call7.i.i, i32 0, i32 2, i32 29
  %7 = ptrtoint ptr %devt to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %or, ptr %devt, align 8
  %call8 = tail call i32 @ida_alloc_range(ptr noundef nonnull @rpmsg_ctrl_ida, i32 noundef 0, i32 noundef -1, i32 noundef 3264) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %if.end7.free_minor_ida_crit_edge, label %if.end11

if.end7.free_minor_ida_crit_edge:                 ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %free_minor_ida

if.end11:                                         ; preds = %if.end7
  %id = getelementptr inbounds %struct.rpmsg_ctrldev, ptr %call7.i.i, i32 0, i32 2, i32 30
  %8 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %call8, ptr %id, align 4
  %call13 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %dev2, ptr noundef nonnull @.str.11, i32 noundef %call8) #10
  %call16 = tail call i32 @cdev_device_add(ptr noundef %cdev, ptr noundef %dev2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %free_ctrl_ida

if.end19:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  %release = getelementptr inbounds %struct.rpmsg_ctrldev, ptr %call7.i.i, i32 0, i32 2, i32 35
  %9 = ptrtoint ptr %release to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @rpmsg_ctrldev_release_device, ptr %release, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %rpdev, i32 0, i32 8
  %10 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call7.i.i, ptr %driver_data.i, align 4
  br label %cleanup

free_ctrl_ida:                                    ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %id, align 4
  tail call void @ida_free(ptr noundef nonnull @rpmsg_ctrl_ida, i32 noundef %12) #10
  br label %free_minor_ida

free_minor_ida:                                   ; preds = %free_ctrl_ida, %if.end7.free_minor_ida_crit_edge
  %ret.0 = phi i32 [ %call8, %if.end7.free_minor_ida_crit_edge ], [ %call16, %free_ctrl_ida ]
  %13 = ptrtoint ptr %devt to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %devt, align 8
  %and = and i32 %14, 1048575
  tail call void @ida_free(ptr noundef nonnull @rpmsg_minor_ida, i32 noundef %and) #10
  br label %free_ctrldev

free_ctrldev:                                     ; preds = %free_minor_ida, %if.end.free_ctrldev_crit_edge
  %ret.1 = phi i32 [ %call5, %if.end.free_ctrldev_crit_edge ], [ %ret.0, %free_minor_ida ]
  tail call void @put_device(ptr noundef %dev2) #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %free_ctrldev, %if.end19, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %free_ctrldev ], [ 0, %if.end19 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rpmsg_chrdev_remove(ptr noundef %rpdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %rpdev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %dev1 = getelementptr inbounds %struct.rpmsg_ctrldev, ptr %1, i32 0, i32 2
  %call2 = tail call i32 @device_for_each_child(ptr noundef %dev1, ptr noundef null, ptr noundef nonnull @rpmsg_eptdev_destroy) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %rpdev, ptr noundef nonnull @.str.34, i32 noundef %call2) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %cdev = getelementptr inbounds %struct.rpmsg_ctrldev, ptr %1, i32 0, i32 1
  tail call void @cdev_device_del(ptr noundef %cdev, ptr noundef %dev1) #10
  tail call void @put_device(ptr noundef %dev1) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_initialize(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cdev_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ida_alloc_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cdev_device_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rpmsg_ctrldev_release_device(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -168
  %id = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 30
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 4
  tail call void @ida_free(ptr noundef nonnull @rpmsg_ctrl_ida, i32 noundef %1) #10
  %devt = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 29
  %2 = ptrtoint ptr %devt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %devt, align 8
  %and = and i32 %3, 1048575
  tail call void @ida_free(ptr noundef nonnull @rpmsg_minor_ida, i32 noundef %and) #10
  tail call void @kfree(ptr noundef %add.ptr) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_free(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rpmsg_ctrldev_ioctl(ptr nocapture noundef readonly %fp, i32 noundef %cmd, i32 noundef %arg) #0 align 64 {
entry:
  %eptinfo = alloca %struct.rpmsg_endpoint_info, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %fp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %eptinfo) #10
  %2 = call ptr @memset(ptr %eptinfo, i32 255, i32 40)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1076409601, i32 %cmd)
  %cmp.not = icmp eq i32 %cmd, 1076409601
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = inttoptr i32 %arg to ptr
  tail call void @__might_fault(ptr noundef nonnull @.str.14, i32 noundef 156) #10
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i, label %if.end.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.end.if.then11.i.i_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.end
  %4 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %3, i32 40, i32 -1226833920) #15, !srcloc !112
  %asmresult.i.i = extractvalue { i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i1.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i1.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !113

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %eptinfo, i32 noundef 40) #10
  %5 = call i32 @llvm.read_register.i32(metadata !102) #10
  %and.i.i.i.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 4
  %7 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #6, !srcloc !114
  %and.i.i.i.i = and i32 %7, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #10, !srcloc !115
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !116
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %eptinfo, ptr noundef %3, i32 noundef 40) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %7) #10, !srcloc !115
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !116
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end2, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !113

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.end.if.then11.i.i_crit_edge
  %res.03.i.i = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 40, %if.end.if.then11.i.i_crit_edge ], [ 40, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 40, %res.03.i.i
  %add.ptr.i.i = getelementptr i8, ptr %eptinfo, i32 %sub.i.i
  %8 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.03.i.i)
  br label %cleanup

if.end2:                                          ; preds = %if.end.i.i
  %9 = ptrtoint ptr %eptinfo to i32
  call void @__asan_load4_noabort(i32 %9)
  %chinfo.sroa.0.0.copyload = load i32, ptr %eptinfo, align 4
  %chinfo.sroa.5.0.arraydecay4.sroa_idx = getelementptr inbounds i8, ptr %eptinfo, i32 4
  %10 = ptrtoint ptr %chinfo.sroa.5.0.arraydecay4.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %10)
  %chinfo.sroa.5.0.copyload = load i32, ptr %chinfo.sroa.5.0.arraydecay4.sroa_idx, align 4
  %chinfo.sroa.6.0.arraydecay4.sroa_idx = getelementptr inbounds i8, ptr %eptinfo, i32 8
  %11 = ptrtoint ptr %chinfo.sroa.6.0.arraydecay4.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %11)
  %chinfo.sroa.6.0.copyload = load i32, ptr %chinfo.sroa.6.0.arraydecay4.sroa_idx, align 4
  %chinfo.sroa.7.0.arraydecay4.sroa_idx = getelementptr inbounds i8, ptr %eptinfo, i32 12
  %12 = ptrtoint ptr %chinfo.sroa.7.0.arraydecay4.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %12)
  %chinfo.sroa.7.0.copyload = load i32, ptr %chinfo.sroa.7.0.arraydecay4.sroa_idx, align 4
  %chinfo.sroa.8.0.arraydecay4.sroa_idx = getelementptr inbounds i8, ptr %eptinfo, i32 16
  %13 = ptrtoint ptr %chinfo.sroa.8.0.arraydecay4.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %13)
  %chinfo.sroa.8.0.copyload = load i32, ptr %chinfo.sroa.8.0.arraydecay4.sroa_idx, align 4
  %chinfo.sroa.9.0.arraydecay4.sroa_idx = getelementptr inbounds i8, ptr %eptinfo, i32 20
  %14 = ptrtoint ptr %chinfo.sroa.9.0.arraydecay4.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %14)
  %chinfo.sroa.9.0.copyload = load i32, ptr %chinfo.sroa.9.0.arraydecay4.sroa_idx, align 4
  %chinfo.sroa.10.0.arraydecay4.sroa_idx = getelementptr inbounds i8, ptr %eptinfo, i32 24
  %15 = ptrtoint ptr %chinfo.sroa.10.0.arraydecay4.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %15)
  %chinfo.sroa.10.0.copyload = load i32, ptr %chinfo.sroa.10.0.arraydecay4.sroa_idx, align 4
  %chinfo.sroa.11.0.arraydecay4.sroa_idx = getelementptr inbounds i8, ptr %eptinfo, i32 28
  %16 = ptrtoint ptr %chinfo.sroa.11.0.arraydecay4.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %16)
  %chinfo.sroa.11.0.copyload = load i32, ptr %chinfo.sroa.11.0.arraydecay4.sroa_idx, align 4
  %src = getelementptr inbounds %struct.rpmsg_endpoint_info, ptr %eptinfo, i32 0, i32 1
  %17 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %src, align 4
  %dst = getelementptr inbounds %struct.rpmsg_endpoint_info, ptr %eptinfo, i32 0, i32 2
  %19 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %dst, align 4
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %23 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %23, i32 noundef 3520, i32 noundef 1384) #14
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.end2.cleanup_crit_edge, label %if.end.i

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %if.end2
  %chinfo.sroa.11.sroa.0.0.extract.shift = and i32 %chinfo.sroa.11.0.copyload, -256
  %rpdev3.i = getelementptr inbounds %struct.rpmsg_eptdev, ptr %call7.i.i.i, i32 0, i32 2
  %24 = ptrtoint ptr %rpdev3.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %22, ptr %rpdev3.i, align 8
  %chinfo4.i = getelementptr inbounds %struct.rpmsg_eptdev, ptr %call7.i.i.i, i32 0, i32 3
  %25 = ptrtoint ptr %chinfo4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %chinfo.sroa.0.0.copyload, ptr %chinfo4.i, align 4
  %chinfo.sroa.2.0.chinfo4.sroa_idx.i = getelementptr inbounds %struct.rpmsg_eptdev, ptr %call7.i.i.i, i32 0, i32 3, i32 0, i32 4
  %26 = ptrtoint ptr %chinfo.sroa.2.0.chinfo4.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %chinfo.sroa.5.0.copyload, ptr %chinfo.sroa.2.0.chinfo4.sroa_idx.i, align 8
  %chinfo.sroa.3.0.chinfo4.sroa_idx.i = getelementptr inbounds %struct.rpmsg_eptdev, ptr %call7.i.i.i, i32 0, i32 3, i32 0, i32 8
  %27 = ptrtoint ptr %chinfo.sroa.3.0.chinfo4.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %chinfo.sroa.6.0.copyload, ptr %chinfo.sroa.3.0.chinfo4.sroa_idx.i, align 4
  %chinfo.sroa.4.0.chinfo4.sroa_idx.i = getelementptr inbounds %struct.rpmsg_eptdev, ptr %call7.i.i.i, i32 0, i32 3, i32 0, i32 12
  %28 = ptrtoint ptr %chinfo.sroa.4.0.chinfo4.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %chinfo.sroa.7.0.copyload, ptr %chinfo.sroa.4.0.chinfo4.sroa_idx.i, align 8
  %chinfo.sroa.5.0.chinfo4.sroa_idx.i = getelementptr inbounds %struct.rpmsg_eptdev, ptr %call7.i.i.i, i32 0, i32 3, i32 0, i32 16
  %29 = ptrtoint ptr %chinfo.sroa.5.0.chinfo4.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %chinfo.sroa.8.0.copyload, ptr %chinfo.sroa.5.0.chinfo4.sroa_idx.i, align 4
  %chinfo.sroa.6.0.chinfo4.sroa_idx.i = getelementptr inbounds %struct.rpmsg_eptdev, ptr %call7.i.i.i, i32 0, i32 3, i32 0, i32 20
  %30 = ptrtoint ptr %chinfo.sroa.6.0.chinfo4.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %chinfo.sroa.9.0.copyload, ptr %chinfo.sroa.6.0.chinfo4.sroa_idx.i, align 8
  %chinfo.sroa.7.0.chinfo4.sroa_idx.i = getelementptr inbounds %struct.rpmsg_eptdev, ptr %call7.i.i.i, i32 0, i32 3, i32 0, i32 24
  %31 = ptrtoint ptr %chinfo.sroa.7.0.chinfo4.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %chinfo.sroa.10.0.copyload, ptr %chinfo.sroa.7.0.chinfo4.sroa_idx.i, align 4
  %chinfo.sroa.8.0.chinfo4.sroa_idx.i = getelementptr inbounds %struct.rpmsg_eptdev, ptr %call7.i.i.i, i32 0, i32 3, i32 0, i32 28
  %32 = ptrtoint ptr %chinfo.sroa.8.0.chinfo4.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %chinfo.sroa.11.sroa.0.0.extract.shift, ptr %chinfo.sroa.8.0.chinfo4.sroa_idx.i, align 8
  %chinfo.sroa.9.0.chinfo4.sroa_idx.i = getelementptr inbounds %struct.rpmsg_eptdev, ptr %call7.i.i.i, i32 0, i32 3, i32 1
  %33 = ptrtoint ptr %chinfo.sroa.9.0.chinfo4.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %18, ptr %chinfo.sroa.9.0.chinfo4.sroa_idx.i, align 4
  %chinfo.sroa.10.0.chinfo4.sroa_idx.i = getelementptr inbounds %struct.rpmsg_eptdev, ptr %call7.i.i.i, i32 0, i32 3, i32 2
  %34 = ptrtoint ptr %chinfo.sroa.10.0.chinfo4.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %20, ptr %chinfo.sroa.10.0.chinfo4.sroa_idx.i, align 8
  %ept_lock.i = getelementptr inbounds %struct.rpmsg_eptdev, ptr %call7.i.i.i, i32 0, i32 4
  call void @__mutex_init(ptr noundef %ept_lock.i, ptr noundef nonnull @.str.15, ptr noundef nonnull @rpmsg_eptdev_create.__key) #10
  %queue_lock.i = getelementptr inbounds %struct.rpmsg_eptdev, ptr %call7.i.i.i, i32 0, i32 6
  call void @__raw_spin_lock_init(ptr noundef %queue_lock.i, ptr noundef nonnull @.str.17, ptr noundef nonnull @rpmsg_eptdev_create.__key.16, i16 noundef signext 3) #10
  %queue.i = getelementptr inbounds %struct.rpmsg_eptdev, ptr %call7.i.i.i, i32 0, i32 7
  %lock.i.i = getelementptr inbounds %struct.rpmsg_eptdev, ptr %call7.i.i.i, i32 0, i32 7, i32 2
  call void @__raw_spin_lock_init(ptr noundef %lock.i.i, ptr noundef nonnull @.str.21, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #10
  %35 = ptrtoint ptr %queue.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %queue.i, ptr %queue.i, align 8
  %prev.i.i.i = getelementptr inbounds %struct.rpmsg_eptdev, ptr %call7.i.i.i, i32 0, i32 7, i32 0, i32 0, i32 1
  %36 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %queue.i, ptr %prev.i.i.i, align 4
  %qlen.i.i.i = getelementptr inbounds %struct.rpmsg_eptdev, ptr %call7.i.i.i, i32 0, i32 7, i32 1
  %37 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %qlen.i.i.i, align 8
  %readq.i = getelementptr inbounds %struct.rpmsg_eptdev, ptr %call7.i.i.i, i32 0, i32 8
  call void @__init_waitqueue_head(ptr noundef %readq.i, ptr noundef nonnull @.str.19, ptr noundef nonnull @rpmsg_eptdev_create.__key.18) #10
  call void @device_initialize(ptr noundef nonnull %call7.i.i.i) #10
  %38 = load ptr, ptr @rpmsg_class, align 4
  %class.i = getelementptr inbounds %struct.device, ptr %call7.i.i.i, i32 0, i32 33
  %39 = ptrtoint ptr %class.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %38, ptr %class.i, align 4
  %dev12.i = getelementptr inbounds %struct.rpmsg_ctrldev, ptr %1, i32 0, i32 2
  %parent.i = getelementptr inbounds %struct.device, ptr %call7.i.i.i, i32 0, i32 1
  %40 = ptrtoint ptr %parent.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %dev12.i, ptr %parent.i, align 8
  %groups.i = getelementptr inbounds %struct.device, ptr %call7.i.i.i, i32 0, i32 34
  %41 = ptrtoint ptr %groups.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @rpmsg_eptdev_groups, ptr %groups.i, align 8
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %call7.i.i.i, i32 0, i32 8
  %42 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call7.i.i.i, ptr %driver_data.i.i, align 4
  %cdev.i = getelementptr inbounds %struct.rpmsg_eptdev, ptr %call7.i.i.i, i32 0, i32 1
  call void @cdev_init(ptr noundef %cdev.i, ptr noundef nonnull @rpmsg_eptdev_fops) #10
  %owner.i = getelementptr inbounds %struct.rpmsg_eptdev, ptr %call7.i.i.i, i32 0, i32 1, i32 1
  %43 = ptrtoint ptr %owner.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr null, ptr %owner.i, align 8
  %call14.i = call i32 @ida_alloc_range(ptr noundef nonnull @rpmsg_minor_ida, i32 noundef 0, i32 noundef 1048575, i32 noundef 3264) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %cmp.i = icmp slt i32 %call14.i, 0
  br i1 %cmp.i, label %if.end.i.free_eptdev.i_crit_edge, label %if.end16.i

if.end.i.free_eptdev.i_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %free_eptdev.i

if.end16.i:                                       ; preds = %if.end.i
  %44 = load i32, ptr @rpmsg_major, align 4
  %shr.i = and i32 %44, -1048576
  %or.i = or i32 %shr.i, %call14.i
  %devt.i = getelementptr inbounds %struct.device, ptr %call7.i.i.i, i32 0, i32 29
  %45 = ptrtoint ptr %devt.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %or.i, ptr %devt.i, align 8
  %call17.i = call i32 @ida_alloc_range(ptr noundef nonnull @rpmsg_ept_ida, i32 noundef 0, i32 noundef -1, i32 noundef 3264) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %cmp18.i = icmp slt i32 %call17.i, 0
  br i1 %cmp18.i, label %if.end16.i.free_minor_ida.i_crit_edge, label %if.end20.i

if.end16.i.free_minor_ida.i_crit_edge:            ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %free_minor_ida.i

if.end20.i:                                       ; preds = %if.end16.i
  %id.i = getelementptr inbounds %struct.device, ptr %call7.i.i.i, i32 0, i32 30
  %46 = ptrtoint ptr %id.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %call17.i, ptr %id.i, align 4
  %call21.i = call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef nonnull %call7.i.i.i, ptr noundef nonnull @.str.20, i32 noundef %call17.i) #10
  %call24.i = call i32 @cdev_device_add(ptr noundef %cdev.i, ptr noundef nonnull %call7.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i)
  %tobool25.not.i = icmp eq i32 %call24.i, 0
  br i1 %tobool25.not.i, label %if.end27.i, label %free_ept_ida.i

if.end27.i:                                       ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #12
  %release.i = getelementptr inbounds %struct.device, ptr %call7.i.i.i, i32 0, i32 35
  %47 = ptrtoint ptr %release.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @rpmsg_eptdev_release_device, ptr %release.i, align 4
  br label %cleanup

free_ept_ida.i:                                   ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #12
  %48 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %id.i, align 4
  call void @ida_free(ptr noundef nonnull @rpmsg_ept_ida, i32 noundef %49) #10
  br label %free_minor_ida.i

free_minor_ida.i:                                 ; preds = %free_ept_ida.i, %if.end16.i.free_minor_ida.i_crit_edge
  %ret.0.i = phi i32 [ %call17.i, %if.end16.i.free_minor_ida.i_crit_edge ], [ %call24.i, %free_ept_ida.i ]
  %50 = ptrtoint ptr %devt.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %devt.i, align 8
  %and.i = and i32 %51, 1048575
  call void @ida_free(ptr noundef nonnull @rpmsg_minor_ida, i32 noundef %and.i) #10
  br label %free_eptdev.i

free_eptdev.i:                                    ; preds = %free_minor_ida.i, %if.end.i.free_eptdev.i_crit_edge
  %ret.1.i = phi i32 [ %call14.i, %if.end.i.free_eptdev.i_crit_edge ], [ %ret.0.i, %free_minor_ida.i ]
  call void @put_device(ptr noundef nonnull %call7.i.i.i) #10
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %free_eptdev.i, %if.end27.i, %if.end2.cleanup_crit_edge, %if.then11.i.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %ret.1.i, %free_eptdev.i ], [ 0, %if.end27.i ], [ -12, %if.end2.cleanup_crit_edge ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %eptinfo) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rpmsg_ctrldev_open(ptr nocapture noundef readonly %inode, ptr nocapture noundef writeonly %filp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 48
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %add.ptr = getelementptr i8, ptr %2, i32 -4
  %dev = getelementptr i8, ptr %2, i32 164
  %call = tail call ptr @get_device(ptr noundef %dev) #10
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %3 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %add.ptr, ptr %private_data, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rpmsg_ctrldev_release(ptr nocapture noundef readonly %inode, ptr nocapture noundef readnone %filp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 48
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %dev = getelementptr i8, ptr %2, i32 164
  tail call void @put_device(ptr noundef %dev) #10
  ret i32 0
}

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
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rpmsg_eptdev_release_device(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 30
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 4
  tail call void @ida_free(ptr noundef nonnull @rpmsg_ept_ida, i32 noundef %1) #10
  %devt = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 29
  %2 = ptrtoint ptr %devt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %devt, align 8
  %and = and i32 %3, 1048575
  tail call void @ida_free(ptr noundef nonnull @rpmsg_minor_ida, i32 noundef %and) #10
  tail call void @kfree(ptr noundef %dev) #10
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @name_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %chinfo = getelementptr inbounds %struct.rpmsg_eptdev, ptr %1, i32 0, i32 3
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.23, ptr noundef %chinfo)
  ret i32 %call1
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @src_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %src = getelementptr inbounds %struct.rpmsg_eptdev, ptr %1, i32 0, i32 3, i32 1
  %2 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %src, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.25, i32 noundef %3)
  ret i32 %call1
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dst_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %dst = getelementptr inbounds %struct.rpmsg_eptdev, ptr %1, i32 0, i32 3, i32 2
  %2 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dst, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.25, i32 noundef %3)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rpmsg_eptdev_read_iter(ptr nocapture noundef readonly %iocb, ptr noundef %to) #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %iocb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iocb, align 8
  %private_data = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %ept = getelementptr inbounds %struct.rpmsg_eptdev, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %ept to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ept, align 8
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup78_crit_edge, label %do.body1

entry.cleanup78_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup78

do.body1:                                         ; preds = %entry
  %queue_lock = getelementptr inbounds %struct.rpmsg_eptdev, ptr %3, i32 0, i32 6
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %queue_lock) #10
  %queue = getelementptr inbounds %struct.rpmsg_eptdev, ptr %3, i32 0, i32 7
  %6 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %queue, align 4
  %cmp.i.not = icmp eq ptr %7, %queue
  br i1 %cmp.i.not, label %if.then7, label %do.body1.if.end62_crit_edge

do.body1.if.end62_crit_edge:                      ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end62

if.then7:                                         ; preds = %do.body1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %queue_lock, i32 noundef %call2) #10
  %f_flags = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 7
  %8 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %f_flags, align 4
  %and = and i32 %9, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool9.not = icmp eq i32 %and, 0
  br i1 %tobool9.not, label %if.end11, label %if.then7.cleanup78_crit_edge

if.then7.cleanup78_crit_edge:                     ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup78

if.end11:                                         ; preds = %if.then7
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 193) #10
  %10 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %queue, align 4
  %cmp.i107.not = icmp eq ptr %11, %queue
  br i1 %cmp.i107.not, label %lor.lhs.false, label %if.end11.if.end43_crit_edge

if.end11.if.end43_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end43

lor.lhs.false:                                    ; preds = %if.end11
  %12 = ptrtoint ptr %ept to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ept, align 8
  %tobool22.not = icmp eq ptr %13, null
  br i1 %tobool22.not, label %lor.lhs.false.cleanup78_crit_edge, label %if.then23

lor.lhs.false.cleanup78_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup78

if.then23:                                        ; preds = %lor.lhs.false
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #10
  %14 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #10
  %readq = getelementptr inbounds %struct.rpmsg_eptdev, ptr %3, i32 0, i32 8
  %call25125 = call i32 @prepare_to_wait_event(ptr noundef %readq, ptr noundef nonnull %__wq_entry, i32 noundef 1) #10
  %15 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %queue, align 4
  %cmp.i109.not126 = icmp eq ptr %16, %queue
  br i1 %cmp.i109.not126, label %if.then23.lor.lhs.false29_crit_edge, label %if.then23.if.end39.thread120_crit_edge

if.then23.if.end39.thread120_crit_edge:           ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end39.thread120

if.then23.lor.lhs.false29_crit_edge:              ; preds = %if.then23
  br label %lor.lhs.false29

lor.lhs.false29:                                  ; preds = %cleanup.lor.lhs.false29_crit_edge, %if.then23.lor.lhs.false29_crit_edge
  %call25127 = phi i32 [ %call25, %cleanup.lor.lhs.false29_crit_edge ], [ %call25125, %if.then23.lor.lhs.false29_crit_edge ]
  %17 = ptrtoint ptr %ept to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ept, align 8
  %tobool31.not = icmp eq ptr %18, null
  br i1 %tobool31.not, label %lor.lhs.false29.if.end39.thread120_crit_edge, label %if.end33

lor.lhs.false29.if.end39.thread120_crit_edge:     ; preds = %lor.lhs.false29
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end39.thread120

if.end33:                                         ; preds = %lor.lhs.false29
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25127)
  %tobool34.not = icmp eq i32 %call25127, 0
  br i1 %tobool34.not, label %cleanup, label %if.end39

cleanup:                                          ; preds = %if.end33
  call void @schedule() #10
  %call25 = call i32 @prepare_to_wait_event(ptr noundef %readq, ptr noundef nonnull %__wq_entry, i32 noundef 1) #10
  %19 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %queue, align 4
  %cmp.i109.not = icmp eq ptr %20, %queue
  br i1 %cmp.i109.not, label %cleanup.lor.lhs.false29_crit_edge, label %cleanup.if.end39.thread120_crit_edge

cleanup.if.end39.thread120_crit_edge:             ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end39.thread120

cleanup.lor.lhs.false29_crit_edge:                ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false29

if.end39.thread120:                               ; preds = %cleanup.if.end39.thread120_crit_edge, %lor.lhs.false29.if.end39.thread120_crit_edge, %if.then23.if.end39.thread120_crit_edge
  call void @finish_wait(ptr noundef %readq, ptr noundef nonnull %__wq_entry) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #10
  br label %if.end43

if.end39:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #10
  br label %cleanup78

if.end43:                                         ; preds = %if.end39.thread120, %if.end11.if.end43_crit_edge
  %21 = ptrtoint ptr %ept to i32
  call void @__asan_load4_noabort(i32 %21)
  %.pr = load ptr, ptr %ept, align 8
  %tobool45.not = icmp eq ptr %.pr, null
  br i1 %tobool45.not, label %if.end43.cleanup78_crit_edge, label %do.body49

if.end43.cleanup78_crit_edge:                     ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup78

do.body49:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #12
  %call57 = call i32 @_raw_spin_lock_irqsave(ptr noundef %queue_lock) #10
  br label %if.end62

if.end62:                                         ; preds = %do.body49, %do.body1.if.end62_crit_edge
  %flags.0 = phi i32 [ %call57, %do.body49 ], [ %call2, %do.body1.if.end62_crit_edge ]
  %call64 = call ptr @skb_dequeue(ptr noundef %queue) #10
  call void @_raw_spin_unlock_irqrestore(ptr noundef %queue_lock, i32 noundef %flags.0) #10
  %tobool66.not = icmp eq ptr %call64, null
  br i1 %tobool66.not, label %if.end62.cleanup78_crit_edge, label %if.end68

if.end62.cleanup78_crit_edge:                     ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup78

if.end68:                                         ; preds = %if.end62
  %count.i = getelementptr inbounds %struct.iov_iter, ptr %to, i32 0, i32 4
  %22 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %count.i, align 8
  %len = getelementptr inbounds %struct.sk_buff, ptr %call64, i32 0, i32 6
  %24 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %len, align 4
  %26 = call i32 @llvm.umin.i32(i32 %23, i32 %25)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp9.i.i = icmp slt i32 %26, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %if.end68
  %.b71.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i, label %land.rhs16.i.i.copy_to_iter.exit_crit_edge, label %if.then27.i.i, !prof !113

land.rhs16.i.i.copy_to_iter.exit_crit_edge:       ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %copy_to_iter.exit

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 230, i32 noundef 9, ptr noundef null) #10
  br label %copy_to_iter.exit

if.then.i.i.i:                                    ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #12
  %data = getelementptr inbounds %struct.sk_buff, ptr %call64, i32 0, i32 19
  %27 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %data, align 4
  call void @__check_object_size(ptr noundef %28, i32 noundef %26, i1 noundef zeroext true) #10
  %call3.i = call i32 @_copy_to_iter(ptr noundef %28, i32 noundef %26, ptr noundef %to) #10
  br label %copy_to_iter.exit

copy_to_iter.exit:                                ; preds = %if.then.i.i.i, %if.then27.i.i, %land.rhs16.i.i.copy_to_iter.exit_crit_edge
  %retval.0.i = phi i32 [ %call3.i, %if.then.i.i.i ], [ 0, %if.then27.i.i ], [ 0, %land.rhs16.i.i.copy_to_iter.exit_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i, i32 %26)
  %cmp74.not = icmp eq i32 %retval.0.i, %26
  %spec.store.select = select i1 %cmp74.not, i32 %26, i32 -14
  call void @kfree_skb_reason(ptr noundef nonnull %call64, i32 noundef 0) #10
  br label %cleanup78

cleanup78:                                        ; preds = %copy_to_iter.exit, %if.end62.cleanup78_crit_edge, %if.end43.cleanup78_crit_edge, %if.end39, %lor.lhs.false.cleanup78_crit_edge, %if.then7.cleanup78_crit_edge, %entry.cleanup78_crit_edge
  %retval.0 = phi i32 [ %spec.store.select, %copy_to_iter.exit ], [ -32, %entry.cleanup78_crit_edge ], [ -11, %if.then7.cleanup78_crit_edge ], [ -512, %if.end39 ], [ -32, %if.end43.cleanup78_crit_edge ], [ -14, %if.end62.cleanup78_crit_edge ], [ -32, %lor.lhs.false.cleanup78_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rpmsg_eptdev_write_iter(ptr nocapture noundef readonly %iocb, ptr noundef %from) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %iocb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iocb, align 8
  %private_data = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %count.i = getelementptr inbounds %struct.iov_iter, ptr %from, i32 0, i32 4
  %4 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %count.i, align 8
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %5, i32 noundef 3520) #16
  %tobool.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end8.i.i.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end8.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp9.i.i.i = icmp slt i32 %5, 0
  br i1 %cmp9.i.i.i, label %land.rhs16.i.i.i, label %if.then.i.i.i.i

land.rhs16.i.i.i:                                 ; preds = %if.end8.i.i.i
  %.b71.i.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i.i, label %land.rhs16.i.i.i.copy_from_iter.exit.i_crit_edge, label %if.then27.i.i.i, !prof !113

land.rhs16.i.i.i.copy_from_iter.exit.i_crit_edge: ; preds = %land.rhs16.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %copy_from_iter.exit.i

if.then27.i.i.i:                                  ; preds = %land.rhs16.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 230, i32 noundef 9, ptr noundef null) #10
  br label %copy_from_iter.exit.i

if.then.i.i.i.i:                                  ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__check_object_size(ptr noundef nonnull %call9.i.i, i32 noundef %5, i1 noundef zeroext false) #10
  %call3.i.i = tail call i32 @_copy_from_iter(ptr noundef nonnull %call9.i.i, i32 noundef %5, ptr noundef %from) #10
  br label %copy_from_iter.exit.i

copy_from_iter.exit.i:                            ; preds = %if.then.i.i.i.i, %if.then27.i.i.i, %land.rhs16.i.i.i.copy_from_iter.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %call3.i.i, %if.then.i.i.i.i ], [ 0, %if.then27.i.i.i ], [ 0, %land.rhs16.i.i.i.copy_from_iter.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i.i, i32 %5)
  %cmp.i = icmp eq i32 %retval.0.i.i, %5
  br i1 %cmp.i, label %if.end4, label %copy_from_iter_full.exit, !prof !113

copy_from_iter_full.exit:                         ; preds = %copy_from_iter.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @iov_iter_revert(ptr noundef %from, i32 noundef %retval.0.i.i) #10
  br label %free_kbuf.thread

if.end4:                                          ; preds = %copy_from_iter.exit.i
  %ept_lock = getelementptr inbounds %struct.rpmsg_eptdev, ptr %3, i32 0, i32 4
  %call5 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %ept_lock, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end4.free_kbuf.thread_crit_edge

if.end4.free_kbuf.thread_crit_edge:               ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %free_kbuf.thread

if.end8:                                          ; preds = %if.end4
  %ept = getelementptr inbounds %struct.rpmsg_eptdev, ptr %3, i32 0, i32 5
  %6 = ptrtoint ptr %ept to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ept, align 8
  %tobool9.not = icmp eq ptr %7, null
  br i1 %tobool9.not, label %if.end8.free_kbuf_crit_edge, label %if.end11

if.end8.free_kbuf_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %free_kbuf

if.end11:                                         ; preds = %if.end8
  %f_flags = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 7
  %8 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %f_flags, align 4
  %and = and i32 %9, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool12.not = icmp eq i32 %and, 0
  %dst18 = getelementptr inbounds %struct.rpmsg_eptdev, ptr %3, i32 0, i32 3, i32 2
  %10 = ptrtoint ptr %dst18 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dst18, align 4
  br i1 %tobool12.not, label %if.else, label %if.then13

if.then13:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  %call15 = tail call i32 @rpmsg_trysendto(ptr noundef nonnull %7, ptr noundef nonnull %call9.i.i, i32 noundef %5, i32 noundef %11) #10
  br label %free_kbuf

if.else:                                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  %call19 = tail call i32 @rpmsg_sendto(ptr noundef nonnull %7, ptr noundef nonnull %call9.i.i, i32 noundef %5, i32 noundef %11) #10
  br label %free_kbuf

free_kbuf.thread:                                 ; preds = %if.end4.free_kbuf.thread_crit_edge, %copy_from_iter_full.exit
  %ret.1.ph = phi i32 [ -512, %if.end4.free_kbuf.thread_crit_edge ], [ -14, %copy_from_iter_full.exit ]
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #10
  br label %12

free_kbuf:                                        ; preds = %if.else, %if.then13, %if.end8.free_kbuf_crit_edge
  %ret.0 = phi i32 [ %call15, %if.then13 ], [ %call19, %if.else ], [ -32, %if.end8.free_kbuf_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %ept_lock) #10
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %cmp = icmp slt i32 %ret.0, 0
  br i1 %cmp, label %free_kbuf._crit_edge, label %free_kbuf.cleanup_crit_edge

free_kbuf.cleanup_crit_edge:                      ; preds = %free_kbuf
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

free_kbuf._crit_edge:                             ; preds = %free_kbuf
  call void @__sanitizer_cov_trace_pc() #12
  br label %12

12:                                               ; preds = %free_kbuf._crit_edge, %free_kbuf.thread
  %ret.164 = phi i32 [ %ret.1.ph, %free_kbuf.thread ], [ %ret.0, %free_kbuf._crit_edge ]
  br label %cleanup

cleanup:                                          ; preds = %12, %free_kbuf.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %ret.164, %12 ], [ %5, %free_kbuf.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rpmsg_eptdev_poll(ptr noundef %filp, ptr noundef %wait) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %ept = getelementptr inbounds %struct.rpmsg_eptdev, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %ept to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ept, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %readq = getelementptr inbounds %struct.rpmsg_eptdev, ptr %1, i32 0, i32 8
  %tobool.not.i = icmp eq ptr %wait, null
  br i1 %tobool.not.i, label %if.end.poll_wait.exit_crit_edge, label %land.lhs.true.i

if.end.poll_wait.exit_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %poll_wait.exit

land.lhs.true.i:                                  ; preds = %if.end
  %4 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wait, align 4
  %tobool1.not.i = icmp eq ptr %5, null
  %tobool3.not.i = icmp eq ptr %readq, null
  %or.cond.i = or i1 %tobool3.not.i, %tobool1.not.i
  br i1 %or.cond.i, label %land.lhs.true.i.poll_wait.exit_crit_edge, label %if.then.i

land.lhs.true.i.poll_wait.exit_crit_edge:         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %poll_wait.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %5(ptr noundef %filp, ptr noundef nonnull %readq, ptr noundef nonnull %wait) #10
  br label %poll_wait.exit

poll_wait.exit:                                   ; preds = %if.then.i, %land.lhs.true.i.poll_wait.exit_crit_edge, %if.end.poll_wait.exit_crit_edge
  %queue = getelementptr inbounds %struct.rpmsg_eptdev, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %queue, align 4
  %cmp.i.not = icmp eq ptr %7, %queue
  %spec.select = select i1 %cmp.i.not, i32 0, i32 65
  %8 = ptrtoint ptr %ept to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ept, align 8
  %call5 = tail call i32 @rpmsg_poll(ptr noundef %9, ptr noundef %filp, ptr noundef %wait) #10
  %or6 = or i32 %spec.select, %call5
  br label %cleanup

cleanup:                                          ; preds = %poll_wait.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %or6, %poll_wait.exit ], [ 8, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rpmsg_eptdev_ioctl(ptr nocapture noundef readonly %fp, i32 noundef %cmd, i32 noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 46338, i32 %cmd)
  %cmp.not = icmp eq i32 %cmd, 46338
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %private_data = getelementptr inbounds %struct.file, ptr %fp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %ept_lock.i = getelementptr inbounds %struct.rpmsg_eptdev, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %ept_lock.i, i32 noundef 0) #10
  %ept.i = getelementptr inbounds %struct.rpmsg_eptdev, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %ept.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ept.i, align 8
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.end.rpmsg_eptdev_destroy.exit_crit_edge, label %if.then.i

if.end.rpmsg_eptdev_destroy.exit_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %rpmsg_eptdev_destroy.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @rpmsg_destroy_ept(ptr noundef nonnull %3) #10
  %4 = ptrtoint ptr %ept.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %ept.i, align 8
  br label %rpmsg_eptdev_destroy.exit

rpmsg_eptdev_destroy.exit:                        ; preds = %if.then.i, %if.end.rpmsg_eptdev_destroy.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %ept_lock.i) #10
  %readq.i = getelementptr inbounds %struct.rpmsg_eptdev, ptr %1, i32 0, i32 8
  tail call void @__wake_up(ptr noundef %readq.i, i32 noundef 1, i32 noundef 1, ptr noundef null) #10
  %cdev.i = getelementptr inbounds %struct.rpmsg_eptdev, ptr %1, i32 0, i32 1
  tail call void @cdev_device_del(ptr noundef %cdev.i, ptr noundef %1) #10
  tail call void @put_device(ptr noundef %1) #10
  br label %cleanup

cleanup:                                          ; preds = %rpmsg_eptdev_destroy.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %rpmsg_eptdev_destroy.exit ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rpmsg_eptdev_open(ptr nocapture noundef readonly %inode, ptr nocapture noundef writeonly %filp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 48
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %add.ptr = getelementptr i8, ptr %2, i32 -928
  %ept3 = getelementptr i8, ptr %2, i32 296
  %3 = ptrtoint ptr %ept3 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ept3, align 8
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %rpdev1 = getelementptr i8, ptr %2, i32 160
  %5 = ptrtoint ptr %rpdev1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rpdev1, align 8
  %call = tail call ptr @get_device(ptr noundef %add.ptr) #10
  %chinfo = getelementptr i8, ptr %2, i32 164
  %7 = ptrtoint ptr %chinfo to i32
  call void @__asan_load4_noabort(i32 %7)
  %.unpack = load i32, ptr %chinfo, align 4
  %8 = insertvalue [10 x i32] undef, i32 %.unpack, 0
  %.elt23 = getelementptr i8, ptr %2, i32 168
  %9 = ptrtoint ptr %.elt23 to i32
  call void @__asan_load4_noabort(i32 %9)
  %.unpack24 = load i32, ptr %.elt23, align 4
  %10 = insertvalue [10 x i32] %8, i32 %.unpack24, 1
  %.elt25 = getelementptr i8, ptr %2, i32 172
  %11 = ptrtoint ptr %.elt25 to i32
  call void @__asan_load4_noabort(i32 %11)
  %.unpack26 = load i32, ptr %.elt25, align 4
  %12 = insertvalue [10 x i32] %10, i32 %.unpack26, 2
  %.elt27 = getelementptr i8, ptr %2, i32 176
  %13 = ptrtoint ptr %.elt27 to i32
  call void @__asan_load4_noabort(i32 %13)
  %.unpack28 = load i32, ptr %.elt27, align 4
  %14 = insertvalue [10 x i32] %12, i32 %.unpack28, 3
  %.elt29 = getelementptr i8, ptr %2, i32 180
  %15 = ptrtoint ptr %.elt29 to i32
  call void @__asan_load4_noabort(i32 %15)
  %.unpack30 = load i32, ptr %.elt29, align 4
  %16 = insertvalue [10 x i32] %14, i32 %.unpack30, 4
  %.elt31 = getelementptr i8, ptr %2, i32 184
  %17 = ptrtoint ptr %.elt31 to i32
  call void @__asan_load4_noabort(i32 %17)
  %.unpack32 = load i32, ptr %.elt31, align 4
  %18 = insertvalue [10 x i32] %16, i32 %.unpack32, 5
  %.elt33 = getelementptr i8, ptr %2, i32 188
  %19 = ptrtoint ptr %.elt33 to i32
  call void @__asan_load4_noabort(i32 %19)
  %.unpack34 = load i32, ptr %.elt33, align 4
  %20 = insertvalue [10 x i32] %18, i32 %.unpack34, 6
  %.elt35 = getelementptr i8, ptr %2, i32 192
  %21 = ptrtoint ptr %.elt35 to i32
  call void @__asan_load4_noabort(i32 %21)
  %.unpack36 = load i32, ptr %.elt35, align 4
  %22 = insertvalue [10 x i32] %20, i32 %.unpack36, 7
  %.elt37 = getelementptr i8, ptr %2, i32 196
  %23 = ptrtoint ptr %.elt37 to i32
  call void @__asan_load4_noabort(i32 %23)
  %.unpack38 = load i32, ptr %.elt37, align 4
  %24 = insertvalue [10 x i32] %22, i32 %.unpack38, 8
  %.elt39 = getelementptr i8, ptr %2, i32 200
  %25 = ptrtoint ptr %.elt39 to i32
  call void @__asan_load4_noabort(i32 %25)
  %.unpack40 = load i32, ptr %.elt39, align 4
  %26 = insertvalue [10 x i32] %24, i32 %.unpack40, 9
  %call4 = tail call ptr @rpmsg_create_ept(ptr noundef %6, ptr noundef nonnull @rpmsg_ept_cb, ptr noundef %add.ptr, [10 x i32] %26) #10
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %do.end, label %if.end8

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %add.ptr, ptr noundef nonnull @.str.27, ptr noundef %chinfo) #13
  tail call void @put_device(ptr noundef %add.ptr) #10
  br label %cleanup

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %27 = ptrtoint ptr %ept3 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call4, ptr %ept3, align 8
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %28 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %add.ptr, ptr %private_data, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end8 ], [ -22, %do.end ], [ -16, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rpmsg_eptdev_release(ptr nocapture noundef readonly %inode, ptr nocapture noundef readnone %filp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 48
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %ept_lock = getelementptr i8, ptr %2, i32 204
  tail call void @mutex_lock_nested(ptr noundef %ept_lock, i32 noundef 0) #10
  %ept = getelementptr i8, ptr %2, i32 296
  %3 = ptrtoint ptr %ept to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ept, align 8
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @rpmsg_destroy_ept(ptr noundef nonnull %4) #10
  %5 = ptrtoint ptr %ept to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %ept, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %add.ptr = getelementptr i8, ptr %2, i32 -928
  tail call void @mutex_unlock(ptr noundef %ept_lock) #10
  %queue = getelementptr i8, ptr %2, i32 344
  tail call void @skb_queue_purge(ptr noundef %queue) #10
  tail call void @put_device(ptr noundef %add.ptr) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_dequeue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_copy_to_iter(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rpmsg_trysendto(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rpmsg_sendto(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iov_iter_revert(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_copy_from_iter(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rpmsg_poll(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rpmsg_eptdev_destroy(ptr noundef %dev, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ept_lock = getelementptr inbounds %struct.rpmsg_eptdev, ptr %dev, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %ept_lock, i32 noundef 0) #10
  %ept = getelementptr inbounds %struct.rpmsg_eptdev, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %ept to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ept, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @rpmsg_destroy_ept(ptr noundef nonnull %1) #10
  %2 = ptrtoint ptr %ept to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %ept, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %ept_lock) #10
  %readq = getelementptr inbounds %struct.rpmsg_eptdev, ptr %dev, i32 0, i32 8
  tail call void @__wake_up(ptr noundef %readq, i32 noundef 1, i32 noundef 1, ptr noundef null) #10
  %cdev = getelementptr inbounds %struct.rpmsg_eptdev, ptr %dev, i32 0, i32 1
  tail call void @cdev_device_del(ptr noundef %cdev, ptr noundef %dev) #10
  tail call void @put_device(ptr noundef %dev) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpmsg_destroy_ept(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cdev_device_del(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rpmsg_create_ept(ptr noundef, ptr noundef, ptr noundef, [10 x i32]) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rpmsg_ept_cb(ptr nocapture noundef readnone %rpdev, ptr nocapture noundef readonly %buf, i32 noundef %len, ptr noundef %priv, i32 noundef %addr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @__alloc_skb(i32 noundef %len, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #10
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call.i10 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef %len) #10
  %0 = call ptr @memcpy(ptr %call.i10, ptr %buf, i32 %len)
  %queue_lock = getelementptr inbounds %struct.rpmsg_eptdev, ptr %priv, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %queue_lock) #10
  %queue = getelementptr inbounds %struct.rpmsg_eptdev, ptr %priv, i32 0, i32 7
  tail call void @skb_queue_tail(ptr noundef %queue, ptr noundef nonnull %call.i) #10
  tail call void @_raw_spin_unlock(ptr noundef %queue_lock) #10
  %readq = getelementptr inbounds %struct.rpmsg_eptdev, ptr %priv, i32 0, i32 8
  tail call void @__wake_up(ptr noundef %readq, i32 noundef 1, i32 noundef 1, ptr noundef null) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_tail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_purge(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_for_each_child(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_rpmsg_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 55)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 55)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind readonly }
attributes #7 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { nounwind readnone }
attributes #16 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !14, !15, !16, !17, !19, !21, !22, !23, !25, !26, !27, !29, !31, !33, !35, !37, !39, !41, !42, !44, !46, !48, !49, !51, !52, !54, !55, !57, !59, !60, !62, !63, !65, !67, !68, !70, !72, !73, !75, !77, !78, !80, !82, !83, !84, !85, !86, !87, !89, !90, !92, !93, !95, !96, !98, !99, !100, !101}
!llvm.named.register.sp = !{!102}
!llvm.module.flags = !{!103, !104, !105, !106, !107, !108, !109, !110}
!llvm.ident = !{!111}

!0 = !{ptr @__initcall__kmod_rpmsg_char__273_562_rpmsg_chrdev_init2, !1, !"__initcall__kmod_rpmsg_char__273_562_rpmsg_chrdev_init2", i1 false, i1 false}
!1 = !{!"../drivers/rpmsg/rpmsg_char.c", i32 562, i32 1}
!2 = !{ptr @__exitcall_rpmsg_chrdev_exit, !3, !"__exitcall_rpmsg_chrdev_exit", i1 false, i1 false}
!3 = !{!"../drivers/rpmsg/rpmsg_char.c", i32 570, i32 1}
!4 = !{ptr @__UNIQUE_ID_alias274, !5, !"__UNIQUE_ID_alias274", i1 false, i1 false}
!5 = !{!"../drivers/rpmsg/rpmsg_char.c", i32 572, i32 1}
!6 = !{ptr @__UNIQUE_ID_file275, !7, !"__UNIQUE_ID_file275", i1 false, i1 false}
!7 = !{!"../drivers/rpmsg/rpmsg_char.c", i32 573, i32 1}
!8 = !{ptr @__UNIQUE_ID_license276, !7, !"__UNIQUE_ID_license276", i1 false, i1 false}
!9 = !{ptr @.str, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/rpmsg/rpmsg_char.c", i32 540, i32 60}
!11 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/rpmsg/rpmsg_char.c", i32 542, i32 3}
!13 = !{ptr @.str.2, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.3, !12, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @rpmsg_chrdev_init._entry, !12, !"_entry", i1 false, i1 false}
!16 = !{ptr @rpmsg_chrdev_init._entry_ptr, !12, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @rpmsg_chrdev_init.__key, !18, !"__key", i1 false, i1 false}
!18 = !{!"../drivers/rpmsg/rpmsg_char.c", i32 546, i32 16}
!19 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/rpmsg/rpmsg_char.c", i32 548, i32 3}
!21 = !{ptr @rpmsg_chrdev_init._entry.4, !20, !"_entry", i1 false, i1 false}
!22 = !{ptr @rpmsg_chrdev_init._entry_ptr.6, !20, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.8, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/rpmsg/rpmsg_char.c", i32 555, i32 3}
!25 = !{ptr @rpmsg_chrdev_init._entry.7, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @rpmsg_chrdev_init._entry_ptr.9, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @rpmsg_major, !28, !"rpmsg_major", i1 false, i1 false}
!28 = !{!"../drivers/rpmsg/rpmsg_char.c", i32 30, i32 14}
!29 = !{ptr @rpmsg_class, !30, !"rpmsg_class", i1 false, i1 false}
!30 = !{!"../drivers/rpmsg/rpmsg_char.c", i32 31, i32 22}
!31 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/rpmsg/rpmsg_char.c", i32 532, i32 11}
!33 = !{ptr @rpmsg_chrdev_driver, !34, !"rpmsg_chrdev_driver", i1 false, i1 false}
!34 = !{!"../drivers/rpmsg/rpmsg_char.c", i32 528, i32 28}
!35 = !{ptr @.str.11, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/rpmsg/rpmsg_char.c", i32 490, i32 30}
!37 = !{ptr @rpmsg_ctrldev_fops, !38, !"rpmsg_ctrldev_fops", i1 false, i1 false}
!38 = !{!"../drivers/rpmsg/rpmsg_char.c", i32 444, i32 37}
!39 = distinct !{null, !40, !"__already_done", i1 false, i1 false}
!40 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!41 = !{ptr @.str.12, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.13, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!44 = !{ptr @.str.14, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!46 = !{ptr @rpmsg_eptdev_create.__key, !47, !"__key", i1 false, i1 false}
!47 = !{!"../drivers/rpmsg/rpmsg_char.c", i32 358, i32 2}
!48 = !{ptr @.str.15, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @rpmsg_eptdev_create.__key.16, !50, !"__key", i1 false, i1 false}
!50 = !{!"../drivers/rpmsg/rpmsg_char.c", i32 359, i32 2}
!51 = !{ptr @.str.17, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @rpmsg_eptdev_create.__key.18, !53, !"__key", i1 false, i1 false}
!53 = !{!"../drivers/rpmsg/rpmsg_char.c", i32 361, i32 2}
!54 = !{ptr @.str.19, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.20, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/rpmsg/rpmsg_char.c", i32 381, i32 20}
!57 = !{ptr @skb_queue_head_init.__key, !58, !"__key", i1 false, i1 false}
!58 = !{!"../include/linux/skbuff.h", i32 1984, i32 2}
!59 = !{ptr @.str.21, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @rpmsg_eptdev_groups, !61, !"rpmsg_eptdev_groups", i1 false, i1 false}
!61 = !{!"../drivers/rpmsg/rpmsg_char.c", i32 331, i32 1}
!62 = !{ptr @rpmsg_eptdev_group, !61, !"rpmsg_eptdev_group", i1 false, i1 false}
!63 = !{ptr @rpmsg_eptdev_attrs, !64, !"rpmsg_eptdev_attrs", i1 false, i1 false}
!64 = !{!"../drivers/rpmsg/rpmsg_char.c", i32 325, i32 26}
!65 = !{ptr @.str.22, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/rpmsg/rpmsg_char.c", i32 305, i32 8}
!67 = !{ptr @dev_attr_name, !66, !"dev_attr_name", i1 false, i1 false}
!68 = !{ptr @.str.23, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/rpmsg/rpmsg_char.c", i32 303, i32 22}
!70 = !{ptr @.str.24, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/rpmsg/rpmsg_char.c", i32 314, i32 8}
!72 = !{ptr @dev_attr_src, !71, !"dev_attr_src", i1 false, i1 false}
!73 = !{ptr @.str.25, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/rpmsg/rpmsg_char.c", i32 312, i32 22}
!75 = !{ptr @.str.26, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/rpmsg/rpmsg_char.c", i32 323, i32 8}
!77 = !{ptr @dev_attr_dst, !76, !"dev_attr_dst", i1 false, i1 false}
!78 = !{ptr @rpmsg_eptdev_fops, !79, !"rpmsg_eptdev_fops", i1 false, i1 false}
!79 = !{!"../drivers/rpmsg/rpmsg_char.c", i32 287, i32 37}
!80 = !{ptr @.str.27, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/rpmsg/rpmsg_char.c", i32 138, i32 3}
!82 = !{ptr @.str.28, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @.str.29, !81, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @.str.30, !81, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @rpmsg_eptdev_open._entry, !81, !"_entry", i1 false, i1 false}
!86 = !{ptr @rpmsg_eptdev_open._entry_ptr, !81, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.31, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/rpmsg/rpmsg_char.c", i32 34, i32 8}
!89 = !{ptr @rpmsg_ept_ida, !88, !"rpmsg_ept_ida", i1 false, i1 false}
!90 = !{ptr @.str.32, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/rpmsg/rpmsg_char.c", i32 35, i32 8}
!92 = !{ptr @rpmsg_minor_ida, !91, !"rpmsg_minor_ida", i1 false, i1 false}
!93 = !{ptr @.str.33, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/rpmsg/rpmsg_char.c", i32 33, i32 8}
!95 = !{ptr @rpmsg_ctrl_ida, !94, !"rpmsg_ctrl_ida", i1 false, i1 false}
!96 = !{ptr @.str.34, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/rpmsg/rpmsg_char.c", i32 522, i32 3}
!98 = !{ptr @.str.35, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @.str.36, !97, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @rpmsg_chrdev_remove._entry, !97, !"_entry", i1 false, i1 false}
!101 = !{ptr @rpmsg_chrdev_remove._entry_ptr, !97, !"_entry_ptr", i1 false, i1 false}
!102 = !{!"sp"}
!103 = !{i32 1, !"wchar_size", i32 2}
!104 = !{i32 1, !"min_enum_size", i32 4}
!105 = !{i32 8, !"branch-target-enforcement", i32 0}
!106 = !{i32 8, !"sign-return-address", i32 0}
!107 = !{i32 8, !"sign-return-address-all", i32 0}
!108 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!109 = !{i32 7, !"uwtable", i32 1}
!110 = !{i32 7, !"frame-pointer", i32 2}
!111 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!112 = !{i64 2152656060, i64 2152656085}
!113 = !{!"branch_weights", i32 2000, i32 1}
!114 = !{i64 5151615}
!115 = !{i64 5151812}
!116 = !{i64 2152637045}
