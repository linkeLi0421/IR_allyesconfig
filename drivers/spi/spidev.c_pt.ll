; ModuleID = '/llk/IR_all_yes/drivers/spi/spidev.c_pt.bc'
source_filename = "../drivers/spi/spidev.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.68 }
%union.anon.68 = type { ptr }
%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.spi_device_id = type { [32 x i8], i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.spi_delay = type { i16, i8 }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.spidev_data = type { i32, %struct.spinlock, ptr, %struct.list_head, %struct.mutex, i32, ptr, ptr, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
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
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }
%struct.spi_controller = type { %struct.device, %struct.list_head, i16, i16, i16, i32, i32, i32, i32, i32, i16, i8, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.spinlock, %struct.mutex, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, %struct.kthread_work, %struct.spinlock, %struct.list_head, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.completion, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.spi_statistics, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
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
%struct.spi_ioc_transfer = type { i64, i64, i32, i32, i16, i8, i8, i8, i8, i8, i8 }

@__param_str_bufsiz = internal constant [14 x i8] c"spidev.bufsiz\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@bufsiz = internal global { i32, [28 x i8] } { i32 4096, [28 x i8] zeroinitializer }, align 32
@__param_bufsiz = internal constant %struct.kernel_param { ptr @__param_str_bufsiz, ptr null, ptr @param_ops_uint, i16 292, i8 -1, i8 0, %union.anon.68 { ptr @bufsiz } }, section "__param", align 4
@__UNIQUE_ID_bufsiztype232 = internal constant [28 x i8] c"spidev.parmtype=bufsiz:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_bufsiz233 = internal constant [63 x i8] c"spidev.parm=bufsiz:data bytes in biggest supported SPI message\00", section ".modinfo", align 1
@__initcall__kmod_spidev__243_872_spidev_init6 = internal global ptr @spidev_init, section ".initcall6.init", align 4
@spidev_spi_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr @spidev_spi_ids, ptr @spidev_probe, ptr @spidev_remove, ptr null, %struct.device_driver { ptr @.str.1, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @spidev_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@spidev_class = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__exitcall_spidev_exit = internal global ptr @spidev_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author244 = internal constant [61 x i8] c"spidev.author=Andrea Paterniani, <a.paterniani@swapp-eng.it>\00", section ".modinfo", align 1
@__UNIQUE_ID_description245 = internal constant [50 x i8] c"spidev.description=User mode SPI device interface\00", section ".modinfo", align 1
@__UNIQUE_ID_file246 = internal constant [31 x i8] c"spidev.file=drivers/spi/spidev\00", section ".modinfo", align 1
@__UNIQUE_ID_license247 = internal constant [19 x i8] c"spidev.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias248 = internal constant [24 x i8] c"spidev.alias=spi:spidev\00", section ".modinfo", align 1
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"spi\00", [28 x i8] zeroinitializer }, align 32
@spidev_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr @spidev_read, ptr @spidev_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @spidev_ioctl, ptr null, ptr null, i32 0, ptr @spidev_open, ptr null, ptr @spidev_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@spidev_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"spidev\00", [25 x i8] zeroinitializer }, align 32
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"drivers/spi/spidev.c\00", [43 x i8] zeroinitializer }, align 32
@spidev_ioctl.__UNIQUE_ID_ddebug234 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.6, ptr @.str.5, ptr @.str.7, i8 0, i8 105, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"spidev_ioctl\00", [19 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"spi mode %x\0A\00", [19 x i8] zeroinitializer }, align 32
@spidev_ioctl.__UNIQUE_ID_ddebug235 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.6, ptr @.str.5, ptr @.str.8, i8 0, i8 110, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%csb first\0A\00", [20 x i8] zeroinitializer }, align 32
@spidev_ioctl.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.6, ptr @.str.5, ptr @.str.9, i8 0, i8 113, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%d bits per word\0A\00", [46 x i8] zeroinitializer }, align 32
@spidev_ioctl.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.6, ptr @.str.5, ptr @.str.10, i8 0, i8 116, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%d Hz (max)\0A\00", [19 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@device_list_lock = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.14, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @device_list_lock, i64 52), ptr getelementptr (i8, ptr @device_list_lock, i64 52) }, ptr @device_list_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.15, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@device_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @device_list, ptr @device_list }, [24 x i8] zeroinitializer }, align 32
@spidev_open.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.11, ptr @.str.5, ptr @.str.12, i8 0, i8 -112, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"spidev_open\00", [20 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"spidev: nothing for minor %d\0A\00", [34 x i8] zeroinitializer }, align 32
@spidev_open.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.11, ptr @.str.5, ptr @.str.13, i8 0, i8 -110, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"open/ENOMEM\0A\00", [19 x i8] zeroinitializer }, align 32
@spidev_open.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.11, ptr @.str.5, ptr @.str.13, i8 0, i8 -108, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"device_list_lock.wait_lock\00", [37 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"device_list_lock\00", [47 x i8] zeroinitializer }, align 32
@spidev_spi_ids = internal constant { [9 x %struct.spi_device_id], [92 x i8] } { [9 x %struct.spi_device_id] [%struct.spi_device_id { [32 x i8] c"dh2228fv\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id { [32 x i8] c"ltc2488\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id { [32 x i8] c"sx1301\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id { [32 x i8] c"bk4\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id { [32 x i8] c"dhcom-board\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id { [32 x i8] c"m53cpld\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id { [32 x i8] c"spi-petra\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id { [32 x i8] c"spi-authenta\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id zeroinitializer], [92 x i8] zeroinitializer }, align 32
@spidev_dt_ids = internal constant { [9 x %struct.of_device_id], [444 x i8] } { [9 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rohm,dh2228fv\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"lineartechnology,ltc2488\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"semtech,sx1301\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"lwn,bk4\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"dh,dhcom-board\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"menlo,m53cpld\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"cisco,spi-petra\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"micron,spi-authenta\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [444 x i8] zeroinitializer }, align 32
@spidev_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.5, i32 755, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"spidev listed directly in DT is not supported\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"spidev_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@spidev_probe._entry_ptr = internal global ptr @spidev_probe._entry, section ".printk_index", align 4
@spidev_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.20 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&spidev->spi_lock\00", [46 x i8] zeroinitializer }, align 32
@spidev_probe.__key.21 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.22 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&spidev->buf_lock\00", [46 x i8] zeroinitializer }, align 32
@minors = internal global { [1 x i32], [28 x i8] } zeroinitializer, align 32
@.str.23 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"spidev%d.%d\00", [20 x i8] zeroinitializer }, align 32
@spidev_probe.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.17, ptr @.str.5, ptr @.str.24, i8 0, i8 -60, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"no minor number available!\0A\00", [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [12 x i64] [i64 10, i64 32, i64 1073834753, i64 1073834754, i64 1073834755, i64 1074031364, i64 1074031365, i64 2147576577, i64 2147576578, i64 2147576579, i64 2147773188, i64 2147773189]
@___asan_gen_.25 = private unnamed_addr constant [7 x i8] c"bufsiz\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 85, i32 17 }
@___asan_gen_.28 = private unnamed_addr constant [18 x i8] c"spidev_spi_driver\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 827, i32 26 }
@___asan_gen_.31 = private unnamed_addr constant [13 x i8] c"spidev_class\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 674, i32 22 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 855, i32 41 }
@___asan_gen_.37 = private unnamed_addr constant [12 x i8] c"spidev_fops\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 652, i32 37 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 859, i32 17 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 230, i32 6 }
@___asan_gen_.50 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 214, i32 2 }
@___asan_gen_.53 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 174, i32 2 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 379, i32 12 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 423, i32 5 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 439, i32 5 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 453, i32 5 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 465, i32 5 }
@___asan_gen_.73 = private unnamed_addr constant [17 x i8] c"device_list_lock\00", align 1
@___asan_gen_.76 = private unnamed_addr constant [12 x i8] c"device_list\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 82, i32 8 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 577, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 584, i32 4 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 83, i32 8 }
@___asan_gen_.94 = private unnamed_addr constant [15 x i8] c"spidev_spi_ids\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 676, i32 35 }
@___asan_gen_.97 = private unnamed_addr constant [14 x i8] c"spidev_dt_ids\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 690, i32 34 }
@___asan_gen_.100 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 755, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 768, i32 2 }
@___asan_gen_.121 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 769, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant [7 x i8] c"minors\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 47, i32 8 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 783, i32 17 }
@___asan_gen_.133 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.134 = private constant [24 x i8] c"../drivers/spi/spidev.c\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 787, i32 3 }
@llvm.compiler.used = appending global [49 x ptr] [ptr @__UNIQUE_ID_alias248, ptr @__UNIQUE_ID_author244, ptr @__UNIQUE_ID_bufsiz233, ptr @__UNIQUE_ID_bufsiztype232, ptr @__UNIQUE_ID_description245, ptr @__UNIQUE_ID_file246, ptr @__UNIQUE_ID_license247, ptr @__exitcall_spidev_exit, ptr @__initcall__kmod_spidev__243_872_spidev_init6, ptr @__param_bufsiz, ptr @spidev_exit, ptr @spidev_probe._entry, ptr @spidev_probe._entry_ptr, ptr @bufsiz, ptr @spidev_spi_driver, ptr @spidev_class, ptr @.str, ptr @spidev_fops, ptr @spidev_init.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @device_list_lock, ptr @device_list, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @spidev_spi_ids, ptr @spidev_dt_ids, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @spidev_probe.__key, ptr @.str.20, ptr @spidev_probe.__key.21, ptr @.str.22, ptr @minors, ptr @.str.23, ptr @.str.24], section "llvm.metadata"
@0 = internal global [37 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bufsiz to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spidev_spi_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spidev_class to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spidev_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spidev_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_list_lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spidev_spi_ids to i32), i32 324, i32 416, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spidev_dt_ids to i32), i32 1764, i32 2208, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spidev_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spidev_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spidev_probe.__key.21 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @minors to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @spidev_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @__register_chrdev(i32 noundef 153, i32 noundef 0, i32 noundef 256, ptr noundef nonnull @.str, ptr noundef nonnull @spidev_fops) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @__class_create(ptr noundef null, ptr noundef nonnull @.str.1, ptr noundef nonnull @spidev_init.__key) #9
  store ptr %call1, ptr @spidev_class, align 4
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %0 = load ptr, ptr getelementptr inbounds (%struct.spi_driver, ptr @spidev_spi_driver, i32 0, i32 4), align 4
  tail call void @__unregister_chrdev(i32 noundef 153, i32 noundef 0, i32 noundef 256, ptr noundef %0) #9
  %1 = load ptr, ptr @spidev_class, align 4
  %2 = ptrtoint ptr %1 to i32
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call6 = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @spidev_spi_driver) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %if.then8, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %3 = load ptr, ptr @spidev_class, align 4
  tail call void @class_destroy(ptr noundef %3) #9
  %4 = load ptr, ptr getelementptr inbounds (%struct.spi_driver, ptr @spidev_spi_driver, i32 0, i32 4), align 4
  tail call void @__unregister_chrdev(i32 noundef 153, i32 noundef 0, i32 noundef 256, ptr noundef %4) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then8, %if.end5.cleanup_crit_edge, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %2, %if.then3 ], [ %call.i, %entry.cleanup_crit_edge ], [ %call6, %if.then8 ], [ %call6, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @spidev_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @spidev_spi_driver, i32 0, i32 4)) #9
  %0 = load ptr, ptr @spidev_class, align 4
  tail call void @class_destroy(ptr noundef %0) #9
  %1 = load ptr, ptr getelementptr inbounds (%struct.spi_driver, ptr @spidev_spi_driver, i32 0, i32 4), align 4
  tail call void @__unregister_chrdev(i32 noundef 153, i32 noundef 0, i32 noundef 256, ptr noundef %1) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @class_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__class_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__register_chrdev(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @no_llseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spidev_read(ptr nocapture noundef readonly %filp, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef readnone %f_pos) #3 align 64 {
entry:
  %t.i = alloca %struct.spi_transfer, align 4
  %m.i = alloca %struct.spi_message, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @bufsiz, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %0, i32 %count)
  %cmp = icmp ult i32 %0, %count
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %1 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %private_data, align 4
  %buf_lock = getelementptr inbounds %struct.spidev_data, ptr %2, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %buf_lock, i32 noundef 0) #9
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i) #9
  %3 = call ptr @memset(ptr %t.i, i32 0, i32 96)
  %rx_buf.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 1
  %rx_buffer.i = getelementptr inbounds %struct.spidev_data, ptr %2, i32 0, i32 7
  %4 = ptrtoint ptr %rx_buffer.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rx_buffer.i, align 4
  %6 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %rx_buf.i, align 4
  %len1.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 2
  %7 = ptrtoint ptr %len1.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %count, ptr %len1.i, align 4
  %speed_hz.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 12
  %speed_hz2.i = getelementptr inbounds %struct.spidev_data, ptr %2, i32 0, i32 8
  %8 = ptrtoint ptr %speed_hz2.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %speed_hz2.i, align 4
  %10 = ptrtoint ptr %speed_hz.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %speed_hz.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %m.i) #9
  %11 = getelementptr inbounds i8, ptr %m.i, i32 8
  %12 = call ptr @memset(ptr %11, i32 0, i32 40)
  %13 = ptrtoint ptr %m.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %m.i, ptr %m.i, align 4
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %m.i, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %m.i, ptr %prev.i.i.i.i, align 4
  %resources.i.i.i = getelementptr inbounds %struct.spi_message, ptr %m.i, i32 0, i32 10
  %15 = ptrtoint ptr %resources.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %resources.i.i.i, ptr %resources.i.i.i, align 4
  %prev.i2.i.i.i = getelementptr inbounds %struct.spi_message, ptr %m.i, i32 0, i32 10, i32 1
  %16 = ptrtoint ptr %prev.i2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %resources.i.i.i, ptr %prev.i2.i.i.i, align 4
  %transfer_list.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 18
  %call.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i, ptr noundef nonnull %m.i, ptr noundef nonnull %m.i) #9
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.end.spi_message_add_tail.exit.i_crit_edge

