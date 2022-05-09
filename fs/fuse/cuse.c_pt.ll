; ModuleID = '/llk/IR_all_yes/fs/fuse/cuse.c_pt.bc'
source_filename = "../fs/fuse/cuse.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.miscdevice = type { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i16 }
%struct.list_head = type { ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.fuse_iqueue_ops = type { ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.class = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cuse_conn = type { %struct.list_head, %struct.fuse_mount, %struct.fuse_conn, ptr, ptr, i8 }
%struct.fuse_mount = type { ptr, ptr, %struct.list_head }
%struct.fuse_conn = type { %struct.spinlock, %struct.refcount_struct, %struct.atomic_t, %struct.callback_head, %struct.kuid_t, %struct.kgid_t, ptr, ptr, i32, i32, i32, i32, %struct.fuse_iqueue, %struct.atomic64_t, %struct.rb_root, i32, i32, i32, i32, %struct.list_head, %struct.spinlock, i32, i32, %struct.wait_queue_head, i32, i8, [7 x i8], %struct.atomic_t, i32, %struct.list_head, i32, [5 x ptr], i32, [4 x i32], %struct.atomic64_t, ptr, %struct.rw_semaphore, %struct.list_head, %struct.list_head, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.callback_head = type { ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.fuse_iqueue = type { i32, %struct.spinlock, %struct.wait_queue_head, i64, %struct.list_head, %struct.list_head, %struct.fuse_forget_link, ptr, i32, ptr, ptr, ptr }
%struct.fuse_forget_link = type { %struct.fuse_forget_one, ptr }
%struct.fuse_forget_one = type { i64, i64 }
%struct.rb_root = type { ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.39 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.39 = type { %struct.callback_head }
%struct.cuse_init_args = type { %struct.fuse_args_pages, %struct.cuse_init_in, %struct.cuse_init_out, ptr, %struct.fuse_page_desc }
%struct.fuse_args_pages = type { %struct.fuse_args, ptr, ptr, i32 }
%struct.fuse_args = type { i64, i32, i16, i16, i16, [3 x %struct.fuse_in_arg], [2 x %struct.fuse_arg], ptr }
%struct.fuse_in_arg = type { i32, ptr }
%struct.fuse_arg = type { i32, ptr }
%struct.cuse_init_in = type { i32, i32, i32, i32 }
%struct.cuse_init_out = type { i32, i32, i32, i32, i32, i32, i32, i32, [10 x i32] }
%struct.fuse_page_desc = type { i32, i32 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
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
%struct.fuse_io_priv = type { %struct.kref, i32, %struct.spinlock, i32, i32, i32, i64, i8, i8, i32, ptr, ptr, i8 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.74, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.75, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.76, ptr, %struct.address_space, %struct.list_head, %union.anon.77, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.74 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%union.anon.75 = type { %struct.callback_head }
%union.anon.76 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.77 = type { ptr }

@__UNIQUE_ID_alias276 = internal constant [29 x i8] c"cuse.alias=char-major-10-203\00", section ".modinfo", align 1
@__UNIQUE_ID_alias277 = internal constant [24 x i8] c"cuse.alias=devname:cuse\00", section ".modinfo", align 1
@cuse_miscdev = internal global { %struct.miscdevice, [56 x i8] } { %struct.miscdevice { i32 203, ptr @.str, ptr @cuse_channel_fops, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i16 0 }, [56 x i8] zeroinitializer }, align 32
@cuse_class = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__initcall__kmod_cuse__278_650_cuse_init6 = internal global ptr @cuse_init, section ".initcall6.init", align 4
@__exitcall_cuse_exit = internal global ptr @cuse_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author279 = internal constant [38 x i8] c"cuse.author=Tejun Heo <tj@kernel.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description280 = internal constant [47 x i8] c"cuse.description=Character device in Userspace\00", section ".modinfo", align 1
@__UNIQUE_ID_file281 = internal constant [23 x i8] c"cuse.file=fs/fuse/cuse\00", section ".modinfo", align 1
@__UNIQUE_ID_license282 = internal constant [17 x i8] c"cuse.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"cuse\00", [27 x i8] zeroinitializer }, align 32
@cuse_channel_fops = internal global { %struct.file_operations, [32 x i8] } zeroinitializer, align 32
@cuse_conntbl = internal global { [64 x %struct.list_head], [128 x i8] } zeroinitializer, align 32
@fuse_dev_operations = external dso_local local_unnamed_addr constant %struct.file_operations, align 4
@cuse_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@cuse_class_dev_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @cuse_class_dev_group, ptr null], [24 x i8] zeroinitializer }, align 32
@fuse_dev_fiq_ops = external dso_local constant %struct.fuse_iqueue_ops, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@cuse_process_init_reply._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 354, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013CUSE: failed to register chrdev region\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cuse_process_init_reply\00", [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fs/fuse/cuse.c\00", [17 x i8] zeroinitializer }, align 32
@cuse_process_init_reply._entry_ptr = internal global ptr @cuse_process_init_reply._entry, section ".printk_index", align 4
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@cuse_lock = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.18, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @cuse_lock, i64 52), ptr getelementptr (i8, ptr @cuse_lock, i64 52) }, ptr @cuse_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.19, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@cuse_frontend_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @noop_llseek, ptr null, ptr null, ptr @cuse_read_iter, ptr @cuse_write_iter, ptr null, ptr null, ptr null, ptr @fuse_file_poll, ptr @cuse_file_ioctl, ptr @cuse_file_compat_ioctl, ptr null, i32 0, ptr @cuse_open, ptr null, ptr @cuse_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"DEVNAME\00", [24 x i8] zeroinitializer }, align 32
@cuse_parse_devinfo._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.4, i32 286, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\014CUSE: unknown device info \22%s\22\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cuse_parse_devinfo\00", [45 x i8] zeroinitializer }, align 32
@cuse_parse_devinfo._entry_ptr = internal global ptr @cuse_parse_devinfo._entry, section ".printk_index", align 4
@cuse_parse_devinfo._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.8, ptr @.str.4, i32 290, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013CUSE: DEVNAME unspecified\0A\00", [35 x i8] zeroinitializer }, align 32
@cuse_parse_devinfo._entry_ptr.11 = internal global ptr @cuse_parse_devinfo._entry.9, section ".printk_index", align 4
@cuse_parse_one._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.4, i32 229, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013CUSE: info not properly terminated\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cuse_parse_one\00", [17 x i8] zeroinitializer }, align 32
@cuse_parse_one._entry_ptr = internal global ptr @cuse_parse_one._entry, section ".printk_index", align 4
@.str.14 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"=\00", [30 x i8] zeroinitializer }, align 32
@cuse_parse_one._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.13, ptr @.str.4, i32 246, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013CUSE: zero length info key specified\0A\00", [56 x i8] zeroinitializer }, align 32
@cuse_parse_one._entry_ptr.17 = internal global ptr @cuse_parse_one._entry.15, section ".printk_index", align 4
@.str.18 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cuse_lock.wait_lock\00", [44 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"cuse_lock\00", [22 x i8] zeroinitializer }, align 32
@cuse_class_dev_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @cuse_class_dev_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@cuse_class_dev_attrs = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @dev_attr_waiting, ptr @dev_attr_abort, ptr null], [20 x i8] zeroinitializer }, align 32
@dev_attr_waiting = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.20, i16 256, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @cuse_class_waiting_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_abort = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.22, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @cuse_class_abort_store }, [36 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"waiting\00", [24 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"abort\00", [26 x i8] zeroinitializer }, align 32
@___asan_gen_.23 = private unnamed_addr constant [13 x i8] c"cuse_miscdev\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 604, i32 26 }
@___asan_gen_.26 = private unnamed_addr constant [11 x i8] c"cuse_class\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 71, i32 22 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 606, i32 11 }
@___asan_gen_.32 = private unnamed_addr constant [18 x i8] c"cuse_channel_fops\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 568, i32 31 }
@___asan_gen_.35 = private unnamed_addr constant [13 x i8] c"cuse_conntbl\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 70, i32 25 }
@___asan_gen_.38 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 629, i32 15 }
@___asan_gen_.41 = private unnamed_addr constant [22 x i8] c"cuse_class_dev_groups\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 354, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 370, i32 20 }
@___asan_gen_.59 = private unnamed_addr constant [10 x i8] c"cuse_lock\00", align 1
@___asan_gen_.62 = private unnamed_addr constant [19 x i8] c"cuse_frontend_fops\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 181, i32 37 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 283, i32 19 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 286, i32 4 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 290, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 229, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 237, i32 16 }
@___asan_gen_.95 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 246, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 69, i32 8 }
@___asan_gen_.107 = private unnamed_addr constant [21 x i8] c"cuse_class_dev_group\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 602, i32 1 }
@___asan_gen_.110 = private unnamed_addr constant [21 x i8] c"cuse_class_dev_attrs\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 597, i32 26 }
@___asan_gen_.113 = private unnamed_addr constant [17 x i8] c"dev_attr_waiting\00", align 1
@___asan_gen_.116 = private unnamed_addr constant [15 x i8] c"dev_attr_abort\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 584, i32 8 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 582, i32 22 }
@___asan_gen_.125 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.126 = private constant [18 x i8] c"../fs/fuse/cuse.c\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 595, i32 8 }
@llvm.compiler.used = appending global [49 x ptr] [ptr @__UNIQUE_ID_alias276, ptr @__UNIQUE_ID_alias277, ptr @__UNIQUE_ID_author279, ptr @__UNIQUE_ID_description280, ptr @__UNIQUE_ID_file281, ptr @__UNIQUE_ID_license282, ptr @__exitcall_cuse_exit, ptr @__initcall__kmod_cuse__278_650_cuse_init6, ptr @cuse_exit, ptr @cuse_parse_devinfo._entry, ptr @cuse_parse_devinfo._entry.9, ptr @cuse_parse_devinfo._entry_ptr, ptr @cuse_parse_devinfo._entry_ptr.11, ptr @cuse_parse_one._entry, ptr @cuse_parse_one._entry.15, ptr @cuse_parse_one._entry_ptr, ptr @cuse_parse_one._entry_ptr.17, ptr @cuse_process_init_reply._entry, ptr @cuse_process_init_reply._entry_ptr, ptr @cuse_miscdev, ptr @cuse_class, ptr @.str, ptr @cuse_channel_fops, ptr @cuse_conntbl, ptr @cuse_init.__key, ptr @cuse_class_dev_groups, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @cuse_lock, ptr @cuse_frontend_fops, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @cuse_class_dev_group, ptr @cuse_class_dev_attrs, ptr @dev_attr_waiting, ptr @dev_attr_abort, ptr @.str.20, ptr @.str.21, ptr @.str.22], section "llvm.metadata"
@0 = internal global [35 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cuse_miscdev to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cuse_class to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cuse_channel_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cuse_conntbl to i32), i32 512, i32 640, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cuse_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cuse_class_dev_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cuse_process_init_reply._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cuse_lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cuse_frontend_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cuse_parse_devinfo._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cuse_parse_devinfo._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cuse_parse_one._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cuse_parse_one._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cuse_class_dev_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cuse_class_dev_attrs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_waiting to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_abort to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @cuse_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @misc_deregister(ptr noundef nonnull @cuse_miscdev) #9
  %0 = load ptr, ptr @cuse_class, align 4
  tail call void @class_destroy(ptr noundef %0) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @misc_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @class_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @cuse_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.010 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr [64 x %struct.list_head], ptr @cuse_conntbl, i32 0, i32 %i.010
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile ptr %arrayidx, ptr %arrayidx, align 4
  %prev.i = getelementptr [64 x %struct.list_head], ptr @cuse_conntbl, i32 0, i32 %i.010, i32 1
  %1 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %arrayidx, ptr %prev.i, align 4
  %inc = add nuw nsw i32 %i.010, 1
  %exitcond.not = icmp eq i32 %inc, 64
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body
  %2 = call ptr @memcpy(ptr @cuse_channel_fops, ptr @fuse_dev_operations, i32 128)
  store ptr null, ptr @cuse_channel_fops, align 4
  store ptr @cuse_channel_open, ptr getelementptr inbounds (%struct.file_operations, ptr @cuse_channel_fops, i32 0, i32 14), align 4
  store ptr @cuse_channel_release, ptr getelementptr inbounds (%struct.file_operations, ptr @cuse_channel_fops, i32 0, i32 16), align 4
  store ptr null, ptr getelementptr inbounds (%struct.file_operations, ptr @cuse_channel_fops, i32 0, i32 10), align 4
  %call = tail call ptr @__class_create(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @cuse_init.__key) #9
  store ptr %call, ptr @cuse_class, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %for.end
  %dev_groups = getelementptr inbounds %struct.class, ptr %call, i32 0, i32 3
  %4 = ptrtoint ptr %dev_groups to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @cuse_class_dev_groups, ptr %dev_groups, align 4
  %call3 = tail call i32 @misc_register(ptr noundef nonnull @cuse_miscdev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.then4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %5 = load ptr, ptr @cuse_class, align 4
  tail call void @class_destroy(ptr noundef %5) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %3, %if.then ], [ %call3, %if.then4 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cuse_channel_open(ptr nocapture noundef readnone %inode, ptr nocapture noundef %file) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 656) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %fc = getelementptr inbounds %struct.cuse_conn, ptr %call7.i.i, i32 0, i32 2
  %fm = getelementptr inbounds %struct.cuse_conn, ptr %call7.i.i, i32 0, i32 1
  %f_cred = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 12
  %1 = ptrtoint ptr %f_cred to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %f_cred, align 8
  %user_ns = getelementptr inbounds %struct.cred, ptr %2, i32 0, i32 25
  %3 = ptrtoint ptr %user_ns to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %user_ns, align 4
  tail call void @fuse_conn_init(ptr noundef %fc, ptr noundef %fm, ptr noundef %4, ptr noundef nonnull @fuse_dev_fiq_ops, ptr noundef null) #9
  %release = getelementptr inbounds %struct.cuse_conn, ptr %call7.i.i, i32 0, i32 2, i32 35
  %5 = ptrtoint ptr %release to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @cuse_fc_release, ptr %release, align 8
  %call3 = tail call ptr @fuse_dev_alloc_install(ptr noundef %fc) #9
  tail call void @fuse_conn_put(ptr noundef %fc) #9
  %tobool5.not = icmp eq ptr %call3, null
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %6 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %call7.i.i, ptr %call7.i.i, align 8
  %prev.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call7.i.i, ptr %prev.i, align 4
  %initialized = getelementptr inbounds %struct.cuse_conn, ptr %call7.i.i, i32 0, i32 2, i32 21
  %8 = ptrtoint ptr %initialized to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %initialized, align 8
  %call38.i.i.i.i = tail call ptr @__alloc_pages(i32 noundef 3520, i32 noundef 0, i32 noundef 0, ptr noundef null) #9
  %tobool.not.i = icmp eq ptr %call38.i.i.i.i, null
  br i1 %tobool.not.i, label %if.end7.if.then11_crit_edge, label %if.end.i

