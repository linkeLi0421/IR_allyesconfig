; ModuleID = '/llk/IR_all_yes/drivers/i2c/i2c-dev.c_pt.bc'
source_filename = "../drivers/i2c/i2c-dev.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.device_type = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.i2c_dev = type { %struct.list_head, ptr, %struct.device, %struct.cdev }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.class = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.78, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.79, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.80, ptr, %struct.address_space, %struct.list_head, %union.anon.81, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.78 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.79 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.80 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%union.anon.81 = type { ptr }
%struct.i2c_rdwr_ioctl_data = type { ptr, i32 }
%struct.i2c_smbus_ioctl_data = type { i8, i8, i32, ptr }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%union.i2c_smbus_data = type { i16, [32 x i8] }

@i2c_bus_type = external dso_local global %struct.bus_type, align 4
@i2cdev_notifier = internal global { %struct.notifier_block, [20 x i8] } { %struct.notifier_block { ptr @i2cdev_notifier_call, ptr null, i32 0 }, [20 x i8] zeroinitializer }, align 32
@i2c_dev_class = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__UNIQUE_ID_author296 = internal constant [47 x i8] c"i2c_dev.author=Frodo Looijaard <frodol@dds.nl>\00", section ".modinfo", align 1
@__UNIQUE_ID_author297 = internal constant [55 x i8] c"i2c_dev.author=Simon G. Vogl <simon@tk.uni-linz.ac.at>\00", section ".modinfo", align 1
@__UNIQUE_ID_description298 = internal constant [44 x i8] c"i2c_dev.description=I2C /dev entries driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file299 = internal constant [33 x i8] c"i2c_dev.file=drivers/i2c/i2c-dev\00", section ".modinfo", align 1
@__UNIQUE_ID_license300 = internal constant [20 x i8] c"i2c_dev.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_i2c_dev__301_776_i2c_dev_init6 = internal global ptr @i2c_dev_init, section ".initcall6.init", align 4
@__exitcall_i2c_dev_exit = internal global ptr @i2c_dev_exit, section ".exitcall.exit", align 4
@i2c_adapter_type = external dso_local global %struct.device_type, align 4
@i2cdev_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr @i2cdev_read, ptr @i2cdev_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @i2cdev_ioctl, ptr null, ptr null, i32 0, ptr @i2cdev_open, ptr null, ptr @i2cdev_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"i2c-%d\00", [25 x i8] zeroinitializer }, align 32
@i2cdev_attach_adapter.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 0, i8 -87, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"i2c_dev\00", [24 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"i2cdev_attach_adapter\00", [42 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"drivers/i2c/i2c-dev.c\00", [42 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"adapter [%s] registered as minor %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"i2c_dev: adapter [%s] registered as minor %d\0A\00", [50 x i8] zeroinitializer }, align 32
@get_free_i2c_dev._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.3, i32 73, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013i2c_dev: Out of device minors (%d)\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"get_free_i2c_dev\00", [47 x i8] zeroinitializer }, align 32
@get_free_i2c_dev._entry_ptr = internal global ptr @get_free_i2c_dev._entry, section ".printk_index", align 4
@i2c_dev_list_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.8, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@i2c_dev_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @i2c_dev_list, ptr @i2c_dev_list }, [24 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.8 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"i2c_dev_list_lock\00", [46 x i8] zeroinitializer }, align 32
@i2cdev_read.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.9, ptr @.str.3, ptr @.str.10, i8 0, i8 37, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"i2cdev_read\00", [20 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"i2c-%d reading %zu bytes.\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"i2c_dev: i2c-%d reading %zu bytes.\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@i2cdev_write.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.15, ptr @.str.3, ptr @.str.16, i8 0, i8 43, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"i2cdev_write\00", [19 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"i2c-%d writing %zu bytes.\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"i2c_dev: i2c-%d writing %zu bytes.\0A\00", [60 x i8] zeroinitializer }, align 32
@i2cdev_ioctl.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.18, ptr @.str.3, ptr @.str.19, i8 0, i8 99, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"i2cdev_ioctl\00", [19 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"ioctl, cmd=0x%02x, arg=0x%02lx\0A\00", [32 x i8] zeroinitializer }, align 32
@__const.i2cdev_ioctl_smbus.temp = private unnamed_addr constant { i8, [33 x i8] } { i8 0, [33 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF" }, align 2
@i2cdev_ioctl_smbus.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.20, ptr @.str.3, ptr @.str.21, i8 0, i8 82, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"i2cdev_ioctl_smbus\00", [45 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"size out of range (%x) in ioctl I2C_SMBUS.\0A\00", [52 x i8] zeroinitializer }, align 32
@i2cdev_ioctl_smbus.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.20, ptr @.str.3, ptr @.str.22, i8 0, i8 84, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"read_write out of range (%x) in ioctl I2C_SMBUS.\0A\00", [46 x i8] zeroinitializer }, align 32
@i2cdev_ioctl_smbus.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.20, ptr @.str.3, ptr @.str.23, i8 0, i8 88, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"data is NULL pointer in ioctl I2C_SMBUS.\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"i2c-dev %d\00", [21 x i8] zeroinitializer }, align 32
@i2cdev_detach_adapter.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.25, ptr @.str.3, ptr @.str.26, i8 0, i8 -82, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"i2cdev_detach_adapter\00", [42 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"adapter [%s] unregistered\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"i2c_dev: adapter [%s] unregistered\0A\00", [60 x i8] zeroinitializer }, align 32
@i2c_dev_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.3, i32 731, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016i2c_dev: i2c /dev entries driver\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"i2c_dev_init\00", [19 x i8] zeroinitializer }, align 32
@i2c_dev_init._entry_ptr = internal global ptr @i2c_dev_init._entry, section ".printk_index", align 4
@.str.30 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"i2c\00", [28 x i8] zeroinitializer }, align 32
@i2c_dev_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.31 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"i2c-dev\00", [24 x i8] zeroinitializer }, align 32
@i2c_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @i2c_group, ptr null], [24 x i8] zeroinitializer }, align 32
@i2c_dev_init._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.29, ptr @.str.3, i32 759, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013i2c_dev: Driver Initialisation failed\0A\00", [55 x i8] zeroinitializer }, align 32
@i2c_dev_init._entry_ptr.34 = internal global ptr @i2c_dev_init._entry.32, section ".printk_index", align 4
@i2c_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @i2c_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@i2c_attrs = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @dev_attr_name, ptr null], [24 x i8] zeroinitializer }, align 32
@dev_attr_name = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.35, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @name_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"name\00", [27 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@switch.table.i2cdev_ioctl_smbus = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 1, i32 2, i32 2], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.37 = internal global [11 x i64] [i64 9, i64 32, i64 1793, i64 1794, i64 1795, i64 1796, i64 1797, i64 1798, i64 1799, i64 1800, i64 1824]
@__sancov_gen_cov_switch_values.38 = internal global [5 x i64] [i64 3, i64 32, i64 4, i64 7, i64 8]
@__sancov_gen_cov_switch_values.39 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 7]
@___asan_gen_.40 = private unnamed_addr constant [16 x i8] c"i2cdev_notifier\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 717, i32 30 }
@___asan_gen_.43 = private unnamed_addr constant [14 x i8] c"i2c_dev_class\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 639, i32 22 }
@___asan_gen_.46 = private unnamed_addr constant [12 x i8] c"i2cdev_fops\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 626, i32 37 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 671, i32 30 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 679, i32 2 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 73, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant [18 x i8] c"i2c_dev_list_lock\00", align 1
@___asan_gen_.79 = private unnamed_addr constant [13 x i8] c"i2c_dev_list\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 50, i32 8 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 51, i32 8 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 149, i32 2 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 230, i32 6 }
@___asan_gen_.98 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 214, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 174, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 173, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 397, i32 2 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 327, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 336, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 353, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 607, i32 40 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 698, i32 2 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 731, i32 2 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 733, i32 64 }
@___asan_gen_.154 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 737, i32 18 }
@___asan_gen_.160 = private unnamed_addr constant [11 x i8] c"i2c_groups\00", align 1
@___asan_gen_.163 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 759, i32 2 }
@___asan_gen_.169 = private unnamed_addr constant [10 x i8] c"i2c_group\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 113, i32 1 }
@___asan_gen_.172 = private unnamed_addr constant [10 x i8] c"i2c_attrs\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 109, i32 26 }
@___asan_gen_.175 = private unnamed_addr constant [14 x i8] c"dev_attr_name\00", align 1
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 107, i32 8 }
@___asan_gen_.181 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.182 = private constant [25 x i8] c"../drivers/i2c/i2c-dev.c\00", align 1
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 105, i32 25 }
@___asan_gen_.184 = private unnamed_addr constant [32 x i8] c"switch.table.i2cdev_ioctl_smbus\00", align 1
@llvm.compiler.used = appending global [60 x ptr] [ptr @__UNIQUE_ID_author296, ptr @__UNIQUE_ID_author297, ptr @__UNIQUE_ID_description298, ptr @__UNIQUE_ID_file299, ptr @__UNIQUE_ID_license300, ptr @__exitcall_i2c_dev_exit, ptr @__initcall__kmod_i2c_dev__301_776_i2c_dev_init6, ptr @get_free_i2c_dev._entry, ptr @get_free_i2c_dev._entry_ptr, ptr @i2c_dev_exit, ptr @i2c_dev_init._entry, ptr @i2c_dev_init._entry.32, ptr @i2c_dev_init._entry_ptr, ptr @i2c_dev_init._entry_ptr.34, ptr @i2cdev_notifier, ptr @i2c_dev_class, ptr @i2cdev_fops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @i2c_dev_list_lock, ptr @i2c_dev_list, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @i2c_dev_init.__key, ptr @.str.31, ptr @i2c_groups, ptr @.str.33, ptr @i2c_group, ptr @i2c_attrs, ptr @dev_attr_name, ptr @.str.35, ptr @.str.36, ptr @switch.table.i2cdev_ioctl_smbus], section "llvm.metadata"
@0 = internal global [49 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2cdev_notifier to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_dev_class to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2cdev_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_free_i2c_dev._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_dev_list_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_dev_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_dev_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_dev_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_dev_init._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_attrs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_name to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.i2cdev_ioctl_smbus to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @i2c_dev_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 @bus_unregister_notifier(ptr noundef nonnull @i2c_bus_type, ptr noundef nonnull @i2cdev_notifier) #11
  %call1 = tail call i32 @i2c_for_each_dev(ptr noundef null, ptr noundef nonnull @i2cdev_detach_adapter) #11
  %0 = load ptr, ptr @i2c_dev_class, align 4
  tail call void @class_destroy(ptr noundef %0) #11
  tail call void @unregister_chrdev_region(i32 noundef 93323264, i32 noundef 1048576) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bus_unregister_notifier(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_for_each_dev(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i2cdev_detach_adapter(ptr noundef %dev, ptr nocapture noundef readnone %dummy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 4
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %type, align 4
  %cmp.not = icmp eq ptr %1, @i2c_adapter_type
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %nr = getelementptr i8, ptr %dev, i32 932
  %2 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nr, align 4
  tail call void @_raw_spin_lock(ptr noundef nonnull @i2c_dev_list_lock) #11
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end
  %i2c_dev.0.in.i = phi ptr [ @i2c_dev_list, %if.end ], [ %i2c_dev.0.i, %for.body.i.for.cond.i_crit_edge ]
  %4 = ptrtoint ptr %i2c_dev.0.in.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %i2c_dev.0.i = load ptr, ptr %i2c_dev.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %i2c_dev.0.i, @i2c_dev_list
  br i1 %cmp.not.i, label %i2c_dev_get_by_minor.exit.thread, label %for.body.i

i2c_dev_get_by_minor.exit.thread:                 ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_raw_spin_unlock(ptr noundef nonnull @i2c_dev_list_lock) #11
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.i
  %adap.i = getelementptr inbounds %struct.i2c_dev, ptr %i2c_dev.0.i, i32 0, i32 1
  %5 = ptrtoint ptr %adap.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %adap.i, align 8
  %nr.i = getelementptr inbounds %struct.i2c_adapter, ptr %6, i32 0, i32 11
  %7 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %nr.i, align 4
  %cmp1.i = icmp eq i32 %8, %3
  br i1 %cmp1.i, label %i2c_dev_get_by_minor.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i

i2c_dev_get_by_minor.exit:                        ; preds = %for.body.i
  tail call void @_raw_spin_unlock(ptr noundef nonnull @i2c_dev_list_lock) #11
  %tobool.not = icmp eq ptr %i2c_dev.0.i, null
  br i1 %tobool.not, label %i2c_dev_get_by_minor.exit.cleanup_crit_edge, label %if.end2

i2c_dev_get_by_minor.exit.cleanup_crit_edge:      ; preds = %i2c_dev_get_by_minor.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end2:                                          ; preds = %i2c_dev_get_by_minor.exit
  tail call void @_raw_spin_lock(ptr noundef nonnull @i2c_dev_list_lock) #11
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %i2c_dev.0.i) #11
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end2.put_i2c_dev.exit_crit_edge

if.end2.put_i2c_dev.exit_crit_edge:               ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #13
  br label %put_i2c_dev.exit

if.end.i.i.i:                                     ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %i2c_dev.0.i, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i.i.i, align 4
  %11 = ptrtoint ptr %i2c_dev.0.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %i2c_dev.0.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev1.i.i.i.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %12, ptr %10, align 4
  br label %put_i2c_dev.exit

put_i2c_dev.exit:                                 ; preds = %if.end.i.i.i, %if.end2.put_i2c_dev.exit_crit_edge
  %15 = ptrtoint ptr %i2c_dev.0.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 256 to ptr), ptr %i2c_dev.0.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %i2c_dev.0.i, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef nonnull @i2c_dev_list_lock) #11
  %cdev.i = getelementptr inbounds %struct.i2c_dev, ptr %i2c_dev.0.i, i32 0, i32 3
  %dev.i = getelementptr inbounds %struct.i2c_dev, ptr %i2c_dev.0.i, i32 0, i32 2
  tail call void @cdev_device_del(ptr noundef %cdev.i, ptr noundef %dev.i) #11
  tail call void @put_device(ptr noundef %dev.i) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i2cdev_detach_adapter.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@i2cdev_detach_adapter, %cleanup)) #11
          to label %if.then9 [label %cleanup], !srcloc !110