if.end.spi_message_add_tail.exit.i_crit_edge:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %spi_message_add_tail.exit.i

if.end.i.i.i.i:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %17 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %transfer_list.i.i, ptr %prev.i.i.i.i, align 4
  %18 = ptrtoint ptr %transfer_list.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %m.i, ptr %transfer_list.i.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 18, i32 1
  %19 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %m.i, ptr %prev3.i.i.i.i, align 4
  %20 = ptrtoint ptr %m.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %transfer_list.i.i, ptr %m.i, align 4
  br label %spi_message_add_tail.exit.i

spi_message_add_tail.exit.i:                      ; preds = %if.end.i.i.i.i, %if.end.spi_message_add_tail.exit.i_crit_edge
  %spi_lock.i.i = getelementptr inbounds %struct.spidev_data, ptr %2, i32 0, i32 1
  call void @_raw_spin_lock_irq(ptr noundef %spi_lock.i.i) #9
  %spi1.i.i = getelementptr inbounds %struct.spidev_data, ptr %2, i32 0, i32 2
  %21 = ptrtoint ptr %spi1.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %spi1.i.i, align 4
  call void @_raw_spin_unlock_irq(ptr noundef %spi_lock.i.i) #9
  %cmp.i.i19 = icmp eq ptr %22, null
  br i1 %cmp.i.i19, label %spidev_sync_read.exit.thread, label %if.end.i.i21

spidev_sync_read.exit.thread:                     ; preds = %spi_message_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %m.i) #9
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i) #9
  br label %if.end7

if.end.i.i21:                                     ; preds = %spi_message_add_tail.exit.i
  %call.i.i20 = call i32 @spi_sync(ptr noundef nonnull %22, ptr noundef nonnull %m.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i20)
  %cmp3.i.i = icmp eq i32 %call.i.i20, 0
  br i1 %cmp3.i.i, label %if.then4.i.i, label %if.end.i.i21.spidev_sync_read.exit_crit_edge

if.end.i.i21.spidev_sync_read.exit_crit_edge:     ; preds = %if.end.i.i21
  call void @__sanitizer_cov_trace_pc() #11
  br label %spidev_sync_read.exit

if.then4.i.i:                                     ; preds = %if.end.i.i21
  call void @__sanitizer_cov_trace_pc() #11
  %actual_length.i.i = getelementptr inbounds %struct.spi_message, ptr %m.i, i32 0, i32 6
  %23 = ptrtoint ptr %actual_length.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %actual_length.i.i, align 4
  br label %spidev_sync_read.exit

spidev_sync_read.exit:                            ; preds = %if.then4.i.i, %if.end.i.i21.spidev_sync_read.exit_crit_edge
  %status.1.i.i = phi i32 [ %24, %if.then4.i.i ], [ %call.i.i20, %if.end.i.i21.spidev_sync_read.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %m.i) #9
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status.1.i.i)
  %cmp1 = icmp sgt i32 %status.1.i.i, 0
  br i1 %cmp1, label %if.then2, label %spidev_sync_read.exit.if.end7_crit_edge

spidev_sync_read.exit.if.end7_crit_edge:          ; preds = %spidev_sync_read.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.then2:                                         ; preds = %spidev_sync_read.exit
  %25 = ptrtoint ptr %rx_buffer.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %rx_buffer.i, align 4
  call void @__check_object_size(ptr noundef %26, i32 noundef %status.1.i.i, i1 noundef zeroext true) #9
  call void @__might_fault(ptr noundef nonnull @.str.4, i32 noundef 174) #9
  %call.i.i = call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i, label %if.then2.copy_to_user.exit_crit_edge, label %if.end.i.i

if.then2.copy_to_user.exit_crit_edge:             ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_to_user.exit

if.end.i.i:                                       ; preds = %if.then2
  %27 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 %status.1.i.i, i32 -1226833920) #12, !srcloc !103
  %asmresult.i.i = extractvalue { i32, i32 } %27, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i.copy_to_user.exit_crit_edge

if.end.i.i.copy_to_user.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %26, i32 noundef %status.1.i.i) #9
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %buf, ptr noundef %26, i32 noundef %status.1.i.i) #9
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i.copy_to_user.exit_crit_edge, %if.then2.copy_to_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ %status.1.i.i, %if.then2.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %status.1.i.i, %if.end.i.i.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %status.1.i.i, i32 %n.addr.0.i)
  %cmp4 = icmp eq i32 %status.1.i.i, %n.addr.0.i
  %sub = sub i32 %status.1.i.i, %n.addr.0.i
  %status.0 = select i1 %cmp4, i32 -14, i32 %sub
  br label %if.end7

if.end7:                                          ; preds = %copy_to_user.exit, %spidev_sync_read.exit.if.end7_crit_edge, %spidev_sync_read.exit.thread
  %status.1 = phi i32 [ %status.0, %copy_to_user.exit ], [ %status.1.i.i, %spidev_sync_read.exit.if.end7_crit_edge ], [ -108, %spidev_sync_read.exit.thread ]
  call void @mutex_unlock(ptr noundef %buf_lock) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %status.1, %if.end7 ], [ -90, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spidev_write(ptr nocapture noundef readonly %filp, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef readnone %f_pos) #3 align 64 {
entry:
  %t.i = alloca %struct.spi_transfer, align 4
  %m.i = alloca %struct.spi_message, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @bufsiz, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %0, i32 %count)
  %cmp = icmp ult i32 %0, %count
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %1 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %private_data, align 4
  %buf_lock = getelementptr inbounds %struct.spidev_data, ptr %2, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %buf_lock, i32 noundef 0) #9
  %tx_buffer = getelementptr inbounds %struct.spidev_data, ptr %2, i32 0, i32 6
  %3 = ptrtoint ptr %tx_buffer to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %tx_buffer, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp9.i.i = icmp slt i32 %count, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %if.end
  %.b71.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i, label %land.rhs16.i.i.if.end4_crit_edge, label %if.then27.i.i, !prof !104

land.rhs16.i.i.if.end4_crit_edge:                 ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 230, i32 noundef 9, ptr noundef null) #9
  br label %if.end4

if.then.i.i.i:                                    ; preds = %if.end
  tail call void @__check_object_size(ptr noundef %4, i32 noundef %count, i1 noundef zeroext false) #9
  tail call void @__might_fault(ptr noundef nonnull @.str.4, i32 noundef 156) #9
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i, label %if.then.i.i.i.if.end.i.i_crit_edge, label %land.lhs.true.i.i

if.then.i.i.i.if.end.i.i_crit_edge:               ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i.i.i
  %5 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 %count, i32 -1226833920) #12, !srcloc !105
  %asmresult.i.i = extractvalue { i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !104

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %4, i32 noundef %count) #9
  %6 = tail call i32 @llvm.read_register.i32(metadata !93) #9
  %and.i.i.i.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 4
  %8 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #4, !srcloc !106
  %and.i.i.i.i = and i32 %8, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #9, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  %call1.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef %4, ptr noundef %buf, i32 noundef %count) #9
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %8) #9, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %if.then.i.i.i.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %count, %if.then.i.i.i.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %count, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.then2, label %if.then11.i.i, !prof !104

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i = sub i32 %count, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %4, i32 %sub.i.i
  %9 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %if.end4

if.then2:                                         ; preds = %if.end.i.i
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i) #9
  %10 = getelementptr inbounds i8, ptr %t.i, i32 4
  %11 = call ptr @memset(ptr %10, i32 0, i32 92)
  %12 = ptrtoint ptr %tx_buffer to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tx_buffer, align 4
  %14 = ptrtoint ptr %t.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %t.i, align 4
  %len1.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 2
  %15 = ptrtoint ptr %len1.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %count, ptr %len1.i, align 4
  %speed_hz.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 12
  %speed_hz2.i = getelementptr inbounds %struct.spidev_data, ptr %2, i32 0, i32 8
  %16 = ptrtoint ptr %speed_hz2.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %speed_hz2.i, align 4
  %18 = ptrtoint ptr %speed_hz.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %speed_hz.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %m.i) #9
  %19 = getelementptr inbounds i8, ptr %m.i, i32 8
  %20 = call ptr @memset(ptr %19, i32 0, i32 40)
  %21 = ptrtoint ptr %m.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %m.i, ptr %m.i, align 4
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %m.i, i32 0, i32 1
  %22 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %m.i, ptr %prev.i.i.i.i, align 4
  %resources.i.i.i = getelementptr inbounds %struct.spi_message, ptr %m.i, i32 0, i32 10
  %23 = ptrtoint ptr %resources.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %resources.i.i.i, ptr %resources.i.i.i, align 4
  %prev.i2.i.i.i = getelementptr inbounds %struct.spi_message, ptr %m.i, i32 0, i32 10, i32 1
  %24 = ptrtoint ptr %prev.i2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %resources.i.i.i, ptr %prev.i2.i.i.i, align 4
  %transfer_list.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 18
  %call.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i, ptr noundef nonnull %m.i, ptr noundef nonnull %m.i) #9
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.then2.spi_message_add_tail.exit.i_crit_edge

if.then2.spi_message_add_tail.exit.i_crit_edge:   ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  br label %spi_message_add_tail.exit.i

if.end.i.i.i.i:                                   ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  %25 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %transfer_list.i.i, ptr %prev.i.i.i.i, align 4
  %26 = ptrtoint ptr %transfer_list.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %m.i, ptr %transfer_list.i.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 18, i32 1
  %27 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %m.i, ptr %prev3.i.i.i.i, align 4
  %28 = ptrtoint ptr %m.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %transfer_list.i.i, ptr %m.i, align 4
  br label %spi_message_add_tail.exit.i

spi_message_add_tail.exit.i:                      ; preds = %if.end.i.i.i.i, %if.then2.spi_message_add_tail.exit.i_crit_edge
  %spi_lock.i.i = getelementptr inbounds %struct.spidev_data, ptr %2, i32 0, i32 1
  call void @_raw_spin_lock_irq(ptr noundef %spi_lock.i.i) #9
  %spi1.i.i = getelementptr inbounds %struct.spidev_data, ptr %2, i32 0, i32 2
  %29 = ptrtoint ptr %spi1.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %spi1.i.i, align 4
  call void @_raw_spin_unlock_irq(ptr noundef %spi_lock.i.i) #9
  %cmp.i.i13 = icmp eq ptr %30, null
  br i1 %cmp.i.i13, label %spi_message_add_tail.exit.i.spidev_sync_write.exit_crit_edge, label %if.end.i.i15

spi_message_add_tail.exit.i.spidev_sync_write.exit_crit_edge: ; preds = %spi_message_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %spidev_sync_write.exit

if.end.i.i15:                                     ; preds = %spi_message_add_tail.exit.i
  %call.i.i14 = call i32 @spi_sync(ptr noundef nonnull %30, ptr noundef nonnull %m.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i14)
  %cmp3.i.i = icmp eq i32 %call.i.i14, 0
  br i1 %cmp3.i.i, label %if.then4.i.i, label %if.end.i.i15.spidev_sync_write.exit_crit_edge