if.end7.if.then11_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11

if.end.i:                                         ; preds = %if.end7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %9 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3520, i32 noundef 184) #12
  %tobool3.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool3.not.i, label %if.end.i.err_free_page.i_crit_edge, label %if.end5.i

if.end.i.err_free_page.i_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_free_page.i

if.end5.i:                                        ; preds = %if.end.i
  %in.i = getelementptr inbounds %struct.cuse_init_args, ptr %call7.i.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %in.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 7, ptr %in.i, align 8
  %minor.i = getelementptr inbounds %struct.cuse_init_args, ptr %call7.i.i.i, i32 0, i32 1, i32 1
  %11 = ptrtoint ptr %minor.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 36, ptr %minor.i, align 4
  %flags.i = getelementptr inbounds %struct.cuse_init_args, ptr %call7.i.i.i, i32 0, i32 1, i32 3
  %12 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags.i, align 4
  %or.i = or i32 %13, 1
  store i32 %or.i, ptr %flags.i, align 4
  %opcode.i = getelementptr inbounds %struct.fuse_args, ptr %call7.i.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %opcode.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 4096, ptr %opcode.i, align 8
  %in_numargs.i = getelementptr inbounds %struct.fuse_args, ptr %call7.i.i.i, i32 0, i32 2
  %15 = ptrtoint ptr %in_numargs.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 1, ptr %in_numargs.i, align 4
  %in_args.i = getelementptr inbounds %struct.fuse_args, ptr %call7.i.i.i, i32 0, i32 5
  %16 = ptrtoint ptr %in_args.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 16, ptr %in_args.i, align 4
  %value.i = getelementptr inbounds %struct.fuse_args, ptr %call7.i.i.i, i32 0, i32 5, i32 0, i32 1
  %17 = ptrtoint ptr %value.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %in.i, ptr %value.i, align 8
  %out_numargs.i = getelementptr inbounds %struct.fuse_args, ptr %call7.i.i.i, i32 0, i32 3
  %18 = ptrtoint ptr %out_numargs.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 2, ptr %out_numargs.i, align 2
  %out_args.i = getelementptr inbounds %struct.fuse_args, ptr %call7.i.i.i, i32 0, i32 6
  %19 = ptrtoint ptr %out_args.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 72, ptr %out_args.i, align 4
  %out.i = getelementptr inbounds %struct.cuse_init_args, ptr %call7.i.i.i, i32 0, i32 2
  %value22.i = getelementptr inbounds %struct.fuse_args, ptr %call7.i.i.i, i32 0, i32 6, i32 0, i32 1
  %20 = ptrtoint ptr %value22.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %out.i, ptr %value22.i, align 8
  %arrayidx25.i = getelementptr %struct.fuse_args, ptr %call7.i.i.i, i32 0, i32 6, i32 1
  %21 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 4096, ptr %arrayidx25.i, align 4
  %out_argvar.i = getelementptr inbounds %struct.fuse_args, ptr %call7.i.i.i, i32 0, i32 4
  %22 = ptrtoint ptr %out_argvar.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %bf.load.i = load i16, ptr %out_argvar.i, align 8
  %bf.set31.i = or i16 %bf.load.i, 2560
  store i16 %bf.set31.i, ptr %out_argvar.i, align 8
  %num_pages.i = getelementptr inbounds %struct.fuse_args_pages, ptr %call7.i.i.i, i32 0, i32 3
  %23 = ptrtoint ptr %num_pages.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %num_pages.i, align 8
  %page32.i = getelementptr inbounds %struct.cuse_init_args, ptr %call7.i.i.i, i32 0, i32 3
  %pages.i = getelementptr inbounds %struct.fuse_args_pages, ptr %call7.i.i.i, i32 0, i32 1
  %24 = ptrtoint ptr %pages.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %page32.i, ptr %pages.i, align 8
  %desc.i = getelementptr inbounds %struct.cuse_init_args, ptr %call7.i.i.i, i32 0, i32 4
  %descs.i = getelementptr inbounds %struct.fuse_args_pages, ptr %call7.i.i.i, i32 0, i32 2
  %25 = ptrtoint ptr %descs.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %desc.i, ptr %descs.i, align 4
  %26 = ptrtoint ptr %page32.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call38.i.i.i.i, ptr %page32.i, align 8
  %27 = ptrtoint ptr %desc.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 4096, ptr %desc.i, align 4
  %end.i = getelementptr inbounds %struct.fuse_args, ptr %call7.i.i.i, i32 0, i32 7
  %28 = ptrtoint ptr %end.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @cuse_process_init_reply, ptr %end.i, align 4
  %call41.i = tail call i32 @fuse_simple_background(ptr noundef %fm, ptr noundef nonnull %call7.i.i.i, i32 noundef 3264) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41.i)
  %tobool42.not.i = icmp eq i32 %call41.i, 0
  br i1 %tobool42.not.i, label %if.end12, label %if.then43.i