if.then9:                                         ; preds = %put_i2c_dev.exit
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr i8, ptr %dev, i32 936
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @i2cdev_detach_adapter.__UNIQUE_ID_ddebug295, ptr noundef nonnull @.str.27, ptr noundef %name) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then9, %put_i2c_dev.exit, %i2c_dev_get_by_minor.exit.cleanup_crit_edge, %i2c_dev_get_by_minor.exit.thread, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @class_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_chrdev_region(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @i2c_dev_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28) #14
  %call1 = tail call i32 @register_chrdev_region(i32 noundef 93323264, i32 noundef 1048576, ptr noundef nonnull @.str.30) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.do.end15_crit_edge

entry.do.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end15

if.end:                                           ; preds = %entry
  %call3 = tail call ptr @__class_create(ptr noundef null, ptr noundef nonnull @.str.31, ptr noundef nonnull @i2c_dev_init.__key) #11
  store ptr %call3, ptr @i2c_dev_class, align 4
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %0 = ptrtoint ptr %call3 to i32
  br label %out_unreg_chrdev

if.end7:                                          ; preds = %if.end
  %dev_groups = getelementptr inbounds %struct.class, ptr %call3, i32 0, i32 3
  %1 = ptrtoint ptr %dev_groups to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @i2c_groups, ptr %dev_groups, align 4
  %call8 = tail call i32 @bus_register_notifier(ptr noundef nonnull @i2c_bus_type, ptr noundef nonnull @i2cdev_notifier) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %out_unreg_class

if.end11:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  %call12 = tail call i32 @i2c_for_each_dev(ptr noundef null, ptr noundef nonnull @i2cdev_attach_adapter) #11
  br label %cleanup

out_unreg_class:                                  ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  %2 = load ptr, ptr @i2c_dev_class, align 4
  tail call void @class_destroy(ptr noundef %2) #11
  br label %out_unreg_chrdev

out_unreg_chrdev:                                 ; preds = %out_unreg_class, %if.then5
  %res.0 = phi i32 [ %0, %if.then5 ], [ %call8, %out_unreg_class ]
  tail call void @unregister_chrdev_region(i32 noundef 93323264, i32 noundef 1048576) #11
  br label %do.end15

do.end15:                                         ; preds = %out_unreg_chrdev, %entry.do.end15_crit_edge
  %res.1 = phi i32 [ %call1, %entry.do.end15_crit_edge ], [ %res.0, %out_unreg_chrdev ]
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end15, %if.end11
  %retval.0 = phi i32 [ %res.1, %do.end15 ], [ 0, %if.end11 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i2cdev_notifier_call(ptr nocapture noundef readnone %nb, i32 noundef %action, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %action to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %action, label %entry.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb1
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 @i2cdev_attach_adapter(ptr noundef %data, ptr noundef null)
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call2 = tail call i32 @i2cdev_detach_adapter(ptr noundef %data, ptr noundef null)
  br label %cleanup

cleanup:                                          ; preds = %sw.bb1, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.bb1 ], [ %call, %sw.bb ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i2cdev_attach_adapter(ptr noundef %dev, ptr nocapture noundef readnone %dummy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 4
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %type, align 4
  %cmp.not = icmp eq ptr %1, @i2c_adapter_type
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, ptr %dev, i32 -200
  %nr.i = getelementptr i8, ptr %dev, i32 932
  %2 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048575, i32 %3)
  %cmp.i = icmp ugt i32 %3, 1048575
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %3) #14
  br label %if.then2

if.end.i:                                         ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 1104) #15
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.end.i.if.then2_crit_edge, label %if.end6.i

if.end.i.if.then2_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then2

if.end6.i:                                        ; preds = %if.end.i
  %adap7.i = getelementptr inbounds %struct.i2c_dev, ptr %call7.i.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %adap7.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %add.ptr, ptr %adap7.i, align 8
  tail call void @_raw_spin_lock(ptr noundef nonnull @i2c_dev_list_lock) #11
  %6 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @i2c_dev_list, i32 0, i32 1), align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i, ptr noundef %6, ptr noundef nonnull @i2c_dev_list) #11
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end6.i.get_free_i2c_dev.exit_crit_edge

if.end6.i.get_free_i2c_dev.exit_crit_edge:        ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %get_free_i2c_dev.exit

if.end.i.i.i:                                     ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #13
  store ptr %call7.i.i.i, ptr getelementptr inbounds (%struct.list_head, ptr @i2c_dev_list, i32 0, i32 1), align 4
  %7 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @i2c_dev_list, ptr %call7.i.i.i, align 8
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %6, ptr %prev3.i.i.i, align 4
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %call7.i.i.i, ptr %6, align 4
  br label %get_free_i2c_dev.exit

get_free_i2c_dev.exit:                            ; preds = %if.end.i.i.i, %if.end6.i.get_free_i2c_dev.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @i2c_dev_list_lock) #11
  %cmp.i51 = icmp ugt ptr %call7.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i51, label %get_free_i2c_dev.exit.if.then2_crit_edge, label %if.end4

get_free_i2c_dev.exit.if.then2_crit_edge:         ; preds = %get_free_i2c_dev.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then2

if.then2:                                         ; preds = %get_free_i2c_dev.exit.if.then2_crit_edge, %if.end.i.if.then2_crit_edge, %do.end.i
  %retval.0.i5057 = phi ptr [ %call7.i.i.i, %get_free_i2c_dev.exit.if.then2_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.i.if.then2_crit_edge ], [ inttoptr (i32 -19 to ptr), %do.end.i ]
  %10 = ptrtoint ptr %retval.0.i5057 to i32
  br label %cleanup

if.end4:                                          ; preds = %get_free_i2c_dev.exit
  %cdev = getelementptr inbounds %struct.i2c_dev, ptr %call7.i.i.i, i32 0, i32 3
  tail call void @cdev_init(ptr noundef %cdev, ptr noundef nonnull @i2cdev_fops) #11
  %owner = getelementptr inbounds %struct.i2c_dev, ptr %call7.i.i.i, i32 0, i32 3, i32 1
  %11 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %owner, align 8
  %dev6 = getelementptr inbounds %struct.i2c_dev, ptr %call7.i.i.i, i32 0, i32 2
  tail call void @device_initialize(ptr noundef %dev6) #11
  %12 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %nr.i, align 4
  %or = or i32 %13, 93323264
  %devt = getelementptr inbounds %struct.i2c_dev, ptr %call7.i.i.i, i32 0, i32 2, i32 29
  %14 = ptrtoint ptr %devt to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %or, ptr %devt, align 8
  %15 = load ptr, ptr @i2c_dev_class, align 4
  %class = getelementptr inbounds %struct.i2c_dev, ptr %call7.i.i.i, i32 0, i32 2, i32 33
  %16 = ptrtoint ptr %class to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %class, align 4
  %parent = getelementptr inbounds %struct.i2c_dev, ptr %call7.i.i.i, i32 0, i32 2, i32 1
  %17 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %dev, ptr %parent, align 8
  %release = getelementptr inbounds %struct.i2c_dev, ptr %call7.i.i.i, i32 0, i32 2, i32 35
  %18 = ptrtoint ptr %release to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @i2cdev_dev_release, ptr %release, align 4
  %call14 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %dev6, ptr noundef nonnull @.str, i32 noundef %13) #11
  %call17 = tail call i32 @cdev_device_add(ptr noundef %cdev, ptr noundef %dev6) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool.not = icmp eq i32 %call17, 0
  br i1 %tobool.not, label %do.body, label %if.then18

if.then18:                                        ; preds = %if.end4
  tail call void @_raw_spin_lock(ptr noundef nonnull @i2c_dev_list_lock) #11
  %call.i.i.i52 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %call7.i.i.i) #11
  br i1 %call.i.i.i52, label %if.end.i.i.i53, label %if.then18.put_i2c_dev.exit_crit_edge

if.then18.put_i2c_dev.exit_crit_edge:             ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #13
  br label %put_i2c_dev.exit