if.end.i.i15.spidev_sync_write.exit_crit_edge:    ; preds = %if.end.i.i15
  call void @__sanitizer_cov_trace_pc() #11
  br label %spidev_sync_write.exit

if.then4.i.i:                                     ; preds = %if.end.i.i15
  call void @__sanitizer_cov_trace_pc() #11
  %actual_length.i.i = getelementptr inbounds %struct.spi_message, ptr %m.i, i32 0, i32 6
  %31 = ptrtoint ptr %actual_length.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %actual_length.i.i, align 4
  br label %spidev_sync_write.exit

spidev_sync_write.exit:                           ; preds = %if.then4.i.i, %if.end.i.i15.spidev_sync_write.exit_crit_edge, %spi_message_add_tail.exit.i.spidev_sync_write.exit_crit_edge
  %status.1.i.i = phi i32 [ %32, %if.then4.i.i ], [ %call.i.i14, %if.end.i.i15.spidev_sync_write.exit_crit_edge ], [ -108, %spi_message_add_tail.exit.i.spidev_sync_write.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %m.i) #9
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i) #9
  br label %if.end4

if.end4:                                          ; preds = %spidev_sync_write.exit, %if.then11.i.i, %if.then27.i.i, %land.rhs16.i.i.if.end4_crit_edge
  %status.0 = phi i32 [ %status.1.i.i, %spidev_sync_write.exit ], [ -14, %if.then11.i.i ], [ -14, %if.then27.i.i ], [ -14, %land.rhs16.i.i.if.end4_crit_edge ]
  call void @mutex_unlock(ptr noundef %buf_lock) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %status.0, %if.end4 ], [ -90, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spidev_ioctl(ptr nocapture noundef readonly %filp, i32 noundef %cmd, i32 noundef %arg) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = and i32 %cmd, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 27392, i32 %0)
  %cmp.not = icmp eq i32 %0, 27392
  br i1 %cmp.not, label %if.end, label %entry.cleanup312_crit_edge

entry.cleanup312_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup312

if.end:                                           ; preds = %entry
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %1 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %private_data, align 4
  %spi_lock = getelementptr inbounds %struct.spidev_data, ptr %2, i32 0, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %spi_lock) #9
  %spi2 = getelementptr inbounds %struct.spidev_data, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %spi2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %spi2, align 4
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %if.end.spi_dev_get.exit.thread_crit_edge, label %land.lhs.true.i

if.end.spi_dev_get.exit.thread_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %spi_dev_get.exit.thread

land.lhs.true.i:                                  ; preds = %if.end
  %call.i = tail call ptr @get_device(ptr noundef nonnull %4) #9
  %tobool1.not.i = icmp eq ptr %call.i, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.spi_dev_get.exit.thread_crit_edge, label %if.end6

land.lhs.true.i.spi_dev_get.exit.thread_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %spi_dev_get.exit.thread

spi_dev_get.exit.thread:                          ; preds = %land.lhs.true.i.spi_dev_get.exit.thread_crit_edge, %if.end.spi_dev_get.exit.thread_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %spi_lock) #9
  br label %cleanup312

if.end6:                                          ; preds = %land.lhs.true.i
  tail call void @_raw_spin_unlock_irq(ptr noundef %spi_lock) #9
  %buf_lock = getelementptr inbounds %struct.spidev_data, ptr %2, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %buf_lock, i32 noundef 0) #9
  %5 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cmd, label %sw.default [
    i32 -2147390719, label %sw.bb
    i32 -2147194107, label %sw.bb11
    i32 -2147390718, label %sw.bb29
    i32 -2147390717, label %sw.bb48
    i32 -2147194108, label %sw.bb64
    i32 1074031364, label %sw.bb256
    i32 1073834755, label %sw.bb207
    i32 1073834754, label %sw.bb150
    i32 1073834753, label %if.then83
    i32 1074031365, label %if.else
  ]

sw.bb:                                            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  %6 = inttoptr i32 %arg to ptr
  %mode = getelementptr inbounds %struct.spi_device, ptr %4, i32 0, i32 7
  %7 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mode, align 8
  %conv = trunc i32 %8 to i8
  tail call void @__might_fault(ptr noundef nonnull @.str.5, i32 noundef 380) #9
  %9 = tail call i32 @llvm.read_register.i32(metadata !93) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 4
  %11 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #4, !srcloc !106
  %and.i = and i32 %11, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #9, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  %12 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_1", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %6, i8 %conv, i32 -1226833921) #9, !srcloc !109
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %11) #9, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  br label %spi_dev_put.exit

sw.bb11:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  %13 = inttoptr i32 %arg to ptr
  %mode16 = getelementptr inbounds %struct.spi_device, ptr %4, i32 0, i32 7
  %14 = ptrtoint ptr %mode16 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mode16, align 8
  %and17 = and i32 %15, 28671
  tail call void @__might_fault(ptr noundef nonnull @.str.5, i32 noundef 384) #9
  %16 = tail call i32 @llvm.read_register.i32(metadata !93) #9
  %and.i.i.i392 = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i.i392 to ptr
  %cpu_domain.i.i393 = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 4
  %18 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i393) #4, !srcloc !106
  %and.i394 = and i32 %18, -13
  %or.i395 = or i32 %and.i394, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i395) #9, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  %19 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %13, i32 %and17, i32 -1226833921) #9, !srcloc !110
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %18) #9, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  br label %spi_dev_put.exit

sw.bb29:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  %20 = inttoptr i32 %arg to ptr
  %mode34 = getelementptr inbounds %struct.spi_device, ptr %4, i32 0, i32 7
  %21 = ptrtoint ptr %mode34 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %mode34, align 8
  %23 = trunc i32 %22 to i8
  %24 = lshr i8 %23, 3
  %25 = and i8 %24, 1
  tail call void @__might_fault(ptr noundef nonnull @.str.5, i32 noundef 388) #9
  %26 = tail call i32 @llvm.read_register.i32(metadata !93) #9
  %and.i.i.i396 = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i396 to ptr
  %cpu_domain.i.i397 = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 4
  %28 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i397) #4, !srcloc !106
  %and.i398 = and i32 %28, -13
  %or.i399 = or i32 %and.i398, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i399) #9, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  %29 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_1", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %20, i8 %25, i32 -1226833921) #9, !srcloc !111
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %28) #9, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  br label %spi_dev_put.exit

sw.bb48:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  %30 = inttoptr i32 %arg to ptr
  %bits_per_word = getelementptr inbounds %struct.spi_device, ptr %4, i32 0, i32 5
  %31 = ptrtoint ptr %bits_per_word to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %bits_per_word, align 1
  tail call void @__might_fault(ptr noundef nonnull @.str.5, i32 noundef 391) #9
  %33 = tail call i32 @llvm.read_register.i32(metadata !93) #9
  %and.i.i.i400 = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i400 to ptr
  %cpu_domain.i.i401 = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 4
  %35 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i401) #4, !srcloc !106
  %and.i402 = and i32 %35, -13
  %or.i403 = or i32 %and.i402, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i403) #9, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  %36 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_1", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %30, i8 %32, i32 -1226833921) #9, !srcloc !112
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %35) #9, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  br label %spi_dev_put.exit

sw.bb64:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  %37 = inttoptr i32 %arg to ptr
  %speed_hz = getelementptr inbounds %struct.spidev_data, ptr %2, i32 0, i32 8
  %38 = ptrtoint ptr %speed_hz to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %speed_hz, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.5, i32 noundef 394) #9
  %40 = tail call i32 @llvm.read_register.i32(metadata !93) #9
  %and.i.i.i404 = and i32 %40, -16384
  %41 = inttoptr i32 %and.i.i.i404 to ptr
  %cpu_domain.i.i405 = getelementptr inbounds %struct.thread_info, ptr %41, i32 0, i32 4
  %42 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i405) #4, !srcloc !106
  %and.i406 = and i32 %42, -13
  %or.i407 = or i32 %and.i406, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i407) #9, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  %43 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %37, i32 %39, i32 -1226833921) #9, !srcloc !113
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %42) #9, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  br label %spi_dev_put.exit

if.then83:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__might_fault(ptr noundef nonnull @.str.5, i32 noundef 401) #9
  %44 = inttoptr i32 %arg to ptr
  %45 = tail call i32 @llvm.read_register.i32(metadata !93) #9
  %and.i.i.i408 = and i32 %45, -16384
  %46 = inttoptr i32 %and.i.i.i408 to ptr
  %cpu_domain.i.i409 = getelementptr inbounds %struct.thread_info, ptr %46, i32 0, i32 4
  %47 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i409) #4, !srcloc !106
  %and.i410 = and i32 %47, -13
  %or.i411 = or i32 %and.i410, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i411) #9, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  %48 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_1", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %44, i32 -1226833921) #9, !srcloc !114
  %asmresult92 = extractvalue { i32, i32 } %48, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %47) #9, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  %conv94 = and i32 %asmresult92, 255
  br label %if.end108

if.else:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__might_fault(ptr noundef nonnull @.str.5, i32 noundef 403) #9
  %49 = inttoptr i32 %arg to ptr
  %50 = tail call i32 @llvm.read_register.i32(metadata !93) #9
  %and.i.i.i412 = and i32 %50, -16384
  %51 = inttoptr i32 %and.i.i.i412 to ptr
  %cpu_domain.i.i413 = getelementptr inbounds %struct.thread_info, ptr %51, i32 0, i32 4
  %52 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i413) #4, !srcloc !106
  %and.i414 = and i32 %52, -13
  %or.i415 = or i32 %and.i414, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i415) #9, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  %53 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %49, i32 -1226833921) #9, !srcloc !115
  %asmresult106 = extractvalue { i32, i32 } %53, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %52) #9, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  br label %if.end108

if.end108:                                        ; preds = %if.else, %if.then83
  %tmp.0 = phi i32 [ %conv94, %if.then83 ], [ %asmresult106, %if.else ]
  %.pn = phi { i32, i32 } [ %48, %if.then83 ], [ %53, %if.else ]
  %retval1.0 = extractvalue { i32, i32 } %.pn, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval1.0)
  %cmp109 = icmp eq i32 %retval1.0, 0
  br i1 %cmp109, label %if.then111, label %if.end108.spi_dev_put.exit_crit_edge

if.end108.spi_dev_put.exit_crit_edge:             ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #11
  br label %spi_dev_put.exit

if.then111:                                       ; preds = %if.end108
  %controller = getelementptr inbounds %struct.spi_device, ptr %4, i32 0, i32 1
  %54 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %controller, align 8
  %mode112 = getelementptr inbounds %struct.spi_device, ptr %4, i32 0, i32 7
  %56 = ptrtoint ptr %mode112 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %mode112, align 8
  %and113 = and i32 %tmp.0, -28672
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and113)
  %tobool114.not = icmp eq i32 %and113, 0
  br i1 %tobool114.not, label %if.end116, label %if.then111.spi_dev_put.exit_crit_edge

if.then111.spi_dev_put.exit_crit_edge:            ; preds = %if.then111
  call void @__sanitizer_cov_trace_pc() #11
  br label %spi_dev_put.exit

if.end116:                                        ; preds = %if.then111
  %use_gpio_descriptors = getelementptr inbounds %struct.spi_controller, ptr %55, i32 0, i32 56
  %58 = ptrtoint ptr %use_gpio_descriptors to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %use_gpio_descriptors, align 8, !range !116
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %tobool117.not = icmp eq i8 %59, 0
  br i1 %tobool117.not, label %if.end116.if.end124_crit_edge, label %land.lhs.true

if.end116.if.end124_crit_edge:                    ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end124

land.lhs.true:                                    ; preds = %if.end116
  %cs_gpiods = getelementptr inbounds %struct.spi_controller, ptr %55, i32 0, i32 55
  %60 = ptrtoint ptr %cs_gpiods to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %cs_gpiods, align 4
  %tobool119.not = icmp eq ptr %61, null
  br i1 %tobool119.not, label %land.lhs.true.if.end124_crit_edge, label %land.lhs.true120

land.lhs.true.if.end124_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end124

land.lhs.true120:                                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %chip_select = getelementptr inbounds %struct.spi_device, ptr %4, i32 0, i32 4
  %62 = ptrtoint ptr %chip_select to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %chip_select, align 4
  %idxprom = zext i8 %63 to i32
  %arrayidx = getelementptr ptr, ptr %61, i32 %idxprom
  %64 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %arrayidx, align 4
  %tobool122.not = icmp eq ptr %65, null
  %or = or i32 %tmp.0, 4
  %spec.select = select i1 %tobool122.not, i32 %tmp.0, i32 %or
  br label %if.end124