if.then43.i:                                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #9
  br label %err_free_page.i

err_free_page.i:                                  ; preds = %if.then43.i, %if.end.i.err_free_page.i_crit_edge
  %rc.0.i = phi i32 [ %call41.i, %if.then43.i ], [ -12, %if.end.i.err_free_page.i_crit_edge ]
  tail call void @__free_pages(ptr noundef nonnull %call38.i.i.i.i, i32 noundef 0) #9
  br label %if.then11

if.then11:                                        ; preds = %err_free_page.i, %if.end7.if.then11_crit_edge
  %rc.1.i.ph = phi i32 [ -12, %if.end7.if.then11_crit_edge ], [ %rc.0.i, %err_free_page.i ]
  tail call void @fuse_dev_free(ptr noundef nonnull %call3) #9
  br label %cleanup

if.end12:                                         ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %29 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call3, ptr %private_data, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.then11, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.1.i.ph, %if.then11 ], [ 0, %if.end12 ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cuse_channel_release(ptr noundef %inode, ptr noundef %file) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 -24
  tail call void @mutex_lock_nested(ptr noundef nonnull @cuse_lock, i32 noundef 0) #9
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %add.ptr.i) #9
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del_init.exit_crit_edge

entry.list_del_init.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr i8, ptr %3, i32 -20
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i, align 4
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr.i, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %entry.list_del_init.exit_crit_edge
  %10 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %add.ptr.i, ptr %add.ptr.i, align 4
  %prev.i3.i = getelementptr i8, ptr %3, i32 -20
  %11 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %add.ptr.i, ptr %prev.i3.i, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @cuse_lock) #9
  %dev = getelementptr i8, ptr %3, i32 620
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  %tobool.not = icmp eq ptr %13, null
  br i1 %tobool.not, label %list_del_init.exit.if.end_crit_edge, label %if.then

list_del_init.exit.if.end_crit_edge:              ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @device_unregister(ptr noundef nonnull %13) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %list_del_init.exit.if.end_crit_edge
  %cdev = getelementptr i8, ptr %3, i32 616
  %14 = ptrtoint ptr %cdev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cdev, align 8
  %tobool2.not = icmp eq ptr %15, null
  br i1 %tobool2.not, label %if.end.if.end7_crit_edge, label %if.then3

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %dev5 = getelementptr inbounds %struct.cdev, ptr %15, i32 0, i32 4
  %16 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dev5, align 4
  tail call void @unregister_chrdev_region(i32 noundef %17, i32 noundef 1) #9
  %18 = ptrtoint ptr %cdev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cdev, align 8
  tail call void @cdev_del(ptr noundef %19) #9
  br label %if.end7