if.end.i.i.i53:                                   ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i, i32 0, i32 1
  %19 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %prev.i.i.i, align 4
  %21 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %call7.i.i.i, align 8
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %20, ptr %prev1.i.i.i.i, align 4
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %22, ptr %20, align 4
  br label %put_i2c_dev.exit

put_i2c_dev.exit:                                 ; preds = %if.end.i.i.i53, %if.then18.put_i2c_dev.exit_crit_edge
  %25 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr inttoptr (i32 256 to ptr), ptr %call7.i.i.i, align 8
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i, i32 0, i32 1
  %26 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef nonnull @i2c_dev_list_lock) #11
  tail call void @put_device(ptr noundef %dev6) #11
  br label %cleanup

do.body:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i2cdev_attach_adapter.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@i2cdev_attach_adapter, %cleanup)) #11
          to label %if.then26 [label %cleanup], !srcloc !110

if.then26:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr i8, ptr %dev, i32 936
  %27 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %nr.i, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @i2cdev_attach_adapter.__UNIQUE_ID_ddebug294, ptr noundef nonnull @.str.5, ptr noundef %name, i32 noundef %28) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then26, %do.body, %put_i2c_dev.exit, %if.then2, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %10, %if.then2 ], [ %call17, %put_i2c_dev.exit ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.then26 ], [ 0, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cdev_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_initialize(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @i2cdev_dev_release(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -16
  tail call void @kfree(ptr noundef %add.ptr) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cdev_device_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @no_llseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i2cdev_read(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef readnone %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = tail call i32 @llvm.umin.i32(i32 %count, i32 8192)
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %2, i32 noundef 3520) #16
  %cmp1 = icmp eq ptr %call9.i.i, null
  br i1 %cmp1, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i2cdev_read.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@i2cdev_read, %do.end)) #11
          to label %if.then9 [label %do.end], !srcloc !110

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %3 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %f_inode.i, align 8
  %i_rdev.i = getelementptr inbounds %struct.inode, ptr %4, i32 0, i32 13
  %5 = ptrtoint ptr %i_rdev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %i_rdev.i, align 8
  %and.i = and i32 %6, 1048575
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @i2cdev_read.__UNIQUE_ID_ddebug288, ptr noundef nonnull @.str.11, i32 noundef %and.i, i32 noundef %2) #11
  br label %do.end

do.end:                                           ; preds = %if.then9, %do.body
  %call.i = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %1, ptr noundef nonnull %call9.i.i, i32 noundef %2, i16 noundef zeroext 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp14 = icmp sgt i32 %call.i, -1
  br i1 %cmp14, label %if.then.i.i.i, label %do.end.if.end20_crit_edge

do.end.if.end20_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20

if.then.i.i.i:                                    ; preds = %do.end
  tail call void @__check_object_size(ptr noundef nonnull %call9.i.i, i32 noundef %call.i, i1 noundef zeroext true) #11
  tail call void @__might_fault(ptr noundef nonnull @.str.14, i32 noundef 174) #11
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i, label %if.then.i.i.i.copy_to_user.exit_crit_edge, label %if.end.i.i

if.then.i.i.i.copy_to_user.exit_crit_edge:        ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %copy_to_user.exit

if.end.i.i:                                       ; preds = %if.then.i.i.i
  %7 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 %call.i, i32 -1226833920) #17, !srcloc !111
  %asmresult.i.i = extractvalue { i32, i32 } %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i.copy_to_user.exit_crit_edge

if.end.i.i.copy_to_user.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull %call9.i.i, i32 noundef %call.i) #11
  %call.i12.i.i = tail call i32 @arm_copy_to_user(ptr noundef %buf, ptr noundef nonnull %call9.i.i, i32 noundef %call.i) #11
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i.copy_to_user.exit_crit_edge, %if.then.i.i.i.copy_to_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ %call.i, %if.then.i.i.i.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %call.i, %if.end.i.i.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i)
  %tobool17.not = icmp eq i32 %n.addr.0.i, 0
  %spec.select = select i1 %tobool17.not, i32 %call.i, i32 -14
  br label %if.end20

if.end20:                                         ; preds = %copy_to_user.exit, %do.end.if.end20_crit_edge
  %ret.0 = phi i32 [ %call.i, %do.end.if.end20_crit_edge ], [ %spec.select, %copy_to_user.exit ]
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.end20 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i2cdev_write(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef readnone %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = tail call i32 @llvm.umin.i32(i32 %count, i32 8192)
  %call = tail call ptr @memdup_user(ptr noundef %buf, i32 noundef %2) #11
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then2, label %do.body

if.then2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %3 = ptrtoint ptr %call to i32
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i2cdev_write.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@i2cdev_write, %do.end)) #11
          to label %if.then10 [label %do.end], !srcloc !110

if.then10:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %4 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %f_inode.i, align 8
  %i_rdev.i = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 13
  %6 = ptrtoint ptr %i_rdev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %i_rdev.i, align 8
  %and.i = and i32 %7, 1048575
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @i2cdev_write.__UNIQUE_ID_ddebug289, ptr noundef nonnull @.str.17, i32 noundef %and.i, i32 noundef %2) #11
  br label %do.end

do.end:                                           ; preds = %if.then10, %do.body
  %call.i = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %1, ptr noundef %call, i32 noundef %2, i16 noundef zeroext 0) #11
  tail call void @kfree(ptr noundef %call) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then2
  %retval.0 = phi i32 [ %3, %if.then2 ], [ %call.i, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i2cdev_ioctl(ptr nocapture noundef readonly %file, i32 noundef %cmd, i32 noundef %arg) #2 align 64 {
entry:
  %addr.addr.i = alloca i32, align 4
  %rdwr_arg = alloca %struct.i2c_rdwr_ioctl_data, align 4
  %data_arg = alloca %struct.i2c_smbus_ioctl_data, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i2cdev_ioctl.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@i2cdev_ioctl, %do.end)) #11
          to label %if.then [label %do.end], !srcloc !110

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adapter, align 8
  %dev = getelementptr inbounds %struct.i2c_adapter, ptr %3, i32 0, i32 9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i2cdev_ioctl.__UNIQUE_ID_ddebug293, ptr noundef %dev, ptr noundef nonnull @.str.19, i32 noundef %cmd, i32 noundef %arg) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %4 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.37)
  switch i32 %cmd, label %do.end.cleanup99_crit_edge [
    i32 1795, label %do.end.sw.bb_crit_edge
    i32 1798, label %do.end.sw.bb_crit_edge176
    i32 1796, label %sw.bb19
    i32 1800, label %sw.bb30
    i32 1797, label %sw.bb43
    i32 1799, label %sw.bb52
    i32 1824, label %sw.bb78
    i32 1793, label %sw.bb85
    i32 1794, label %sw.bb91
  ]

do.end.sw.bb_crit_edge176:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

do.end.sw.bb_crit_edge:                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

do.end.cleanup99_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup99

sw.bb:                                            ; preds = %do.end.sw.bb_crit_edge, %do.end.sw.bb_crit_edge176
  call void @__sanitizer_cov_trace_const_cmp4(i32 1023, i32 %arg)
  %cmp = icmp ugt i32 %arg, 1023
  br i1 %cmp, label %sw.bb.cleanup99_crit_edge, label %lor.lhs.false

sw.bb.cleanup99_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup99

lor.lhs.false:                                    ; preds = %sw.bb
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %1, align 8
  %7 = and i16 %6, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %cmp4 = icmp eq i16 %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %arg)
  %cmp6 = icmp ugt i32 %arg, 127
  %or.cond = and i1 %cmp6, %cmp4
  br i1 %or.cond, label %lor.lhs.false.cleanup99_crit_edge, label %if.end9

lor.lhs.false.cleanup99_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup99

if.end9:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp4(i32 1795, i32 %cmd)
  %cmp10 = icmp eq i32 %cmd, 1795
  br i1 %cmp10, label %land.lhs.true12, label %if.end9.if.end17_crit_edge

if.end9.if.end17_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17

land.lhs.true12:                                  ; preds = %if.end9
  %adapter13 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %adapter13 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %adapter13, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %addr.addr.i)
  %10 = ptrtoint ptr %addr.addr.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %arg, ptr %addr.addr.i, align 4
  %parent1.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %9, i32 0, i32 9, i32 1
  %11 = ptrtoint ptr %parent1.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %parent1.i.i, align 8
  %cmp.not.i.i = icmp eq ptr %12, null
  br i1 %cmp.not.i.i, label %land.lhs.true12.i2cdev_check_addr.exit_crit_edge, label %land.lhs.true.i.i159

land.lhs.true12.i2cdev_check_addr.exit_crit_edge: ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #13
  br label %i2cdev_check_addr.exit

land.lhs.true.i.i159:                             ; preds = %land.lhs.true12
  %type.i.i = getelementptr inbounds %struct.device, ptr %12, i32 0, i32 4
  %13 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %type.i.i, align 4
  %cmp2.i.i = icmp ne ptr %14, @i2c_adapter_type
  %add.ptr.i.i158 = getelementptr i8, ptr %12, i32 -200
  %tobool.not.i = icmp eq ptr %add.ptr.i.i158, null
  %or.cond.i = select i1 %cmp2.i.i, i1 true, i1 %tobool.not.i
  br i1 %or.cond.i, label %land.lhs.true.i.i159.i2cdev_check_addr.exit_crit_edge, label %if.end.i160

land.lhs.true.i.i159.i2cdev_check_addr.exit_crit_edge: ; preds = %land.lhs.true.i.i159
  call void @__sanitizer_cov_trace_pc() #13
  br label %i2cdev_check_addr.exit

if.end.i160:                                      ; preds = %land.lhs.true.i.i159
  %call1.i = tail call fastcc i32 @i2cdev_check_mux_parents(ptr noundef nonnull %add.ptr.i.i158, i32 noundef %arg) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i160.i2cdev_check_addr.exit_crit_edge, label %i2cdev_check_addr.exit.thread

if.end.i160.i2cdev_check_addr.exit_crit_edge:     ; preds = %if.end.i160
  call void @__sanitizer_cov_trace_pc() #13
  br label %i2cdev_check_addr.exit

i2cdev_check_addr.exit.thread:                    ; preds = %if.end.i160
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %addr.addr.i)
  br label %cleanup99

i2cdev_check_addr.exit:                           ; preds = %if.end.i160.i2cdev_check_addr.exit_crit_edge, %land.lhs.true.i.i159.i2cdev_check_addr.exit_crit_edge, %land.lhs.true12.i2cdev_check_addr.exit_crit_edge
  %dev.i = getelementptr inbounds %struct.i2c_adapter, ptr %9, i32 0, i32 9
  %call4.i = call i32 @device_for_each_child(ptr noundef %dev.i, ptr noundef nonnull %addr.addr.i, ptr noundef nonnull @i2cdev_check_mux_children) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %addr.addr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool15.not = icmp eq i32 %call4.i, 0
  br i1 %tobool15.not, label %i2cdev_check_addr.exit.if.end17_crit_edge, label %i2cdev_check_addr.exit.cleanup99_crit_edge

i2cdev_check_addr.exit.cleanup99_crit_edge:       ; preds = %i2cdev_check_addr.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup99

i2cdev_check_addr.exit.if.end17_crit_edge:        ; preds = %i2cdev_check_addr.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17