if.end124:                                        ; preds = %land.lhs.true120, %land.lhs.true.if.end124_crit_edge, %if.end116.if.end124_crit_edge
  %tmp.1 = phi i32 [ %tmp.0, %land.lhs.true.if.end124_crit_edge ], [ %tmp.0, %if.end116.if.end124_crit_edge ], [ %spec.select, %land.lhs.true120 ]
  %and126 = and i32 %57, -28672
  %or127 = or i32 %tmp.1, %and126
  %and128 = and i32 %or127, 65535
  %66 = ptrtoint ptr %mode112 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %and128, ptr %mode112, align 8
  %call130 = tail call i32 @spi_setup(ptr noundef nonnull %4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call130)
  %cmp131 = icmp slt i32 %call130, 0
  br i1 %cmp131, label %if.then133, label %do.body136

if.then133:                                       ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #11
  %67 = ptrtoint ptr %mode112 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %57, ptr %mode112, align 8
  br label %spi_dev_put.exit

do.body136:                                       ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @spidev_ioctl.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@spidev_ioctl, %spi_dev_put.exit)) #9
          to label %if.then143 [label %spi_dev_put.exit], !srcloc !117

if.then143:                                       ; preds = %do.body136
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @spidev_ioctl.__UNIQUE_ID_ddebug234, ptr noundef nonnull %4, ptr noundef nonnull @.str.7, i32 noundef %or127) #9
  br label %spi_dev_put.exit

sw.bb150:                                         ; preds = %if.end6
  tail call void @__might_fault(ptr noundef nonnull @.str.5, i32 noundef 427) #9
  %68 = inttoptr i32 %arg to ptr
  %69 = tail call i32 @llvm.read_register.i32(metadata !93) #9
  %and.i.i.i416 = and i32 %69, -16384
  %70 = inttoptr i32 %and.i.i.i416 to ptr
  %cpu_domain.i.i417 = getelementptr inbounds %struct.thread_info, ptr %70, i32 0, i32 4
  %71 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i417) #4, !srcloc !106
  %and.i418 = and i32 %71, -13
  %or.i419 = or i32 %and.i418, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i419) #9, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  %72 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_1", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %68, i32 -1226833921) #9, !srcloc !118
  %asmresult160 = extractvalue { i32, i32 } %72, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %71) #9, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult160)
  %cmp165 = icmp eq i32 %asmresult160, 0
  br i1 %cmp165, label %if.then167, label %sw.bb150.spi_dev_put.exit_crit_edge

sw.bb150.spi_dev_put.exit_crit_edge:              ; preds = %sw.bb150
  call void @__sanitizer_cov_trace_pc() #11
  br label %spi_dev_put.exit

if.then167:                                       ; preds = %sw.bb150
  %asmresult161 = extractvalue { i32, i32 } %72, 1
  %conv163 = and i32 %asmresult161, 255
  %mode169 = getelementptr inbounds %struct.spi_device, ptr %4, i32 0, i32 7
  %73 = ptrtoint ptr %mode169 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %mode169, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv163)
  %tobool170.not = icmp eq i32 %conv163, 0
  %and176 = and i32 %74, -9
  %masksel = select i1 %tobool170.not, i32 0, i32 8
  %storemerge = or i32 %and176, %masksel
  %75 = ptrtoint ptr %mode169 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %storemerge, ptr %mode169, align 8
  %call178 = tail call i32 @spi_setup(ptr noundef nonnull %4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call178)
  %cmp179 = icmp slt i32 %call178, 0
  br i1 %cmp179, label %if.then181, label %do.body184

if.then181:                                       ; preds = %if.then167
  call void @__sanitizer_cov_trace_pc() #11
  %76 = ptrtoint ptr %mode169 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %74, ptr %mode169, align 8
  br label %spi_dev_put.exit

do.body184:                                       ; preds = %if.then167
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @spidev_ioctl.__UNIQUE_ID_ddebug235, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@spidev_ioctl, %spi_dev_put.exit)) #9
          to label %if.then198 [label %spi_dev_put.exit], !srcloc !117

if.then198:                                       ; preds = %do.body184
  call void @__sanitizer_cov_trace_pc() #11
  %cond201 = select i1 %tobool170.not, i32 109, i32 108
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @spidev_ioctl.__UNIQUE_ID_ddebug235, ptr noundef nonnull %4, ptr noundef nonnull @.str.8, i32 noundef %cond201) #9
  br label %spi_dev_put.exit

sw.bb207:                                         ; preds = %if.end6
  tail call void @__might_fault(ptr noundef nonnull @.str.5, i32 noundef 444) #9
  %77 = inttoptr i32 %arg to ptr
  %78 = tail call i32 @llvm.read_register.i32(metadata !93) #9
  %and.i.i.i423 = and i32 %78, -16384
  %79 = inttoptr i32 %and.i.i.i423 to ptr
  %cpu_domain.i.i424 = getelementptr inbounds %struct.thread_info, ptr %79, i32 0, i32 4
  %80 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i424) #4, !srcloc !106
  %and.i425 = and i32 %80, -13
  %or.i426 = or i32 %and.i425, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i426) #9, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  %81 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_1", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %77, i32 -1226833921) #9, !srcloc !119
  %asmresult217 = extractvalue { i32, i32 } %81, 0
  %asmresult218 = extractvalue { i32, i32 } %81, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %80) #9, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  %conv220 = and i32 %asmresult218, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult217)
  %cmp222 = icmp eq i32 %asmresult217, 0
  br i1 %cmp222, label %if.then224, label %sw.bb207.spi_dev_put.exit_crit_edge

sw.bb207.spi_dev_put.exit_crit_edge:              ; preds = %sw.bb207
  call void @__sanitizer_cov_trace_pc() #11
  br label %spi_dev_put.exit

if.then224:                                       ; preds = %sw.bb207
  %conv219 = trunc i32 %asmresult218 to i8
  %bits_per_word226 = getelementptr inbounds %struct.spi_device, ptr %4, i32 0, i32 5
  %82 = ptrtoint ptr %bits_per_word226 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %bits_per_word226, align 1
  store i8 %conv219, ptr %bits_per_word226, align 1
  %call229 = tail call i32 @spi_setup(ptr noundef nonnull %4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call229)
  %cmp230 = icmp slt i32 %call229, 0
  br i1 %cmp230, label %if.then232, label %do.body235

if.then232:                                       ; preds = %if.then224
  call void @__sanitizer_cov_trace_pc() #11
  %84 = ptrtoint ptr %bits_per_word226 to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 %83, ptr %bits_per_word226, align 1
  br label %spi_dev_put.exit

do.body235:                                       ; preds = %if.then224
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @spidev_ioctl.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@spidev_ioctl, %spi_dev_put.exit)) #9
          to label %if.then249 [label %spi_dev_put.exit], !srcloc !117

if.then249:                                       ; preds = %do.body235
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @spidev_ioctl.__UNIQUE_ID_ddebug236, ptr noundef nonnull %4, ptr noundef nonnull @.str.9, i32 noundef %conv220) #9
  br label %spi_dev_put.exit

sw.bb256:                                         ; preds = %if.end6
  tail call void @__might_fault(ptr noundef nonnull @.str.5, i32 noundef 457) #9
  %85 = inttoptr i32 %arg to ptr
  %86 = tail call i32 @llvm.read_register.i32(metadata !93) #9
  %and.i.i.i430 = and i32 %86, -16384
  %87 = inttoptr i32 %and.i.i.i430 to ptr
  %cpu_domain.i.i431 = getelementptr inbounds %struct.thread_info, ptr %87, i32 0, i32 4
  %88 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i431) #4, !srcloc !106
  %and.i432 = and i32 %88, -13
  %or.i433 = or i32 %and.i432, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i433) #9, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  %89 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %85, i32 -1226833921) #9, !srcloc !120
  %asmresult266 = extractvalue { i32, i32 } %89, 0
  %asmresult267 = extractvalue { i32, i32 } %89, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %88) #9, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult266)
  %cmp269 = icmp eq i32 %asmresult266, 0
  br i1 %cmp269, label %if.then271, label %sw.bb256.spi_dev_put.exit_crit_edge

sw.bb256.spi_dev_put.exit_crit_edge:              ; preds = %sw.bb256
  call void @__sanitizer_cov_trace_pc() #11
  br label %spi_dev_put.exit

if.then271:                                       ; preds = %sw.bb256
  %max_speed_hz = getelementptr inbounds %struct.spi_device, ptr %4, i32 0, i32 3
  %90 = ptrtoint ptr %max_speed_hz to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %max_speed_hz, align 8
  store i32 %asmresult267, ptr %max_speed_hz, align 8
  %call274 = tail call i32 @spi_setup(ptr noundef nonnull %4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call274)
  %cmp275 = icmp eq i32 %call274, 0
  br i1 %cmp275, label %if.then277, label %if.then271.if.end299_crit_edge

if.then271.if.end299_crit_edge:                   ; preds = %if.then271
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end299

if.then277:                                       ; preds = %if.then271
  call void @__sanitizer_cov_trace_pc() #11
  %speed_hz278 = getelementptr inbounds %struct.spidev_data, ptr %2, i32 0, i32 8
  %92 = ptrtoint ptr %speed_hz278 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %asmresult267, ptr %speed_hz278, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @spidev_ioctl.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@spidev_ioctl, %if.end299)) #9
          to label %if.then293 [label %if.end299], !srcloc !117

if.then293:                                       ; preds = %if.then277
  call void @__sanitizer_cov_trace_pc() #11
  %93 = ptrtoint ptr %speed_hz278 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %speed_hz278, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @spidev_ioctl.__UNIQUE_ID_ddebug237, ptr noundef nonnull %4, ptr noundef nonnull @.str.10, i32 noundef %94) #9
  br label %if.end299

if.end299:                                        ; preds = %if.then293, %if.then277, %if.then271.if.end299_crit_edge
  %95 = ptrtoint ptr %max_speed_hz to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %91, ptr %max_speed_hz, align 8
  br label %spi_dev_put.exit

sw.default:                                       ; preds = %if.end6
  %96 = inttoptr i32 %arg to ptr
  %97 = and i32 %cmd, -1073676289
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073769216, i32 %97)
  %98 = icmp eq i32 %97, 1073769216
  br i1 %98, label %if.end.i, label %sw.default.if.then304_crit_edge

sw.default.if.then304_crit_edge:                  ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then304

if.end.i:                                         ; preds = %sw.default
  %shr8.i = lshr i32 %cmd, 16
  %and9.i = and i32 %shr8.i, 16383
  %99 = and i32 %cmd, 2031616
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %99)
  %cmp10.not.i = icmp eq i32 %99, 0
  br i1 %cmp10.not.i, label %if.end13.i, label %if.end.i.if.then304_crit_edge

if.end.i.if.then304_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then304

if.end13.i:                                       ; preds = %if.end.i
  %div24.i = lshr i32 %and9.i, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %and9.i)
  %cmp14.i = icmp ult i32 %and9.i, 32
  br i1 %cmp14.i, label %if.end13.i.spi_dev_put.exit_crit_edge, label %spidev_get_ioc_message.exit

if.end13.i.spi_dev_put.exit_crit_edge:            ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %spi_dev_put.exit

spidev_get_ioc_message.exit:                      ; preds = %if.end13.i
  %call17.i = tail call ptr @memdup_user(ptr noundef %96, i32 noundef %and9.i) #9
  %cmp.i = icmp ugt ptr %call17.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %spidev_get_ioc_message.exit.if.then304_crit_edge, label %if.end306

spidev_get_ioc_message.exit.if.then304_crit_edge: ; preds = %spidev_get_ioc_message.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then304

if.then304:                                       ; preds = %spidev_get_ioc_message.exit.if.then304_crit_edge, %if.end.i.if.then304_crit_edge, %sw.default.if.then304_crit_edge
  %retval.0.i437452 = phi ptr [ %call17.i, %spidev_get_ioc_message.exit.if.then304_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end.i.if.then304_crit_edge ], [ inttoptr (i32 -25 to ptr), %sw.default.if.then304_crit_edge ]
  %100 = ptrtoint ptr %retval.0.i437452 to i32
  br label %spi_dev_put.exit