if.end7:                                          ; preds = %if.then3, %if.end.if.end7_crit_edge
  %call8 = tail call i32 @fuse_dev_release(ptr noundef %inode, ptr noundef %file) #9
  ret i32 %call8
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__class_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @misc_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fuse_conn_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cuse_fc_release(ptr noundef %fc) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %fc, i32 -24
  %tobool.not = icmp eq ptr %add.ptr.i, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %rcu = getelementptr i8, ptr %fc, i32 52
  tail call void @kvfree_call_rcu(ptr noundef %rcu, ptr noundef nonnull inttoptr (i32 76 to ptr)) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fuse_dev_alloc_install(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fuse_conn_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fuse_dev_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cuse_process_init_reply(ptr nocapture noundef readonly %fm, ptr noundef %args, i32 noundef %error) #3 align 64 {
entry:
  %val.i.i = alloca ptr, align 4
  %devt = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fm, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -24
  %pages = getelementptr inbounds %struct.fuse_args_pages, ptr %args, i32 0, i32 1
  %2 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pages, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %devt) #9
  %6 = ptrtoint ptr %devt to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %devt, align 4, !annotation !88
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %error)
  %tobool.not = icmp eq i32 %error, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.err_crit_edge

entry.err_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

lor.lhs.false:                                    ; preds = %entry
  %out = getelementptr inbounds %struct.cuse_init_args, ptr %args, i32 0, i32 2
  %7 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %out, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %8)
  %cmp.not = icmp eq i32 %8, 7
  br i1 %cmp.not, label %lor.lhs.false3, label %lor.lhs.false.err_crit_edge

lor.lhs.false.err_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %minor = getelementptr inbounds %struct.cuse_init_args, ptr %args, i32 0, i32 2, i32 1
  %9 = ptrtoint ptr %minor to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %minor, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %10)
  %cmp4 = icmp ult i32 %10, 11
  br i1 %cmp4, label %lor.lhs.false3.err_crit_edge, label %if.end

lor.lhs.false3.err_crit_edge:                     ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

if.end:                                           ; preds = %lor.lhs.false3
  %minor6 = getelementptr inbounds %struct.fuse_conn, ptr %1, i32 0, i32 28
  %11 = ptrtoint ptr %minor6 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %minor6, align 4
  %max_read = getelementptr inbounds %struct.cuse_init_args, ptr %args, i32 0, i32 2, i32 4
  %12 = ptrtoint ptr %max_read to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %max_read, align 4
  %14 = tail call i32 @llvm.umax.i32(i32 %13, i32 4096)
  %max_read9 = getelementptr inbounds %struct.fuse_conn, ptr %1, i32 0, i32 8
  %15 = ptrtoint ptr %max_read9 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %max_read9, align 4
  %max_write = getelementptr inbounds %struct.cuse_init_args, ptr %args, i32 0, i32 2, i32 5
  %16 = ptrtoint ptr %max_write to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %max_write, align 4
  %18 = tail call i32 @llvm.umax.i32(i32 %17, i32 4096)
  %max_write16 = getelementptr inbounds %struct.fuse_conn, ptr %1, i32 0, i32 9
  %19 = ptrtoint ptr %max_write16 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %max_write16, align 8
  %flags = getelementptr inbounds %struct.cuse_init_args, ptr %args, i32 0, i32 2, i32 3
  %20 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %flags, align 4
  %unrestricted_ioctl = getelementptr i8, ptr %1, i32 624
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = ptrtoint ptr %unrestricted_ioctl to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %unrestricted_ioctl, align 8
  %call18 = tail call ptr @page_address(ptr noundef %5) #9
  %arrayidx20 = getelementptr %struct.fuse_args, ptr %args, i32 0, i32 6, i32 1
  %25 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx20, align 4
  %add.ptr.i136 = getelementptr i8, ptr %call18, i32 %26
  %end63.i.i = ptrtoint ptr %add.ptr.i136 to i32
  %arrayidx.i.i = getelementptr i8, ptr %add.ptr.i136, i32 -1
  br label %while.cond.i.outer

while.cond.i.outer:                               ; preds = %if.end2.i.while.cond.i.outer_crit_edge, %if.end
  %devinfo.sroa.0.0.ph = phi ptr [ null, %if.end ], [ %call.i53.i.i, %if.end2.i.while.cond.i.outer_crit_edge ]
  %p.addr.0.i.ph = phi ptr [ %call18, %if.end ], [ %add.ptr.i.i, %if.end2.i.while.cond.i.outer_crit_edge ]
  br label %while.cond.i

while.cond.i:                                     ; preds = %do.end.i, %while.cond.i.outer
  %p.addr.0.i = phi ptr [ %add.ptr.i.i, %do.end.i ], [ %p.addr.0.i.ph, %while.cond.i.outer ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i) #9
  %cmp60.i.i = icmp ult ptr %p.addr.0.i, %add.ptr.i136
  br i1 %cmp60.i.i, label %land.rhs.preheader.i.i, label %while.cond.i.while.end.i.i_crit_edge

while.cond.i.while.end.i.i_crit_edge:             ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i.i

land.rhs.preheader.i.i:                           ; preds = %while.cond.i
  %27 = ptrtoint ptr %p.addr.0.i to i32
  %28 = sub i32 %end63.i.i, %27
  %uglygep.i.i = getelementptr i8, ptr %p.addr.0.i, i32 %28
  br label %land.rhs.i.i

land.rhs.i.i:                                     ; preds = %while.body.i.i.land.rhs.i.i_crit_edge, %land.rhs.preheader.i.i
  %p.061.i.i = phi ptr [ %incdec.ptr.i.i, %while.body.i.i.land.rhs.i.i_crit_edge ], [ %p.addr.0.i, %land.rhs.preheader.i.i ]
  %29 = ptrtoint ptr %p.061.i.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %p.061.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %cmp1.i.i = icmp eq i8 %30, 0
  br i1 %cmp1.i.i, label %while.body.i.i, label %land.rhs.i.i.while.end.i.i_crit_edge

land.rhs.i.i.while.end.i.i_crit_edge:             ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i.i

while.body.i.i:                                   ; preds = %land.rhs.i.i
  %incdec.ptr.i.i = getelementptr i8, ptr %p.061.i.i, i32 1
  %exitcond.not.i.i = icmp eq ptr %incdec.ptr.i.i, %uglygep.i.i
  br i1 %exitcond.not.i.i, label %while.body.i.i.while.end.i.i_crit_edge, label %while.body.i.i.land.rhs.i.i_crit_edge

while.body.i.i.land.rhs.i.i_crit_edge:            ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs.i.i

while.body.i.i.while.end.i.i_crit_edge:           ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i.i

while.end.i.i:                                    ; preds = %while.body.i.i.while.end.i.i_crit_edge, %land.rhs.i.i.while.end.i.i_crit_edge, %while.cond.i.while.end.i.i_crit_edge
  %p.0.lcssa.i.i = phi ptr [ %p.addr.0.i, %while.cond.i.while.end.i.i_crit_edge ], [ %uglygep.i.i, %while.body.i.i.while.end.i.i_crit_edge ], [ %p.061.i.i, %land.rhs.i.i.while.end.i.i_crit_edge ]
  %cmp3.i.i = icmp eq ptr %p.0.lcssa.i.i, %add.ptr.i136
  br i1 %cmp3.i.i, label %while.end.i, label %if.end.i.i