if.end17:                                         ; preds = %i2cdev_check_addr.exit.if.end17_crit_edge, %if.end9.if.end17_crit_edge
  %conv18 = trunc i32 %arg to i16
  %addr = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 1
  %15 = ptrtoint ptr %addr to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv18, ptr %addr, align 2
  br label %cleanup99

sw.bb19:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %arg)
  %tobool20.not = icmp eq i32 %arg, 0
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %1, align 8
  %18 = and i16 %17, -17
  %masksel175 = select i1 %tobool20.not, i16 0, i16 16
  %storemerge131 = or i16 %18, %masksel175
  store i16 %storemerge131, ptr %1, align 8
  br label %cleanup99

sw.bb30:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %arg)
  %tobool31.not = icmp eq i32 %arg, 0
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %1, align 8
  %21 = and i16 %20, -5
  %masksel = select i1 %tobool31.not, i16 0, i16 4
  %storemerge = or i16 %21, %masksel
  store i16 %storemerge, ptr %1, align 8
  br label %cleanup99

sw.bb43:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %adapter44 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 3
  %22 = ptrtoint ptr %adapter44 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %adapter44, align 8
  %algo.i = getelementptr inbounds %struct.i2c_adapter, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %algo.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %algo.i, align 8
  %functionality.i = getelementptr inbounds %struct.i2c_algorithm, ptr %25, i32 0, i32 4
  %26 = ptrtoint ptr %functionality.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %functionality.i, align 4
  %call.i = tail call i32 %27(ptr noundef %23) #11
  %28 = inttoptr i32 %arg to ptr
  tail call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 432) #11
  %29 = tail call i32 @llvm.read_register.i32(metadata !100) #11
  %and.i.i.i = and i32 %29, -16384
  %30 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 4
  %31 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #8, !srcloc !112
  %and.i = and i32 %31, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #11, !srcloc !113
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !114
  %32 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %28, i32 %call.i, i32 -1226833921) #11, !srcloc !115
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %31) #11, !srcloc !113
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !114
  br label %cleanup99

sw.bb52:                                          ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rdwr_arg) #11
  %33 = ptrtoint ptr %rdwr_arg to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr inttoptr (i32 -1 to ptr), ptr %rdwr_arg, align 4, !annotation !116
  %34 = getelementptr inbounds %struct.i2c_rdwr_ioctl_data, ptr %rdwr_arg, i32 0, i32 1
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 -1, ptr %34, align 4, !annotation !116
  %36 = inttoptr i32 %arg to ptr
  tail call void @__might_fault(ptr noundef nonnull @.str.14, i32 noundef 156) #11
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i, label %sw.bb52.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

sw.bb52.if.then11.i.i_crit_edge:                  ; preds = %sw.bb52
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %sw.bb52
  %37 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %36, i32 8, i32 -1226833920) #17, !srcloc !117
  %asmresult.i.i = extractvalue { i32, i32 } %37, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !118

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %rdwr_arg, i32 noundef 8) #11
  %38 = call i32 @llvm.read_register.i32(metadata !100) #11
  %and.i.i.i.i.i.i = and i32 %38, -16384
  %39 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 4
  %40 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #8, !srcloc !112
  %and.i.i.i.i = and i32 %40, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #11, !srcloc !113
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !114
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %rdwr_arg, ptr noundef %36, i32 noundef 8) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %40) #11, !srcloc !113
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !114
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end56, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !118

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %sw.bb52.if.then11.i.i_crit_edge
  %res.0.i.i167 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 8, %sw.bb52.if.then11.i.i_crit_edge ], [ 8, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 8, %res.0.i.i167
  %add.ptr.i.i = getelementptr i8, ptr %rdwr_arg, i32 %sub.i.i
  %41 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i167)
  br label %cleanup

if.end56:                                         ; preds = %if.end.i.i
  %42 = ptrtoint ptr %rdwr_arg to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %rdwr_arg, align 4
  %tobool57.not = icmp eq ptr %43, null
  br i1 %tobool57.not, label %if.end56.cleanup_crit_edge, label %lor.lhs.false58

if.end56.cleanup_crit_edge:                       ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false58:                                  ; preds = %if.end56
  %44 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %34, align 4
  %46 = add i32 %45, -43
  call void @__sanitizer_cov_trace_const_cmp4(i32 -42, i32 %46)
  %47 = icmp ult i32 %46, -42
  br i1 %47, label %lor.lhs.false58.cleanup_crit_edge, label %if.end67

lor.lhs.false58.cleanup_crit_edge:                ; preds = %lor.lhs.false58
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end67:                                         ; preds = %lor.lhs.false58
  %mul = mul nuw nsw i32 %45, 12
  %call70 = call ptr @memdup_user(ptr noundef nonnull %43, i32 noundef %mul) #11
  %cmp.i161 = icmp ugt ptr %call70, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i161, label %if.then72, label %if.end74

if.then72:                                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #13
  %48 = ptrtoint ptr %call70 to i32
  br label %cleanup

if.end74:                                         ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #13
  %49 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %34, align 4
  %call76 = call fastcc i32 @i2cdev_ioctl_rdwr(ptr noundef %1, i32 noundef %50, ptr noundef %call70)
  br label %cleanup

cleanup:                                          ; preds = %if.end74, %if.then72, %lor.lhs.false58.cleanup_crit_edge, %if.end56.cleanup_crit_edge, %if.then11.i.i
  %retval.0 = phi i32 [ %48, %if.then72 ], [ %call76, %if.end74 ], [ -22, %lor.lhs.false58.cleanup_crit_edge ], [ -22, %if.end56.cleanup_crit_edge ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rdwr_arg) #11
  br label %cleanup99

sw.bb78:                                          ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %data_arg) #11
  %51 = call ptr @memset(ptr %data_arg, i32 255, i32 12)
  %52 = inttoptr i32 %arg to ptr
  tail call void @__might_fault(ptr noundef nonnull @.str.14, i32 noundef 156) #11
  %call.i.i137 = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i137, label %sw.bb78.if.then11.i.i153_crit_edge, label %land.lhs.true.i.i140

sw.bb78.if.then11.i.i153_crit_edge:               ; preds = %sw.bb78
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i153

land.lhs.true.i.i140:                             ; preds = %sw.bb78
  %53 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %52, i32 12, i32 -1226833920) #17, !srcloc !117
  %asmresult.i.i138 = extractvalue { i32, i32 } %53, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i138)
  %cmp.i6.i139 = icmp eq i32 %asmresult.i.i138, 0
  br i1 %cmp.i6.i139, label %if.end.i.i150, label %land.lhs.true.i.i140.if.then11.i.i153_crit_edge, !prof !118

land.lhs.true.i.i140.if.then11.i.i153_crit_edge:  ; preds = %land.lhs.true.i.i140
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i153

if.end.i.i150:                                    ; preds = %land.lhs.true.i.i140
  %call.i.i.i141 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %data_arg, i32 noundef 12) #11
  %54 = call i32 @llvm.read_register.i32(metadata !100) #11
  %and.i.i.i.i.i.i142 = and i32 %54, -16384
  %55 = inttoptr i32 %and.i.i.i.i.i.i142 to ptr
  %cpu_domain.i.i.i.i.i143 = getelementptr inbounds %struct.thread_info, ptr %55, i32 0, i32 4
  %56 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i143) #8, !srcloc !112
  %and.i.i.i.i144 = and i32 %56, -13
  %or.i.i.i.i145 = or i32 %and.i.i.i.i144, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i145) #11, !srcloc !113
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !114
  %call1.i.i.i146 = call i32 @arm_copy_from_user(ptr noundef nonnull %data_arg, ptr noundef %52, i32 noundef 12) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %56) #11, !srcloc !113
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !114
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i146)
  %tobool4.not.i.i149 = icmp eq i32 %call1.i.i.i146, 0
  br i1 %tobool4.not.i.i149, label %if.end82, label %if.end.i.i150.if.then11.i.i153_crit_edge, !prof !118

if.end.i.i150.if.then11.i.i153_crit_edge:         ; preds = %if.end.i.i150
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i153

if.then11.i.i153:                                 ; preds = %if.end.i.i150.if.then11.i.i153_crit_edge, %land.lhs.true.i.i140.if.then11.i.i153_crit_edge, %sw.bb78.if.then11.i.i153_crit_edge
  %res.0.i.i148172 = phi i32 [ %call1.i.i.i146, %if.end.i.i150.if.then11.i.i153_crit_edge ], [ 12, %sw.bb78.if.then11.i.i153_crit_edge ], [ 12, %land.lhs.true.i.i140.if.then11.i.i153_crit_edge ]
  %sub.i.i151 = sub i32 12, %res.0.i.i148172
  %add.ptr.i.i152 = getelementptr i8, ptr %data_arg, i32 %sub.i.i151
  %57 = call ptr @memset(ptr %add.ptr.i.i152, i32 0, i32 %res.0.i.i148172)
  br label %cleanup84

if.end82:                                         ; preds = %if.end.i.i150
  call void @__sanitizer_cov_trace_pc() #13
  %58 = ptrtoint ptr %data_arg to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %data_arg, align 4
  %command = getelementptr inbounds %struct.i2c_smbus_ioctl_data, ptr %data_arg, i32 0, i32 1
  %60 = ptrtoint ptr %command to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %command, align 1
  %size = getelementptr inbounds %struct.i2c_smbus_ioctl_data, ptr %data_arg, i32 0, i32 2
  %62 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %size, align 4
  %data = getelementptr inbounds %struct.i2c_smbus_ioctl_data, ptr %data_arg, i32 0, i32 3
  %64 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %data, align 4
  %call83 = call fastcc i32 @i2cdev_ioctl_smbus(ptr noundef %1, i8 noundef zeroext %59, i8 noundef zeroext %61, i32 noundef %63, ptr noundef %65)
  br label %cleanup84

cleanup84:                                        ; preds = %if.end82, %if.then11.i.i153
  %retval.1 = phi i32 [ %call83, %if.end82 ], [ -14, %if.then11.i.i153 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %data_arg) #11
  br label %cleanup99

sw.bb85:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %arg)
  %cmp86 = icmp slt i32 %arg, 0
  br i1 %cmp86, label %sw.bb85.cleanup99_crit_edge, label %if.end89

sw.bb85.cleanup99_crit_edge:                      ; preds = %sw.bb85
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup99

if.end89:                                         ; preds = %sw.bb85
  call void @__sanitizer_cov_trace_pc() #13
  %adapter90 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 3
  %66 = ptrtoint ptr %adapter90 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %adapter90, align 8
  %retries = getelementptr inbounds %struct.i2c_adapter, ptr %67, i32 0, i32 8
  %68 = ptrtoint ptr %retries to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %arg, ptr %retries, align 8
  br label %cleanup99

sw.bb91:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %arg)
  %cmp92 = icmp slt i32 %arg, 0
  br i1 %cmp92, label %sw.bb91.cleanup99_crit_edge, label %if.else.i

sw.bb91.cleanup99_crit_edge:                      ; preds = %sw.bb91
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup99