if.end306:                                        ; preds = %spidev_get_ioc_message.exit
  %tobool307.not = icmp eq ptr %call17.i, null
  br i1 %tobool307.not, label %if.end306.spi_dev_put.exit_crit_edge, label %if.end309

if.end306.spi_dev_put.exit_crit_edge:             ; preds = %if.end306
  call void @__sanitizer_cov_trace_pc() #11
  br label %spi_dev_put.exit

if.end309:                                        ; preds = %if.end306
  call void @__sanitizer_cov_trace_pc() #11
  %call310 = tail call fastcc i32 @spidev_message(ptr noundef %2, ptr noundef nonnull %call17.i, i32 noundef %div24.i)
  tail call void @kfree(ptr noundef nonnull %call17.i) #9
  br label %spi_dev_put.exit

spi_dev_put.exit:                                 ; preds = %if.end309, %if.end306.spi_dev_put.exit_crit_edge, %if.then304, %if.end13.i.spi_dev_put.exit_crit_edge, %if.end299, %sw.bb256.spi_dev_put.exit_crit_edge, %if.then249, %do.body235, %if.then232, %sw.bb207.spi_dev_put.exit_crit_edge, %if.then198, %do.body184, %if.then181, %sw.bb150.spi_dev_put.exit_crit_edge, %if.then143, %do.body136, %if.then133, %if.then111.spi_dev_put.exit_crit_edge, %if.end108.spi_dev_put.exit_crit_edge, %sw.bb64, %sw.bb48, %sw.bb29, %sw.bb11, %sw.bb
  %retval1.2 = phi i32 [ %100, %if.then304 ], [ %call310, %if.end309 ], [ 0, %if.end306.spi_dev_put.exit_crit_edge ], [ %call274, %if.end299 ], [ %asmresult266, %sw.bb256.spi_dev_put.exit_crit_edge ], [ %asmresult217, %sw.bb207.spi_dev_put.exit_crit_edge ], [ %asmresult160, %sw.bb150.spi_dev_put.exit_crit_edge ], [ %retval1.0, %if.end108.spi_dev_put.exit_crit_edge ], [ %43, %sw.bb64 ], [ %36, %sw.bb48 ], [ %29, %sw.bb29 ], [ %19, %sw.bb11 ], [ %12, %sw.bb ], [ -22, %if.then111.spi_dev_put.exit_crit_edge ], [ %call130, %if.then143 ], [ %call130, %if.then133 ], [ %call178, %if.then198 ], [ %call178, %if.then181 ], [ %call229, %if.then249 ], [ %call229, %if.then232 ], [ %call130, %do.body136 ], [ %call178, %do.body184 ], [ %call229, %do.body235 ], [ 0, %if.end13.i.spi_dev_put.exit_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %buf_lock) #9
  tail call void @put_device(ptr noundef nonnull %4) #9
  br label %cleanup312

cleanup312:                                       ; preds = %spi_dev_put.exit, %spi_dev_get.exit.thread, %entry.cleanup312_crit_edge
  %retval.0 = phi i32 [ %retval1.2, %spi_dev_put.exit ], [ -25, %entry.cleanup312_crit_edge ], [ -108, %spi_dev_get.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spidev_open(ptr noundef %inode, ptr noundef %filp) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @device_list_lock, i32 noundef 0) #9
  %i_rdev = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 13
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %.pn.in = phi ptr [ @device_list, %entry ], [ %.pn, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp.not = icmp eq ptr %.pn, @device_list
  br i1 %cmp.not, label %do.body, label %for.body

for.body:                                         ; preds = %for.cond
  %spidev.0 = getelementptr i8, ptr %.pn, i32 -52
  %1 = ptrtoint ptr %spidev.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %spidev.0, align 4
  %3 = ptrtoint ptr %i_rdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %i_rdev, align 8
  %cmp1 = icmp eq i32 %2, %4
  br i1 %cmp1, label %if.end16, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond

do.body:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @spidev_open.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@spidev_open, %cleanup)) #9
          to label %if.then13 [label %cleanup], !srcloc !117

if.then13:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %i_rdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %i_rdev, align 8
  %and.i = and i32 %6, 1048575
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @spidev_open.__UNIQUE_ID_ddebug238, ptr noundef nonnull @.str.12, i32 noundef %and.i) #9
  br label %cleanup

if.end16:                                         ; preds = %for.body
  %spidev.0.le = getelementptr i8, ptr %.pn, i32 -52
  %tx_buffer = getelementptr i8, ptr %.pn, i32 104
  %7 = ptrtoint ptr %tx_buffer to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tx_buffer, align 4
  %tobool17.not = icmp eq ptr %8, null
  br i1 %tobool17.not, label %if.end8.i, label %if.end16.if.end43_crit_edge

if.end16.if.end43_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end43

if.end8.i:                                        ; preds = %if.end16
  %9 = load i32, ptr @bufsiz, align 4
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %9, i32 noundef 3264) #13
  %10 = ptrtoint ptr %tx_buffer to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call9.i, ptr %tx_buffer, align 4
  %tobool22.not = icmp eq ptr %call9.i, null
  br i1 %tobool22.not, label %do.body24, label %if.end8.i.if.end43_crit_edge

if.end8.i.if.end43_crit_edge:                     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end43

do.body24:                                        ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @spidev_open.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@spidev_open, %cleanup)) #9
          to label %if.then38 [label %cleanup], !srcloc !117

if.then38:                                        ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #11
  %spi = getelementptr i8, ptr %.pn, i32 -4
  %11 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %spi, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @spidev_open.__UNIQUE_ID_ddebug239, ptr noundef %12, ptr noundef nonnull @.str.13) #9
  br label %cleanup

if.end43:                                         ; preds = %if.end8.i.if.end43_crit_edge, %if.end16.if.end43_crit_edge
  %rx_buffer = getelementptr i8, ptr %.pn, i32 108
  %13 = ptrtoint ptr %rx_buffer to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rx_buffer, align 4
  %tobool44.not = icmp eq ptr %14, null
  br i1 %tobool44.not, label %if.end8.i124, label %if.end43.if.end72_crit_edge

if.end43.if.end72_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end72

if.end8.i124:                                     ; preds = %if.end43
  %15 = load i32, ptr @bufsiz, align 4
  %call9.i123 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %15, i32 noundef 3264) #13
  %16 = ptrtoint ptr %rx_buffer to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call9.i123, ptr %rx_buffer, align 4
  %tobool49.not = icmp eq ptr %call9.i123, null
  br i1 %tobool49.not, label %do.body51, label %if.end8.i124.if.end72_crit_edge

if.end8.i124.if.end72_crit_edge:                  ; preds = %if.end8.i124
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end72

do.body51:                                        ; preds = %if.end8.i124
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @spidev_open.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@spidev_open, %do.end70)) #9
          to label %if.then65 [label %do.end70], !srcloc !117

if.then65:                                        ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #11
  %spi66 = getelementptr i8, ptr %.pn, i32 -4
  %17 = ptrtoint ptr %spi66 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %spi66, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @spidev_open.__UNIQUE_ID_ddebug240, ptr noundef %18, ptr noundef nonnull @.str.13) #9
  br label %do.end70

do.end70:                                         ; preds = %if.then65, %do.body51
  %19 = ptrtoint ptr %tx_buffer to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %tx_buffer, align 4
  tail call void @kfree(ptr noundef %20) #9
  %21 = ptrtoint ptr %tx_buffer to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %tx_buffer, align 4
  br label %cleanup

if.end72:                                         ; preds = %if.end8.i124.if.end72_crit_edge, %if.end43.if.end72_crit_edge
  %users = getelementptr i8, ptr %.pn, i32 100
  %22 = ptrtoint ptr %users to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %users, align 4
  %inc = add i32 %23, 1
  store i32 %inc, ptr %users, align 4
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %24 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %spidev.0.le, ptr %private_data, align 4
  %call73 = tail call i32 @stream_open(ptr noundef %inode, ptr noundef %filp) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end72, %do.end70, %if.then38, %do.body24, %if.then13, %do.body
  %retval.0 = phi i32 [ 0, %if.end72 ], [ -6, %if.then13 ], [ -12, %do.end70 ], [ -12, %if.then38 ], [ -6, %do.body ], [ -12, %do.body24 ]
  tail call void @mutex_unlock(ptr noundef nonnull @device_list_lock) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spidev_release(ptr nocapture noundef readnone %inode, ptr nocapture noundef %filp) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @device_list_lock, i32 noundef 0) #9
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  store ptr null, ptr %private_data, align 4
  %spi_lock = getelementptr inbounds %struct.spidev_data, ptr %1, i32 0, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %spi_lock) #9
  %spi = getelementptr inbounds %struct.spidev_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %spi, align 4
  %cmp = icmp eq ptr %3, null
  tail call void @_raw_spin_unlock_irq(ptr noundef %spi_lock) #9
  %users = getelementptr inbounds %struct.spidev_data, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %users to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %users, align 4
  %dec = add i32 %5, -1
  store i32 %dec, ptr %users, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %if.then, label %if.end9

if.then:                                          ; preds = %entry
  %tx_buffer = getelementptr inbounds %struct.spidev_data, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %tx_buffer to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tx_buffer, align 4
  tail call void @kfree(ptr noundef %7) #9
  %8 = ptrtoint ptr %tx_buffer to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %tx_buffer, align 4
  %rx_buffer = getelementptr inbounds %struct.spidev_data, ptr %1, i32 0, i32 7
  %9 = ptrtoint ptr %rx_buffer to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rx_buffer, align 4
  tail call void @kfree(ptr noundef %10) #9
  %11 = ptrtoint ptr %rx_buffer to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %rx_buffer, align 4
  br i1 %cmp, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree(ptr noundef %1) #9
  br label %if.end13

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %spi, align 4
  %max_speed_hz = getelementptr inbounds %struct.spi_device, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %max_speed_hz to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %max_speed_hz, align 8
  %speed_hz = getelementptr inbounds %struct.spidev_data, ptr %1, i32 0, i32 8
  %16 = ptrtoint ptr %speed_hz to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %speed_hz, align 4
  br label %if.then11

if.end9:                                          ; preds = %entry
  br i1 %cmp, label %if.end9.if.end13_crit_edge, label %if.end9.if.then11_crit_edge

if.end9.if.then11_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11

if.end9.if.end13_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

if.then11:                                        ; preds = %if.end9.if.then11_crit_edge, %if.else
  %17 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %spi, align 4
  %call = tail call i32 @spi_slave_abort(ptr noundef %18) #9
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.end9.if.end13_crit_edge, %if.then7
  tail call void @mutex_unlock(ptr noundef nonnull @device_list_lock) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_sync(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

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
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @spidev_message(ptr noundef %spidev, ptr nocapture noundef readonly %u_xfers, i32 noundef %n_xfers) unnamed_addr #3 align 64 {
entry:
  %msg = alloca %struct.spi_message, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg) #9
  %0 = getelementptr inbounds i8, ptr %msg, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 40)
  %2 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %msg, ptr %msg, align 4
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %msg, ptr %prev.i.i.i, align 4
  %resources.i.i = getelementptr inbounds %struct.spi_message, ptr %msg, i32 0, i32 10
  %4 = ptrtoint ptr %resources.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %resources.i.i, ptr %resources.i.i, align 4
  %prev.i2.i.i = getelementptr inbounds %struct.spi_message, ptr %msg, i32 0, i32 10, i32 1
  %5 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %resources.i.i, ptr %prev.i2.i.i, align 4
  %6 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %n_xfers, i32 96) #9
  %7 = extractvalue { i32, i1 } %6, 1
  br i1 %7, label %entry.cleanup92_crit_edge, label %if.end7.i.i, !prof !121

entry.cleanup92_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup92

if.end7.i.i:                                      ; preds = %entry
  %8 = extractvalue { i32, i1 } %6, 0
  %call8.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %8, i32 noundef 3520) #13
  %cmp = icmp eq ptr %call8.i.i, null
  br i1 %cmp, label %if.end7.i.i.cleanup92_crit_edge, label %if.end

if.end7.i.i.cleanup92_crit_edge:                  ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup92