if.end.i.i:                                       ; preds = %while.end.i.i
  %31 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %cmp6.not.i.i = icmp eq i8 %32, 0
  br i1 %cmp6.not.i.i, label %if.end9.i.i, label %if.end.i.i.cuse_parse_one.exit.thread.i_crit_edge

if.end.i.i.cuse_parse_one.exit.thread.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cuse_parse_one.exit.thread.i

if.end9.i.i:                                      ; preds = %if.end.i.i
  %33 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %p.0.lcssa.i.i, ptr %val.i.i, align 4
  %call10.i.i = call i32 @strlen(ptr noundef %p.0.lcssa.i.i) #13
  %add.ptr.i.i = getelementptr i8, ptr %p.0.lcssa.i.i, i32 %call10.i.i
  %call12.i.i = call ptr @strsep(ptr noundef nonnull %val.i.i, ptr noundef nonnull @.str.14) #9
  %34 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %val.i.i, align 4
  %tobool13.not.i.i = icmp eq ptr %35, null
  br i1 %tobool13.not.i.i, label %if.then14.i.i, label %if.end9.i.i.if.end21.thread.i.i_crit_edge

if.end9.i.i.if.end21.thread.i.i_crit_edge:        ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21.thread.i.i

if.then14.i.i:                                    ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call15.i.i = call i32 @strlen(ptr noundef %p.0.lcssa.i.i) #13
  %add.ptr16.i.i = getelementptr i8, ptr %p.0.lcssa.i.i, i32 %call15.i.i
  %36 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %add.ptr16.i.i, ptr %val.i.i, align 4
  br label %if.end21.thread.i.i

if.end21.thread.i.i:                              ; preds = %if.then14.i.i, %if.end9.i.i.if.end21.thread.i.i_crit_edge
  %call.i.i.i = call ptr @strim(ptr noundef %p.0.lcssa.i.i) #9
  %37 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %val.i.i, align 4
  %call.i53.i.i = call ptr @strim(ptr noundef %38) #9
  %39 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call.i53.i.i, ptr %val.i.i, align 4
  %40 = ptrtoint ptr %call.i.i.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %char056.i.i = load i8, ptr %call.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %char056.i.i)
  %tobool23.not57.i.i = icmp eq i8 %char056.i.i, 0
  br i1 %tobool23.not57.i.i, label %if.end21.thread.i.i.cuse_parse_one.exit.thread.i_crit_edge, label %if.end2.i

if.end21.thread.i.i.cuse_parse_one.exit.thread.i_crit_edge: ; preds = %if.end21.thread.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cuse_parse_one.exit.thread.i

cuse_parse_one.exit.thread.i:                     ; preds = %if.end21.thread.i.i.cuse_parse_one.exit.thread.i_crit_edge, %if.end.i.i.cuse_parse_one.exit.thread.i_crit_edge
  %.str.12.sink.i = phi ptr [ @.str.12, %if.end.i.i.cuse_parse_one.exit.thread.i_crit_edge ], [ @.str.16, %if.end21.thread.i.i.cuse_parse_one.exit.thread.i_crit_edge ]
  %call.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.12.sink.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #9
  br label %err

if.end2.i:                                        ; preds = %if.end21.thread.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #9
  %call3.i = call i32 @strcmp(ptr noundef %call.i.i.i, ptr noundef nonnull dereferenceable(8) @.str.6) #13
  %cmp4.i = icmp eq i32 %call3.i, 0
  br i1 %cmp4.i, label %if.end2.i.while.cond.i.outer_crit_edge, label %do.end.i

if.end2.i.while.cond.i.outer_crit_edge:           ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i.outer

do.end.i:                                         ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #11
  %call6.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %call.i.i.i) #14
  br label %while.cond.i

while.end.i:                                      ; preds = %while.end.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #9
  %tobool9.not.i = icmp eq ptr %devinfo.sroa.0.0.ph, null
  br i1 %tobool9.not.i, label %while.end.i.do.end16.i_crit_edge, label %lor.lhs.false.i

while.end.i.do.end16.i_crit_edge:                 ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end16.i

lor.lhs.false.i:                                  ; preds = %while.end.i
  %41 = ptrtoint ptr %devinfo.sroa.0.0.ph to i32
  call void @__asan_load1_noabort(i32 %41)
  %char0.i = load i8, ptr %devinfo.sroa.0.0.ph, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %char0.i)
  %tobool12.not.i = icmp eq i8 %char0.i, 0
  br i1 %tobool12.not.i, label %lor.lhs.false.i.do.end16.i_crit_edge, label %if.end24

lor.lhs.false.i.do.end16.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end16.i

do.end16.i:                                       ; preds = %lor.lhs.false.i.do.end16.i_crit_edge, %while.end.i.do.end16.i_crit_edge
  %call18.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #14
  br label %err

if.end24:                                         ; preds = %lor.lhs.false.i
  %dev_major = getelementptr inbounds %struct.cuse_init_args, ptr %args, i32 0, i32 2, i32 6
  %42 = ptrtoint ptr %dev_major to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %dev_major, align 4
  %shl = shl i32 %43, 20
  %dev_minor = getelementptr inbounds %struct.cuse_init_args, ptr %args, i32 0, i32 2, i32 7
  %44 = ptrtoint ptr %dev_minor to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %dev_minor, align 4
  %or = or i32 %shl, %45
  %46 = ptrtoint ptr %devt to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %or, ptr %devt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048576, i32 %or)
  %tobool25.not = icmp ult i32 %or, 1048576
  br i1 %tobool25.not, label %if.then26, label %if.else

if.then26:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  %call28 = call i32 @alloc_chrdev_region(ptr noundef nonnull %devt, i32 noundef %45, i32 noundef 1, ptr noundef nonnull %devinfo.sroa.0.0.ph) #9
  br label %if.end31

if.else:                                          ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  %call30 = call i32 @register_chrdev_region(i32 noundef %or, i32 noundef 1, ptr noundef nonnull %devinfo.sroa.0.0.ph) #9
  br label %if.end31

if.end31:                                         ; preds = %if.else, %if.then26
  %rc.0 = phi i32 [ %call30, %if.else ], [ %call28, %if.then26 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.0)
  %tobool32.not = icmp eq i32 %rc.0, 0
  br i1 %tobool32.not, label %if.end36, label %do.end

do.end:                                           ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  %call35 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #14
  br label %err

if.end36:                                         ; preds = %if.end31
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %47 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %47, i32 noundef 3520, i32 noundef 928) #12
  %tobool38.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool38.not, label %if.end36.err_region_crit_edge, label %if.end40

if.end36.err_region_crit_edge:                    ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_region