if.else.i:                                        ; preds = %sw.bb91
  call void @__sanitizer_cov_trace_pc() #13
  %mul96 = mul i32 %arg, 10
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %mul96) #11
  %adapter98 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 3
  %69 = ptrtoint ptr %adapter98 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %adapter98, align 8
  %timeout = getelementptr inbounds %struct.i2c_adapter, ptr %70, i32 0, i32 7
  %71 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %call2.i, ptr %timeout, align 4
  br label %cleanup99

cleanup99:                                        ; preds = %if.else.i, %sw.bb91.cleanup99_crit_edge, %if.end89, %sw.bb85.cleanup99_crit_edge, %cleanup84, %cleanup, %sw.bb43, %sw.bb30, %sw.bb19, %if.end17, %i2cdev_check_addr.exit.cleanup99_crit_edge, %i2cdev_check_addr.exit.thread, %lor.lhs.false.cleanup99_crit_edge, %sw.bb.cleanup99_crit_edge, %do.end.cleanup99_crit_edge
  %retval.2 = phi i32 [ %retval.1, %cleanup84 ], [ %retval.0, %cleanup ], [ %32, %sw.bb43 ], [ 0, %sw.bb30 ], [ 0, %sw.bb19 ], [ 0, %if.end17 ], [ -22, %lor.lhs.false.cleanup99_crit_edge ], [ -22, %sw.bb.cleanup99_crit_edge ], [ -16, %i2cdev_check_addr.exit.cleanup99_crit_edge ], [ -22, %sw.bb85.cleanup99_crit_edge ], [ -22, %sw.bb91.cleanup99_crit_edge ], [ -25, %do.end.cleanup99_crit_edge ], [ 0, %if.else.i ], [ 0, %if.end89 ], [ -16, %i2cdev_check_addr.exit.thread ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i2cdev_open(ptr nocapture noundef readonly %inode, ptr nocapture noundef writeonly %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %i_rdev.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 13
  %0 = ptrtoint ptr %i_rdev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i_rdev.i, align 8
  %and.i = and i32 %1, 1048575
  %call1 = tail call ptr @i2c_get_adapter(i32 noundef %and.i) #11
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 984) #15
  %tobool3.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool3.not, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @i2c_put_adapter(ptr noundef nonnull %call1) #11
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct.i2c_client, ptr %call7.i.i, i32 0, i32 2
  %nr = getelementptr inbounds %struct.i2c_adapter, ptr %call1, i32 0, i32 11
  %3 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %nr, align 4
  %call6 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name, i32 noundef 20, ptr noundef nonnull @.str.24, i32 noundef %4)
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %call7.i.i, i32 0, i32 3
  %5 = ptrtoint ptr %adapter to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call1, ptr %adapter, align 8
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %6 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call7.i.i, ptr %private_data, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end5 ], [ -12, %if.then4 ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i2cdev_release(ptr nocapture noundef readnone %inode, ptr nocapture noundef %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adapter, align 8
  tail call void @i2c_put_adapter(ptr noundef %3) #11
  tail call void @kfree(ptr noundef %1) #11
  %4 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %private_data, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer_buffer_flags(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

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
declare dso_local ptr @memdup_user(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @i2cdev_ioctl_rdwr(ptr nocapture noundef readonly %client, i32 noundef %nmsgs, ptr noundef %msgs) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %nmsgs, i32 4) #11
  %1 = extractvalue { i32, i1 } %0, 1
  br i1 %1, label %entry.cleanup_crit_edge, label %if.end7.i, !prof !119

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end7.i:                                        ; preds = %entry
  %2 = extractvalue { i32, i1 } %0, 0
  %call8.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %2, i32 noundef 3264) #16
  %cmp = icmp eq ptr %call8.i, null
  br i1 %cmp, label %if.end7.i.cleanup_crit_edge, label %for.cond.preheader

if.end7.i.cleanup_crit_edge:                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nmsgs)
  %cmp1180.not = icmp eq i32 %nmsgs, 0
  br i1 %cmp1180.not, label %if.end79.thread, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

if.end79.thread:                                  ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  %adapter205 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %3 = ptrtoint ptr %adapter205 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %adapter205, align 8
  %call80206 = tail call i32 @i2c_transfer(ptr noundef %4, ptr noundef %msgs, i32 noundef %nmsgs) #11
  br label %cleanup.sink.split

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0181 = phi i32 [ %inc66, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %len = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.0181, i32 2
  %5 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %6)
  %cmp2 = icmp ugt i16 %6, 8192
  br i1 %cmp2, label %for.body.for.cond70.preheader_crit_edge, label %if.end5

for.body.for.cond70.preheader_crit_edge:          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond70.preheader

if.end5:                                          ; preds = %for.body
  %buf = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.0181, i32 3
  %7 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %buf, align 4
  %arrayidx7 = getelementptr ptr, ptr %call8.i, i32 %i.0181
  %9 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %arrayidx7, align 4
  %10 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %len, align 4
  %conv11 = zext i16 %11 to i32
  %call12 = tail call ptr @memdup_user(ptr noundef %8, i32 noundef %conv11) #11
  %12 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call12, ptr %buf, align 4
  %cmp.i = icmp ugt ptr %call12, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %for.end, label %if.end22

if.end22:                                         ; preds = %if.end5
  %flags = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.0181, i32 1
  %13 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %flags, align 2
  %15 = or i16 %14, 512
  store i16 %15, ptr %flags, align 2
  %conv28 = zext i16 %15 to i32
  %and = and i32 %conv28, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end22.for.inc_crit_edge, label %if.then29

if.end22.for.inc_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then29:                                        ; preds = %if.end22
  %and33 = and i32 %conv28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  br i1 %tobool34.not, label %if.then29.if.then57_crit_edge, label %lor.lhs.false

if.then29.if.then57_crit_edge:                    ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then57

lor.lhs.false:                                    ; preds = %if.then29
  %16 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %cmp38 = icmp eq i16 %17, 0
  br i1 %cmp38, label %lor.lhs.false.if.then57_crit_edge, label %lor.lhs.false40

lor.lhs.false.if.then57_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then57

lor.lhs.false40:                                  ; preds = %lor.lhs.false
  %conv37 = zext i16 %17 to i32
  %18 = ptrtoint ptr %call12 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %call12, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %cmp45 = icmp eq i8 %19, 0
  %conv44 = zext i8 %19 to i32
  %add = add nuw nsw i32 %conv44, 32
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %conv37)
  %cmp55 = icmp ugt i32 %add, %conv37
  %or.cond = select i1 %cmp45, i1 true, i1 %cmp55
  br i1 %or.cond, label %lor.lhs.false40.if.then57_crit_edge, label %if.end58

lor.lhs.false40.if.then57_crit_edge:              ; preds = %lor.lhs.false40
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then57

if.then57:                                        ; preds = %lor.lhs.false40.if.then57_crit_edge, %lor.lhs.false.if.then57_crit_edge, %if.then29.if.then57_crit_edge
  %inc = add nuw i32 %i.0181, 1
  br label %for.cond70.preheader

if.end58:                                         ; preds = %lor.lhs.false40
  call void @__sanitizer_cov_trace_pc() #13
  %conv62 = zext i8 %19 to i16
  %20 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %conv62, ptr %len, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end58, %if.end22.for.inc_crit_edge
  %inc66 = add nuw i32 %i.0181, 1
  %exitcond.not = icmp eq i32 %inc66, %nmsgs
  br i1 %exitcond.not, label %for.inc.if.end79_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.if.end79_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end79

for.end:                                          ; preds = %if.end5
  %21 = ptrtoint ptr %call12 to i32
  %cmp67 = icmp slt ptr %call12, null
  br i1 %cmp67, label %for.end.for.cond70.preheader_crit_edge, label %for.end.if.end79_crit_edge

for.end.if.end79_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end79

for.end.for.cond70.preheader_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond70.preheader

for.cond70.preheader:                             ; preds = %for.end.for.cond70.preheader_crit_edge, %if.then57, %for.body.for.cond70.preheader_crit_edge
  %res.0203 = phi i32 [ %21, %for.end.for.cond70.preheader_crit_edge ], [ -22, %if.then57 ], [ -22, %for.body.for.cond70.preheader_crit_edge ]
  %i.1202 = phi i32 [ %i.0181, %for.end.for.cond70.preheader_crit_edge ], [ %inc, %if.then57 ], [ %i.0181, %for.body.for.cond70.preheader_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.1202)
  %cmp71188 = icmp sgt i32 %i.1202, 0
  br i1 %cmp71188, label %for.cond70.preheader.for.body73_crit_edge, label %for.cond70.preheader.cleanup.sink.split_crit_edge

for.cond70.preheader.cleanup.sink.split_crit_edge: ; preds = %for.cond70.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

for.cond70.preheader.for.body73_crit_edge:        ; preds = %for.cond70.preheader
  br label %for.body73

for.body73:                                       ; preds = %for.body73.for.body73_crit_edge, %for.cond70.preheader.for.body73_crit_edge
  %j.0189 = phi i32 [ %inc77, %for.body73.for.body73_crit_edge ], [ 0, %for.cond70.preheader.for.body73_crit_edge ]
  %buf75 = getelementptr %struct.i2c_msg, ptr %msgs, i32 %j.0189, i32 3
  %22 = ptrtoint ptr %buf75 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %buf75, align 4
  tail call void @kfree(ptr noundef %23) #11
  %inc77 = add nuw nsw i32 %j.0189, 1
  %exitcond195.not = icmp eq i32 %inc77, %i.1202
  br i1 %exitcond195.not, label %for.body73.cleanup.sink.split_crit_edge, label %for.body73.for.body73_crit_edge

for.body73.for.body73_crit_edge:                  ; preds = %for.body73
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body73

for.body73.cleanup.sink.split_crit_edge:          ; preds = %for.body73
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

if.end79:                                         ; preds = %for.end.if.end79_crit_edge, %for.inc.if.end79_crit_edge
  %i.1175 = phi i32 [ %i.0181, %for.end.if.end79_crit_edge ], [ %nmsgs, %for.inc.if.end79_crit_edge ]
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %24 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %adapter, align 8
  %call80 = tail call i32 @i2c_transfer(ptr noundef %25, ptr noundef %msgs, i32 noundef %nmsgs) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.1175)
  %cmp81184 = icmp sgt i32 %i.1175, 0
  br i1 %cmp81184, label %if.end79.while.body_crit_edge, label %if.end79.cleanup.sink.split_crit_edge

if.end79.cleanup.sink.split_crit_edge:            ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

if.end79.while.body_crit_edge:                    ; preds = %if.end79
  br label %while.body

while.body:                                       ; preds = %if.end101.while.body_crit_edge, %if.end79.while.body_crit_edge
  %dec186.in = phi i32 [ %dec186, %if.end101.while.body_crit_edge ], [ %i.1175, %if.end79.while.body_crit_edge ]
  %res.1185 = phi i32 [ %res.2, %if.end101.while.body_crit_edge ], [ %call80, %if.end79.while.body_crit_edge ]
  %dec186 = add nsw i32 %dec186.in, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %res.1185)
  %cmp83 = icmp sgt i32 %res.1185, -1
  br i1 %cmp83, label %land.lhs.true, label %while.body.if.end101_crit_edge

while.body.if.end101_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end101