if.end:                                           ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n_xfers)
  %tobool.not223 = icmp eq i32 %n_xfers, 0
  br i1 %tobool.not223, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %rx_buffer = getelementptr inbounds %struct.spidev_data, ptr %spidev, i32 0, i32 7
  %9 = ptrtoint ptr %rx_buffer to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rx_buffer, align 4
  %tx_buffer = getelementptr inbounds %struct.spidev_data, ptr %spidev, i32 0, i32 6
  %11 = ptrtoint ptr %tx_buffer to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %tx_buffer, align 4
  %speed_hz63 = getelementptr inbounds %struct.spidev_data, ptr %spidev, i32 0, i32 8
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %rx_buf.0233 = phi ptr [ %10, %for.body.lr.ph ], [ %rx_buf.1, %for.inc.for.body_crit_edge ]
  %tx_buf.0232 = phi ptr [ %12, %for.body.lr.ph ], [ %tx_buf.1, %for.inc.for.body_crit_edge ]
  %rx_total.0231 = phi i32 [ 0, %for.body.lr.ph ], [ %rx_total.1, %for.inc.for.body_crit_edge ]
  %tx_total.0230 = phi i32 [ 0, %for.body.lr.ph ], [ %tx_total.1, %for.inc.for.body_crit_edge ]
  %total.0229 = phi i32 [ 0, %for.body.lr.ph ], [ %add4, %for.inc.for.body_crit_edge ]
  %n.0228 = phi i32 [ %n_xfers, %for.body.lr.ph ], [ %dec, %for.inc.for.body_crit_edge ]
  %u_tmp.0226 = phi ptr [ %u_xfers, %for.body.lr.ph ], [ %incdec.ptr66, %for.inc.for.body_crit_edge ]
  %k_tmp.0224 = phi ptr [ %call8.i.i, %for.body.lr.ph ], [ %incdec.ptr, %for.inc.for.body_crit_edge ]
  %len = getelementptr inbounds %struct.spi_ioc_transfer, ptr %u_tmp.0226, i32 0, i32 2
  %13 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %len, align 8
  %add = add i32 %14, 127
  %and = and i32 %add, -128
  %len2 = getelementptr inbounds %struct.spi_transfer, ptr %k_tmp.0224, i32 0, i32 2
  %15 = ptrtoint ptr %len2 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %len2, align 4
  %add4 = add i32 %14, %total.0229
  %16 = or i32 %add4, %14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %16)
  %.not = icmp sgt i32 %16, -1
  br i1 %.not, label %if.end9, label %for.body.done_crit_edge

for.body.done_crit_edge:                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

if.end9:                                          ; preds = %for.body
  %rx_buf10 = getelementptr inbounds %struct.spi_ioc_transfer, ptr %u_tmp.0226, i32 0, i32 1
  %17 = ptrtoint ptr %rx_buf10 to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %rx_buf10, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %18)
  %tobool11.not = icmp eq i64 %18, 0
  br i1 %tobool11.not, label %if.end9.if.end18_crit_edge, label %if.then12

if.end9.if.end18_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

if.then12:                                        ; preds = %if.end9
  %add13 = add i32 %and, %rx_total.0231
  %19 = load i32, ptr @bufsiz, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add13, i32 %19)
  %cmp14 = icmp ugt i32 %add13, %19
  br i1 %cmp14, label %if.then12.done_crit_edge, label %if.end16

if.then12.done_crit_edge:                         ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

if.end16:                                         ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #11
  %rx_buf17 = getelementptr inbounds %struct.spi_transfer, ptr %k_tmp.0224, i32 0, i32 1
  %20 = ptrtoint ptr %rx_buf17 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %rx_buf.0233, ptr %rx_buf17, align 4
  %add.ptr = getelementptr i8, ptr %rx_buf.0233, i32 %and
  br label %if.end18

if.end18:                                         ; preds = %if.end16, %if.end9.if.end18_crit_edge
  %rx_total.1 = phi i32 [ %add13, %if.end16 ], [ %rx_total.0231, %if.end9.if.end18_crit_edge ]
  %rx_buf.1 = phi ptr [ %add.ptr, %if.end16 ], [ %rx_buf.0233, %if.end9.if.end18_crit_edge ]
  %21 = ptrtoint ptr %u_tmp.0226 to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %u_tmp.0226, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %22)
  %tobool20.not = icmp eq i64 %22, 0
  br i1 %tobool20.not, label %if.end18.if.end34_crit_edge, label %if.then21

if.end18.if.end34_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34

if.then21:                                        ; preds = %if.end18
  %add22 = add i32 %and, %tx_total.0230
  %23 = load i32, ptr @bufsiz, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add22, i32 %23)
  %cmp23 = icmp ugt i32 %add22, %23
  br i1 %cmp23, label %if.then21.done_crit_edge, label %if.end25

if.then21.done_crit_edge:                         ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

if.end25:                                         ; preds = %if.then21
  %24 = ptrtoint ptr %k_tmp.0224 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %tx_buf.0232, ptr %k_tmp.0224, align 4
  %25 = ptrtoint ptr %u_tmp.0226 to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %u_tmp.0226, align 8
  %conv = trunc i64 %26 to i32
  %27 = inttoptr i32 %conv to ptr
  %28 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %len, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp9.i.i = icmp slt i32 %29, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %if.end25
  %.b71.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i, label %land.rhs16.i.i.done_crit_edge, label %if.then27.i.i, !prof !104

land.rhs16.i.i.done_crit_edge:                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 230, i32 noundef 9, ptr noundef null) #9
  br label %done

if.then.i.i.i:                                    ; preds = %if.end25
  call void @__check_object_size(ptr noundef %tx_buf.0232, i32 noundef %29, i1 noundef zeroext false) #9
  call void @__might_fault(ptr noundef nonnull @.str.4, i32 noundef 156) #9
  %call.i.i = call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i, label %if.then.i.i.i.if.end.i.i_crit_edge, label %land.lhs.true.i.i

if.then.i.i.i.if.end.i.i_crit_edge:               ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i.i.i
  %30 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %27, i32 %29, i32 -1226833920) #12, !srcloc !105
  %asmresult.i.i = extractvalue { i32, i32 } %30, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !104

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %tx_buf.0232, i32 noundef %29) #9
  %31 = call i32 @llvm.read_register.i32(metadata !93) #9
  %and.i.i.i.i.i.i = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 4
  %33 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #4, !srcloc !106
  %and.i.i.i.i = and i32 %33, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #9, !srcloc !107
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef %tx_buf.0232, ptr noundef %27, i32 noundef %29) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %33) #9, !srcloc !107
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %if.then.i.i.i.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %29, %if.then.i.i.i.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %29, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end32, label %if.then11.i.i, !prof !104

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i = sub i32 %29, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %tx_buf.0232, i32 %sub.i.i
  %34 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %done

if.end32:                                         ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr33 = getelementptr i8, ptr %tx_buf.0232, i32 %and
  br label %if.end34

if.end34:                                         ; preds = %if.end32, %if.end18.if.end34_crit_edge
  %tx_total.1 = phi i32 [ %add22, %if.end32 ], [ %tx_total.0230, %if.end18.if.end34_crit_edge ]
  %tx_buf.1 = phi ptr [ %add.ptr33, %if.end32 ], [ %tx_buf.0232, %if.end18.if.end34_crit_edge ]
  %cs_change = getelementptr inbounds %struct.spi_ioc_transfer, ptr %u_tmp.0226, i32 0, i32 6
  %35 = ptrtoint ptr %cs_change to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %cs_change, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool35.not = icmp eq i8 %36, 0
  %cs_change37 = getelementptr inbounds %struct.spi_transfer, ptr %k_tmp.0224, i32 0, i32 7
  %37 = ptrtoint ptr %cs_change37 to i32
  call void @__asan_load1_noabort(i32 %37)
  %bf.load = load i8, ptr %cs_change37, align 4
  %bf.shl = select i1 %tobool35.not, i8 0, i8 64
  %bf.clear = and i8 %bf.load, -65
  %bf.set = or i8 %bf.clear, %bf.shl
  store i8 %bf.set, ptr %cs_change37, align 4
  %tx_nbits = getelementptr inbounds %struct.spi_ioc_transfer, ptr %u_tmp.0226, i32 0, i32 7
  %38 = ptrtoint ptr %tx_nbits to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %tx_nbits, align 4
  %bf.value41 = shl i8 %39, 3
  %bf.shl42 = and i8 %bf.value41, 56
  %bf.clear43 = and i8 %bf.set, -57
  %bf.set44 = or i8 %bf.shl42, %bf.clear43
  store i8 %bf.set44, ptr %cs_change37, align 4
  %rx_nbits = getelementptr inbounds %struct.spi_ioc_transfer, ptr %u_tmp.0226, i32 0, i32 8
  %40 = ptrtoint ptr %rx_nbits to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %rx_nbits, align 1
  %bf.value49 = and i8 %41, 7
  %bf.clear50 = and i8 %bf.set44, -8
  %bf.set51 = or i8 %bf.clear50, %bf.value49
  store i8 %bf.set51, ptr %cs_change37, align 4
  %bits_per_word = getelementptr inbounds %struct.spi_ioc_transfer, ptr %u_tmp.0226, i32 0, i32 5
  %42 = ptrtoint ptr %bits_per_word to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %bits_per_word, align 2
  %bits_per_word53 = getelementptr inbounds %struct.spi_transfer, ptr %k_tmp.0224, i32 0, i32 8
  %44 = ptrtoint ptr %bits_per_word53 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %43, ptr %bits_per_word53, align 1
  %delay_usecs = getelementptr inbounds %struct.spi_ioc_transfer, ptr %u_tmp.0226, i32 0, i32 4
  %45 = ptrtoint ptr %delay_usecs to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %delay_usecs, align 8
  %delay = getelementptr inbounds %struct.spi_transfer, ptr %k_tmp.0224, i32 0, i32 9
  %47 = ptrtoint ptr %delay to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %46, ptr %delay, align 2
  %unit = getelementptr inbounds %struct.spi_transfer, ptr %k_tmp.0224, i32 0, i32 9, i32 1
  %48 = ptrtoint ptr %unit to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 0, ptr %unit, align 2
  %speed_hz = getelementptr inbounds %struct.spi_ioc_transfer, ptr %u_tmp.0226, i32 0, i32 3
  %49 = ptrtoint ptr %speed_hz to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %speed_hz, align 4
  %speed_hz55 = getelementptr inbounds %struct.spi_transfer, ptr %k_tmp.0224, i32 0, i32 12
  %51 = ptrtoint ptr %speed_hz55 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %speed_hz55, align 4
  %word_delay_usecs = getelementptr inbounds %struct.spi_ioc_transfer, ptr %u_tmp.0226, i32 0, i32 9
  %52 = ptrtoint ptr %word_delay_usecs to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %word_delay_usecs, align 2
  %conv56 = zext i8 %53 to i16
  %word_delay = getelementptr inbounds %struct.spi_transfer, ptr %k_tmp.0224, i32 0, i32 11
  %54 = ptrtoint ptr %word_delay to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %conv56, ptr %word_delay, align 2
  %unit59 = getelementptr inbounds %struct.spi_transfer, ptr %k_tmp.0224, i32 0, i32 11, i32 1
  %55 = ptrtoint ptr %unit59 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 0, ptr %unit59, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool61.not = icmp eq i32 %50, 0
  br i1 %tobool61.not, label %if.then62, label %if.end34.if.end65_crit_edge

if.end34.if.end65_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end65

if.then62:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  %56 = ptrtoint ptr %speed_hz63 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %speed_hz63, align 4
  %58 = ptrtoint ptr %speed_hz55 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %speed_hz55, align 4
  br label %if.end65

if.end65:                                         ; preds = %if.then62, %if.end34.if.end65_crit_edge
  %transfer_list.i = getelementptr inbounds %struct.spi_transfer, ptr %k_tmp.0224, i32 0, i32 18
  %59 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %prev.i.i.i, align 4
  %call.i.i.i184 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i, ptr noundef %60, ptr noundef nonnull %msg) #9
  br i1 %call.i.i.i184, label %if.end.i.i.i185, label %if.end65.for.inc_crit_edge

if.end65.for.inc_crit_edge:                       ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end.i.i.i185:                                  ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #11
  %61 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %transfer_list.i, ptr %prev.i.i.i, align 4
  %62 = ptrtoint ptr %transfer_list.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %msg, ptr %transfer_list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %k_tmp.0224, i32 0, i32 18, i32 1
  %63 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %60, ptr %prev3.i.i.i, align 4
  %64 = ptrtoint ptr %60 to i32
  call void @__asan_store4_noabort(i32 %64)
  store volatile ptr %transfer_list.i, ptr %60, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end.i.i.i185, %if.end65.for.inc_crit_edge
  %dec = add i32 %n.0228, -1
  %incdec.ptr = getelementptr %struct.spi_transfer, ptr %k_tmp.0224, i32 1
  %incdec.ptr66 = getelementptr %struct.spi_ioc_transfer, ptr %u_tmp.0226, i32 1
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge
  %total.0.lcssa = phi i32 [ 0, %if.end.for.end_crit_edge ], [ %add4, %for.inc.for.end_crit_edge ]
  %spi_lock.i = getelementptr inbounds %struct.spidev_data, ptr %spidev, i32 0, i32 1
  call void @_raw_spin_lock_irq(ptr noundef %spi_lock.i) #9
  %spi1.i = getelementptr inbounds %struct.spidev_data, ptr %spidev, i32 0, i32 2
  %65 = ptrtoint ptr %spi1.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %spi1.i, align 4
  call void @_raw_spin_unlock_irq(ptr noundef %spi_lock.i) #9
  %cmp.i = icmp eq ptr %66, null
  br i1 %cmp.i, label %for.end.done_crit_edge, label %if.end.i