if.end40:                                         ; preds = %if.end36
  call void @device_initialize(ptr noundef nonnull %call7.i.i) #9
  %uevent_suppress.i = getelementptr inbounds %struct.kobject, ptr %call7.i.i, i32 0, i32 8
  %48 = ptrtoint ptr %uevent_suppress.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %bf.load.i = load i8, ptr %uevent_suppress.i, align 4
  %bf.set.i = or i8 %bf.load.i, 8
  store i8 %bf.set.i, ptr %uevent_suppress.i, align 4
  %49 = load ptr, ptr @cuse_class, align 4
  %class = getelementptr inbounds %struct.device, ptr %call7.i.i, i32 0, i32 33
  %50 = ptrtoint ptr %class to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %49, ptr %class, align 4
  %51 = ptrtoint ptr %devt to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %devt, align 4
  %devt41 = getelementptr inbounds %struct.device, ptr %call7.i.i, i32 0, i32 29
  %53 = ptrtoint ptr %devt41 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %devt41, align 8
  %release = getelementptr inbounds %struct.device, ptr %call7.i.i, i32 0, i32 35
  %54 = ptrtoint ptr %release to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr @cuse_gendev_release, ptr %release, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %call7.i.i, i32 0, i32 8
  %55 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %add.ptr.i, ptr %driver_data.i, align 4
  %call43 = call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.5, ptr noundef nonnull %devinfo.sroa.0.0.ph) #9
  call void @mutex_lock_nested(ptr noundef nonnull @cuse_lock, i32 noundef 0) #9
  %init_name.i139 = getelementptr inbounds %struct.device, ptr %call7.i.i, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc65.for.body_crit_edge, %if.end40
  %i.0156 = phi i32 [ 0, %if.end40 ], [ %inc, %for.inc65.for.body_crit_edge ]
  %arrayidx46 = getelementptr [64 x %struct.list_head], ptr @cuse_conntbl, i32 0, i32 %i.0156
  br label %for.cond49

for.cond49:                                       ; preds = %dev_name.exit143.for.cond49_crit_edge, %for.body
  %pos.0.in = phi ptr [ %arrayidx46, %for.body ], [ %pos.0, %dev_name.exit143.for.cond49_crit_edge ]
  %56 = ptrtoint ptr %pos.0.in to i32
  call void @__asan_load4_noabort(i32 %56)
  %pos.0 = load ptr, ptr %pos.0.in, align 4
  %cmp51.not = icmp eq ptr %pos.0, %arrayidx46
  br i1 %cmp51.not, label %for.inc65, label %for.body52

for.body52:                                       ; preds = %for.cond49
  %dev53 = getelementptr inbounds %struct.cuse_conn, ptr %pos.0, i32 0, i32 4
  %57 = ptrtoint ptr %dev53 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dev53, align 4
  %init_name.i = getelementptr inbounds %struct.device, ptr %58, i32 0, i32 3
  %59 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %60, null
  br i1 %tobool.not.i, label %if.end.i, label %for.body52.dev_name.exit_crit_edge

for.body52.dev_name.exit_crit_edge:               ; preds = %for.body52
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit

if.end.i:                                         ; preds = %for.body52
  call void @__sanitizer_cov_trace_pc() #11
  %61 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %58, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %for.body52.dev_name.exit_crit_edge
  %retval.0.i138 = phi ptr [ %62, %if.end.i ], [ %60, %for.body52.dev_name.exit_crit_edge ]
  %63 = ptrtoint ptr %init_name.i139 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %init_name.i139, align 8
  %tobool.not.i140 = icmp eq ptr %64, null
  br i1 %tobool.not.i140, label %if.end.i141, label %dev_name.exit.dev_name.exit143_crit_edge

dev_name.exit.dev_name.exit143_crit_edge:         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit143

if.end.i141:                                      ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  %65 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %call7.i.i, align 8
  br label %dev_name.exit143

dev_name.exit143:                                 ; preds = %if.end.i141, %dev_name.exit.dev_name.exit143_crit_edge
  %retval.0.i142 = phi ptr [ %66, %if.end.i141 ], [ %64, %dev_name.exit.dev_name.exit143_crit_edge ]
  %call56 = call i32 @strcmp(ptr noundef %retval.0.i138, ptr noundef %retval.0.i142) #15
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %dev_name.exit143.err_unlock_crit_edge, label %dev_name.exit143.for.cond49_crit_edge

dev_name.exit143.for.cond49_crit_edge:            ; preds = %dev_name.exit143
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond49

dev_name.exit143.err_unlock_crit_edge:            ; preds = %dev_name.exit143
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_unlock

for.inc65:                                        ; preds = %for.cond49
  %inc = add nuw nsw i32 %i.0156, 1
  %exitcond.not = icmp eq i32 %inc, 64
  br i1 %exitcond.not, label %for.end66, label %for.inc65.for.body_crit_edge