land.lhs.true:                                    ; preds = %while.body
  %flags86 = getelementptr %struct.i2c_msg, ptr %msgs, i32 %dec186, i32 1
  %26 = ptrtoint ptr %flags86 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %flags86, align 2
  %28 = and i16 %27, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %28)
  %tobool89.not = icmp eq i16 %28, 0
  br i1 %tobool89.not, label %land.lhs.true.if.end101_crit_edge, label %if.then90

land.lhs.true.if.end101_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end101

if.then90:                                        ; preds = %land.lhs.true
  %arrayidx91 = getelementptr ptr, ptr %call8.i, i32 %dec186
  %29 = ptrtoint ptr %arrayidx91 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx91, align 4
  %buf93 = getelementptr %struct.i2c_msg, ptr %msgs, i32 %dec186, i32 3
  %31 = ptrtoint ptr %buf93 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %buf93, align 4
  %len95 = getelementptr %struct.i2c_msg, ptr %msgs, i32 %dec186, i32 2
  %33 = ptrtoint ptr %len95 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %len95, align 4
  %conv96 = zext i16 %34 to i32
  tail call void @__check_object_size(ptr noundef %32, i32 noundef %conv96, i1 noundef zeroext true) #11
  tail call void @__might_fault(ptr noundef nonnull @.str.14, i32 noundef 174) #11
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i, label %if.then90.copy_to_user.exit_crit_edge, label %if.end.i.i

if.then90.copy_to_user.exit_crit_edge:            ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #13
  br label %copy_to_user.exit

if.end.i.i:                                       ; preds = %if.then90
  %35 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %30, i32 %conv96, i32 -1226833920) #17, !srcloc !111
  %asmresult.i.i = extractvalue { i32, i32 } %35, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i.copy_to_user.exit_crit_edge

if.end.i.i.copy_to_user.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %32, i32 noundef %conv96) #11
  %call.i12.i.i = tail call i32 @arm_copy_to_user(ptr noundef %30, ptr noundef %32, i32 noundef %conv96) #11
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i.copy_to_user.exit_crit_edge, %if.then90.copy_to_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ %conv96, %if.then90.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %conv96, %if.end.i.i.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i)
  %tobool98.not = icmp eq i32 %n.addr.0.i, 0
  %spec.select = select i1 %tobool98.not, i32 %res.1185, i32 -14
  br label %if.end101

if.end101:                                        ; preds = %copy_to_user.exit, %land.lhs.true.if.end101_crit_edge, %while.body.if.end101_crit_edge
  %res.2 = phi i32 [ %res.1185, %land.lhs.true.if.end101_crit_edge ], [ %res.1185, %while.body.if.end101_crit_edge ], [ %spec.select, %copy_to_user.exit ]
  %buf103 = getelementptr %struct.i2c_msg, ptr %msgs, i32 %dec186, i32 3
  %36 = ptrtoint ptr %buf103 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %buf103, align 4
  tail call void @kfree(ptr noundef %37) #11
  %cmp81 = icmp ugt i32 %dec186.in, 1
  br i1 %cmp81, label %if.end101.while.body_crit_edge, label %if.end101.cleanup.sink.split_crit_edge

if.end101.cleanup.sink.split_crit_edge:           ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

if.end101.while.body_crit_edge:                   ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

cleanup.sink.split:                               ; preds = %if.end101.cleanup.sink.split_crit_edge, %if.end79.cleanup.sink.split_crit_edge, %for.body73.cleanup.sink.split_crit_edge, %for.cond70.preheader.cleanup.sink.split_crit_edge, %if.end79.thread
  %retval.0.ph = phi i32 [ %res.0203, %for.cond70.preheader.cleanup.sink.split_crit_edge ], [ %call80, %if.end79.cleanup.sink.split_crit_edge ], [ %call80206, %if.end79.thread ], [ %res.0203, %for.body73.cleanup.sink.split_crit_edge ], [ %res.2, %if.end101.cleanup.sink.split_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call8.i) #11
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end7.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end7.i.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  tail call void @kfree(ptr noundef %msgs) #11
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @i2cdev_ioctl_smbus(ptr nocapture noundef readonly %client, i8 noundef zeroext %read_write, i8 noundef zeroext %command, i32 noundef %size, ptr noundef %data) unnamed_addr #7 align 64 {
entry:
  %temp = alloca %union.i2c_smbus_data, align 2
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 34, ptr nonnull %temp) #11
  %0 = call ptr @memcpy(ptr %temp, ptr @__const.i2cdev_ioctl_smbus.temp, i32 34)
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %size)
  %switch = icmp ult i32 %size, 9
  br i1 %switch, label %if.end20, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i2cdev_ioctl_smbus.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@i2cdev_ioctl_smbus, %cleanup)) #11
          to label %if.then19 [label %cleanup], !srcloc !110

if.then19:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %1 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %adapter, align 8
  %dev = getelementptr inbounds %struct.i2c_adapter, ptr %2, i32 0, i32 9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i2cdev_ioctl_smbus.__UNIQUE_ID_ddebug290, ptr noundef %dev, ptr noundef nonnull @.str.21, i32 noundef %size) #11
  br label %cleanup

if.end20:                                         ; preds = %entry
  %conv = zext i8 %read_write to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %read_write)
  %switch195 = icmp ult i8 %read_write, 2
  br i1 %switch195, label %if.end49, label %do.body28

do.body28:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i2cdev_ioctl_smbus.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@i2cdev_ioctl_smbus, %cleanup)) #11
          to label %if.then42 [label %cleanup], !srcloc !110

if.then42:                                        ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #13
  %adapter43 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %3 = ptrtoint ptr %adapter43 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %adapter43, align 8
  %dev44 = getelementptr inbounds %struct.i2c_adapter, ptr %4, i32 0, i32 9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i2cdev_ioctl_smbus.__UNIQUE_ID_ddebug291, ptr noundef %dev44, ptr noundef nonnull @.str.22, i32 noundef %conv) #11
  br label %cleanup

if.end49:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %cmp50 = icmp eq i32 %size, 0
  br i1 %cmp50, label %if.end49.if.then58_crit_edge, label %lor.lhs.false

if.end49.if.then58_crit_edge:                     ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then58

lor.lhs.false:                                    ; preds = %if.end49
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %size)
  %cmp52 = icmp eq i32 %size, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %read_write)
  %cmp56 = icmp eq i8 %read_write, 0
  %or.cond = and i1 %cmp56, %cmp52
  br i1 %or.cond, label %lor.lhs.false.if.then58_crit_edge, label %if.end61

lor.lhs.false.if.then58_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then58

if.then58:                                        ; preds = %lor.lhs.false.if.then58_crit_edge, %if.end49.if.then58_crit_edge
  %adapter59 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %5 = ptrtoint ptr %adapter59 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %adapter59, align 8
  %addr = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %7 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %addr, align 2
  %9 = ptrtoint ptr %client to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %client, align 8
  %call60 = tail call i32 @i2c_smbus_xfer(ptr noundef %6, i16 noundef zeroext %8, i16 noundef zeroext %10, i8 noundef zeroext %read_write, i8 noundef zeroext %command, i32 noundef %size, ptr noundef null) #11
  br label %cleanup

if.end61:                                         ; preds = %lor.lhs.false
  %cmp62 = icmp eq ptr %data, null
  br i1 %cmp62, label %do.body65, label %if.end85

do.body65:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i2cdev_ioctl_smbus.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@i2cdev_ioctl_smbus, %cleanup)) #11
          to label %if.then79 [label %cleanup], !srcloc !110

if.then79:                                        ; preds = %do.body65
  call void @__sanitizer_cov_trace_pc() #13
  %adapter80 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %11 = ptrtoint ptr %adapter80 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %adapter80, align 8
  %dev81 = getelementptr inbounds %struct.i2c_adapter, ptr %12, i32 0, i32 9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i2cdev_ioctl_smbus.__UNIQUE_ID_ddebug292, ptr noundef %dev81, ptr noundef nonnull @.str.23) #11
  br label %cleanup

if.end85:                                         ; preds = %if.end61
  %switch.tableidx = add i32 %size, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %switch.tableidx)
  %13 = icmp ult i32 %switch.tableidx, 4
  br i1 %13, label %switch.lookup, label %if.end85.if.end100_crit_edge

if.end85.if.end100_crit_edge:                     ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end100

switch.lookup:                                    ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #13
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.i2cdev_ioctl_smbus, i32 0, i32 %switch.tableidx
  %14 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %14)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %if.end100

if.end100:                                        ; preds = %switch.lookup, %if.end85.if.end100_crit_edge
  %datasize.0 = phi i32 [ %switch.load, %switch.lookup ], [ 34, %if.end85.if.end100_crit_edge ]
  %15 = zext i32 %size to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.38)
  switch i32 %size, label %lor.lhs.false109 [
    i32 4, label %if.end100.if.then.i.i.i_crit_edge
    i32 7, label %if.end100.if.then.i.i.i_crit_edge229
    i32 8, label %if.end100.if.then.i.i.i_crit_edge230
  ]

if.end100.if.then.i.i.i_crit_edge230:             ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i.i

if.end100.if.then.i.i.i_crit_edge229:             ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i.i

if.end100.if.then.i.i.i_crit_edge:                ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i.i

lor.lhs.false109:                                 ; preds = %if.end100
  br i1 %cmp56, label %lor.lhs.false109.if.then.i.i.i_crit_edge, label %if.end118.thread

lor.lhs.false109.if.then.i.i.i_crit_edge:         ; preds = %lor.lhs.false109
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %lor.lhs.false109.if.then.i.i.i_crit_edge, %if.end100.if.then.i.i.i_crit_edge, %if.end100.if.then.i.i.i_crit_edge229, %if.end100.if.then.i.i.i_crit_edge230
  call void @__check_object_size(ptr noundef nonnull %temp, i32 noundef %datasize.0, i1 noundef zeroext false) #11
  call void @__might_fault(ptr noundef nonnull @.str.14, i32 noundef 156) #11
  %call.i.i = call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i, label %if.then.i.i.i.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.then.i.i.i.if.then11.i.i_crit_edge:            ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i.i.i
  %16 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr nonnull %data, i32 %datasize.0, i32 -1226833920) #17, !srcloc !117
  %asmresult.i.i = extractvalue { i32, i32 } %16, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !118

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %temp, i32 noundef %datasize.0) #11
  %17 = call i32 @llvm.read_register.i32(metadata !100) #11
  %and.i.i.i.i.i.i = and i32 %17, -16384
  %18 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 4
  %19 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #8, !srcloc !112
  %and.i.i.i.i = and i32 %19, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #11, !srcloc !113
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !114
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %temp, ptr noundef nonnull %data, i32 noundef %datasize.0) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %19) #11, !srcloc !113
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !114
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end118, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !118

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.then.i.i.i.if.then11.i.i_crit_edge
  %res.0.i.i222 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ %datasize.0, %if.then.i.i.i.if.then11.i.i_crit_edge ], [ %datasize.0, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 %datasize.0, %res.0.i.i222
  %add.ptr.i.i = getelementptr i8, ptr %temp, i32 %sub.i.i
  %20 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i222)
  br label %cleanup

if.end118:                                        ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %size)
  %cmp119 = icmp eq i32 %size, 6
  br i1 %cmp119, label %if.then121, label %if.end118.if.end127_crit_edge