for.end.done_crit_edge:                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

if.end.i:                                         ; preds = %for.end
  %call.i = call i32 @spi_sync(ptr noundef nonnull %66, ptr noundef nonnull %msg) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp3.i = icmp eq i32 %call.i, 0
  br i1 %cmp3.i, label %if.then4.i, label %if.end.i.spidev_sync.exit_crit_edge

if.end.i.spidev_sync.exit_crit_edge:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %spidev_sync.exit

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %actual_length.i = getelementptr inbounds %struct.spi_message, ptr %msg, i32 0, i32 6
  %67 = ptrtoint ptr %actual_length.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %actual_length.i, align 4
  br label %spidev_sync.exit

spidev_sync.exit:                                 ; preds = %if.then4.i, %if.end.i.spidev_sync.exit_crit_edge
  %status.1.i = phi i32 [ %68, %if.then4.i ], [ %call.i, %if.end.i.spidev_sync.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status.1.i)
  %cmp68 = icmp slt i32 %status.1.i, 0
  %brmerge = or i1 %cmp68, %tobool.not223
  %status.1.i.mux = select i1 %cmp68, i32 %status.1.i, i32 %total.0.lcssa
  br i1 %brmerge, label %spidev_sync.exit.done_crit_edge, label %spidev_sync.exit.for.body74_crit_edge

spidev_sync.exit.for.body74_crit_edge:            ; preds = %spidev_sync.exit
  br label %for.body74

spidev_sync.exit.done_crit_edge:                  ; preds = %spidev_sync.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

for.body74:                                       ; preds = %for.inc87.for.body74_crit_edge, %spidev_sync.exit.for.body74_crit_edge
  %n.1238 = phi i32 [ %dec88, %for.inc87.for.body74_crit_edge ], [ %n_xfers, %spidev_sync.exit.for.body74_crit_edge ]
  %u_tmp.1237 = phi ptr [ %incdec.ptr90, %for.inc87.for.body74_crit_edge ], [ %u_xfers, %spidev_sync.exit.for.body74_crit_edge ]
  %k_tmp.1236 = phi ptr [ %incdec.ptr89, %for.inc87.for.body74_crit_edge ], [ %call8.i.i, %spidev_sync.exit.for.body74_crit_edge ]
  %rx_buf75 = getelementptr inbounds %struct.spi_ioc_transfer, ptr %u_tmp.1237, i32 0, i32 1
  %69 = ptrtoint ptr %rx_buf75 to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %rx_buf75, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %70)
  %tobool76.not = icmp eq i64 %70, 0
  br i1 %tobool76.not, label %for.body74.for.inc87_crit_edge, label %if.then77

for.body74.for.inc87_crit_edge:                   ; preds = %for.body74
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc87

if.then77:                                        ; preds = %for.body74
  %conv79 = trunc i64 %70 to i32
  %71 = inttoptr i32 %conv79 to ptr
  %rx_buf80 = getelementptr inbounds %struct.spi_transfer, ptr %k_tmp.1236, i32 0, i32 1
  %72 = ptrtoint ptr %rx_buf80 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %rx_buf80, align 4
  %len81 = getelementptr inbounds %struct.spi_ioc_transfer, ptr %u_tmp.1237, i32 0, i32 2
  %74 = ptrtoint ptr %len81 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %len81, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %cmp9.i.i168 = icmp slt i32 %75, 0
  br i1 %cmp9.i.i168, label %land.rhs16.i.i171, label %if.then.i.i.i174

land.rhs16.i.i171:                                ; preds = %if.then77
  %.b71.i.i170 = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i170, label %land.rhs16.i.i171.done_crit_edge, label %if.then27.i.i172, !prof !104

land.rhs16.i.i171.done_crit_edge:                 ; preds = %land.rhs16.i.i171
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

if.then27.i.i172:                                 ; preds = %land.rhs16.i.i171
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 230, i32 noundef 9, ptr noundef null) #9
  br label %done

if.then.i.i.i174:                                 ; preds = %if.then77
  call void @__check_object_size(ptr noundef %73, i32 noundef %75, i1 noundef zeroext true) #9
  call void @__might_fault(ptr noundef nonnull @.str.4, i32 noundef 174) #9
  %call.i.i175 = call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i175, label %if.then.i.i.i174.copy_to_user.exit_crit_edge, label %if.end.i.i179

if.then.i.i.i174.copy_to_user.exit_crit_edge:     ; preds = %if.then.i.i.i174
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_to_user.exit

if.end.i.i179:                                    ; preds = %if.then.i.i.i174
  %76 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %71, i32 %75, i32 -1226833920) #12, !srcloc !103
  %asmresult.i.i177 = extractvalue { i32, i32 } %76, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i177)
  %cmp.i6.i178 = icmp eq i32 %asmresult.i.i177, 0
  br i1 %cmp.i6.i178, label %if.then2.i.i, label %if.end.i.i179.copy_to_user.exit_crit_edge

if.end.i.i179.copy_to_user.exit_crit_edge:        ; preds = %if.end.i.i179
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i179
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i180 = call zeroext i1 @__kasan_check_read(ptr noundef %73, i32 noundef %75) #9
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %71, ptr noundef %73, i32 noundef %75) #9
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i179.copy_to_user.exit_crit_edge, %if.then.i.i.i174.copy_to_user.exit_crit_edge
  %n.addr.0.i181 = phi i32 [ %75, %if.then.i.i.i174.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %75, %if.end.i.i179.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i181)
  %tobool83.not = icmp eq i32 %n.addr.0.i181, 0
  br i1 %tobool83.not, label %copy_to_user.exit.for.inc87_crit_edge, label %copy_to_user.exit.done_crit_edge

copy_to_user.exit.done_crit_edge:                 ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

copy_to_user.exit.for.inc87_crit_edge:            ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc87

for.inc87:                                        ; preds = %copy_to_user.exit.for.inc87_crit_edge, %for.body74.for.inc87_crit_edge
  %dec88 = add i32 %n.1238, -1
  %incdec.ptr89 = getelementptr %struct.spi_transfer, ptr %k_tmp.1236, i32 1
  %incdec.ptr90 = getelementptr %struct.spi_ioc_transfer, ptr %u_tmp.1237, i32 1
  %tobool73.not = icmp eq i32 %dec88, 0
  br i1 %tobool73.not, label %for.inc87.done_crit_edge, label %for.inc87.for.body74_crit_edge

for.inc87.for.body74_crit_edge:                   ; preds = %for.inc87
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body74

for.inc87.done_crit_edge:                         ; preds = %for.inc87
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

done:                                             ; preds = %for.inc87.done_crit_edge, %copy_to_user.exit.done_crit_edge, %if.then27.i.i172, %land.rhs16.i.i171.done_crit_edge, %spidev_sync.exit.done_crit_edge, %for.end.done_crit_edge, %if.then11.i.i, %if.then27.i.i, %land.rhs16.i.i.done_crit_edge, %if.then21.done_crit_edge, %if.then12.done_crit_edge, %for.body.done_crit_edge
  %status.2 = phi i32 [ %status.1.i.mux, %spidev_sync.exit.done_crit_edge ], [ -14, %if.then11.i.i ], [ -14, %if.then27.i.i ], [ -14, %land.rhs16.i.i.done_crit_edge ], [ -108, %for.end.done_crit_edge ], [ -14, %if.then27.i.i172 ], [ -14, %land.rhs16.i.i171.done_crit_edge ], [ -14, %copy_to_user.exit.done_crit_edge ], [ %total.0.lcssa, %for.inc87.done_crit_edge ], [ -90, %for.body.done_crit_edge ], [ -90, %if.then12.done_crit_edge ], [ -90, %if.then21.done_crit_edge ]
  call void @kfree(ptr noundef nonnull %call8.i.i) #9
  br label %cleanup92

cleanup92:                                        ; preds = %done, %if.end7.i.i.cleanup92_crit_edge, %entry.cleanup92_crit_edge
  %retval.0 = phi i32 [ %status.2, %done ], [ -12, %if.end7.i.i.cleanup92_crit_edge ], [ -12, %entry.cleanup92_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memdup_user(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stream_open(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_slave_abort(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spidev_probe(ptr noundef %spi) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %of_node = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %call = tail call i32 @of_device_is_compatible(ptr noundef nonnull %1, ptr noundef nonnull @.str.1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %land.lhs.true.if.end_crit_edge, label %do.end

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.16) #14
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 168) #15
  %tobool6.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool6.not, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %spi9 = getelementptr inbounds %struct.spidev_data, ptr %call7.i.i, i32 0, i32 2
  %3 = ptrtoint ptr %spi9 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %spi, ptr %spi9, align 8
  %spi_lock = getelementptr inbounds %struct.spidev_data, ptr %call7.i.i, i32 0, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %spi_lock, ptr noundef nonnull @.str.20, ptr noundef nonnull @spidev_probe.__key, i16 noundef signext 3) #9
  %buf_lock = getelementptr inbounds %struct.spidev_data, ptr %call7.i.i, i32 0, i32 4
  tail call void @__mutex_init(ptr noundef %buf_lock, ptr noundef nonnull @.str.22, ptr noundef nonnull @spidev_probe.__key.21) #9
  %device_entry = getelementptr inbounds %struct.spidev_data, ptr %call7.i.i, i32 0, i32 3
  %4 = ptrtoint ptr %device_entry to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %device_entry, ptr %device_entry, align 4
  %prev.i = getelementptr inbounds %struct.spidev_data, ptr %call7.i.i, i32 0, i32 3, i32 1
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %device_entry, ptr %prev.i, align 8
  tail call void @mutex_lock_nested(ptr noundef nonnull @device_list_lock, i32 noundef 0) #9
  %call17 = tail call i32 @_find_first_zero_bit_be(ptr noundef nonnull @minors, i32 noundef 32) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %call17)
  %cmp = icmp ult i32 %call17, 32
  br i1 %cmp, label %if.then18, label %do.body25

if.then18:                                        ; preds = %if.end8
  %or = or i32 %call17, 160432128
  %6 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %or, ptr %call7.i.i, align 8
  %7 = load ptr, ptr @spidev_class, align 4
  %master = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 2
  %8 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %master, align 4
  %bus_num = getelementptr inbounds %struct.spi_controller, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %bus_num to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %bus_num, align 8
  %conv = sext i16 %11 to i32
  %chip_select = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 4
  %12 = ptrtoint ptr %chip_select to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %chip_select, align 4
  %conv22 = zext i8 %13 to i32
  %call23 = tail call ptr (ptr, ptr, i32, ptr, ptr, ...) @device_create(ptr noundef %7, ptr noundef %spi, i32 noundef %or, ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.23, i32 noundef %conv, i32 noundef %conv22) #9
  %cmp.i.i.not = icmp ugt ptr %call23, inttoptr (i32 -4096 to ptr)
  %14 = ptrtoint ptr %call23 to i32
  br i1 %cmp.i.i.not, label %if.then18.if.else45.critedge_crit_edge, label %if.then39

if.then18.if.else45.critedge_crit_edge:           ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else45.critedge

do.body25:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @spidev_probe.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@spidev_probe, %if.else45.critedge)) #9
          to label %if.then31 [label %if.else45.critedge], !srcloc !117

if.then31:                                        ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @spidev_probe.__UNIQUE_ID_ddebug241, ptr noundef %spi, ptr noundef nonnull @.str.24) #9
  br label %if.else45.critedge

if.then39:                                        ; preds = %if.then18
  tail call void @_set_bit(i32 noundef %call17, ptr noundef nonnull @minors) #9
  %15 = load ptr, ptr @device_list, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %device_entry, ptr noundef nonnull @device_list, ptr noundef %15) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.then39.list_add.exit_crit_edge