for.inc65.for.body_crit_edge:                     ; preds = %for.inc65
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end66:                                        ; preds = %for.inc65
  %call67 = call i32 @device_add(ptr noundef nonnull %call7.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %if.end70, label %for.end66.err_unlock_crit_edge

for.end66.err_unlock_crit_edge:                   ; preds = %for.end66
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_unlock

if.end70:                                         ; preds = %for.end66
  %call71 = call ptr @cdev_alloc() #9
  %tobool72.not = icmp eq ptr %call71, null
  br i1 %tobool72.not, label %if.end70.err_unlock_crit_edge, label %if.end74

if.end70.err_unlock_crit_edge:                    ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_unlock

if.end74:                                         ; preds = %if.end70
  %owner = getelementptr inbounds %struct.cdev, ptr %call71, i32 0, i32 1
  %67 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr null, ptr %owner, align 4
  %ops = getelementptr inbounds %struct.cdev, ptr %call71, i32 0, i32 2
  %68 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr @cuse_frontend_fops, ptr %ops, align 4
  %69 = ptrtoint ptr %devt to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %devt, align 4
  %call75 = call i32 @cdev_add(ptr noundef nonnull %call71, i32 noundef %70, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %tobool76.not = icmp eq i32 %call75, 0
  br i1 %tobool76.not, label %if.end78, label %err_cdev

if.end78:                                         ; preds = %if.end74
  %dev79 = getelementptr i8, ptr %1, i32 620
  %71 = ptrtoint ptr %dev79 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %call7.i.i, ptr %dev79, align 4
  %cdev80 = getelementptr i8, ptr %1, i32 616
  %72 = ptrtoint ptr %cdev80 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %call71, ptr %cdev80, align 8
  %73 = ptrtoint ptr %devt to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %devt, align 4
  %shr.i = lshr i32 %74, 20
  %add.i = add i32 %shr.i, %74
  %rem.i = and i32 %add.i, 63
  %arrayidx.i = getelementptr [64 x %struct.list_head], ptr @cuse_conntbl, i32 0, i32 %rem.i
  %75 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %arrayidx.i, align 4
  %call.i.i144 = call zeroext i1 @__list_add_valid(ptr noundef %add.ptr.i, ptr noundef %arrayidx.i, ptr noundef %76) #9
  br i1 %call.i.i144, label %if.end.i.i145, label %if.end78.list_add.exit_crit_edge

if.end78.list_add.exit_crit_edge:                 ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add.exit

if.end.i.i145:                                    ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #11
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %76, i32 0, i32 1
  %77 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %add.ptr.i, ptr %prev1.i.i, align 4
  %78 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %76, ptr %add.ptr.i, align 4
  %prev3.i.i = getelementptr i8, ptr %1, i32 -20
  %79 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %arrayidx.i, ptr %prev3.i.i, align 4
  %80 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store volatile ptr %add.ptr.i, ptr %arrayidx.i, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i145, %if.end78.list_add.exit_crit_edge
  call void @mutex_unlock(ptr noundef nonnull @cuse_lock) #9
  %81 = ptrtoint ptr %uevent_suppress.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %bf.load.i147 = load i8, ptr %uevent_suppress.i, align 4
  %bf.clear.i148 = and i8 %bf.load.i147, -9
  store i8 %bf.clear.i148, ptr %uevent_suppress.i, align 4
  %call83 = call i32 @kobject_uevent(ptr noundef nonnull %call7.i.i, i32 noundef 0) #9
  br label %out84

out84:                                            ; preds = %err, %list_add.exit
  call void @kfree(ptr noundef %args) #9
  call void @__free_pages(ptr noundef %5, i32 noundef 0) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %devt) #9
  ret void

err_cdev:                                         ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #11
  call void @cdev_del(ptr noundef nonnull %call71) #9
  br label %err_unlock

err_unlock:                                       ; preds = %err_cdev, %if.end70.err_unlock_crit_edge, %for.end66.err_unlock_crit_edge, %dev_name.exit143.err_unlock_crit_edge
  call void @mutex_unlock(ptr noundef nonnull @cuse_lock) #9
  call void @put_device(ptr noundef nonnull %call7.i.i) #9
  br label %err_region

err_region:                                       ; preds = %err_unlock, %if.end36.err_region_crit_edge
  %82 = ptrtoint ptr %devt to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %devt, align 4
  call void @unregister_chrdev_region(i32 noundef %83, i32 noundef 1) #9
  br label %err

err:                                              ; preds = %err_region, %do.end, %do.end16.i, %cuse_parse_one.exit.thread.i, %lor.lhs.false3.err_crit_edge, %lor.lhs.false.err_crit_edge, %entry.err_crit_edge
  call void @fuse_abort_conn(ptr noundef %1) #9
  br label %out84
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fuse_simple_background(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__free_pages(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @alloc_chrdev_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_chrdev_region(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_initialize(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cuse_gendev_release(ptr noundef %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %dev) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cdev_alloc() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cdev_add(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_uevent(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cdev_del(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_chrdev_region(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fuse_abort_conn(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strsep(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strim(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @noop_llseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cuse_read_iter(ptr noundef %kiocb, ptr noundef %to) #3 align 64 {
entry:
  %io = alloca %struct.fuse_io_priv, align 8
  %pos = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %io) #9
  %0 = call ptr @memset(ptr %io, i32 0, i32 96)
  %1 = ptrtoint ptr %io to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %io, align 8
  %iocb = getelementptr inbounds %struct.fuse_io_priv, ptr %io, i32 0, i32 10
  %2 = ptrtoint ptr %iocb to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %kiocb, ptr %iocb, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pos) #9
  %3 = ptrtoint ptr %pos to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 0, ptr %pos, align 8
  %call = call i32 @fuse_direct_io(ptr noundef nonnull %io, ptr noundef %to, ptr noundef nonnull %pos, i32 noundef 2) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pos) #9
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %io) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cuse_write_iter(ptr noundef %kiocb, ptr noundef %from) #3 align 64 {
entry:
  %io = alloca %struct.fuse_io_priv, align 8
  %pos = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %io) #9
  %0 = call ptr @memset(ptr %io, i32 0, i32 96)
  %1 = ptrtoint ptr %io to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %io, align 8
  %iocb = getelementptr inbounds %struct.fuse_io_priv, ptr %io, i32 0, i32 10
  %2 = ptrtoint ptr %iocb to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %kiocb, ptr %iocb, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pos) #9
  %3 = ptrtoint ptr %pos to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 0, ptr %pos, align 8
  %call = call i32 @fuse_direct_io(ptr noundef nonnull %io, ptr noundef %from, ptr noundef nonnull %pos, i32 noundef 3) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pos) #9
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %io) #9
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fuse_file_poll(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cuse_file_ioctl(ptr noundef %file, i32 noundef %cmd, i32 noundef %arg) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %unrestricted_ioctl = getelementptr i8, ptr %5, i32 624
  %6 = ptrtoint ptr %unrestricted_ioctl to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %unrestricted_ioctl, align 8, !range !89
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  %spec.select = select i1 %tobool.not, i32 0, i32 2
  %call1 = tail call i32 @fuse_do_ioctl(ptr noundef %file, i32 noundef %cmd, i32 noundef %arg, i32 noundef %spec.select) #9
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cuse_file_compat_ioctl(ptr noundef %file, i32 noundef %cmd, i32 noundef %arg) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %unrestricted_ioctl = getelementptr i8, ptr %5, i32 624
  %6 = ptrtoint ptr %unrestricted_ioctl to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %unrestricted_ioctl, align 8, !range !89
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  %spec.select = select i1 %tobool.not, i32 1, i32 3
  %call1 = tail call i32 @fuse_do_ioctl(ptr noundef %file, i32 noundef %cmd, i32 noundef %arg, i32 noundef %spec.select) #9
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cuse_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 48
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %dev = getelementptr inbounds %struct.cdev, ptr %2, i32 0, i32 4
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %dev, align 4
  tail call void @mutex_lock_nested(ptr noundef nonnull @cuse_lock, i32 noundef 0) #9
  %shr.i = lshr i32 %4, 20
  %add.i = add i32 %shr.i, %4
  %rem.i = and i32 %add.i, 63
  %arrayidx.i = getelementptr [64 x %struct.list_head], ptr @cuse_conntbl, i32 0, i32 %rem.i
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %pos.0.in = phi ptr [ %arrayidx.i, %entry ], [ %pos.0, %for.body.for.cond_crit_edge ]
  %5 = ptrtoint ptr %pos.0.in to i32
  call void @__asan_load4_noabort(i32 %5)
  %pos.0 = load ptr, ptr %pos.0.in, align 4
  %cmp.not = icmp eq ptr %pos.0, %arrayidx.i
  br i1 %cmp.not, label %for.end.thread, label %for.body

for.end.thread:                                   ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @mutex_unlock(ptr noundef nonnull @cuse_lock) #9
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %dev2 = getelementptr inbounds %struct.cuse_conn, ptr %pos.0, i32 0, i32 4
  %6 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev2, align 4
  %devt3 = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 29
  %8 = ptrtoint ptr %devt3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %devt3, align 8
  %cmp4 = icmp eq i32 %9, %4
  br i1 %cmp4, label %for.end, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond

for.end:                                          ; preds = %for.body
  %fc = getelementptr inbounds %struct.cuse_conn, ptr %pos.0, i32 0, i32 2
  %call5 = tail call ptr @fuse_conn_get(ptr noundef %fc) #9
  tail call void @mutex_unlock(ptr noundef nonnull @cuse_lock) #9
  %tobool.not = icmp eq ptr %pos.0, null
  br i1 %tobool.not, label %for.end.cleanup_crit_edge, label %if.end12

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end12:                                         ; preds = %for.end
  %fm = getelementptr inbounds %struct.cuse_conn, ptr %pos.0, i32 0, i32 1
  %call13 = tail call i32 @fuse_do_open(ptr noundef %fm, i64 noundef 0, ptr noundef %file, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end12.cleanup_crit_edge, label %if.then15

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then15:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @fuse_conn_put(ptr noundef %fc) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then15, %if.end12.cleanup_crit_edge, %for.end.cleanup_crit_edge, %for.end.thread
  %retval.0 = phi i32 [ -19, %for.end.cleanup_crit_edge ], [ %call13, %if.then15 ], [ 0, %if.end12.cleanup_crit_edge ], [ -19, %for.end.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cuse_release(ptr nocapture noundef readnone %inode, ptr nocapture noundef readonly %file) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %f_flags = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 7
  %4 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %f_flags, align 4
  tail call void @fuse_sync_release(ptr noundef null, ptr noundef %1, i32 noundef %5) #9
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  tail call void @fuse_conn_put(ptr noundef %7) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fuse_direct_io(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fuse_do_ioctl(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fuse_conn_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fuse_do_open(ptr noundef, i64 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fuse_sync_release(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fuse_dev_release(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cuse_class_waiting_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %num_waiting = getelementptr inbounds %struct.cuse_conn, ptr %1, i32 0, i32 2, i32 27
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %num_waiting, i32 noundef 4) #9
  %2 = ptrtoint ptr %num_waiting to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %num_waiting, align 4
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.21, i32 noundef %3)
  ret i32 %call2
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cuse_class_abort_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readnone %buf, i32 noundef returned %count) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %fc = getelementptr inbounds %struct.cuse_conn, ptr %1, i32 0, i32 2
  tail call void @fuse_abort_conn(ptr noundef %fc) #9
  ret i32 %count
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { nobuiltin nounwind }
attributes #14 = { cold nounwind }
attributes #15 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !15, !17, !19, !21, !23, !25, !27, !29, !31, !32, !33, !34, !35, !37, !39, !41, !42, !43, !44, !46, !47, !48, !50, !51, !52, !53, !55, !57, !58, !59, !61, !62, !63, !65, !67, !68, !70, !72, !73, !75, !77}
!llvm.named.register.sp = !{!78}
!llvm.module.flags = !{!79, !80, !81, !82, !83, !84, !85, !86}
!llvm.ident = !{!87}

!0 = !{ptr @__UNIQUE_ID_alias276, !1, !"__UNIQUE_ID_alias276", i1 false, i1 false}
!1 = !{!"../fs/fuse/cuse.c", i32 610, i32 1}
!2 = !{ptr @__UNIQUE_ID_alias277, !3, !"__UNIQUE_ID_alias277", i1 false, i1 false}
!3 = !{!"../fs/fuse/cuse.c", i32 611, i32 1}
!4 = !{ptr @__initcall__kmod_cuse__278_650_cuse_init6, !5, !"__initcall__kmod_cuse__278_650_cuse_init6", i1 false, i1 false}
!5 = !{!"../fs/fuse/cuse.c", i32 650, i32 1}
!6 = !{ptr @__exitcall_cuse_exit, !7, !"__exitcall_cuse_exit", i1 false, i1 false}
!7 = !{!"../fs/fuse/cuse.c", i32 651, i32 1}
!8 = !{ptr @__UNIQUE_ID_author279, !9, !"__UNIQUE_ID_author279", i1 false, i1 false}
!9 = !{!"../fs/fuse/cuse.c", i32 653, i32 1}
!10 = !{ptr @__UNIQUE_ID_description280, !11, !"__UNIQUE_ID_description280", i1 false, i1 false}
!11 = !{!"../fs/fuse/cuse.c", i32 654, i32 1}
!12 = !{ptr @__UNIQUE_ID_file281, !13, !"__UNIQUE_ID_file281", i1 false, i1 false}
!13 = !{!"../fs/fuse/cuse.c", i32 655, i32 1}
!14 = !{ptr @__UNIQUE_ID_license282, !13, !"__UNIQUE_ID_license282", i1 false, i1 false}
!15 = !{ptr @cuse_class, !16, !"cuse_class", i1 false, i1 false}
!16 = !{!"../fs/fuse/cuse.c", i32 71, i32 22}
!17 = !{ptr @.str, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../fs/fuse/cuse.c", i32 606, i32 11}
!19 = !{ptr @cuse_miscdev, !20, !"cuse_miscdev", i1 false, i1 false}
!20 = !{!"../fs/fuse/cuse.c", i32 604, i32 26}
!21 = !{ptr @cuse_channel_fops, !22, !"cuse_channel_fops", i1 false, i1 false}
!22 = !{!"../fs/fuse/cuse.c", i32 568, i32 31}
!23 = !{ptr @cuse_init.__key, !24, !"__key", i1 false, i1 false}
!24 = !{!"../fs/fuse/cuse.c", i32 629, i32 15}
!25 = !{ptr @cuse_conntbl, !26, !"cuse_conntbl", i1 false, i1 false}
!26 = !{!"../fs/fuse/cuse.c", i32 70, i32 25}
!27 = distinct !{null, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../include/linux/gfp.h", i32 570, i32 2}
!29 = !{ptr @.str.2, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../fs/fuse/cuse.c", i32 354, i32 3}
!31 = !{ptr @.str.3, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.4, !30, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @cuse_process_init_reply._entry, !30, !"_entry", i1 false, i1 false}
!34 = !{ptr @cuse_process_init_reply._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.5, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../fs/fuse/cuse.c", i32 370, i32 20}
!37 = !{ptr @.str.6, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../fs/fuse/cuse.c", i32 283, i32 19}
!39 = !{ptr @.str.7, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../fs/fuse/cuse.c", i32 286, i32 4}
!41 = !{ptr @.str.8, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @cuse_parse_devinfo._entry, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @cuse_parse_devinfo._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.10, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../fs/fuse/cuse.c", i32 290, i32 3}
!46 = !{ptr @cuse_parse_devinfo._entry.9, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @cuse_parse_devinfo._entry_ptr.11, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.12, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../fs/fuse/cuse.c", i32 229, i32 3}
!50 = !{ptr @.str.13, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @cuse_parse_one._entry, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @cuse_parse_one._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.14, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../fs/fuse/cuse.c", i32 237, i32 16}
!55 = !{ptr @.str.16, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../fs/fuse/cuse.c", i32 246, i32 3}
!57 = !{ptr @cuse_parse_one._entry.15, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @cuse_parse_one._entry_ptr.17, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.18, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../fs/fuse/cuse.c", i32 69, i32 8}
!61 = !{ptr @.str.19, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @cuse_lock, !60, !"cuse_lock", i1 false, i1 false}
!63 = !{ptr @cuse_frontend_fops, !64, !"cuse_frontend_fops", i1 false, i1 false}
!64 = !{!"../fs/fuse/cuse.c", i32 181, i32 37}
!65 = !{ptr @cuse_class_dev_groups, !66, !"cuse_class_dev_groups", i1 false, i1 false}
!66 = !{!"../fs/fuse/cuse.c", i32 602, i32 1}
!67 = !{ptr @cuse_class_dev_group, !66, !"cuse_class_dev_group", i1 false, i1 false}
!68 = !{ptr @cuse_class_dev_attrs, !69, !"cuse_class_dev_attrs", i1 false, i1 false}
!69 = !{!"../fs/fuse/cuse.c", i32 597, i32 26}
!70 = !{ptr @.str.20, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../fs/fuse/cuse.c", i32 584, i32 8}
!72 = !{ptr @dev_attr_waiting, !71, !"dev_attr_waiting", i1 false, i1 false}
!73 = !{ptr @.str.21, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../fs/fuse/cuse.c", i32 582, i32 22}
!75 = !{ptr @.str.22, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../fs/fuse/cuse.c", i32 595, i32 8}
!77 = !{ptr @dev_attr_abort, !76, !"dev_attr_abort", i1 false, i1 false}
!78 = !{!"sp"}
!79 = !{i32 1, !"wchar_size", i32 2}
!80 = !{i32 1, !"min_enum_size", i32 4}
!81 = !{i32 8, !"branch-target-enforcement", i32 0}
!82 = !{i32 8, !"sign-return-address", i32 0}
!83 = !{i32 8, !"sign-return-address-all", i32 0}
!84 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!85 = !{i32 7, !"uwtable", i32 1}
!86 = !{i32 7, !"frame-pointer", i32 2}
!87 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!88 = !{!"auto-init"}
!89 = !{i8 0, i8 2}