if.end118.if.end127_crit_edge:                    ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end127

if.end118.thread:                                 ; preds = %lor.lhs.false109
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %size)
  %cmp119225 = icmp eq i32 %size, 6
  br i1 %cmp119225, label %if.end118.thread.if.then125_crit_edge, label %if.end118.thread.if.end127_crit_edge

if.end118.thread.if.end127_crit_edge:             ; preds = %if.end118.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end127

if.end118.thread.if.then125_crit_edge:            ; preds = %if.end118.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then125

if.then121:                                       ; preds = %if.end118
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %read_write)
  %cmp123 = icmp eq i8 %read_write, 1
  br i1 %cmp123, label %if.then121.if.then125_crit_edge, label %if.then121.if.end127_crit_edge

if.then121.if.end127_crit_edge:                   ; preds = %if.then121
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end127

if.then121.if.then125_crit_edge:                  ; preds = %if.then121
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then125

if.then125:                                       ; preds = %if.then121.if.then125_crit_edge, %if.end118.thread.if.then125_crit_edge
  %21 = ptrtoint ptr %temp to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 32, ptr %temp, align 2
  br label %if.end127

if.end127:                                        ; preds = %if.then125, %if.then121.if.end127_crit_edge, %if.end118.thread.if.end127_crit_edge, %if.end118.if.end127_crit_edge
  %size.addr.0 = phi i32 [ 8, %if.then125 ], [ 8, %if.then121.if.end127_crit_edge ], [ %size, %if.end118.if.end127_crit_edge ], [ %size, %if.end118.thread.if.end127_crit_edge ]
  %adapter128 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %22 = ptrtoint ptr %adapter128 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %adapter128, align 8
  %addr129 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %24 = ptrtoint ptr %addr129 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %addr129, align 2
  %26 = ptrtoint ptr %client to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %client, align 8
  %call131 = call i32 @i2c_smbus_xfer(ptr noundef %23, i16 noundef zeroext %25, i16 noundef zeroext %27, i8 noundef zeroext %read_write, i8 noundef zeroext %command, i32 noundef %size.addr.0, ptr noundef nonnull %temp) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call131)
  %tobool132.not = icmp eq i32 %call131, 0
  br i1 %tobool132.not, label %land.lhs.true133, label %if.end127.if.end148_crit_edge

if.end127.if.end148_crit_edge:                    ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end148

land.lhs.true133:                                 ; preds = %if.end127
  %28 = zext i32 %size.addr.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.39)
  switch i32 %size.addr.0, label %lor.lhs.false139 [
    i32 4, label %land.lhs.true133.if.then.i.i.i209_crit_edge
    i32 7, label %land.lhs.true133.if.then.i.i.i209_crit_edge231
  ]

land.lhs.true133.if.then.i.i.i209_crit_edge231:   ; preds = %land.lhs.true133
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i.i209

land.lhs.true133.if.then.i.i.i209_crit_edge:      ; preds = %land.lhs.true133
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i.i209

lor.lhs.false139:                                 ; preds = %land.lhs.true133
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %read_write)
  %cmp141 = icmp eq i8 %read_write, 1
  br i1 %cmp141, label %lor.lhs.false139.if.then.i.i.i209_crit_edge, label %lor.lhs.false139.if.end148_crit_edge

lor.lhs.false139.if.end148_crit_edge:             ; preds = %lor.lhs.false139
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end148

lor.lhs.false139.if.then.i.i.i209_crit_edge:      ; preds = %lor.lhs.false139
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i.i209

if.then.i.i.i209:                                 ; preds = %lor.lhs.false139.if.then.i.i.i209_crit_edge, %land.lhs.true133.if.then.i.i.i209_crit_edge, %land.lhs.true133.if.then.i.i.i209_crit_edge231
  call void @__check_object_size(ptr noundef nonnull %temp, i32 noundef %datasize.0, i1 noundef zeroext true) #11
  call void @__might_fault(ptr noundef nonnull @.str.14, i32 noundef 174) #11
  %call.i.i210 = call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i210, label %if.then.i.i.i209.cleanup_crit_edge, label %if.end.i.i214

if.then.i.i.i209.cleanup_crit_edge:               ; preds = %if.then.i.i.i209
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i.i214:                                    ; preds = %if.then.i.i.i209
  %29 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr nonnull %data, i32 %datasize.0, i32 -1226833920) #17, !srcloc !111
  %asmresult.i.i212 = extractvalue { i32, i32 } %29, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i212)
  %cmp.i6.i213 = icmp eq i32 %asmresult.i.i212, 0
  br i1 %cmp.i6.i213, label %copy_to_user.exit, label %if.end.i.i214.cleanup_crit_edge

if.end.i.i214.cleanup_crit_edge:                  ; preds = %if.end.i.i214
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

copy_to_user.exit:                                ; preds = %if.end.i.i214
  %call.i.i.i215 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %temp, i32 noundef %datasize.0) #11
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef nonnull %data, ptr noundef nonnull %temp, i32 noundef %datasize.0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool145.not = icmp eq i32 %call.i12.i.i, 0
  br i1 %tobool145.not, label %copy_to_user.exit.if.end148_crit_edge, label %copy_to_user.exit.cleanup_crit_edge

copy_to_user.exit.cleanup_crit_edge:              ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

copy_to_user.exit.if.end148_crit_edge:            ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end148

if.end148:                                        ; preds = %copy_to_user.exit.if.end148_crit_edge, %lor.lhs.false139.if.end148_crit_edge, %if.end127.if.end148_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end148, %copy_to_user.exit.cleanup_crit_edge, %if.end.i.i214.cleanup_crit_edge, %if.then.i.i.i209.cleanup_crit_edge, %if.then11.i.i, %if.then79, %do.body65, %if.then58, %if.then42, %do.body28, %if.then19, %do.body
  %retval.0 = phi i32 [ %call60, %if.then58 ], [ %call131, %if.end148 ], [ -22, %if.then19 ], [ -22, %if.then42 ], [ -22, %if.then79 ], [ -14, %copy_to_user.exit.cleanup_crit_edge ], [ -22, %do.body ], [ -22, %do.body28 ], [ -22, %do.body65 ], [ -14, %if.then11.i.i ], [ -14, %if.then.i.i.i209.cleanup_crit_edge ], [ -14, %if.end.i.i214.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 34, ptr nonnull %temp) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @i2cdev_check_mux_parents(ptr noundef %adapter, i32 noundef %addr) unnamed_addr #2 align 64 {
entry:
  %addr.addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %addr.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %addr, ptr %addr.addr, align 4
  %parent1.i = getelementptr inbounds %struct.i2c_adapter, ptr %adapter, i32 0, i32 9, i32 1
  %1 = ptrtoint ptr %parent1.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %parent1.i, align 8
  %cmp.not.i = icmp eq ptr %2, null
  br i1 %cmp.not.i, label %entry.i2c_parent_is_i2c_adapter.exit_crit_edge, label %land.lhs.true.i

entry.i2c_parent_is_i2c_adapter.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %i2c_parent_is_i2c_adapter.exit

land.lhs.true.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %type.i = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 4
  %3 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %type.i, align 4
  %cmp2.i = icmp eq ptr %4, @i2c_adapter_type
  %add.ptr.i = getelementptr i8, ptr %2, i32 -200
  %spec.select.i = select i1 %cmp2.i, ptr %add.ptr.i, ptr null
  br label %i2c_parent_is_i2c_adapter.exit

i2c_parent_is_i2c_adapter.exit:                   ; preds = %land.lhs.true.i, %entry.i2c_parent_is_i2c_adapter.exit_crit_edge
  %retval.0.i = phi ptr [ null, %entry.i2c_parent_is_i2c_adapter.exit_crit_edge ], [ %spec.select.i, %land.lhs.true.i ]
  %dev = getelementptr inbounds %struct.i2c_adapter, ptr %adapter, i32 0, i32 9
  %call1 = call i32 @device_for_each_child(ptr noundef %dev, ptr noundef nonnull %addr.addr, ptr noundef nonnull @i2cdev_check) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true, label %i2c_parent_is_i2c_adapter.exit.if.end_crit_edge