if.then39.list_add.exit_crit_edge:                ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #11
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %device_entry, ptr %prev1.i.i, align 4
  %17 = ptrtoint ptr %device_entry to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %15, ptr %device_entry, align 4
  %18 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @device_list, ptr %prev.i, align 8
  store volatile ptr %device_entry, ptr @device_list, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.then39.list_add.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @device_list_lock) #9
  %max_speed_hz.c = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 3
  %19 = ptrtoint ptr %max_speed_hz.c to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %max_speed_hz.c, align 8
  %speed_hz.c = getelementptr inbounds %struct.spidev_data, ptr %call7.i.i, i32 0, i32 8
  %21 = ptrtoint ptr %speed_hz.c to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %speed_hz.c, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %22 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  br label %cleanup

if.else45.critedge:                               ; preds = %if.then31, %do.body25, %if.then18.if.else45.critedge_crit_edge
  %status.079 = phi i32 [ -19, %if.then31 ], [ -19, %do.body25 ], [ %14, %if.then18.if.else45.critedge_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @device_list_lock) #9
  %max_speed_hz.c74 = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 3
  %23 = ptrtoint ptr %max_speed_hz.c74 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %max_speed_hz.c74, align 8
  %speed_hz.c75 = getelementptr inbounds %struct.spidev_data, ptr %call7.i.i, i32 0, i32 8
  %25 = ptrtoint ptr %speed_hz.c75 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %speed_hz.c75, align 4
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.else45.critedge, %list_add.exit, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -12, %if.end.cleanup_crit_edge ], [ %status.079, %if.else45.critedge ], [ 0, %list_add.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spidev_remove(ptr nocapture noundef readonly %spi) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @mutex_lock_nested(ptr noundef nonnull @device_list_lock, i32 noundef 0) #9
  %spi_lock = getelementptr inbounds %struct.spidev_data, ptr %1, i32 0, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %spi_lock) #9
  %spi1 = getelementptr inbounds %struct.spidev_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %spi1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %spi1, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %spi_lock) #9
  %device_entry = getelementptr inbounds %struct.spidev_data, ptr %1, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %device_entry) #9
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del.exit_crit_edge

entry.list_del.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.spidev_data, ptr %1, i32 0, i32 3, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %device_entry to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %device_entry, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %entry.list_del.exit_crit_edge
  %9 = ptrtoint ptr %device_entry to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %device_entry, align 4
  %prev.i = getelementptr inbounds %struct.spidev_data, ptr %1, i32 0, i32 3, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %11 = load ptr, ptr @spidev_class, align 4
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %1, align 4
  tail call void @device_destroy(ptr noundef %11, i32 noundef %13) #9
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %1, align 4
  %and = and i32 %15, 1048575
  tail call void @_clear_bit(i32 noundef %and, ptr noundef nonnull @minors) #9
  %users = getelementptr inbounds %struct.spidev_data, ptr %1, i32 0, i32 5
  %16 = ptrtoint ptr %users to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %users, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp = icmp eq i32 %17, 0
  br i1 %cmp, label %if.then, label %list_del.exit.if.end_crit_edge

list_del.exit.if.end_crit_edge:                   ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree(ptr noundef %1) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %list_del.exit.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @device_list_lock) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_zero_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_create(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_destroy(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__unregister_chrdev(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

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
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind readonly }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind readnone }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !16, !18, !20, !21, !23, !25, !27, !28, !30, !32, !33, !35, !37, !39, !41, !42, !43, !45, !46, !48, !49, !51, !52, !54, !55, !56, !58, !59, !61, !63, !64, !65, !67, !69, !71, !73, !74, !75, !76, !77, !78, !80, !81, !83, !84, !86, !88, !89, !91}
!llvm.named.register.sp = !{!93}
!llvm.module.flags = !{!94, !95, !96, !97, !98, !99, !100, !101}
!llvm.ident = !{!102}

!0 = !{ptr @__param_bufsiz, !1, !"__param_bufsiz", i1 false, i1 false}
!1 = !{!"../drivers/spi/spidev.c", i32 86, i32 1}
!2 = !{ptr @__UNIQUE_ID_bufsiztype232, !1, !"__UNIQUE_ID_bufsiztype232", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_bufsiz233, !4, !"__UNIQUE_ID_bufsiz233", i1 false, i1 false}
!4 = !{!"../drivers/spi/spidev.c", i32 87, i32 1}
!5 = !{ptr @__initcall__kmod_spidev__243_872_spidev_init6, !6, !"__initcall__kmod_spidev__243_872_spidev_init6", i1 false, i1 false}
!6 = !{!"../drivers/spi/spidev.c", i32 872, i32 1}
!7 = !{ptr @__exitcall_spidev_exit, !8, !"__exitcall_spidev_exit", i1 false, i1 false}
!8 = !{!"../drivers/spi/spidev.c", i32 880, i32 1}
!9 = !{ptr @__UNIQUE_ID_author244, !10, !"__UNIQUE_ID_author244", i1 false, i1 false}
!10 = !{!"../drivers/spi/spidev.c", i32 882, i32 1}
!11 = !{ptr @__UNIQUE_ID_description245, !12, !"__UNIQUE_ID_description245", i1 false, i1 false}
!12 = !{!"../drivers/spi/spidev.c", i32 883, i32 1}
!13 = !{ptr @__UNIQUE_ID_file246, !14, !"__UNIQUE_ID_file246", i1 false, i1 false}
!14 = !{!"../drivers/spi/spidev.c", i32 884, i32 1}
!15 = !{ptr @__UNIQUE_ID_license247, !14, !"__UNIQUE_ID_license247", i1 false, i1 false}
!16 = !{ptr @__UNIQUE_ID_alias248, !17, !"__UNIQUE_ID_alias248", i1 false, i1 false}
!17 = !{!"../drivers/spi/spidev.c", i32 885, i32 1}
!18 = !{ptr @spidev_class, !19, !"spidev_class", i1 false, i1 false}
!19 = !{!"../drivers/spi/spidev.c", i32 674, i32 22}
!20 = !{ptr @__param_str_bufsiz, !1, !"__param_str_bufsiz", i1 false, i1 false}
!21 = !{ptr @bufsiz, !22, !"bufsiz", i1 false, i1 false}
!22 = !{!"../drivers/spi/spidev.c", i32 85, i32 17}
!23 = !{ptr @.str, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/spi/spidev.c", i32 855, i32 41}
!25 = !{ptr @spidev_init.__key, !26, !"__key", i1 false, i1 false}
!26 = !{!"../drivers/spi/spidev.c", i32 859, i32 17}
!27 = !{ptr @.str.1, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @spidev_fops, !29, !"spidev_fops", i1 false, i1 false}
!29 = !{!"../drivers/spi/spidev.c", i32 652, i32 37}
!30 = distinct !{null, !31, !"__already_done", i1 false, i1 false}
!31 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!32 = !{ptr @.str.2, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.3, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!35 = !{ptr @.str.4, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!37 = !{ptr @.str.5, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/spi/spidev.c", i32 379, i32 12}
!39 = !{ptr @.str.6, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/spi/spidev.c", i32 423, i32 5}
!41 = !{ptr @.str.7, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @spidev_ioctl.__UNIQUE_ID_ddebug234, !40, !"__UNIQUE_ID_ddebug234", i1 false, i1 false}
!43 = !{ptr @.str.8, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/spi/spidev.c", i32 439, i32 5}
!45 = !{ptr @spidev_ioctl.__UNIQUE_ID_ddebug235, !44, !"__UNIQUE_ID_ddebug235", i1 false, i1 false}
!46 = !{ptr @.str.9, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/spi/spidev.c", i32 453, i32 5}
!48 = !{ptr @spidev_ioctl.__UNIQUE_ID_ddebug236, !47, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!49 = !{ptr @.str.10, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/spi/spidev.c", i32 465, i32 5}
!51 = !{ptr @spidev_ioctl.__UNIQUE_ID_ddebug237, !50, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!52 = !{ptr @.str.11, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/spi/spidev.c", i32 577, i32 3}
!54 = !{ptr @.str.12, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @spidev_open.__UNIQUE_ID_ddebug238, !53, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!56 = !{ptr @.str.13, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/spi/spidev.c", i32 584, i32 4}
!58 = !{ptr @spidev_open.__UNIQUE_ID_ddebug239, !57, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!59 = !{ptr @spidev_open.__UNIQUE_ID_ddebug240, !60, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!60 = !{!"../drivers/spi/spidev.c", i32 593, i32 4}
!61 = !{ptr @.str.14, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/spi/spidev.c", i32 83, i32 8}
!63 = !{ptr @.str.15, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @device_list_lock, !62, !"device_list_lock", i1 false, i1 false}
!65 = !{ptr @device_list, !66, !"device_list", i1 false, i1 false}
!66 = !{!"../drivers/spi/spidev.c", i32 82, i32 8}
!67 = !{ptr @spidev_spi_driver, !68, !"spidev_spi_driver", i1 false, i1 false}
!68 = !{!"../drivers/spi/spidev.c", i32 827, i32 26}
!69 = !{ptr @spidev_spi_ids, !70, !"spidev_spi_ids", i1 false, i1 false}
!70 = !{!"../drivers/spi/spidev.c", i32 676, i32 35}
!71 = !{ptr @.str.16, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/spi/spidev.c", i32 755, i32 3}
!73 = !{ptr @.str.17, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @.str.18, !72, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @.str.19, !72, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @spidev_probe._entry, !72, !"_entry", i1 false, i1 false}
!77 = !{ptr @spidev_probe._entry_ptr, !72, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @spidev_probe.__key, !79, !"__key", i1 false, i1 false}
!79 = !{!"../drivers/spi/spidev.c", i32 768, i32 2}
!80 = !{ptr @.str.20, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @spidev_probe.__key.21, !82, !"__key", i1 false, i1 false}
!82 = !{!"../drivers/spi/spidev.c", i32 769, i32 2}
!83 = !{ptr @.str.22, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @.str.23, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/spi/spidev.c", i32 783, i32 17}
!86 = !{ptr @.str.24, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/spi/spidev.c", i32 787, i32 3}
!88 = !{ptr @spidev_probe.__UNIQUE_ID_ddebug241, !87, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!89 = !{ptr @minors, !90, !"minors", i1 false, i1 false}
!90 = !{!"../drivers/spi/spidev.c", i32 47, i32 8}
!91 = !{ptr @spidev_dt_ids, !92, !"spidev_dt_ids", i1 false, i1 false}
!92 = !{!"../drivers/spi/spidev.c", i32 690, i32 34}
!93 = !{!"sp"}
!94 = !{i32 1, !"wchar_size", i32 2}
!95 = !{i32 1, !"min_enum_size", i32 4}
!96 = !{i32 8, !"branch-target-enforcement", i32 0}
!97 = !{i32 8, !"sign-return-address", i32 0}
!98 = !{i32 8, !"sign-return-address-all", i32 0}
!99 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!100 = !{i32 7, !"uwtable", i32 1}
!101 = !{i32 7, !"frame-pointer", i32 2}
!102 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!103 = !{i64 2152430212, i64 2152430237}
!104 = !{!"branch_weights", i32 2000, i32 1}
!105 = !{i64 2152429531, i64 2152429556}
!106 = !{i64 4925086}
!107 = !{i64 4925283}
!108 = !{i64 2152410516}
!109 = !{i64 2154725671, i64 2154725951, i64 2154726285, i64 2154726619}
!110 = !{i64 2154741202, i64 2154741482, i64 2154741816, i64 2154742150}
!111 = !{i64 2154746999, i64 2154747279, i64 2154747613, i64 2154747947}
!112 = !{i64 2154756588, i64 2154756868, i64 2154757202, i64 2154757536}
!113 = !{i64 2154770112, i64 2154770392, i64 2154770726, i64 2154771060}
!114 = !{i64 2154778689, i64 2154778969, i64 2154779303, i64 2154779637}
!115 = !{i64 2154796000, i64 2154796280, i64 2154796614, i64 2154796948}
!116 = !{i8 0, i8 2}
!117 = !{i64 2148974068, i64 2148974073, i64 2148974086, i64 2148974130, i64 2148974164, i64 2148974185}
!118 = !{i64 2154812758, i64 2154813038, i64 2154813372, i64 2154813706}
!119 = !{i64 2154828049, i64 2154828329, i64 2154828663, i64 2154828997}
!120 = !{i64 2154848316, i64 2154848596, i64 2154848930, i64 2154849264}
!121 = !{!"branch_weights", i32 1, i32 2000}