i2c_parent_is_i2c_adapter.exit.if.end_crit_edge:  ; preds = %i2c_parent_is_i2c_adapter.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %i2c_parent_is_i2c_adapter.exit
  %tobool2.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool2.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %5 = ptrtoint ptr %addr.addr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %addr.addr, align 4
  %call3 = call fastcc i32 @i2cdev_check_mux_parents(ptr noundef nonnull %retval.0.i, i32 noundef %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %i2c_parent_is_i2c_adapter.exit.if.end_crit_edge
  %result.0 = phi i32 [ %call1, %i2c_parent_is_i2c_adapter.exit.if.end_crit_edge ], [ %call3, %if.then ], [ 0, %land.lhs.true.if.end_crit_edge ]
  ret i32 %result.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_for_each_child(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i2cdev_check_mux_children(ptr noundef %dev, ptr noundef %addrp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 4
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %type, align 4
  %cmp = icmp eq ptr %1, @i2c_adapter_type
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 @device_for_each_child(ptr noundef %dev, ptr noundef %addrp, ptr noundef nonnull @i2cdev_check_mux_children) #11
  br label %if.end

if.else:                                          ; preds = %entry
  %call.i = tail call ptr @i2c_verify_client(ptr noundef %dev) #11
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.else.if.end_crit_edge, label %lor.lhs.false.i

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

lor.lhs.false.i:                                  ; preds = %if.else
  %addr.i = getelementptr inbounds %struct.i2c_client, ptr %call.i, i32 0, i32 1
  %2 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %addr.i, align 2
  %conv.i = zext i16 %3 to i32
  %4 = ptrtoint ptr %addrp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %addrp, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %conv.i)
  %cmp.not.i = icmp eq i32 %5, %conv.i
  br i1 %cmp.not.i, label %if.end.i, label %lor.lhs.false.i.if.end_crit_edge

lor.lhs.false.i.if.end_crit_edge:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end.i:                                         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  %driver.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 6
  %6 = ptrtoint ptr %driver.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver.i, align 4
  %tobool2.not.i = icmp eq ptr %7, null
  %cond.i = select i1 %tobool2.not.i, i32 0, i32 -16
  br label %if.end

if.end:                                           ; preds = %if.end.i, %lor.lhs.false.i.if.end_crit_edge, %if.else.if.end_crit_edge, %if.then
  %result.0 = phi i32 [ %call, %if.then ], [ %cond.i, %if.end.i ], [ 0, %lor.lhs.false.i.if.end_crit_edge ], [ 0, %if.else.if.end_crit_edge ]
  ret i32 %result.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i2cdev_check(ptr noundef %dev, ptr nocapture noundef readonly %addrp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @i2c_verify_client(ptr noundef %dev) #11
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %addr = getelementptr inbounds %struct.i2c_client, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %addr, align 2
  %conv = zext i16 %1 to i32
  %2 = ptrtoint ptr %addrp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %addrp, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %conv)
  %cmp.not = icmp eq i32 %3, %conv
  br i1 %cmp.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  %driver = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 6
  %4 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver, align 4
  %tobool2.not = icmp eq ptr %5, null
  %cond = select i1 %tobool2.not, i32 0, i32 -16
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond, %if.end ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_verify_client(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_xfer(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_get_adapter(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_put_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @cdev_device_del(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_chrdev_region(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__class_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bus_register_notifier(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @name_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %devt = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 29
  %0 = ptrtoint ptr %devt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %devt, align 8
  %and = and i32 %1, 1048575
  tail call void @_raw_spin_lock(ptr noundef nonnull @i2c_dev_list_lock) #11
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %i2c_dev.0.in.i = phi ptr [ @i2c_dev_list, %entry ], [ %i2c_dev.0.i, %for.body.i.for.cond.i_crit_edge ]
  %2 = ptrtoint ptr %i2c_dev.0.in.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %i2c_dev.0.i = load ptr, ptr %i2c_dev.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %i2c_dev.0.i, @i2c_dev_list
  br i1 %cmp.not.i, label %i2c_dev_get_by_minor.exit.thread, label %for.body.i

i2c_dev_get_by_minor.exit.thread:                 ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_raw_spin_unlock(ptr noundef nonnull @i2c_dev_list_lock) #11
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.i
  %adap.i = getelementptr inbounds %struct.i2c_dev, ptr %i2c_dev.0.i, i32 0, i32 1
  %3 = ptrtoint ptr %adap.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %adap.i, align 8
  %nr.i = getelementptr inbounds %struct.i2c_adapter, ptr %4, i32 0, i32 11
  %5 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %nr.i, align 4
  %cmp1.i = icmp eq i32 %6, %and
  br i1 %cmp1.i, label %i2c_dev_get_by_minor.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i

i2c_dev_get_by_minor.exit:                        ; preds = %for.body.i
  tail call void @_raw_spin_unlock(ptr noundef nonnull @i2c_dev_list_lock) #11
  %tobool.not = icmp eq ptr %i2c_dev.0.i, null
  br i1 %tobool.not, label %i2c_dev_get_by_minor.exit.cleanup_crit_edge, label %if.end

i2c_dev_get_by_minor.exit.cleanup_crit_edge:      ; preds = %i2c_dev_get_by_minor.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %i2c_dev_get_by_minor.exit
  call void @__sanitizer_cov_trace_pc() #13
  %adap.i.le = getelementptr inbounds %struct.i2c_dev, ptr %i2c_dev.0.i, i32 0, i32 1
  %7 = ptrtoint ptr %adap.i.le to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %adap.i.le, align 8
  %name = getelementptr inbounds %struct.i2c_adapter, ptr %8, i32 0, i32 12
  %call1 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.36, ptr noundef %name) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %i2c_dev_get_by_minor.exit.cleanup_crit_edge, %i2c_dev_get_by_minor.exit.thread
  %retval.0 = phi i32 [ %call1, %if.end ], [ -19, %i2c_dev_get_by_minor.exit.cleanup_crit_edge ], [ -19, %i2c_dev_get_by_minor.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

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
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 49)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 49)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind readonly }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { nounwind allocsize(0) }
attributes #17 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !15, !17, !19, !21, !22, !23, !24, !25, !26, !28, !29, !30, !31, !33, !34, !36, !38, !40, !41, !42, !43, !45, !46, !48, !50, !52, !53, !54, !55, !57, !58, !59, !61, !62, !63, !65, !66, !68, !69, !71, !73, !74, !75, !76, !78, !79, !80, !81, !83, !85, !86, !88, !89, !90, !92, !93, !95, !97, !98}
!llvm.named.register.sp = !{!100}
!llvm.module.flags = !{!101, !102, !103, !104, !105, !106, !107, !108}
!llvm.ident = !{!109}

!0 = !{ptr @__UNIQUE_ID_author296, !1, !"__UNIQUE_ID_author296", i1 false, i1 false}
!1 = !{!"../drivers/i2c/i2c-dev.c", i32 771, i32 1}
!2 = !{ptr @__UNIQUE_ID_author297, !3, !"__UNIQUE_ID_author297", i1 false, i1 false}
!3 = !{!"../drivers/i2c/i2c-dev.c", i32 772, i32 1}
!4 = !{ptr @__UNIQUE_ID_description298, !5, !"__UNIQUE_ID_description298", i1 false, i1 false}
!5 = !{!"../drivers/i2c/i2c-dev.c", i32 773, i32 1}
!6 = !{ptr @__UNIQUE_ID_file299, !7, !"__UNIQUE_ID_file299", i1 false, i1 false}
!7 = !{!"../drivers/i2c/i2c-dev.c", i32 774, i32 1}
!8 = !{ptr @__UNIQUE_ID_license300, !7, !"__UNIQUE_ID_license300", i1 false, i1 false}
!9 = !{ptr @__initcall__kmod_i2c_dev__301_776_i2c_dev_init6, !10, !"__initcall__kmod_i2c_dev__301_776_i2c_dev_init6", i1 false, i1 false}
!10 = !{!"../drivers/i2c/i2c-dev.c", i32 776, i32 1}
!11 = !{ptr @__exitcall_i2c_dev_exit, !12, !"__exitcall_i2c_dev_exit", i1 false, i1 false}
!12 = !{!"../drivers/i2c/i2c-dev.c", i32 777, i32 1}
!13 = !{ptr @i2c_dev_class, !14, !"i2c_dev_class", i1 false, i1 false}
!14 = !{!"../drivers/i2c/i2c-dev.c", i32 639, i32 22}
!15 = !{ptr @i2cdev_notifier, !16, !"i2cdev_notifier", i1 false, i1 false}
!16 = !{!"../drivers/i2c/i2c-dev.c", i32 717, i32 30}
!17 = !{ptr @.str, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/i2c/i2c-dev.c", i32 671, i32 30}
!19 = !{ptr @.str.1, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/i2c/i2c-dev.c", i32 679, i32 2}
!21 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @i2cdev_attach_adapter.__UNIQUE_ID_ddebug294, !20, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!25 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.6, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/i2c/i2c-dev.c", i32 73, i32 3}
!28 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @get_free_i2c_dev._entry, !27, !"_entry", i1 false, i1 false}
!30 = !{ptr @get_free_i2c_dev._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.8, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/i2c/i2c-dev.c", i32 51, i32 8}
!33 = !{ptr @i2c_dev_list_lock, !32, !"i2c_dev_list_lock", i1 false, i1 false}
!34 = !{ptr @i2c_dev_list, !35, !"i2c_dev_list", i1 false, i1 false}
!35 = !{!"../drivers/i2c/i2c-dev.c", i32 50, i32 8}
!36 = !{ptr @i2cdev_fops, !37, !"i2cdev_fops", i1 false, i1 false}
!37 = !{!"../drivers/i2c/i2c-dev.c", i32 626, i32 37}
!38 = !{ptr @.str.9, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/i2c/i2c-dev.c", i32 149, i32 2}
!40 = !{ptr @.str.10, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @i2cdev_read.__UNIQUE_ID_ddebug288, !39, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!42 = !{ptr @.str.11, !39, !"<string literal>", i1 false, i1 false}
!43 = distinct !{null, !44, !"__already_done", i1 false, i1 false}
!44 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!45 = !{ptr @.str.12, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.13, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!48 = !{ptr @.str.14, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!50 = !{ptr @.str.15, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/i2c/i2c-dev.c", i32 173, i32 2}
!52 = !{ptr @.str.16, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @i2cdev_write.__UNIQUE_ID_ddebug289, !51, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!54 = !{ptr @.str.17, !51, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.18, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/i2c/i2c-dev.c", i32 397, i32 2}
!57 = !{ptr @.str.19, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @i2cdev_ioctl.__UNIQUE_ID_ddebug293, !56, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!59 = !{ptr @.str.20, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/i2c/i2c-dev.c", i32 327, i32 3}
!61 = !{ptr @.str.21, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @i2cdev_ioctl_smbus.__UNIQUE_ID_ddebug290, !60, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!63 = !{ptr @.str.22, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/i2c/i2c-dev.c", i32 336, i32 3}
!65 = !{ptr @i2cdev_ioctl_smbus.__UNIQUE_ID_ddebug291, !64, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!66 = !{ptr @.str.23, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/i2c/i2c-dev.c", i32 353, i32 3}
!68 = !{ptr @i2cdev_ioctl_smbus.__UNIQUE_ID_ddebug292, !67, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!69 = !{ptr @.str.24, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/i2c/i2c-dev.c", i32 607, i32 40}
!71 = !{ptr @.str.25, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/i2c/i2c-dev.c", i32 698, i32 2}
!73 = !{ptr @.str.26, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @i2cdev_detach_adapter.__UNIQUE_ID_ddebug295, !72, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!75 = !{ptr @.str.27, !72, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @.str.28, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/i2c/i2c-dev.c", i32 731, i32 2}
!78 = !{ptr @.str.29, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @i2c_dev_init._entry, !77, !"_entry", i1 false, i1 false}
!80 = !{ptr @i2c_dev_init._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.30, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/i2c/i2c-dev.c", i32 733, i32 64}
!83 = !{ptr @i2c_dev_init.__key, !84, !"__key", i1 false, i1 false}
!84 = !{!"../drivers/i2c/i2c-dev.c", i32 737, i32 18}
!85 = !{ptr @.str.31, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @.str.33, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/i2c/i2c-dev.c", i32 759, i32 2}
!88 = !{ptr @i2c_dev_init._entry.32, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @i2c_dev_init._entry_ptr.34, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @i2c_groups, !91, !"i2c_groups", i1 false, i1 false}
!91 = !{!"../drivers/i2c/i2c-dev.c", i32 113, i32 1}
!92 = !{ptr @i2c_group, !91, !"i2c_group", i1 false, i1 false}
!93 = !{ptr @i2c_attrs, !94, !"i2c_attrs", i1 false, i1 false}
!94 = !{!"../drivers/i2c/i2c-dev.c", i32 109, i32 26}
!95 = !{ptr @.str.35, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/i2c/i2c-dev.c", i32 107, i32 8}
!97 = !{ptr @dev_attr_name, !96, !"dev_attr_name", i1 false, i1 false}
!98 = !{ptr @.str.36, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/i2c/i2c-dev.c", i32 105, i32 25}
!100 = !{!"sp"}
!101 = !{i32 1, !"wchar_size", i32 2}
!102 = !{i32 1, !"min_enum_size", i32 4}
!103 = !{i32 8, !"branch-target-enforcement", i32 0}
!104 = !{i32 8, !"sign-return-address", i32 0}
!105 = !{i32 8, !"sign-return-address-all", i32 0}
!106 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!107 = !{i32 7, !"uwtable", i32 1}
!108 = !{i32 7, !"frame-pointer", i32 2}
!109 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!110 = !{i64 2148343960, i64 2148343965, i64 2148343978, i64 2148344022, i64 2148344056, i64 2148344077}
!111 = !{i64 2152761651, i64 2152761676}
!112 = !{i64 5256525}
!113 = !{i64 5256722}
!114 = !{i64 2152741955}
!115 = !{i64 2155647279, i64 2155647559, i64 2155647893, i64 2155648227}
!116 = !{!"auto-init"}
!117 = !{i64 2152760970, i64 2152760995}
!118 = !{!"branch_weights", i32 2000, i32 1}
!119 = !{!"branch_weights", i32 1, i32 2000}
