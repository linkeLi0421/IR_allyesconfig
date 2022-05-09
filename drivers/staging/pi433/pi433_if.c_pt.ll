; ModuleID = '/llk/IR_all_yes/drivers/staging/pi433/pi433_if.c_pt.bc'
source_filename = "../drivers/staging/pi433/pi433_if.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
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
%struct.spi_delay = type { i16, i8 }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }
%struct.pi433_device = type { i32, i32, ptr, ptr, ptr, [2 x ptr], [2 x i32], [2 x i8], %struct.anon.71, %struct.mutex, ptr, %struct.wait_queue_head, i8, [900 x i8], %struct.pi433_rx_cfg, ptr, i32, i32, i32, i32, %struct.mutex, %struct.wait_queue_head, ptr, %struct.wait_queue_head, i8, i8, i8 }
%struct.anon.71 = type { %union.anon.72, [65536 x i8] }
%union.anon.72 = type { %struct.__kfifo }
%struct.__kfifo = type { i32, i32, i32, i32, ptr }
%struct.pi433_rx_cfg = type { i32, i16, i32, i32, i8, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i8, i8, i32, [8 x i8], i8, i8 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.pi433_tx_cfg = type { i32, i16, i32, i32, i32, i32, i32, i16, i32, i32, i32, i32, i32, i16, i8, i8, [8 x i8], i8 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.pi433_instance = type { ptr, %struct.pi433_tx_cfg }
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
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.70 = type { ptr }

@__initcall__kmod_pi433__267_1354_pi433_init6 = internal global ptr @pi433_init, section ".initcall6.init", align 4
@pi433_spi_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr null, ptr @pi433_probe, ptr @pi433_remove, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @pi433_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@pi433_class = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@pi433_dev = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__exitcall_pi433_exit = internal global ptr @pi433_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author268 = internal constant [56 x i8] c"pi433.author=Marcus Wolf, <linux@wolf-entwicklungen.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description269 = internal constant [35 x i8] c"pi433.description=Driver for Pi433\00", section ".modinfo", align 1
@__UNIQUE_ID_file270 = internal constant [39 x i8] c"pi433.file=drivers/staging/pi433/pi433\00", section ".modinfo", align 1
@__UNIQUE_ID_license271 = internal constant [18 x i8] c"pi433.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias272 = internal constant [22 x i8] c"pi433.alias=spi:pi433\00", section ".modinfo", align 1
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pi433\00", [26 x i8] zeroinitializer }, align 32
@pi433_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@pi433_dt_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"Smarthome-Wolf,pi433\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@pi433_probe.__UNIQUE_ID_ddebug257 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 1, i8 21, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pi433_probe\00", [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/staging/pi433/pi433_if.c\00", [63 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"configuration of SPI interface failed!\0A\00", [56 x i8] zeroinitializer }, align 32
@pi433_probe.__UNIQUE_ID_ddebug258 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, i8 1, i8 23, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"spi interface setup: mode 0x%2x, %d bits per word, %dhz max speed\00", [62 x i8] zeroinitializer }, align 32
@pi433_probe.__UNIQUE_ID_ddebug259 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.5, i8 1, i8 25, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"found pi433 (ver. 0x%x)\00", [40 x i8] zeroinitializer }, align 32
@pi433_probe.__UNIQUE_ID_ddebug260 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.6, i8 1, i8 26, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"unknown chip version: 0x%x\00", [37 x i8] zeroinitializer }, align 32
@pi433_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"&device->tx_wait_queue\00", [41 x i8] zeroinitializer }, align 32
@pi433_probe.__key.8 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"&device->rx_wait_queue\00", [41 x i8] zeroinitializer }, align 32
@pi433_probe.__key.10 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"&device->fifo_wait_queue\00", [39 x i8] zeroinitializer }, align 32
@pi433_probe.__key.12 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&device->tx_fifo_lock\00", [42 x i8] zeroinitializer }, align 32
@pi433_probe.__key.14 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&device->rx_lock\00", [47 x i8] zeroinitializer }, align 32
@pi433_probe.__UNIQUE_ID_ddebug261 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.16, i8 1, i8 35, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"setup of GPIOs failed\00", [42 x i8] zeroinitializer }, align 32
@pi433_probe.__UNIQUE_ID_ddebug262 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.17, i8 1, i8 42, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"get of minor number failed\00", [37 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pi433.%d\00", [23 x i8] zeroinitializer }, align 32
@pi433_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.1, ptr @.str.2, i32 1208, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013pi433: device register failed\0A\00", [63 x i8] zeroinitializer }, align 32
@pi433_probe._entry_ptr = internal global ptr @pi433_probe._entry, section ".printk_index", align 4
@pi433_probe.__UNIQUE_ID_ddebug263 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.20, i8 1, i8 47, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"created device for major %d, minor %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"pi433.%d_tx_task\00", [47 x i8] zeroinitializer }, align 32
@pi433_probe.__UNIQUE_ID_ddebug264 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.22, i8 1, i8 50, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"start of send thread failed\00", [36 x i8] zeroinitializer }, align 32
@pi433_probe.__UNIQUE_ID_ddebug265 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.23, i8 1, i8 52, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"allocation of cdev failed\00", [38 x i8] zeroinitializer }, align 32
@pi433_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr @pi433_read, ptr @pi433_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pi433_ioctl, ptr null, ptr null, i32 0, ptr @pi433_open, ptr null, ptr @pi433_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@pi433_probe.__UNIQUE_ID_ddebug266 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.24, i8 1, i8 54, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"register of cdev failed\00", [40 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__const.setup_gpio.DIO_irq_handler = private unnamed_addr constant [2 x ptr] [ptr @DIO0_irq_handler, ptr @DIO1_irq_handler], align 4
@.str.25 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DIO%d\00", [26 x i8] zeroinitializer }, align 32
@setup_gpio.__UNIQUE_ID_ddebug254 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.26, ptr @.str.2, ptr @.str.27, i8 0, i8 -8, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"setup_gpio\00", [21 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Could not find entry for %s. Ignoring.\00", [57 x i8] zeroinitializer }, align 32
@setup_gpio.__UNIQUE_ID_ddebug255 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.26, ptr @.str.2, ptr @.str.28, i8 0, i8 -7, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%s is busy.\00", [20 x i8] zeroinitializer }, align 32
@setup_gpio.__UNIQUE_ID_ddebug256 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.26, ptr @.str.2, ptr @.str.29, i8 1, i8 1, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s successfully configured\00", [37 x i8] zeroinitializer }, align 32
@DIO0_irq_handler.__UNIQUE_ID_ddebug234 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.30, ptr @.str.2, ptr @.str.31, i8 0, i8 30, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"DIO0_irq_handler\00", [47 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"DIO0 irq: Packet sent\0A\00", [41 x i8] zeroinitializer }, align 32
@DIO0_irq_handler.__UNIQUE_ID_ddebug235 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.30, ptr @.str.2, ptr @.str.32, i8 0, i8 31, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"DIO0 irq: RSSI level over threshold\0A\00", [59 x i8] zeroinitializer }, align 32
@DIO0_irq_handler.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.30, ptr @.str.2, ptr @.str.33, i8 0, i8 32, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"DIO0 irq: Payload ready\0A\00", [39 x i8] zeroinitializer }, align 32
@DIO1_irq_handler.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.34, ptr @.str.2, ptr @.str.35, i8 0, i8 37, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"DIO1_irq_handler\00", [47 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"DIO1 irq: %d bytes free in fifo\0A\00", [63 x i8] zeroinitializer }, align 32
@minor_lock = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.40, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @minor_lock, i64 52), ptr getelementptr (i8, ptr @minor_lock, i64 52) }, ptr @minor_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.41, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@pi433_idr = internal global { %struct.idr, [36 x i8] } { %struct.idr { %struct.xarray { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.42, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, i32 67108868, ptr null }, i32 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@pi433_get_minor._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.2, i32 1061, ptr @.str.38, ptr @.str.39 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"too many pi433 devices\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pi433_get_minor\00", [16 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@pi433_get_minor._entry_ptr = internal global ptr @pi433_get_minor._entry, section ".printk_index", align 4
@.str.40 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"minor_lock.wait_lock\00", [43 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"minor_lock\00", [21 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pi433_idr.xa_lock\00", [46 x i8] zeroinitializer }, align 32
@pi433_tx_thread.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.43, ptr @.str.2, ptr @.str.44, i8 0, i8 -114, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pi433_tx_thread\00", [16 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"thread: going to wait for new messages\00", [57 x i8] zeroinitializer }, align 32
@pi433_tx_thread.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.43, ptr @.str.2, ptr @.str.45, i8 0, i8 -110, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"reading tx_cfg from fifo failed: got %d byte(s), expected %d\00", [35 x i8] zeroinitializer }, align 32
@pi433_tx_thread.__UNIQUE_ID_ddebug246 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.43, ptr @.str.2, ptr @.str.46, i8 0, i8 -108, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"reading msg size from fifo failed: got %d, expected %d\00", [41 x i8] zeroinitializer }, align 32
@pi433_tx_thread.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.43, ptr @.str.2, ptr @.str.47, i8 0, i8 -99, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"read %d message byte(s) from fifo queue.\00", [55 x i8] zeroinitializer }, align 32
@pi433_tx_thread.__UNIQUE_ID_ddebug248 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.43, ptr @.str.2, ptr @.str.48, i8 0, i8 -75, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ABORT\0A\00", [25 x i8] zeroinitializer }, align 32
@pi433_tx_thread.__UNIQUE_ID_ddebug249 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.43, ptr @.str.2, ptr @.str.49, i8 0, i8 -73, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"thread: wait for packet to get sent/fifo to be empty\00", [43 x i8] zeroinitializer }, align 32
@pi433_tx_thread.__UNIQUE_ID_ddebug250 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.43, ptr @.str.2, ptr @.str.50, i8 0, i8 -71, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"thread: Packet sent. Set mode to stby.\00", [57 x i8] zeroinitializer }, align 32
@pi433_receive.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.51, ptr @.str.2, ptr @.str.52, i8 0, i8 103, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pi433_receive\00", [18 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"rx: going to wait for any tx to finish\00", [57 x i8] zeroinitializer }, align 32
@pi433_receive.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.51, ptr @.str.2, ptr @.str.53, i8 0, i8 110, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"rx: going to wait for high RSSI level\00", [58 x i8] zeroinitializer }, align 32
@pi433_receive.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.51, ptr @.str.2, ptr @.str.54, i8 0, i8 117, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.54 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"rx: msg len set to %d by fixed length\00", [58 x i8] zeroinitializer }, align 32
@pi433_receive.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.51, ptr @.str.2, ptr @.str.55, i8 0, i8 118, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"rx: msg len set to %d as requested by read\00", [53 x i8] zeroinitializer }, align 32
@pi433_receive.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.51, ptr @.str.2, ptr @.str.56, i8 0, i8 122, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"rx: msg len reset to %d due to length byte\00", [53 x i8] zeroinitializer }, align 32
@pi433_receive.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.51, ptr @.str.2, ptr @.str.57, i8 0, i8 126, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"rx: address byte stripped off\00", [34 x i8] zeroinitializer }, align 32
@pi433_receive._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.51, ptr @.str.2, i32 546, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013rf69_set_mode(): radio module failed to go standby\0A\00", [42 x i8] zeroinitializer }, align 32
@pi433_receive._entry_ptr = internal global ptr @pi433_receive._entry, section ".printk_index", align 4
@.str.59 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@pi433_write.__UNIQUE_ID_ddebug251 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.62, ptr @.str.2, ptr @.str.63, i8 0, i8 -47, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.62 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pi433_write\00", [20 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"write to fifo failed: %d bytes required but %d available\00", [39 x i8] zeroinitializer }, align 32
@pi433_write.__UNIQUE_ID_ddebug252 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.62, ptr @.str.2, ptr @.str.64, i8 0, i8 -41, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.64 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"write: generated new msg with %d bytes.\00", [56 x i8] zeroinitializer }, align 32
@pi433_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.62, ptr @.str.2, i32 866, ptr @.str.66, ptr @.str.39 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"write to fifo failed, non recoverable: 0x%x\00", [52 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@pi433_write._entry_ptr = internal global ptr @pi433_write._entry, section ".printk_index", align 4
@pi433_open.__UNIQUE_ID_ddebug253 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.67, ptr @.str.2, ptr @.str.68, i8 0, i8 -21, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.67 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pi433_open\00", [21 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"device: minor %d unknown.\0A\00", [37 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 4294967280, i64 4294967294]
@__sancov_gen_cov_switch_values.69 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 3]
@__sancov_gen_cov_switch_values.70 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 2]
@__sancov_gen_cov_switch_values.71 = internal global [6 x i64] [i64 4, i64 32, i64 1078227456, i64 1079013889, i64 2151969280, i64 2152755713]
@___asan_gen_.72 = private unnamed_addr constant [17 x i8] c"pi433_spi_driver\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 1298, i32 26 }
@___asan_gen_.75 = private unnamed_addr constant [12 x i8] c"pi433_class\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 57, i32 22 }
@___asan_gen_.78 = private unnamed_addr constant [10 x i8] c"pi433_dev\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 53, i32 14 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 1333, i32 62 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 1337, i32 16 }
@___asan_gen_.87 = private unnamed_addr constant [13 x i8] c"pi433_dt_ids\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 1291, i32 34 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 1110, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 1114, i32 2 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 1125, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 1128, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 1151, i32 2 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 1152, i32 2 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 1153, i32 2 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 1159, i32 2 }
@___asan_gen_.132 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 1160, i32 2 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 1165, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 1195, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 1205, i32 9 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 1208, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 1212, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 1219, i32 27 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 1224, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 1232, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant [11 x i8] c"pi433_fops\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 1077, i32 37 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 1240, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 987, i32 32 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 992, i32 4 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 998, i32 4 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 1031, i32 3 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 122, i32 3 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 125, i32 3 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 128, i32 3 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 148, i32 2 }
@___asan_gen_.204 = private unnamed_addr constant [11 x i8] c"minor_lock\00", align 1
@___asan_gen_.207 = private unnamed_addr constant [10 x i8] c"pi433_idr\00", align 1
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 1061, i32 3 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 55, i32 8 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 54, i32 8 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 568, i32 3 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 583, i32 4 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 591, i32 4 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 628, i32 3 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 727, i32 5 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 733, i32 3 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 742, i32 3 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 414, i32 2 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 440, i32 3 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 467, i32 3 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 471, i32 3 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 488, i32 3 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 505, i32 3 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 546, i32 3 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 230, i32 6 }
@___asan_gen_.289 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 214, i32 2 }
@___asan_gen_.292 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 174, i32 2 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 837, i32 3 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 860, i32 2 }
@___asan_gen_.303 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 865, i32 2 }
@___asan_gen_.315 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.316 = private constant [36 x i8] c"../drivers/staging/pi433/pi433_if.c\00", align 1
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 942, i32 3 }
@llvm.compiler.used = appending global [94 x ptr] [ptr @__UNIQUE_ID_alias272, ptr @__UNIQUE_ID_author268, ptr @__UNIQUE_ID_description269, ptr @__UNIQUE_ID_file270, ptr @__UNIQUE_ID_license271, ptr @__exitcall_pi433_exit, ptr @__initcall__kmod_pi433__267_1354_pi433_init6, ptr @pi433_exit, ptr @pi433_get_minor._entry, ptr @pi433_get_minor._entry_ptr, ptr @pi433_probe._entry, ptr @pi433_probe._entry_ptr, ptr @pi433_receive._entry, ptr @pi433_receive._entry_ptr, ptr @pi433_write._entry, ptr @pi433_write._entry_ptr, ptr @pi433_spi_driver, ptr @pi433_class, ptr @pi433_dev, ptr @.str, ptr @pi433_init.__key, ptr @pi433_dt_ids, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @pi433_probe.__key, ptr @.str.7, ptr @pi433_probe.__key.8, ptr @.str.9, ptr @pi433_probe.__key.10, ptr @.str.11, ptr @pi433_probe.__key.12, ptr @.str.13, ptr @pi433_probe.__key.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @pi433_fops, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @minor_lock, ptr @pi433_idr, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68], section "llvm.metadata"
@0 = internal global [82 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pi433_spi_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pi433_class to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pi433_dev to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pi433_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pi433_dt_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pi433_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pi433_probe.__key.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pi433_probe.__key.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pi433_probe.__key.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pi433_probe.__key.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pi433_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pi433_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @minor_lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pi433_idr to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pi433_get_minor._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pi433_receive._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pi433_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pi433_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @alloc_chrdev_region(ptr noundef nonnull @pi433_dev, i32 noundef 0, i32 noundef 1048576, ptr noundef nonnull @.str) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @__class_create(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @pi433_init.__key) #10
  store ptr %call1, ptr @pi433_class, align 4
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %0 = load i32, ptr @pi433_dev, align 4
  %shr = lshr i32 %0, 20
  %1 = load ptr, ptr getelementptr inbounds (%struct.spi_driver, ptr @pi433_spi_driver, i32 0, i32 4), align 4
  tail call void @__unregister_chrdev(i32 noundef %shr, i32 noundef 0, i32 noundef 256, ptr noundef %1) #10
  %2 = load ptr, ptr @pi433_class, align 4
  %3 = ptrtoint ptr %2 to i32
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call6 = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @pi433_spi_driver) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %if.then8, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  %4 = load ptr, ptr @pi433_class, align 4
  tail call void @class_destroy(ptr noundef %4) #10
  %5 = load i32, ptr @pi433_dev, align 4
  %shr9 = lshr i32 %5, 20
  %6 = load ptr, ptr getelementptr inbounds (%struct.spi_driver, ptr @pi433_spi_driver, i32 0, i32 4), align 4
  tail call void @__unregister_chrdev(i32 noundef %shr9, i32 noundef 0, i32 noundef 256, ptr noundef %6) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then8, %if.end5.cleanup_crit_edge, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %3, %if.then3 ], [ %call, %entry.cleanup_crit_edge ], [ %call6, %if.then8 ], [ %call6, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @pi433_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @pi433_spi_driver, i32 0, i32 4)) #10
  %0 = load ptr, ptr @pi433_class, align 4
  tail call void @class_destroy(ptr noundef %0) #10
  %1 = load i32, ptr @pi433_dev, align 4
  %shr = lshr i32 %1, 20
  %2 = load ptr, ptr getelementptr inbounds (%struct.spi_driver, ptr @pi433_spi_driver, i32 0, i32 4), align 4
  tail call void @__unregister_chrdev(i32 noundef %shr, i32 noundef 0, i32 noundef 256, ptr noundef %2) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @class_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @alloc_chrdev_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__class_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pi433_probe(ptr noundef %spi) #3 align 64 {
entry:
  %cmd.addr.i = alloca i8, align 1
  %result.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %mode = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 7
  %0 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %mode, align 8
  %bits_per_word = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 5
  %1 = ptrtoint ptr %bits_per_word to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 8, ptr %bits_per_word, align 1
  %call = tail call i32 @spi_setup(ptr noundef %spi) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.body8, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pi433_probe.__UNIQUE_ID_ddebug257, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pi433_probe, %if.then6)) #10
          to label %cleanup [label %if.then6], !srcloc !200

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pi433_probe.__UNIQUE_ID_ddebug257, ptr noundef %spi, ptr noundef nonnull @.str.3) #10
  br label %cleanup

do.body8:                                         ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pi433_probe.__UNIQUE_ID_ddebug258, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pi433_probe, %if.then20)) #10
          to label %do.end26 [label %if.then20], !srcloc !200

if.then20:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mode, align 8
  %4 = ptrtoint ptr %bits_per_word to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bits_per_word, align 1
  %conv = zext i8 %5 to i32
  %max_speed_hz = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 3
  %6 = ptrtoint ptr %max_speed_hz to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %max_speed_hz, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pi433_probe.__UNIQUE_ID_ddebug258, ptr noundef %spi, ptr noundef nonnull @.str.4, i32 noundef %3, i32 noundef %conv, i32 noundef %7) #10
  br label %do.end26

do.end26:                                         ; preds = %if.then20, %do.body8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cmd.addr.i)
  %8 = ptrtoint ptr %cmd.addr.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 16, ptr %cmd.addr.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %result.i) #10
  %9 = ptrtoint ptr %result.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -1, ptr %result.i, align 1, !annotation !201
  %call.i = call i32 @spi_write_then_read(ptr noundef %spi, ptr noundef nonnull %cmd.addr.i, i32 noundef 1, ptr noundef nonnull %result.i, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %spi_w8r8.exit.thread, label %spi_w8r8.exit

spi_w8r8.exit.thread:                             ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %result.i) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.addr.i)
  br label %cleanup

spi_w8r8.exit:                                    ; preds = %do.end26
  %10 = ptrtoint ptr %result.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %result.i, align 1
  %conv.i = zext i8 %11 to i32
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %result.i) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.addr.i)
  call void @__sanitizer_cov_trace_const_cmp1(i8 36, i8 %11)
  %cond = icmp eq i8 %11, 36
  br i1 %cond, label %do.body31, label %do.body48

do.body31:                                        ; preds = %spi_w8r8.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pi433_probe.__UNIQUE_ID_ddebug259, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pi433_probe, %if.then43)) #10
          to label %sw.epilog [label %if.then43], !srcloc !200

if.then43:                                        ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pi433_probe.__UNIQUE_ID_ddebug259, ptr noundef %spi, ptr noundef nonnull @.str.5, i32 noundef 36) #10
  br label %sw.epilog

do.body48:                                        ; preds = %spi_w8r8.exit
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pi433_probe.__UNIQUE_ID_ddebug260, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pi433_probe, %if.then60)) #10
          to label %cleanup [label %if.then60], !srcloc !200

if.then60:                                        ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pi433_probe.__UNIQUE_ID_ddebug260, ptr noundef %spi, ptr noundef nonnull @.str.6, i32 noundef %conv.i) #10
  br label %cleanup

sw.epilog:                                        ; preds = %if.then43, %do.body31
  %call1.i.i.i = call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 66952, i32 noundef 3520, i32 noundef 5) #13
  %tobool66.not = icmp eq ptr %call1.i.i.i, null
  br i1 %tobool66.not, label %sw.epilog.cleanup_crit_edge, label %if.end68

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end68:                                         ; preds = %sw.epilog
  %spi69 = getelementptr inbounds %struct.pi433_device, ptr %call1.i.i.i, i32 0, i32 4
  %12 = ptrtoint ptr %spi69 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %spi, ptr %spi69, align 16
  %rx_active = getelementptr inbounds %struct.pi433_device, ptr %call1.i.i.i, i32 0, i32 24
  %13 = ptrtoint ptr %rx_active to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %rx_active, align 4
  %tx_active = getelementptr inbounds %struct.pi433_device, ptr %call1.i.i.i, i32 0, i32 25
  %14 = ptrtoint ptr %tx_active to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %tx_active, align 1
  %interrupt_rx_allowed = getelementptr inbounds %struct.pi433_device, ptr %call1.i.i.i, i32 0, i32 26
  %15 = ptrtoint ptr %interrupt_rx_allowed to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %interrupt_rx_allowed, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %16 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %16, i32 noundef 3264, i32 noundef 900) #14
  %rx_buffer = getelementptr inbounds %struct.pi433_device, ptr %call1.i.i.i, i32 0, i32 15
  %17 = ptrtoint ptr %rx_buffer to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call7.i, ptr %rx_buffer, align 8
  %tobool72.not = icmp eq ptr %call7.i, null
  br i1 %tobool72.not, label %if.end68.RX_failed_crit_edge, label %do.body75

if.end68.RX_failed_crit_edge:                     ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #12
  br label %RX_failed

do.body75:                                        ; preds = %if.end68
  %tx_wait_queue = getelementptr inbounds %struct.pi433_device, ptr %call1.i.i.i, i32 0, i32 11
  call void @__init_waitqueue_head(ptr noundef %tx_wait_queue, ptr noundef nonnull @.str.7, ptr noundef nonnull @pi433_probe.__key) #10
  %rx_wait_queue = getelementptr inbounds %struct.pi433_device, ptr %call1.i.i.i, i32 0, i32 21
  call void @__init_waitqueue_head(ptr noundef %rx_wait_queue, ptr noundef nonnull @.str.9, ptr noundef nonnull @pi433_probe.__key.8) #10
  %fifo_wait_queue = getelementptr inbounds %struct.pi433_device, ptr %call1.i.i.i, i32 0, i32 23
  call void @__init_waitqueue_head(ptr noundef %fifo_wait_queue, ptr noundef nonnull @.str.11, ptr noundef nonnull @pi433_probe.__key.10) #10
  %tx_fifo = getelementptr inbounds %struct.pi433_device, ptr %call1.i.i.i, i32 0, i32 8
  %18 = ptrtoint ptr %tx_fifo to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %tx_fifo, align 8
  %out = getelementptr inbounds %struct.pi433_device, ptr %call1.i.i.i, i32 0, i32 8, i32 0, i32 0, i32 1
  %19 = ptrtoint ptr %out to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %out, align 4
  %mask = getelementptr inbounds %struct.pi433_device, ptr %call1.i.i.i, i32 0, i32 8, i32 0, i32 0, i32 2
  %20 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 65535, ptr %mask, align 16
  %esize = getelementptr inbounds %struct.pi433_device, ptr %call1.i.i.i, i32 0, i32 8, i32 0, i32 0, i32 3
  %21 = ptrtoint ptr %esize to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %esize, align 4
  %buf = getelementptr inbounds %struct.pi433_device, ptr %call1.i.i.i, i32 0, i32 8, i32 1
  %data = getelementptr inbounds %struct.pi433_device, ptr %call1.i.i.i, i32 0, i32 8, i32 0, i32 0, i32 4
  %22 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %buf, ptr %data, align 8
  %tx_fifo_lock = getelementptr inbounds %struct.pi433_device, ptr %call1.i.i.i, i32 0, i32 9
  call void @__mutex_init(ptr noundef %tx_fifo_lock, ptr noundef nonnull @.str.13, ptr noundef nonnull @pi433_probe.__key.12) #10
  %rx_lock = getelementptr inbounds %struct.pi433_device, ptr %call1.i.i.i, i32 0, i32 20
  call void @__mutex_init(ptr noundef %rx_lock, ptr noundef nonnull @.str.15, ptr noundef nonnull @pi433_probe.__key.14) #10
  %call91 = call fastcc i32 @setup_gpio(ptr noundef nonnull %call1.i.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91)
  %tobool92.not = icmp eq i32 %call91, 0
  br i1 %tobool92.not, label %if.end111, label %do.body94

do.body94:                                        ; preds = %do.body75
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pi433_probe.__UNIQUE_ID_ddebug261, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pi433_probe, %if.then106)) #10
          to label %GPIO_failed [label %if.then106], !srcloc !200

if.then106:                                       ; preds = %do.body94
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pi433_probe.__UNIQUE_ID_ddebug261, ptr noundef %spi, ptr noundef nonnull @.str.16) #10
  br label %GPIO_failed

if.end111:                                        ; preds = %do.body75
  %call112 = call i32 @rf69_set_mode(ptr noundef %spi, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call112)
  %cmp113 = icmp slt i32 %call112, 0
  br i1 %cmp113, label %if.end111.minor_failed_crit_edge, label %if.end116

if.end111.minor_failed_crit_edge:                 ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #12
  br label %minor_failed

if.end116:                                        ; preds = %if.end111
  %call117 = call i32 @rf69_set_data_mode(ptr noundef %spi, i8 noundef zeroext 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call117)
  %cmp118 = icmp slt i32 %call117, 0
  br i1 %cmp118, label %if.end116.minor_failed_crit_edge, label %if.end121

if.end116.minor_failed_crit_edge:                 ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #12
  br label %minor_failed

if.end121:                                        ; preds = %if.end116
  %call122 = call i32 @rf69_enable_amplifier(ptr noundef %spi, i8 noundef zeroext -128) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call122)
  %cmp123 = icmp slt i32 %call122, 0
  br i1 %cmp123, label %if.end121.minor_failed_crit_edge, label %if.end126

if.end121.minor_failed_crit_edge:                 ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #12
  br label %minor_failed

if.end126:                                        ; preds = %if.end121
  %call127 = call i32 @rf69_disable_amplifier(ptr noundef %spi, i8 noundef zeroext 64) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call127)
  %cmp128 = icmp slt i32 %call127, 0
  br i1 %cmp128, label %if.end126.minor_failed_crit_edge, label %if.end131

if.end126.minor_failed_crit_edge:                 ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #12
  br label %minor_failed

if.end131:                                        ; preds = %if.end126
  %call132 = call i32 @rf69_disable_amplifier(ptr noundef %spi, i8 noundef zeroext 32) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call132)
  %cmp133 = icmp slt i32 %call132, 0
  br i1 %cmp133, label %if.end131.minor_failed_crit_edge, label %if.end136

if.end131.minor_failed_crit_edge:                 ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #12
  br label %minor_failed

if.end136:                                        ; preds = %if.end131
  %call137 = call i32 @rf69_set_output_power_level(ptr noundef %spi, i8 noundef zeroext 13) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call137)
  %cmp138 = icmp slt i32 %call137, 0
  br i1 %cmp138, label %if.end136.minor_failed_crit_edge, label %if.end141

if.end136.minor_failed_crit_edge:                 ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #12
  br label %minor_failed

if.end141:                                        ; preds = %if.end136
  %call142 = call i32 @rf69_set_antenna_impedance(ptr noundef %spi, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call142)
  %cmp143 = icmp slt i32 %call142, 0
  br i1 %cmp143, label %if.end141.minor_failed_crit_edge, label %if.end146

if.end141.minor_failed_crit_edge:                 ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #12
  br label %minor_failed

if.end146:                                        ; preds = %if.end141
  %call147 = call fastcc i32 @pi433_get_minor(ptr noundef nonnull %call1.i.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call147)
  %tobool148.not = icmp eq i32 %call147, 0
  br i1 %tobool148.not, label %if.end167, label %do.body150

do.body150:                                       ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pi433_probe.__UNIQUE_ID_ddebug262, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pi433_probe, %if.then162)) #10
          to label %minor_failed [label %if.then162], !srcloc !200

if.then162:                                       ; preds = %do.body150
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pi433_probe.__UNIQUE_ID_ddebug262, ptr noundef %spi, ptr noundef nonnull @.str.17) #10
  br label %minor_failed

if.end167:                                        ; preds = %if.end146
  %23 = load i32, ptr @pi433_dev, align 4
  %shr = and i32 %23, -1048576
  %minor = getelementptr inbounds %struct.pi433_device, ptr %call1.i.i.i, i32 0, i32 1
  %24 = ptrtoint ptr %minor to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %minor, align 4
  %or = or i32 %shr, %25
  %26 = ptrtoint ptr %call1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %or, ptr %call1.i.i.i, align 4096
  %27 = load ptr, ptr @pi433_class, align 4
  %call171 = call ptr (ptr, ptr, i32, ptr, ptr, ...) @device_create(ptr noundef %27, ptr noundef %spi, i32 noundef %or, ptr noundef nonnull %call1.i.i.i, ptr noundef nonnull @.str.18, i32 noundef %25) #10
  %dev172 = getelementptr inbounds %struct.pi433_device, ptr %call1.i.i.i, i32 0, i32 2
  %28 = ptrtoint ptr %dev172 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call171, ptr %dev172, align 8
  %cmp.i405 = icmp ugt ptr %call171, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i405, label %do.end178, label %do.body183

do.end178:                                        ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #12
  %call180 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19) #15
  %29 = ptrtoint ptr %dev172 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev172, align 8
  %31 = ptrtoint ptr %30 to i32
  br label %device_create_failed

do.body183:                                       ; preds = %if.end167
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pi433_probe.__UNIQUE_ID_ddebug263, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pi433_probe, %if.then195)) #10
          to label %if.end202 [label %if.then195], !srcloc !200

if.then195:                                       ; preds = %do.body183
  call void @__sanitizer_cov_trace_pc() #12
  %32 = ptrtoint ptr %dev172 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev172, align 8
  %34 = load i32, ptr @pi433_dev, align 4
  %shr197 = lshr i32 %34, 20
  %35 = ptrtoint ptr %minor to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %minor, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pi433_probe.__UNIQUE_ID_ddebug263, ptr noundef %33, ptr noundef nonnull @.str.20, i32 noundef %shr197, i32 noundef %36) #10
  br label %if.end202

if.end202:                                        ; preds = %if.then195, %do.body183
  %37 = ptrtoint ptr %minor to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %minor, align 4
  %call204 = call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @pi433_tx_thread, ptr noundef nonnull %call1.i.i.i, i32 noundef -1, ptr noundef nonnull @.str.21, i32 noundef %38) #10
  %cmp.i406 = icmp ugt ptr %call204, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i406, label %do.body213, label %if.end232

do.body213:                                       ; preds = %if.end202
  %tx_task_struct417 = getelementptr inbounds %struct.pi433_device, ptr %call1.i.i.i, i32 0, i32 10
  %39 = ptrtoint ptr %tx_task_struct417 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call204, ptr %tx_task_struct417, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pi433_probe.__UNIQUE_ID_ddebug264, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pi433_probe, %if.then225)) #10
          to label %do.end229 [label %if.then225], !srcloc !200

if.then225:                                       ; preds = %do.body213
  call void @__sanitizer_cov_trace_pc() #12
  %40 = ptrtoint ptr %dev172 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev172, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pi433_probe.__UNIQUE_ID_ddebug264, ptr noundef %41, ptr noundef nonnull @.str.22) #10
  br label %do.end229

do.end229:                                        ; preds = %if.then225, %do.body213
  %42 = ptrtoint ptr %tx_task_struct417 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %tx_task_struct417, align 8
  %44 = ptrtoint ptr %43 to i32
  br label %send_thread_failed

if.end232:                                        ; preds = %if.end202
  %call207 = call i32 @wake_up_process(ptr noundef %call204) #10
  %tx_task_struct = getelementptr inbounds %struct.pi433_device, ptr %call1.i.i.i, i32 0, i32 10
  %45 = ptrtoint ptr %tx_task_struct to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call204, ptr %tx_task_struct, align 8
  %call233 = call ptr @cdev_alloc() #10
  %cdev = getelementptr inbounds %struct.pi433_device, ptr %call1.i.i.i, i32 0, i32 3
  %46 = ptrtoint ptr %cdev to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call233, ptr %cdev, align 4
  %tobool235.not = icmp eq ptr %call233, null
  br i1 %tobool235.not, label %do.body237, label %if.end254

do.body237:                                       ; preds = %if.end232
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pi433_probe.__UNIQUE_ID_ddebug265, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pi433_probe, %if.then249)) #10
          to label %cdev_failed [label %if.then249], !srcloc !200

if.then249:                                       ; preds = %do.body237
  call void @__sanitizer_cov_trace_pc() #12
  %47 = ptrtoint ptr %dev172 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev172, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pi433_probe.__UNIQUE_ID_ddebug265, ptr noundef %48, ptr noundef nonnull @.str.23) #10
  br label %cdev_failed

if.end254:                                        ; preds = %if.end232
  %owner = getelementptr inbounds %struct.cdev, ptr %call233, i32 0, i32 1
  %49 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr null, ptr %owner, align 4
  %50 = ptrtoint ptr %cdev to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %cdev, align 4
  call void @cdev_init(ptr noundef %51, ptr noundef nonnull @pi433_fops) #10
  %52 = ptrtoint ptr %cdev to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %cdev, align 4
  %54 = ptrtoint ptr %call1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %call1.i.i.i, align 4096
  %call259 = call i32 @cdev_add(ptr noundef %53, i32 noundef %55, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call259)
  %tobool260.not = icmp eq i32 %call259, 0
  br i1 %tobool260.not, label %if.end279, label %do.body262

do.body262:                                       ; preds = %if.end254
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pi433_probe.__UNIQUE_ID_ddebug266, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pi433_probe, %if.then274)) #10
          to label %del_cdev [label %if.then274], !srcloc !200

if.then274:                                       ; preds = %do.body262
  call void @__sanitizer_cov_trace_pc() #12
  %56 = ptrtoint ptr %dev172 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev172, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pi433_probe.__UNIQUE_ID_ddebug266, ptr noundef %57, ptr noundef nonnull @.str.24) #10
  br label %del_cdev

if.end279:                                        ; preds = %if.end254
  call void @__sanitizer_cov_trace_pc() #12
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %58 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %call1.i.i.i, ptr %driver_data.i.i, align 4
  br label %cleanup

del_cdev:                                         ; preds = %if.then274, %do.body262
  %59 = ptrtoint ptr %cdev to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %cdev, align 4
  call void @cdev_del(ptr noundef %60) #10
  br label %cdev_failed

cdev_failed:                                      ; preds = %del_cdev, %if.then249, %do.body237
  %retval1.0 = phi i32 [ %call259, %del_cdev ], [ -12, %if.then249 ], [ -12, %do.body237 ]
  %61 = ptrtoint ptr %tx_task_struct to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %tx_task_struct, align 8
  %call282 = call i32 @kthread_stop(ptr noundef %62) #10
  br label %send_thread_failed

send_thread_failed:                               ; preds = %cdev_failed, %do.end229
  %retval1.1 = phi i32 [ %44, %do.end229 ], [ %retval1.0, %cdev_failed ]
  %63 = load ptr, ptr @pi433_class, align 4
  %64 = ptrtoint ptr %call1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %call1.i.i.i, align 4096
  call void @device_destroy(ptr noundef %63, i32 noundef %65) #10
  br label %device_create_failed

device_create_failed:                             ; preds = %send_thread_failed, %do.end178
  %retval1.2 = phi i32 [ %31, %do.end178 ], [ %retval1.1, %send_thread_failed ]
  call fastcc void @pi433_free_minor(ptr noundef nonnull %call1.i.i.i)
  br label %minor_failed

minor_failed:                                     ; preds = %device_create_failed, %if.then162, %do.body150, %if.end141.minor_failed_crit_edge, %if.end136.minor_failed_crit_edge, %if.end131.minor_failed_crit_edge, %if.end126.minor_failed_crit_edge, %if.end121.minor_failed_crit_edge, %if.end116.minor_failed_crit_edge, %if.end111.minor_failed_crit_edge
  %retval1.3 = phi i32 [ %call112, %if.end111.minor_failed_crit_edge ], [ %call117, %if.end116.minor_failed_crit_edge ], [ %call122, %if.end121.minor_failed_crit_edge ], [ %call127, %if.end126.minor_failed_crit_edge ], [ %call132, %if.end131.minor_failed_crit_edge ], [ %call137, %if.end136.minor_failed_crit_edge ], [ %call142, %if.end141.minor_failed_crit_edge ], [ %call147, %if.then162 ], [ %retval1.2, %device_create_failed ], [ %call147, %do.body150 ]
  call fastcc void @free_gpio(ptr noundef nonnull %call1.i.i.i)
  br label %GPIO_failed

GPIO_failed:                                      ; preds = %minor_failed, %if.then106, %do.body94
  %retval1.4 = phi i32 [ %call91, %if.then106 ], [ %retval1.3, %minor_failed ], [ %call91, %do.body94 ]
  %66 = ptrtoint ptr %rx_buffer to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %rx_buffer, align 8
  call void @kfree(ptr noundef %67) #10
  br label %RX_failed

RX_failed:                                        ; preds = %GPIO_failed, %if.end68.RX_failed_crit_edge
  %retval1.5 = phi i32 [ %retval1.4, %GPIO_failed ], [ -12, %if.end68.RX_failed_crit_edge ]
  call void @kfree(ptr noundef nonnull %call1.i.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %RX_failed, %if.end279, %sw.epilog.cleanup_crit_edge, %if.then60, %do.body48, %spi_w8r8.exit.thread, %if.then6, %do.body
  %retval.0 = phi i32 [ %retval1.5, %RX_failed ], [ 0, %if.end279 ], [ %call, %if.then6 ], [ -19, %if.then60 ], [ -12, %sw.epilog.cleanup_crit_edge ], [ %call, %do.body ], [ %call.i, %spi_w8r8.exit.thread ], [ -19, %do.body48 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pi433_remove(ptr nocapture noundef readonly %spi) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %arrayidx.i = getelementptr %struct.pi433_device, ptr %1, i32 0, i32 5, i32 0
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 4
  %cmp.i.i = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %entry.for.inc.i_crit_edge, label %if.end.i

entry.for.inc.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx1.i = getelementptr %struct.pi433_device, ptr %1, i32 0, i32 6, i32 0
  %4 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx1.i, align 4
  %call2.i = tail call ptr @free_irq(i32 noundef %5, ptr noundef %1) #10
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 4
  tail call void @gpiod_put(ptr noundef %7) #10
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i, %entry.for.inc.i_crit_edge
  %arrayidx.1.i = getelementptr %struct.pi433_device, ptr %1, i32 0, i32 5, i32 1
  %8 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.1.i, align 4
  %cmp.i.1.i = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.1.i, label %for.inc.i.free_gpio.exit_crit_edge, label %if.end.1.i

for.inc.i.free_gpio.exit_crit_edge:               ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %free_gpio.exit

if.end.1.i:                                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx1.1.i = getelementptr %struct.pi433_device, ptr %1, i32 0, i32 6, i32 1
  %10 = ptrtoint ptr %arrayidx1.1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx1.1.i, align 4
  %call2.1.i = tail call ptr @free_irq(i32 noundef %11, ptr noundef %1) #10
  %12 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.1.i, align 4
  tail call void @gpiod_put(ptr noundef %13) #10
  br label %free_gpio.exit

free_gpio.exit:                                   ; preds = %if.end.1.i, %for.inc.i.free_gpio.exit_crit_edge
  %spi1 = getelementptr inbounds %struct.pi433_device, ptr %1, i32 0, i32 4
  %14 = ptrtoint ptr %spi1 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %spi1, align 4
  %tx_task_struct = getelementptr inbounds %struct.pi433_device, ptr %1, i32 0, i32 10
  %15 = ptrtoint ptr %tx_task_struct to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %tx_task_struct, align 4
  %call2 = tail call i32 @kthread_stop(ptr noundef %16) #10
  %17 = load ptr, ptr @pi433_class, align 4
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %1, align 4
  tail call void @device_destroy(ptr noundef %17, i32 noundef %19) #10
  %cdev = getelementptr inbounds %struct.pi433_device, ptr %1, i32 0, i32 3
  %20 = ptrtoint ptr %cdev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cdev, align 4
  tail call void @cdev_del(ptr noundef %21) #10
  tail call void @mutex_lock_nested(ptr noundef nonnull @minor_lock, i32 noundef 0) #10
  %minor.i = getelementptr inbounds %struct.pi433_device, ptr %1, i32 0, i32 1
  %22 = ptrtoint ptr %minor.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %minor.i, align 4
  %call.i = tail call ptr @idr_remove(ptr noundef nonnull @pi433_idr, i32 noundef %23) #10
  tail call void @mutex_unlock(ptr noundef nonnull @minor_lock) #10
  %rx_buffer = getelementptr inbounds %struct.pi433_device, ptr %1, i32 0, i32 15
  %24 = ptrtoint ptr %rx_buffer to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rx_buffer, align 4
  tail call void @kfree(ptr noundef %25) #10
  tail call void @kfree(ptr noundef %1) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @setup_gpio(ptr noundef %device) unnamed_addr #3 align 64 {
entry:
  %name = alloca [5 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %name) #10
  %spi = getelementptr inbounds %struct.pi433_device, ptr %device, i32 0, i32 4
  %0 = call ptr @memset(ptr %name, i32 255, i32 5)
  br label %for.body

for.body:                                         ; preds = %for.inc107.for.body_crit_edge, %entry
  %cmp = phi i1 [ true, %entry ], [ false, %for.inc107.for.body_crit_edge ]
  %i.0171 = phi i32 [ 0, %entry ], [ 1, %for.inc107.for.body_crit_edge ]
  %call = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name, i32 noundef 5, ptr noundef nonnull @.str.25, i32 noundef %i.0171)
  %1 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %spi, align 4
  %call3 = call ptr @gpiod_get(ptr noundef %2, ptr noundef nonnull %name, i32 noundef 0) #10
  %arrayidx = getelementptr %struct.pi433_device, ptr %device, i32 0, i32 5, i32 %i.0171
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call3, ptr %arrayidx, align 4
  %magicptr = ptrtoint ptr %call3 to i32
  %4 = zext i32 %magicptr to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %magicptr, label %for.body.if.end40_crit_edge [
    i32 -2, label %do.body
    i32 -16, label %do.body21
  ]

for.body.if.end40_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end40

do.body:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @setup_gpio.__UNIQUE_ID_ddebug254, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@setup_gpio, %if.then11)) #10
          to label %for.inc107 [label %if.then11], !srcloc !200

if.then11:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %5 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %spi, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @setup_gpio.__UNIQUE_ID_ddebug254, ptr noundef %6, ptr noundef nonnull @.str.27, ptr noundef nonnull %name) #10
  br label %for.inc107

do.body21:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @setup_gpio.__UNIQUE_ID_ddebug255, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@setup_gpio, %if.then33)) #10
          to label %if.end40 [label %if.then33], !srcloc !200

if.then33:                                        ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %spi, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @setup_gpio.__UNIQUE_ID_ddebug255, ptr noundef %8, ptr noundef nonnull @.str.28, ptr noundef nonnull %name) #10
  br label %if.end40

if.end40:                                         ; preds = %if.then33, %do.body21, %for.body.if.end40_crit_edge
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx, align 4
  %cmp.i = icmp ugt ptr %10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then44, label %if.end56

if.then44:                                        ; preds = %if.end40
  %11 = ptrtoint ptr %10 to i32
  br i1 %cmp, label %if.then44.cleanup_crit_edge, label %for.body50

if.then44.cleanup_crit_edge:                      ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body50:                                       ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #12
  %gpiod.le = getelementptr inbounds %struct.pi433_device, ptr %device, i32 0, i32 5
  %irq_num = getelementptr inbounds %struct.pi433_device, ptr %device, i32 0, i32 6
  %12 = ptrtoint ptr %irq_num to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %irq_num, align 4
  %call52 = call ptr @free_irq(i32 noundef %13, ptr noundef %device) #10
  %14 = ptrtoint ptr %gpiod.le to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %gpiod.le, align 4
  call void @gpiod_put(ptr noundef %15) #10
  br label %cleanup

if.end56:                                         ; preds = %if.end40
  call void @gpiod_unexport(ptr noundef %10) #10
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx, align 4
  %call61 = call i32 @gpiod_direction_input(ptr noundef %17) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %if.end64, label %if.end56.cleanup_crit_edge

if.end56.cleanup_crit_edge:                       ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end64:                                         ; preds = %if.end56
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx, align 4
  %call67 = call i32 @gpiod_to_irq(ptr noundef %19) #10
  %arrayidx69 = getelementptr %struct.pi433_device, ptr %device, i32 0, i32 6, i32 %i.0171
  %20 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %call67, ptr %arrayidx69, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %cmp72 = icmp slt i32 %call67, 0
  br i1 %cmp72, label %if.then73, label %if.end79

if.then73:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #12
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr inttoptr (i32 -22 to ptr), ptr %arrayidx, align 4
  br label %cleanup

if.end79:                                         ; preds = %if.end64
  %arrayidx82 = getelementptr [2 x ptr], ptr @__const.setup_gpio.DIO_irq_handler, i32 0, i32 %i.0171
  %22 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx82, align 4
  %call.i = call i32 @request_threaded_irq(i32 noundef %call67, ptr noundef %23, ptr noundef null, i32 noundef 0, ptr noundef nonnull %name, ptr noundef %device) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool85.not = icmp eq i32 %call.i, 0
  br i1 %tobool85.not, label %do.body88, label %if.end79.cleanup_crit_edge

if.end79.cleanup_crit_edge:                       ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body88:                                        ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @setup_gpio.__UNIQUE_ID_ddebug256, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@setup_gpio, %if.then100)) #10
          to label %for.inc107 [label %if.then100], !srcloc !200

if.then100:                                       ; preds = %do.body88
  call void @__sanitizer_cov_trace_pc() #12
  %24 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %spi, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @setup_gpio.__UNIQUE_ID_ddebug256, ptr noundef %25, ptr noundef nonnull @.str.29, ptr noundef nonnull %name) #10
  br label %for.inc107

for.inc107:                                       ; preds = %if.then100, %do.body88, %if.then11, %do.body
  br i1 %cmp, label %for.inc107.for.body_crit_edge, label %for.inc107.cleanup_crit_edge

for.inc107.cleanup_crit_edge:                     ; preds = %for.inc107
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.inc107.for.body_crit_edge:                    ; preds = %for.inc107
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

cleanup:                                          ; preds = %for.inc107.cleanup_crit_edge, %if.end79.cleanup_crit_edge, %if.then73, %if.end56.cleanup_crit_edge, %for.body50, %if.then44.cleanup_crit_edge
  %retval.0 = phi i32 [ %call67, %if.then73 ], [ %11, %for.body50 ], [ %11, %if.then44.cleanup_crit_edge ], [ 0, %for.inc107.cleanup_crit_edge ], [ %call.i, %if.end79.cleanup_crit_edge ], [ %call61, %if.end56.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %name) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rf69_set_mode(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rf69_set_data_mode(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rf69_enable_amplifier(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rf69_disable_amplifier(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rf69_set_output_power_level(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rf69_set_antenna_impedance(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pi433_get_minor(ptr noundef %device) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @minor_lock, i32 noundef 0) #10
  %call = tail call i32 @idr_alloc(ptr noundef nonnull @pi433_idr, ptr noundef %device, i32 noundef 0, i32 noundef 1048576, i32 noundef 3264) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call)
  %cmp = icmp sgt i32 %call, -1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %minor = getelementptr inbounds %struct.pi433_device, ptr %device, i32 0, i32 1
  %0 = ptrtoint ptr %minor to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %call, ptr %minor, align 4
  br label %if.end4

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 -28, i32 %call)
  %cmp2 = icmp eq i32 %call, -28
  br i1 %cmp2, label %do.end, label %if.else.if.end4_crit_edge

if.else.if.end4_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

do.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %spi = getelementptr inbounds %struct.pi433_device, ptr %device, i32 0, i32 4
  %1 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %spi, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.36) #15
  br label %if.end4

if.end4:                                          ; preds = %do.end, %if.else.if.end4_crit_edge, %if.then
  %retval1.0 = phi i32 [ 0, %if.then ], [ -22, %do.end ], [ %call, %if.else.if.end4_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @minor_lock) #10
  ret i32 %retval1.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_create(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_create_on_node(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pi433_tx_thread(ptr noundef %data) #3 align 64 {
entry:
  %tx_cfg = alloca %struct.pi433_tx_cfg, align 4
  %size = alloca i32, align 4
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  %__wq_entry169 = alloca %struct.wait_queue_entry, align 4
  %__wq_entry303 = alloca %struct.wait_queue_entry, align 4
  %__wq_entry378 = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %spi1 = getelementptr inbounds %struct.pi433_device, ptr %data, i32 0, i32 4
  %0 = ptrtoint ptr %spi1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spi1, align 4
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %tx_cfg) #10
  %2 = call ptr @memset(ptr %tx_cfg, i32 255, i32 68)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %size) #10
  %3 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %size, align 4, !annotation !201
  %dev = getelementptr inbounds %struct.pi433_device, ptr %data, i32 0, i32 2
  %tx_fifo = getelementptr inbounds %struct.pi433_device, ptr %data, i32 0, i32 8
  %out = getelementptr inbounds %struct.pi433_device, ptr %data, i32 0, i32 8, i32 0, i32 0, i32 1
  %tx_wait_queue = getelementptr inbounds %struct.pi433_device, ptr %data, i32 0, i32 11
  %fixed_message_length = getelementptr inbounds %struct.pi433_tx_cfg, ptr %tx_cfg, i32 0, i32 15
  %enable_length_byte = getelementptr inbounds %struct.pi433_tx_cfg, ptr %tx_cfg, i32 0, i32 10
  %enable_address_byte = getelementptr inbounds %struct.pi433_tx_cfg, ptr %tx_cfg, i32 0, i32 11
  %buffer = getelementptr inbounds %struct.pi433_device, ptr %data, i32 0, i32 13
  %address_byte = getelementptr inbounds %struct.pi433_tx_cfg, ptr %tx_cfg, i32 0, i32 17
  %rx_active = getelementptr inbounds %struct.pi433_device, ptr %data, i32 0, i32 24
  %interrupt_rx_allowed = getelementptr inbounds %struct.pi433_device, ptr %data, i32 0, i32 26
  %irq_num = getelementptr inbounds %struct.pi433_device, ptr %data, i32 0, i32 6
  %tx_active = getelementptr inbounds %struct.pi433_device, ptr %data, i32 0, i32 25
  %repetitions216 = getelementptr inbounds %struct.pi433_tx_cfg, ptr %tx_cfg, i32 0, i32 7
  %bit_rate.i = getelementptr inbounds %struct.pi433_tx_cfg, ptr %tx_cfg, i32 0, i32 1
  %modulation.i = getelementptr inbounds %struct.pi433_tx_cfg, ptr %tx_cfg, i32 0, i32 3
  %dev_frequency.i = getelementptr inbounds %struct.pi433_tx_cfg, ptr %tx_cfg, i32 0, i32 2
  %pa_ramp.i = getelementptr inbounds %struct.pi433_tx_cfg, ptr %tx_cfg, i32 0, i32 5
  %mod_shaping.i = getelementptr inbounds %struct.pi433_tx_cfg, ptr %tx_cfg, i32 0, i32 4
  %tx_start_condition.i = getelementptr inbounds %struct.pi433_tx_cfg, ptr %tx_cfg, i32 0, i32 6
  %enable_preamble.i = getelementptr inbounds %struct.pi433_tx_cfg, ptr %tx_cfg, i32 0, i32 8
  %preamble_length.i = getelementptr inbounds %struct.pi433_tx_cfg, ptr %tx_cfg, i32 0, i32 13
  %enable_sync.i = getelementptr inbounds %struct.pi433_tx_cfg, ptr %tx_cfg, i32 0, i32 9
  %sync_length.i = getelementptr inbounds %struct.pi433_tx_cfg, ptr %tx_cfg, i32 0, i32 14
  %sync_pattern.i = getelementptr inbounds %struct.pi433_tx_cfg, ptr %tx_cfg, i32 0, i32 16
  %enable_crc.i = getelementptr inbounds %struct.pi433_tx_cfg, ptr %tx_cfg, i32 0, i32 12
  %arrayidx240 = getelementptr %struct.pi433_device, ptr %data, i32 0, i32 7, i32 1
  %arrayidx242 = getelementptr %struct.pi433_device, ptr %data, i32 0, i32 6, i32 1
  %irq_state = getelementptr inbounds %struct.pi433_device, ptr %data, i32 0, i32 7
  %free_in_fifo = getelementptr inbounds %struct.pi433_device, ptr %data, i32 0, i32 12
  %fifo_wait_queue = getelementptr inbounds %struct.pi433_device, ptr %data, i32 0, i32 23
  %rx_wait_queue = getelementptr inbounds %struct.pi433_device, ptr %data, i32 0, i32 21
  br label %while.cond.outer

while.cond.outer:                                 ; preds = %while.cond.outer.backedge, %entry
  %rx_interrupted.0.ph = phi i8 [ 0, %entry ], [ %rx_interrupted.0.ph.be, %while.cond.outer.backedge ]
  br label %while.cond

while.cond:                                       ; preds = %if.then90, %do.body78, %if.then60, %do.body48, %while.cond.outer
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pi433_tx_thread.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pi433_tx_thread, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !200

if.then:                                          ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pi433_tx_thread.__UNIQUE_ID_ddebug244, ptr noundef %5, ptr noundef nonnull @.str.44) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %while.cond
  call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 571) #10
  %6 = ptrtoint ptr %tx_fifo to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tx_fifo, align 4
  %8 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %out, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp = icmp eq i32 %7, %9
  br i1 %cmp, label %lor.lhs.false, label %do.end.if.end36_crit_edge

do.end.if.end36_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36

lor.lhs.false:                                    ; preds = %do.end
  %call13 = call zeroext i1 @kthread_should_stop() #10
  br i1 %call13, label %lor.lhs.false.if.end36_crit_edge, label %if.then15

lor.lhs.false.if.end36_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36

if.then15:                                        ; preds = %lor.lhs.false
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #10
  %10 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #10
  %call17608 = call i32 @prepare_to_wait_event(ptr noundef %tx_wait_queue, ptr noundef nonnull %__wq_entry, i32 noundef 1) #10
  %11 = ptrtoint ptr %tx_fifo to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %tx_fifo, align 4
  %13 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %out, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %14)
  %cmp23609 = icmp eq i32 %12, %14
  br i1 %cmp23609, label %if.then15.lor.lhs.false26_crit_edge, label %if.then15.for.end_crit_edge

if.then15.for.end_crit_edge:                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.then15.lor.lhs.false26_crit_edge:              ; preds = %if.then15
  br label %lor.lhs.false26

lor.lhs.false26:                                  ; preds = %cleanup.lor.lhs.false26_crit_edge, %if.then15.lor.lhs.false26_crit_edge
  %call17610 = phi i32 [ %call17, %cleanup.lor.lhs.false26_crit_edge ], [ %call17608, %if.then15.lor.lhs.false26_crit_edge ]
  %call27 = call zeroext i1 @kthread_should_stop() #10
  br i1 %call27, label %lor.lhs.false26.for.end_crit_edge, label %if.end30

lor.lhs.false26.for.end_crit_edge:                ; preds = %lor.lhs.false26
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end30:                                         ; preds = %lor.lhs.false26
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17610)
  %tobool31.not = icmp eq i32 %call17610, 0
  br i1 %tobool31.not, label %cleanup, label %if.end30.__out_crit_edge

if.end30.__out_crit_edge:                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  br label %__out

cleanup:                                          ; preds = %if.end30
  call void @schedule() #10
  %call17 = call i32 @prepare_to_wait_event(ptr noundef %tx_wait_queue, ptr noundef nonnull %__wq_entry, i32 noundef 1) #10
  %15 = ptrtoint ptr %tx_fifo to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %tx_fifo, align 4
  %17 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %out, align 4
  %cmp23 = icmp eq i32 %16, %18
  br i1 %cmp23, label %cleanup.lor.lhs.false26_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

cleanup.lor.lhs.false26_crit_edge:                ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false26

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %lor.lhs.false26.for.end_crit_edge, %if.then15.for.end_crit_edge
  call void @finish_wait(ptr noundef %tx_wait_queue, ptr noundef nonnull %__wq_entry) #10
  br label %__out

__out:                                            ; preds = %for.end, %if.end30.__out_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #10
  br label %if.end36

if.end36:                                         ; preds = %__out, %lor.lhs.false.if.end36_crit_edge, %do.end.if.end36_crit_edge
  %call38 = call zeroext i1 @kthread_should_stop() #10
  br i1 %call38, label %if.end36.cleanup445_crit_edge, label %if.end40

if.end36.cleanup445_crit_edge:                    ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup445

if.end40:                                         ; preds = %if.end36
  %call43 = call i32 @__kfifo_out_r(ptr noundef %tx_fifo, ptr noundef nonnull %tx_cfg, i32 noundef 68, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 68, i32 %call43)
  %cmp45.not = icmp eq i32 %call43, 68
  br i1 %cmp45.not, label %if.end65, label %do.body48

do.body48:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pi433_tx_thread.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pi433_tx_thread, %if.then60)) #10
          to label %while.cond [label %if.then60], !srcloc !200

if.then60:                                        ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #12
  %19 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pi433_tx_thread.__UNIQUE_ID_ddebug245, ptr noundef %20, ptr noundef nonnull @.str.45, i32 noundef %call43, i32 noundef 68) #10
  br label %while.cond

if.end65:                                         ; preds = %if.end40
  %call73 = call i32 @__kfifo_out_r(ptr noundef %tx_fifo, ptr noundef nonnull %size, i32 noundef 4, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call73)
  %cmp75.not = icmp eq i32 %call73, 4
  br i1 %cmp75.not, label %if.end95, label %do.body78

do.body78:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pi433_tx_thread.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pi433_tx_thread, %if.then90)) #10
          to label %while.cond [label %if.then90], !srcloc !200

if.then90:                                        ; preds = %do.body78
  call void @__sanitizer_cov_trace_pc() #12
  %21 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pi433_tx_thread.__UNIQUE_ID_ddebug246, ptr noundef %22, ptr noundef nonnull @.str.46, i32 noundef %call73, i32 noundef 4) #10
  br label %while.cond

if.end95:                                         ; preds = %if.end65
  %23 = ptrtoint ptr %fixed_message_length to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %fixed_message_length, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %cmp97.not = icmp eq i8 %24, 0
  br i1 %cmp97.not, label %if.end95.if.end102_crit_edge, label %if.then99

if.end95.if.end102_crit_edge:                     ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end102

if.then99:                                        ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #12
  %conv96 = zext i8 %24 to i32
  %25 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %conv96, ptr %size, align 4
  br label %if.end102

if.end102:                                        ; preds = %if.then99, %if.end95.if.end102_crit_edge
  %26 = ptrtoint ptr %enable_length_byte to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %enable_length_byte, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %27)
  %cmp103 = icmp eq i32 %27, 1
  br i1 %cmp103, label %if.then105, label %if.end102.if.end106_crit_edge

if.end102.if.end106_crit_edge:                    ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end106

if.then105:                                       ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #12
  %28 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %size, align 4
  %inc = add i32 %29, 1
  store i32 %inc, ptr %size, align 4
  br label %if.end106

if.end106:                                        ; preds = %if.then105, %if.end102.if.end106_crit_edge
  %30 = ptrtoint ptr %enable_address_byte to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %enable_address_byte, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %31)
  %cmp107 = icmp eq i32 %31, 1
  br i1 %cmp107, label %if.then109, label %if.end106.if.end111_crit_edge

if.end106.if.end111_crit_edge:                    ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end111

if.then109:                                       ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #12
  %32 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %size, align 4
  %inc110 = add i32 %33, 1
  store i32 %inc110, ptr %size, align 4
  br label %if.end111

if.end111:                                        ; preds = %if.then109, %if.end106.if.end111_crit_edge
  %34 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %size, align 4
  %36 = call ptr @memset(ptr %buffer, i32 0, i32 %35)
  br i1 %cmp103, label %if.then115, label %if.end111.if.end119_crit_edge

if.end111.if.end119_crit_edge:                    ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end119

if.then115:                                       ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #12
  %37 = trunc i32 %35 to i8
  %conv116 = add i8 %37, -1
  %38 = ptrtoint ptr %buffer to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %conv116, ptr %buffer, align 1
  br label %if.end119

if.end119:                                        ; preds = %if.then115, %if.end111.if.end119_crit_edge
  %position.0 = phi i32 [ 1, %if.then115 ], [ 0, %if.end111.if.end119_crit_edge ]
  br i1 %cmp107, label %if.then123, label %if.end119.if.end127_crit_edge

if.end119.if.end127_crit_edge:                    ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end127

if.then123:                                       ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #12
  %39 = ptrtoint ptr %address_byte to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %address_byte, align 4
  %inc125 = add nuw nsw i32 %position.0, 1
  %arrayidx126 = getelementptr %struct.pi433_device, ptr %data, i32 0, i32 13, i32 %position.0
  %41 = ptrtoint ptr %arrayidx126 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %40, ptr %arrayidx126, align 1
  br label %if.end127

if.end127:                                        ; preds = %if.then123, %if.end119.if.end127_crit_edge
  %position.1 = phi i32 [ %inc125, %if.then123 ], [ %position.0, %if.end119.if.end127_crit_edge ]
  %arrayidx132 = getelementptr %struct.pi433_device, ptr %data, i32 0, i32 13, i32 %position.1
  %sub134 = sub nuw nsw i32 900, %position.1
  %call138 = call i32 @__kfifo_out_r(ptr noundef %tx_fifo, ptr noundef %arrayidx132, i32 noundef %sub134, i32 noundef 1) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pi433_tx_thread.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pi433_tx_thread, %if.then152)) #10
          to label %do.end156 [label %if.then152], !srcloc !200

if.then152:                                       ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #12
  %42 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pi433_tx_thread.__UNIQUE_ID_ddebug247, ptr noundef %43, ptr noundef nonnull @.str.47, i32 noundef %call138) #10
  br label %do.end156

do.end156:                                        ; preds = %if.then152, %if.end127
  call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 640) #10
  %44 = ptrtoint ptr %rx_active to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %rx_active, align 4, !range !202
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool164.not = icmp eq i8 %45, 0
  br i1 %tobool164.not, label %do.end156.if.end193_crit_edge, label %lor.lhs.false165

do.end156.if.end193_crit_edge:                    ; preds = %do.end156
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end193

lor.lhs.false165:                                 ; preds = %do.end156
  %46 = ptrtoint ptr %interrupt_rx_allowed to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %interrupt_rx_allowed, align 2, !range !202
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool166.not = icmp eq i8 %47, 0
  br i1 %tobool166.not, label %if.then168, label %lor.lhs.false165.if.end193_crit_edge

lor.lhs.false165.if.end193_crit_edge:             ; preds = %lor.lhs.false165
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end193

if.then168:                                       ; preds = %lor.lhs.false165
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry169) #10
  %48 = call ptr @memset(ptr %__wq_entry169, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry169, i32 noundef 0) #10
  %call174612 = call i32 @prepare_to_wait_event(ptr noundef %tx_wait_queue, ptr noundef nonnull %__wq_entry169, i32 noundef 1) #10
  %49 = ptrtoint ptr %rx_active to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %rx_active, align 4, !range !202
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool176.not613 = icmp eq i8 %50, 0
  br i1 %tobool176.not613, label %if.then168.for.end189_crit_edge, label %if.then168.lor.lhs.false177_crit_edge

if.then168.lor.lhs.false177_crit_edge:            ; preds = %if.then168
  br label %lor.lhs.false177

if.then168.for.end189_crit_edge:                  ; preds = %if.then168
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end189

lor.lhs.false177:                                 ; preds = %cleanup186.lor.lhs.false177_crit_edge, %if.then168.lor.lhs.false177_crit_edge
  %call174614 = phi i32 [ %call174, %cleanup186.lor.lhs.false177_crit_edge ], [ %call174612, %if.then168.lor.lhs.false177_crit_edge ]
  %51 = ptrtoint ptr %interrupt_rx_allowed to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %interrupt_rx_allowed, align 2, !range !202
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool179.not = icmp eq i8 %52, 0
  br i1 %tobool179.not, label %if.end182, label %lor.lhs.false177.for.end189_crit_edge

lor.lhs.false177.for.end189_crit_edge:            ; preds = %lor.lhs.false177
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end189

if.end182:                                        ; preds = %lor.lhs.false177
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call174614)
  %tobool183.not = icmp eq i32 %call174614, 0
  br i1 %tobool183.not, label %cleanup186, label %if.end182.__out191_crit_edge

if.end182.__out191_crit_edge:                     ; preds = %if.end182
  call void @__sanitizer_cov_trace_pc() #12
  br label %__out191

cleanup186:                                       ; preds = %if.end182
  call void @schedule() #10
  %call174 = call i32 @prepare_to_wait_event(ptr noundef %tx_wait_queue, ptr noundef nonnull %__wq_entry169, i32 noundef 1) #10
  %53 = ptrtoint ptr %rx_active to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %rx_active, align 4, !range !202
  %tobool176.not = icmp eq i8 %54, 0
  br i1 %tobool176.not, label %cleanup186.for.end189_crit_edge, label %cleanup186.lor.lhs.false177_crit_edge

cleanup186.lor.lhs.false177_crit_edge:            ; preds = %cleanup186
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false177

cleanup186.for.end189_crit_edge:                  ; preds = %cleanup186
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end189

for.end189:                                       ; preds = %cleanup186.for.end189_crit_edge, %lor.lhs.false177.for.end189_crit_edge, %if.then168.for.end189_crit_edge
  call void @finish_wait(ptr noundef %tx_wait_queue, ptr noundef nonnull %__wq_entry169) #10
  br label %__out191

__out191:                                         ; preds = %for.end189, %if.end182.__out191_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry169) #10
  br label %if.end193

if.end193:                                        ; preds = %__out191, %lor.lhs.false165.if.end193_crit_edge, %do.end156.if.end193_crit_edge
  %55 = ptrtoint ptr %irq_num to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %irq_num, align 4
  call void @disable_irq(i32 noundef %56) #10
  %57 = ptrtoint ptr %tx_active to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 1, ptr %tx_active, align 1
  %call196 = call i32 @rf69_set_mode(ptr noundef %1, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call196)
  %cmp197 = icmp slt i32 %call196, 0
  br i1 %cmp197, label %if.end193.abort_crit_edge, label %if.end200

if.end193.abort_crit_edge:                        ; preds = %if.end193
  call void @__sanitizer_cov_trace_pc() #12
  br label %abort

if.end200:                                        ; preds = %if.end193
  %58 = ptrtoint ptr %rx_active to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %rx_active, align 4, !range !202
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %tobool202.not = icmp eq i8 %59, 0
  %60 = and i8 %rx_interrupted.0.ph, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %tobool204.not = icmp eq i8 %60, 0
  %spec.store.select = select i1 %tobool204.not, i8 1, i8 %rx_interrupted.0.ph
  %rx_interrupted.1 = select i1 %tobool202.not, i8 %rx_interrupted.0.ph, i8 %spec.store.select
  %call207 = call i32 @rf69_set_fifo_threshold(ptr noundef %1, i8 noundef zeroext 15) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call207)
  %cmp208 = icmp slt i32 %call207, 0
  br i1 %cmp208, label %if.end200.abort_crit_edge, label %if.end211

if.end200.abort_crit_edge:                        ; preds = %if.end200
  call void @__sanitizer_cov_trace_pc() #12
  br label %abort

if.end211:                                        ; preds = %if.end200
  %61 = ptrtoint ptr %enable_length_byte to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %enable_length_byte, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %62)
  %cmp213 = icmp eq i32 %62, 1
  br i1 %cmp213, label %if.then215, label %if.else

if.then215:                                       ; preds = %if.end211
  %63 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %size, align 4
  %65 = ptrtoint ptr %repetitions216 to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %repetitions216, align 4
  %conv217 = zext i16 %66 to i32
  %mul = mul i32 %64, %conv217
  %conv218 = trunc i32 %mul to i8
  %call219 = call i32 @rf69_set_payload_length(ptr noundef %1, i8 noundef zeroext %conv218) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call219)
  %cmp220 = icmp slt i32 %call219, 0
  br i1 %cmp220, label %if.then215.abort_crit_edge, label %if.then215.if.end229_crit_edge

if.then215.if.end229_crit_edge:                   ; preds = %if.then215
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end229

if.then215.abort_crit_edge:                       ; preds = %if.then215
  call void @__sanitizer_cov_trace_pc() #12
  br label %abort

if.else:                                          ; preds = %if.end211
  %call224 = call i32 @rf69_set_payload_length(ptr noundef %1, i8 noundef zeroext 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call224)
  %cmp225 = icmp slt i32 %call224, 0
  br i1 %cmp225, label %if.else.abort_crit_edge, label %if.else.if.end229_crit_edge

if.else.if.end229_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end229

if.else.abort_crit_edge:                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %abort

if.end229:                                        ; preds = %if.else.if.end229_crit_edge, %if.then215.if.end229_crit_edge
  %67 = ptrtoint ptr %spi1 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %spi1, align 4
  %69 = ptrtoint ptr %tx_cfg to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %tx_cfg, align 4
  %call.i = call i32 @rf69_set_frequency(ptr noundef %68, i32 noundef %70) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.end229.abort_crit_edge, label %if.end.i

if.end229.abort_crit_edge:                        ; preds = %if.end229
  call void @__sanitizer_cov_trace_pc() #12
  br label %abort

if.end.i:                                         ; preds = %if.end229
  %71 = ptrtoint ptr %spi1 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %spi1, align 4
  %73 = ptrtoint ptr %bit_rate.i to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %bit_rate.i, align 4
  %call2.i = call i32 @rf69_set_bit_rate(ptr noundef %72, i16 noundef zeroext %74) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp3.i = icmp slt i32 %call2.i, 0
  br i1 %cmp3.i, label %if.end.i.abort_crit_edge, label %if.end5.i

if.end.i.abort_crit_edge:                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %abort

if.end5.i:                                        ; preds = %if.end.i
  %75 = ptrtoint ptr %spi1 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %spi1, align 4
  %77 = ptrtoint ptr %modulation.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %modulation.i, align 4
  %call7.i = call i32 @rf69_set_modulation(ptr noundef %76, i32 noundef %78) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %cmp8.i = icmp slt i32 %call7.i, 0
  br i1 %cmp8.i, label %if.end5.i.abort_crit_edge, label %if.end10.i

if.end5.i.abort_crit_edge:                        ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %abort

if.end10.i:                                       ; preds = %if.end5.i
  %79 = ptrtoint ptr %spi1 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %spi1, align 4
  %81 = ptrtoint ptr %dev_frequency.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %dev_frequency.i, align 4
  %call12.i = call i32 @rf69_set_deviation(ptr noundef %80, i32 noundef %82) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %cmp13.i = icmp slt i32 %call12.i, 0
  br i1 %cmp13.i, label %if.end10.i.abort_crit_edge, label %if.end15.i

if.end10.i.abort_crit_edge:                       ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %abort

if.end15.i:                                       ; preds = %if.end10.i
  %83 = ptrtoint ptr %spi1 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %spi1, align 4
  %85 = ptrtoint ptr %pa_ramp.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %pa_ramp.i, align 4
  %call17.i = call i32 @rf69_set_pa_ramp(ptr noundef %84, i32 noundef %86) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %cmp18.i = icmp slt i32 %call17.i, 0
  br i1 %cmp18.i, label %if.end15.i.abort_crit_edge, label %if.end20.i

if.end15.i.abort_crit_edge:                       ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %abort

if.end20.i:                                       ; preds = %if.end15.i
  %87 = ptrtoint ptr %spi1 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %spi1, align 4
  %89 = ptrtoint ptr %mod_shaping.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %mod_shaping.i, align 4
  %call22.i = call i32 @rf69_set_modulation_shaping(ptr noundef %88, i32 noundef %90) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i)
  %cmp23.i = icmp slt i32 %call22.i, 0
  br i1 %cmp23.i, label %if.end20.i.abort_crit_edge, label %if.end25.i

if.end20.i.abort_crit_edge:                       ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %abort

if.end25.i:                                       ; preds = %if.end20.i
  %91 = ptrtoint ptr %spi1 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %spi1, align 4
  %93 = ptrtoint ptr %tx_start_condition.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %tx_start_condition.i, align 4
  %call27.i = call i32 @rf69_set_tx_start_condition(ptr noundef %92, i32 noundef %94) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i)
  %cmp28.i = icmp slt i32 %call27.i, 0
  br i1 %cmp28.i, label %if.end25.i.abort_crit_edge, label %if.end30.i

if.end25.i.abort_crit_edge:                       ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %abort

if.end30.i:                                       ; preds = %if.end25.i
  %95 = ptrtoint ptr %enable_preamble.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %enable_preamble.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %96)
  %cmp31.i = icmp eq i32 %96, 1
  %97 = ptrtoint ptr %spi1 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %spi1, align 4
  br i1 %cmp31.i, label %if.then32.i, label %if.else.i

if.then32.i:                                      ; preds = %if.end30.i
  %99 = ptrtoint ptr %preamble_length.i to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %preamble_length.i, align 4
  %call34.i = call i32 @rf69_set_preamble_length(ptr noundef %98, i16 noundef zeroext %100) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34.i)
  %cmp35.i = icmp slt i32 %call34.i, 0
  br i1 %cmp35.i, label %if.then32.i.abort_crit_edge, label %if.then32.i.if.end43.i_crit_edge

if.then32.i.if.end43.i_crit_edge:                 ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end43.i

if.then32.i.abort_crit_edge:                      ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %abort

if.else.i:                                        ; preds = %if.end30.i
  %call39.i = call i32 @rf69_set_preamble_length(ptr noundef %98, i16 noundef zeroext 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39.i)
  %cmp40.i = icmp slt i32 %call39.i, 0
  br i1 %cmp40.i, label %if.else.i.abort_crit_edge, label %if.else.i.if.end43.i_crit_edge

if.else.i.if.end43.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end43.i

if.else.i.abort_crit_edge:                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %abort

if.end43.i:                                       ; preds = %if.else.i.if.end43.i_crit_edge, %if.then32.i.if.end43.i_crit_edge
  %101 = ptrtoint ptr %enable_sync.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %enable_sync.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %102)
  %cmp44.i = icmp eq i32 %102, 1
  %103 = ptrtoint ptr %spi1 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %spi1, align 4
  br i1 %cmp44.i, label %if.then45.i, label %if.else61.i

if.then45.i:                                      ; preds = %if.end43.i
  %105 = ptrtoint ptr %sync_length.i to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %sync_length.i, align 2
  %call47.i = call i32 @rf69_set_sync_size(ptr noundef %104, i8 noundef zeroext %106) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47.i)
  %cmp48.i = icmp slt i32 %call47.i, 0
  br i1 %cmp48.i, label %if.then45.i.abort_crit_edge, label %if.end50.i

if.then45.i.abort_crit_edge:                      ; preds = %if.then45.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %abort

if.end50.i:                                       ; preds = %if.then45.i
  %107 = ptrtoint ptr %spi1 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %spi1, align 4
  %call52.i = call i32 @rf69_set_sync_values(ptr noundef %108, ptr noundef %sync_pattern.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52.i)
  %cmp53.i = icmp slt i32 %call52.i, 0
  br i1 %cmp53.i, label %if.end50.i.abort_crit_edge, label %if.end55.i

if.end50.i.abort_crit_edge:                       ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %abort

if.end55.i:                                       ; preds = %if.end50.i
  %109 = ptrtoint ptr %spi1 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %spi1, align 4
  %call57.i = call i32 @rf69_enable_sync(ptr noundef %110) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57.i)
  %cmp58.i = icmp slt i32 %call57.i, 0
  br i1 %cmp58.i, label %if.end55.i.abort_crit_edge, label %if.end55.i.if.end67.i_crit_edge

if.end55.i.if.end67.i_crit_edge:                  ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end67.i

if.end55.i.abort_crit_edge:                       ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %abort

if.else61.i:                                      ; preds = %if.end43.i
  %call63.i = call i32 @rf69_disable_sync(ptr noundef %104) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63.i)
  %cmp64.i = icmp slt i32 %call63.i, 0
  br i1 %cmp64.i, label %if.else61.i.abort_crit_edge, label %if.else61.i.if.end67.i_crit_edge

if.else61.i.if.end67.i_crit_edge:                 ; preds = %if.else61.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end67.i

if.else61.i.abort_crit_edge:                      ; preds = %if.else61.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %abort

if.end67.i:                                       ; preds = %if.else61.i.if.end67.i_crit_edge, %if.end55.i.if.end67.i_crit_edge
  %111 = ptrtoint ptr %enable_length_byte to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %enable_length_byte, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %112)
  %cmp68.i = icmp eq i32 %112, 1
  %113 = ptrtoint ptr %spi1 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %spi1, align 4
  br i1 %cmp68.i, label %if.then69.i, label %if.else75.i

if.then69.i:                                      ; preds = %if.end67.i
  %call71.i = call i32 @rf69_set_packet_format(ptr noundef %114, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71.i)
  %cmp72.i = icmp slt i32 %call71.i, 0
  br i1 %cmp72.i, label %if.then69.i.abort_crit_edge, label %if.then69.i.if.end81.i_crit_edge

if.then69.i.if.end81.i_crit_edge:                 ; preds = %if.then69.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end81.i

if.then69.i.abort_crit_edge:                      ; preds = %if.then69.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %abort

if.else75.i:                                      ; preds = %if.end67.i
  %call77.i = call i32 @rf69_set_packet_format(ptr noundef %114, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77.i)
  %cmp78.i = icmp slt i32 %call77.i, 0
  br i1 %cmp78.i, label %if.else75.i.abort_crit_edge, label %if.else75.i.if.end81.i_crit_edge

if.else75.i.if.end81.i_crit_edge:                 ; preds = %if.else75.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end81.i

if.else75.i.abort_crit_edge:                      ; preds = %if.else75.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %abort

if.end81.i:                                       ; preds = %if.else75.i.if.end81.i_crit_edge, %if.then69.i.if.end81.i_crit_edge
  %115 = ptrtoint ptr %enable_crc.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %enable_crc.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %116)
  %cmp82.i = icmp eq i32 %116, 1
  %117 = ptrtoint ptr %spi1 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %spi1, align 4
  br i1 %cmp82.i, label %if.then83.i, label %if.else89.i

if.then83.i:                                      ; preds = %if.end81.i
  %call85.i = call i32 @rf69_enable_crc(ptr noundef %118) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85.i)
  %cmp86.i = icmp slt i32 %call85.i, 0
  br i1 %cmp86.i, label %if.then83.i.abort_crit_edge, label %if.then83.i.if.end234_crit_edge

if.then83.i.if.end234_crit_edge:                  ; preds = %if.then83.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end234

if.then83.i.abort_crit_edge:                      ; preds = %if.then83.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %abort

if.else89.i:                                      ; preds = %if.end81.i
  %call91.i = call i32 @rf69_disable_crc(ptr noundef %118) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91.i)
  %cmp92.i = icmp slt i32 %call91.i, 0
  br i1 %cmp92.i, label %if.else89.i.abort_crit_edge, label %if.else89.i.if.end234_crit_edge

if.else89.i.if.end234_crit_edge:                  ; preds = %if.else89.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end234

if.else89.i.abort_crit_edge:                      ; preds = %if.else89.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %abort

if.end234:                                        ; preds = %if.else89.i.if.end234_crit_edge, %if.then83.i.if.end234_crit_edge
  %call235 = call i32 @rf69_set_dio_mapping(ptr noundef %1, i8 noundef zeroext 1, i8 noundef zeroext 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call235)
  %cmp236 = icmp slt i32 %call235, 0
  br i1 %cmp236, label %if.end234.abort_crit_edge, label %if.end239

if.end234.abort_crit_edge:                        ; preds = %if.end234
  call void @__sanitizer_cov_trace_pc() #12
  br label %abort

if.end239:                                        ; preds = %if.end234
  %119 = ptrtoint ptr %arrayidx240 to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 0, ptr %arrayidx240, align 1
  %120 = ptrtoint ptr %arrayidx242 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %arrayidx242, align 4
  %call243 = call i32 @irq_set_irq_type(i32 noundef %121, i32 noundef 2) #10
  %call244 = call i32 @rf69_set_dio_mapping(ptr noundef %1, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call244)
  %cmp245 = icmp slt i32 %call244, 0
  br i1 %cmp245, label %if.end239.abort_crit_edge, label %if.end248

if.end239.abort_crit_edge:                        ; preds = %if.end239
  call void @__sanitizer_cov_trace_pc() #12
  br label %abort

if.end248:                                        ; preds = %if.end239
  %122 = ptrtoint ptr %irq_state to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 0, ptr %irq_state, align 4
  %123 = ptrtoint ptr %irq_num to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %irq_num, align 4
  %call253 = call i32 @irq_set_irq_type(i32 noundef %124, i32 noundef 1) #10
  %125 = ptrtoint ptr %irq_num to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %irq_num, align 4
  call void @enable_irq(i32 noundef %126) #10
  %call256 = call i32 @rf69_set_mode(ptr noundef %1, i32 noundef 3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call256)
  %cmp257 = icmp slt i32 %call256, 0
  br i1 %cmp257, label %if.end248.abort_crit_edge, label %if.end260

if.end248.abort_crit_edge:                        ; preds = %if.end248
  call void @__sanitizer_cov_trace_pc() #12
  br label %abort

if.end260:                                        ; preds = %if.end248
  %127 = ptrtoint ptr %free_in_fifo to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 66, ptr %free_in_fifo, align 4
  %128 = ptrtoint ptr %repetitions216 to i32
  call void @__asan_load2_noabort(i32 %128)
  %129 = load i16, ptr %repetitions216, align 4
  %conv262 = zext i16 %129 to i32
  br label %while.cond263

while.cond263:                                    ; preds = %if.end324.while.cond263_crit_edge, %if.end260
  %repetitions.0 = phi i32 [ %conv262, %if.end260 ], [ %repetitions.1, %if.end324.while.cond263_crit_edge ]
  %position.2 = phi i32 [ 0, %if.end260 ], [ %position.3, %if.end324.while.cond263_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %repetitions.0)
  %cmp264 = icmp sgt i32 %repetitions.0, 0
  br i1 %cmp264, label %land.rhs, label %while.cond263.do.body346_crit_edge

while.cond263.do.body346_crit_edge:               ; preds = %while.cond263
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body346

land.rhs:                                         ; preds = %while.cond263
  %130 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %131, i32 %position.2)
  %cmp266 = icmp ugt i32 %131, %position.2
  br i1 %cmp266, label %while.body268, label %land.rhs.do.body346_crit_edge

land.rhs.do.body346_crit_edge:                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body346

while.body268:                                    ; preds = %land.rhs
  %sub269 = sub i32 %131, %position.2
  %132 = ptrtoint ptr %free_in_fifo to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %free_in_fifo, align 4
  %conv271 = zext i8 %133 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub269, i32 %conv271)
  %cmp272 = icmp ugt i32 %sub269, %conv271
  br i1 %cmp272, label %if.then274, label %if.else281

if.then274:                                       ; preds = %while.body268
  call void @__sanitizer_cov_trace_pc() #12
  %134 = ptrtoint ptr %free_in_fifo to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 0, ptr %free_in_fifo, align 4
  %arrayidx279 = getelementptr %struct.pi433_device, ptr %data, i32 0, i32 13, i32 %position.2
  %call280 = call i32 @rf69_write_fifo(ptr noundef %1, ptr noundef %arrayidx279, i32 noundef %conv271) #10
  %add = add i32 %position.2, %conv271
  br label %if.end290

if.else281:                                       ; preds = %while.body268
  call void @__sanitizer_cov_trace_pc() #12
  %135 = trunc i32 %131 to i8
  %conv285 = sub i8 %133, %135
  %136 = ptrtoint ptr %free_in_fifo to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 %conv285, ptr %free_in_fifo, align 4
  %dec = add nsw i32 %repetitions.0, -1
  %arrayidx287 = getelementptr %struct.pi433_device, ptr %data, i32 0, i32 13, i32 %position.2
  %call289 = call i32 @rf69_write_fifo(ptr noundef %1, ptr noundef %arrayidx287, i32 noundef %sub269) #10
  br label %if.end290

if.end290:                                        ; preds = %if.else281, %if.then274
  %repetitions.1 = phi i32 [ %repetitions.0, %if.then274 ], [ %dec, %if.else281 ]
  %position.3 = phi i32 [ %add, %if.then274 ], [ 0, %if.else281 ]
  call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 725) #10
  %137 = ptrtoint ptr %free_in_fifo to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %free_in_fifo, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %138)
  %cmp300.not = icmp eq i8 %138, 0
  br i1 %cmp300.not, label %if.then302, label %if.end290.if.end324_crit_edge

if.end290.if.end324_crit_edge:                    ; preds = %if.end290
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end324

if.then302:                                       ; preds = %if.end290
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry303) #10
  %139 = call ptr @memset(ptr %__wq_entry303, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry303, i32 noundef 0) #10
  %call307616 = call i32 @prepare_to_wait_event(ptr noundef %fifo_wait_queue, ptr noundef nonnull %__wq_entry303, i32 noundef 1) #10
  %140 = ptrtoint ptr %free_in_fifo to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %free_in_fifo, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %141)
  %cmp310.not617 = icmp eq i8 %141, 0
  br i1 %cmp310.not617, label %if.then302.if.end313_crit_edge, label %if.then302.for.end320_crit_edge

if.then302.for.end320_crit_edge:                  ; preds = %if.then302
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end320

if.then302.if.end313_crit_edge:                   ; preds = %if.then302
  br label %if.end313

if.end313:                                        ; preds = %cleanup317.if.end313_crit_edge, %if.then302.if.end313_crit_edge
  %call307618 = phi i32 [ %call307, %cleanup317.if.end313_crit_edge ], [ %call307616, %if.then302.if.end313_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call307618)
  %tobool314.not = icmp eq i32 %call307618, 0
  br i1 %tobool314.not, label %cleanup317, label %if.end313.__out322_crit_edge

if.end313.__out322_crit_edge:                     ; preds = %if.end313
  call void @__sanitizer_cov_trace_pc() #12
  br label %__out322

cleanup317:                                       ; preds = %if.end313
  call void @schedule() #10
  %call307 = call i32 @prepare_to_wait_event(ptr noundef %fifo_wait_queue, ptr noundef nonnull %__wq_entry303, i32 noundef 1) #10
  %142 = ptrtoint ptr %free_in_fifo to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %free_in_fifo, align 4
  %cmp310.not = icmp eq i8 %143, 0
  br i1 %cmp310.not, label %cleanup317.if.end313_crit_edge, label %cleanup317.for.end320_crit_edge

cleanup317.for.end320_crit_edge:                  ; preds = %cleanup317
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end320

cleanup317.if.end313_crit_edge:                   ; preds = %cleanup317
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end313

for.end320:                                       ; preds = %cleanup317.for.end320_crit_edge, %if.then302.for.end320_crit_edge
  call void @finish_wait(ptr noundef %fifo_wait_queue, ptr noundef nonnull %__wq_entry303) #10
  br label %__out322

__out322:                                         ; preds = %for.end320, %if.end313.__out322_crit_edge
  %__ret304.1587 = phi i32 [ 0, %for.end320 ], [ %call307618, %if.end313.__out322_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry303) #10
  br label %if.end324

if.end324:                                        ; preds = %__out322, %if.end290.if.end324_crit_edge
  %__ret291.0 = phi i32 [ 0, %if.end290.if.end324_crit_edge ], [ %__ret304.1587, %__out322 ]
  %tobool326.not = icmp eq i32 %__ret291.0, 0
  br i1 %tobool326.not, label %if.end324.while.cond263_crit_edge, label %do.body328

if.end324.while.cond263_crit_edge:                ; preds = %if.end324
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond263

do.body328:                                       ; preds = %if.end324
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pi433_tx_thread.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pi433_tx_thread, %if.then340)) #10
          to label %abort [label %if.then340], !srcloc !200

if.then340:                                       ; preds = %do.body328
  call void @__sanitizer_cov_trace_pc() #12
  %144 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pi433_tx_thread.__UNIQUE_ID_ddebug248, ptr noundef %145, ptr noundef nonnull @.str.48) #10
  br label %abort

do.body346:                                       ; preds = %land.rhs.do.body346_crit_edge, %while.cond263.do.body346_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pi433_tx_thread.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pi433_tx_thread, %if.then358)) #10
          to label %do.end362 [label %if.then358], !srcloc !200

if.then358:                                       ; preds = %do.body346
  call void @__sanitizer_cov_trace_pc() #12
  %146 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pi433_tx_thread.__UNIQUE_ID_ddebug249, ptr noundef %147, ptr noundef nonnull @.str.49) #10
  br label %do.end362

do.end362:                                        ; preds = %if.then358, %do.body346
  call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 737) #10
  %148 = ptrtoint ptr %free_in_fifo to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %free_in_fifo, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 66, i8 %149)
  %cmp372 = icmp eq i8 %149, 66
  br i1 %cmp372, label %do.end362.if.end403_crit_edge, label %lor.lhs.false374

do.end362.if.end403_crit_edge:                    ; preds = %do.end362
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end403

lor.lhs.false374:                                 ; preds = %do.end362
  %call375 = call zeroext i1 @kthread_should_stop() #10
  br i1 %call375, label %lor.lhs.false374.if.end403_crit_edge, label %if.then377

lor.lhs.false374.if.end403_crit_edge:             ; preds = %lor.lhs.false374
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end403

if.then377:                                       ; preds = %lor.lhs.false374
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry378) #10
  %150 = call ptr @memset(ptr %__wq_entry378, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry378, i32 noundef 0) #10
  %call383620 = call i32 @prepare_to_wait_event(ptr noundef %fifo_wait_queue, ptr noundef nonnull %__wq_entry378, i32 noundef 1) #10
  %151 = ptrtoint ptr %free_in_fifo to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %free_in_fifo, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 66, i8 %152)
  %cmp386621 = icmp eq i8 %152, 66
  br i1 %cmp386621, label %if.then377.for.end399_crit_edge, label %if.then377.lor.lhs.false388_crit_edge

if.then377.lor.lhs.false388_crit_edge:            ; preds = %if.then377
  br label %lor.lhs.false388

if.then377.for.end399_crit_edge:                  ; preds = %if.then377
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end399

lor.lhs.false388:                                 ; preds = %cleanup396.lor.lhs.false388_crit_edge, %if.then377.lor.lhs.false388_crit_edge
  %call383622 = phi i32 [ %call383, %cleanup396.lor.lhs.false388_crit_edge ], [ %call383620, %if.then377.lor.lhs.false388_crit_edge ]
  %call389 = call zeroext i1 @kthread_should_stop() #10
  br i1 %call389, label %lor.lhs.false388.for.end399_crit_edge, label %if.end392

lor.lhs.false388.for.end399_crit_edge:            ; preds = %lor.lhs.false388
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end399

if.end392:                                        ; preds = %lor.lhs.false388
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call383622)
  %tobool393.not = icmp eq i32 %call383622, 0
  br i1 %tobool393.not, label %cleanup396, label %if.end392.__out401_crit_edge

if.end392.__out401_crit_edge:                     ; preds = %if.end392
  call void @__sanitizer_cov_trace_pc() #12
  br label %__out401

cleanup396:                                       ; preds = %if.end392
  call void @schedule() #10
  %call383 = call i32 @prepare_to_wait_event(ptr noundef %fifo_wait_queue, ptr noundef nonnull %__wq_entry378, i32 noundef 1) #10
  %153 = ptrtoint ptr %free_in_fifo to i32
  call void @__asan_load1_noabort(i32 %153)
  %154 = load i8, ptr %free_in_fifo, align 4
  %cmp386 = icmp eq i8 %154, 66
  br i1 %cmp386, label %cleanup396.for.end399_crit_edge, label %cleanup396.lor.lhs.false388_crit_edge

cleanup396.lor.lhs.false388_crit_edge:            ; preds = %cleanup396
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false388

cleanup396.for.end399_crit_edge:                  ; preds = %cleanup396
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end399

for.end399:                                       ; preds = %cleanup396.for.end399_crit_edge, %lor.lhs.false388.for.end399_crit_edge, %if.then377.for.end399_crit_edge
  call void @finish_wait(ptr noundef %fifo_wait_queue, ptr noundef nonnull %__wq_entry378) #10
  br label %__out401

__out401:                                         ; preds = %for.end399, %if.end392.__out401_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry378) #10
  br label %if.end403

if.end403:                                        ; preds = %__out401, %lor.lhs.false374.if.end403_crit_edge, %do.end362.if.end403_crit_edge
  %call405 = call zeroext i1 @kthread_should_stop() #10
  br i1 %call405, label %if.end403.cleanup445_crit_edge, label %do.body408

if.end403.cleanup445_crit_edge:                   ; preds = %if.end403
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup445

do.body408:                                       ; preds = %if.end403
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pi433_tx_thread.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pi433_tx_thread, %if.then420)) #10
          to label %do.end424 [label %if.then420], !srcloc !200

if.then420:                                       ; preds = %do.body408
  call void @__sanitizer_cov_trace_pc() #12
  %155 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pi433_tx_thread.__UNIQUE_ID_ddebug250, ptr noundef %156, ptr noundef nonnull @.str.50) #10
  br label %do.end424

do.end424:                                        ; preds = %if.then420, %do.body408
  %call425 = call i32 @rf69_set_mode(ptr noundef %1, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call425)
  %cmp426 = icmp slt i32 %call425, 0
  br i1 %cmp426, label %do.end424.abort_crit_edge, label %if.end429

do.end424.abort_crit_edge:                        ; preds = %do.end424
  call void @__sanitizer_cov_trace_pc() #12
  br label %abort

if.end429:                                        ; preds = %do.end424
  %157 = ptrtoint ptr %tx_fifo to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %tx_fifo, align 4
  %159 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %out, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %158, i32 %160)
  %cmp435 = icmp eq i32 %158, %160
  br i1 %cmp435, label %if.end429.abort_crit_edge, label %if.end429.while.cond.outer.backedge_crit_edge

if.end429.while.cond.outer.backedge_crit_edge:    ; preds = %if.end429
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.outer.backedge

if.end429.abort_crit_edge:                        ; preds = %if.end429
  call void @__sanitizer_cov_trace_pc() #12
  br label %abort

abort:                                            ; preds = %if.end429.abort_crit_edge, %do.end424.abort_crit_edge, %if.then340, %do.body328, %if.end248.abort_crit_edge, %if.end239.abort_crit_edge, %if.end234.abort_crit_edge, %if.else89.i.abort_crit_edge, %if.then83.i.abort_crit_edge, %if.else75.i.abort_crit_edge, %if.then69.i.abort_crit_edge, %if.else61.i.abort_crit_edge, %if.end55.i.abort_crit_edge, %if.end50.i.abort_crit_edge, %if.then45.i.abort_crit_edge, %if.else.i.abort_crit_edge, %if.then32.i.abort_crit_edge, %if.end25.i.abort_crit_edge, %if.end20.i.abort_crit_edge, %if.end15.i.abort_crit_edge, %if.end10.i.abort_crit_edge, %if.end5.i.abort_crit_edge, %if.end.i.abort_crit_edge, %if.end229.abort_crit_edge, %if.else.abort_crit_edge, %if.then215.abort_crit_edge, %if.end200.abort_crit_edge, %if.end193.abort_crit_edge
  %rx_interrupted.2 = phi i8 [ %rx_interrupted.0.ph, %if.end193.abort_crit_edge ], [ %rx_interrupted.1, %if.end200.abort_crit_edge ], [ %rx_interrupted.1, %if.then215.abort_crit_edge ], [ %rx_interrupted.1, %if.end234.abort_crit_edge ], [ %rx_interrupted.1, %if.end239.abort_crit_edge ], [ %rx_interrupted.1, %if.end248.abort_crit_edge ], [ %rx_interrupted.1, %if.then340 ], [ %rx_interrupted.1, %do.end424.abort_crit_edge ], [ %rx_interrupted.1, %if.end429.abort_crit_edge ], [ %rx_interrupted.1, %if.else.abort_crit_edge ], [ %rx_interrupted.1, %do.body328 ], [ %rx_interrupted.1, %if.end229.abort_crit_edge ], [ %rx_interrupted.1, %if.end.i.abort_crit_edge ], [ %rx_interrupted.1, %if.end5.i.abort_crit_edge ], [ %rx_interrupted.1, %if.end10.i.abort_crit_edge ], [ %rx_interrupted.1, %if.end15.i.abort_crit_edge ], [ %rx_interrupted.1, %if.end20.i.abort_crit_edge ], [ %rx_interrupted.1, %if.end25.i.abort_crit_edge ], [ %rx_interrupted.1, %if.then32.i.abort_crit_edge ], [ %rx_interrupted.1, %if.else.i.abort_crit_edge ], [ %rx_interrupted.1, %if.then45.i.abort_crit_edge ], [ %rx_interrupted.1, %if.end50.i.abort_crit_edge ], [ %rx_interrupted.1, %if.end55.i.abort_crit_edge ], [ %rx_interrupted.1, %if.else61.i.abort_crit_edge ], [ %rx_interrupted.1, %if.then69.i.abort_crit_edge ], [ %rx_interrupted.1, %if.else75.i.abort_crit_edge ], [ %rx_interrupted.1, %if.then83.i.abort_crit_edge ], [ %rx_interrupted.1, %if.else89.i.abort_crit_edge ]
  %161 = and i8 %rx_interrupted.2, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %161)
  %tobool439.not = icmp eq i8 %161, 0
  br i1 %tobool439.not, label %abort.if.end442_crit_edge, label %if.then440

abort.if.end442_crit_edge:                        ; preds = %abort
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end442

if.then440:                                       ; preds = %abort
  call void @__sanitizer_cov_trace_pc() #12
  %call441 = call fastcc i32 @pi433_start_rx(ptr noundef %data)
  br label %if.end442

if.end442:                                        ; preds = %if.then440, %abort.if.end442_crit_edge
  %rx_interrupted.3 = phi i8 [ 0, %if.then440 ], [ %rx_interrupted.2, %abort.if.end442_crit_edge ]
  %162 = ptrtoint ptr %tx_active to i32
  call void @__asan_store1_noabort(i32 %162)
  store i8 0, ptr %tx_active, align 1
  call void @__wake_up(ptr noundef %rx_wait_queue, i32 noundef 1, i32 noundef 1, ptr noundef null) #10
  br label %while.cond.outer.backedge

while.cond.outer.backedge:                        ; preds = %if.end442, %if.end429.while.cond.outer.backedge_crit_edge
  %rx_interrupted.0.ph.be = phi i8 [ %rx_interrupted.3, %if.end442 ], [ %rx_interrupted.1, %if.end429.while.cond.outer.backedge_crit_edge ]
  br label %while.cond.outer

cleanup445:                                       ; preds = %if.end403.cleanup445_crit_edge, %if.end36.cleanup445_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %size) #10
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %tx_cfg) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cdev_alloc() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cdev_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cdev_add(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cdev_del(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kthread_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_destroy(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pi433_free_minor(ptr nocapture noundef readonly %dev) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @minor_lock, i32 noundef 0) #10
  %minor = getelementptr inbounds %struct.pi433_device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %minor to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %minor, align 4
  %call = tail call ptr @idr_remove(ptr noundef nonnull @pi433_idr, i32 noundef %1) #10
  tail call void @mutex_unlock(ptr noundef nonnull @minor_lock) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @free_gpio(ptr noundef %device) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.pi433_device, ptr %device, i32 0, i32 5, i32 0
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %cmp.i = icmp ugt ptr %1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.for.inc_crit_edge, label %if.end

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx1 = getelementptr %struct.pi433_device, ptr %device, i32 0, i32 6, i32 0
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx1, align 4
  %call2 = tail call ptr @free_irq(i32 noundef %3, ptr noundef %device) #10
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  tail call void @gpiod_put(ptr noundef %5) #10
  br label %for.inc

for.inc:                                          ; preds = %if.end, %entry.for.inc_crit_edge
  %arrayidx.1 = getelementptr %struct.pi433_device, ptr %device, i32 0, i32 5, i32 1
  %6 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.1, align 4
  %cmp.i.1 = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.1, label %for.inc.for.inc.1_crit_edge, label %if.end.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.1

if.end.1:                                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx1.1 = getelementptr %struct.pi433_device, ptr %device, i32 0, i32 6, i32 1
  %8 = ptrtoint ptr %arrayidx1.1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx1.1, align 4
  %call2.1 = tail call ptr @free_irq(i32 noundef %9, ptr noundef %device) #10
  %10 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.1, align 4
  tail call void @gpiod_put(ptr noundef %11) #10
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.end.1, %for.inc.for.inc.1_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_write_then_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @DIO0_irq_handler(i32 noundef %irq, ptr noundef %dev_id) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %irq_state = getelementptr inbounds %struct.pi433_device, ptr %dev_id, i32 0, i32 7
  %0 = ptrtoint ptr %irq_state to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %irq_state, align 4
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.69)
  switch i8 %1, label %entry.if.end56_crit_edge [
    i8 0, label %if.then
    i8 3, label %do.body11
    i8 1, label %do.body35
  ]

entry.if.end56_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end56

if.then:                                          ; preds = %entry
  %free_in_fifo = getelementptr inbounds %struct.pi433_device, ptr %dev_id, i32 0, i32 12
  %3 = ptrtoint ptr %free_in_fifo to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 66, ptr %free_in_fifo, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @DIO0_irq_handler.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@DIO0_irq_handler, %if.then4)) #10
          to label %do.end [label %if.then4], !srcloc !200

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.pi433_device, ptr %dev_id, i32 0, i32 2
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @DIO0_irq_handler.__UNIQUE_ID_ddebug234, ptr noundef %5, ptr noundef nonnull @.str.31) #10
  br label %do.end

do.end:                                           ; preds = %if.then4, %if.then
  %fifo_wait_queue = getelementptr inbounds %struct.pi433_device, ptr %dev_id, i32 0, i32 23
  br label %if.end56.sink.split

do.body11:                                        ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @DIO0_irq_handler.__UNIQUE_ID_ddebug235, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@DIO0_irq_handler, %if.then23)) #10
          to label %do.end27 [label %if.then23], !srcloc !200

if.then23:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #12
  %dev24 = getelementptr inbounds %struct.pi433_device, ptr %dev_id, i32 0, i32 2
  %6 = ptrtoint ptr %dev24 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev24, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @DIO0_irq_handler.__UNIQUE_ID_ddebug235, ptr noundef %7, ptr noundef nonnull @.str.32) #10
  br label %do.end27

do.end27:                                         ; preds = %if.then23, %do.body11
  %rx_wait_queue = getelementptr inbounds %struct.pi433_device, ptr %dev_id, i32 0, i32 21
  br label %if.end56.sink.split

do.body35:                                        ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @DIO0_irq_handler.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@DIO0_irq_handler, %if.then47)) #10
          to label %do.end51 [label %if.then47], !srcloc !200

if.then47:                                        ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #12
  %dev48 = getelementptr inbounds %struct.pi433_device, ptr %dev_id, i32 0, i32 2
  %8 = ptrtoint ptr %dev48 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev48, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @DIO0_irq_handler.__UNIQUE_ID_ddebug236, ptr noundef %9, ptr noundef nonnull @.str.33) #10
  br label %do.end51

do.end51:                                         ; preds = %if.then47, %do.body35
  %free_in_fifo52 = getelementptr inbounds %struct.pi433_device, ptr %dev_id, i32 0, i32 12
  %10 = ptrtoint ptr %free_in_fifo52 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %free_in_fifo52, align 4
  %fifo_wait_queue53 = getelementptr inbounds %struct.pi433_device, ptr %dev_id, i32 0, i32 23
  br label %if.end56.sink.split

if.end56.sink.split:                              ; preds = %do.end51, %do.end27, %do.end
  %rx_wait_queue.sink = phi ptr [ %rx_wait_queue, %do.end27 ], [ %fifo_wait_queue53, %do.end51 ], [ %fifo_wait_queue, %do.end ]
  tail call void @__wake_up(ptr noundef %rx_wait_queue.sink, i32 noundef 1, i32 noundef 1, ptr noundef null) #10
  br label %if.end56

if.end56:                                         ; preds = %if.end56.sink.split, %entry.if.end56_crit_edge
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @DIO1_irq_handler(i32 noundef %irq, ptr noundef %dev_id) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.pi433_device, ptr %dev_id, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.70)
  switch i8 %1, label %entry.do.body_crit_edge [
    i8 2, label %if.then
    i8 0, label %if.then7
  ]

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %free_in_fifo = getelementptr inbounds %struct.pi433_device, ptr %dev_id, i32 0, i32 12
  %3 = ptrtoint ptr %free_in_fifo to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 66, ptr %free_in_fifo, align 4
  br label %do.body

if.then7:                                         ; preds = %entry
  %rx_active = getelementptr inbounds %struct.pi433_device, ptr %dev_id, i32 0, i32 24
  %4 = ptrtoint ptr %rx_active to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %rx_active, align 4, !range !202
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  %free_in_fifo11 = getelementptr inbounds %struct.pi433_device, ptr %dev_id, i32 0, i32 12
  br i1 %tobool.not, label %if.else10, label %if.then8

if.then8:                                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %free_in_fifo11 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 14, ptr %free_in_fifo11, align 4
  br label %do.body

if.else10:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %free_in_fifo11 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 50, ptr %free_in_fifo11, align 4
  br label %do.body

do.body:                                          ; preds = %if.else10, %if.then8, %if.then, %entry.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @DIO1_irq_handler.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@DIO1_irq_handler, %if.then17)) #10
          to label %do.end [label %if.then17], !srcloc !200

if.then17:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.pi433_device, ptr %dev_id, i32 0, i32 2
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %free_in_fifo18 = getelementptr inbounds %struct.pi433_device, ptr %dev_id, i32 0, i32 12
  %10 = ptrtoint ptr %free_in_fifo18 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %free_in_fifo18, align 4
  %conv19 = zext i8 %11 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @DIO1_irq_handler.__UNIQUE_ID_ddebug237, ptr noundef %9, ptr noundef nonnull @.str.35, i32 noundef %conv19) #10
  br label %do.end

do.end:                                           ; preds = %if.then17, %do.body
  %fifo_wait_queue = getelementptr inbounds %struct.pi433_device, ptr %dev_id, i32 0, i32 23
  tail call void @__wake_up(ptr noundef %fifo_wait_queue, i32 noundef 1, i32 noundef 1, ptr noundef null) #10
  ret i32 1
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiod_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_unexport(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_direction_input(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_to_irq(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @idr_alloc(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kthread_should_stop() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__kfifo_out_r(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rf69_set_fifo_threshold(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rf69_set_payload_length(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rf69_set_dio_mapping(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_type(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rf69_write_fifo(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pi433_start_rx(ptr noundef %dev) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_active = getelementptr inbounds %struct.pi433_device, ptr %dev, i32 0, i32 24
  %0 = ptrtoint ptr %rx_active to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %rx_active, align 4, !range !202
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %rx_cfg = getelementptr inbounds %struct.pi433_device, ptr %dev, i32 0, i32 14
  %spi.i = getelementptr inbounds %struct.pi433_device, ptr %dev, i32 0, i32 4
  %2 = ptrtoint ptr %spi.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %spi.i, align 4
  %4 = ptrtoint ptr %rx_cfg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rx_cfg, align 4
  %call.i = tail call i32 @rf69_set_frequency(ptr noundef %3, i32 noundef %5) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.end.cleanup_crit_edge, label %if.end.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %6 = ptrtoint ptr %spi.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %spi.i, align 4
  %bit_rate.i = getelementptr inbounds %struct.pi433_device, ptr %dev, i32 0, i32 14, i32 1
  %8 = ptrtoint ptr %bit_rate.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %bit_rate.i, align 4
  %call2.i = tail call i32 @rf69_set_bit_rate(ptr noundef %7, i16 noundef zeroext %9) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp3.i = icmp slt i32 %call2.i, 0
  br i1 %cmp3.i, label %if.end.i.cleanup_crit_edge, label %if.end5.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5.i:                                        ; preds = %if.end.i
  %10 = ptrtoint ptr %spi.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %spi.i, align 4
  %modulation.i = getelementptr inbounds %struct.pi433_device, ptr %dev, i32 0, i32 14, i32 3
  %12 = ptrtoint ptr %modulation.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %modulation.i, align 4
  %call7.i = tail call i32 @rf69_set_modulation(ptr noundef %11, i32 noundef %13) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %cmp8.i = icmp slt i32 %call7.i, 0
  br i1 %cmp8.i, label %if.end5.i.cleanup_crit_edge, label %if.end10.i

if.end5.i.cleanup_crit_edge:                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end10.i:                                       ; preds = %if.end5.i
  %14 = ptrtoint ptr %spi.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %spi.i, align 4
  %antenna_impedance.i = getelementptr inbounds %struct.pi433_device, ptr %dev, i32 0, i32 14, i32 6
  %16 = ptrtoint ptr %antenna_impedance.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %antenna_impedance.i, align 4
  %call12.i = tail call i32 @rf69_set_antenna_impedance(ptr noundef %15, i32 noundef %17) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %cmp13.i = icmp slt i32 %call12.i, 0
  br i1 %cmp13.i, label %if.end10.i.cleanup_crit_edge, label %if.end15.i

if.end10.i.cleanup_crit_edge:                     ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end15.i:                                       ; preds = %if.end10.i
  %18 = ptrtoint ptr %spi.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %spi.i, align 4
  %rssi_threshold.i = getelementptr inbounds %struct.pi433_device, ptr %dev, i32 0, i32 14, i32 4
  %20 = ptrtoint ptr %rssi_threshold.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %rssi_threshold.i, align 4
  %call17.i = tail call i32 @rf69_set_rssi_threshold(ptr noundef %19, i8 noundef zeroext %21) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %cmp18.i = icmp slt i32 %call17.i, 0
  br i1 %cmp18.i, label %if.end15.i.cleanup_crit_edge, label %if.end20.i

if.end15.i.cleanup_crit_edge:                     ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end20.i:                                       ; preds = %if.end15.i
  %22 = ptrtoint ptr %spi.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %spi.i, align 4
  %threshold_decrement.i = getelementptr inbounds %struct.pi433_device, ptr %dev, i32 0, i32 14, i32 5
  %24 = ptrtoint ptr %threshold_decrement.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %threshold_decrement.i, align 4
  %call22.i = tail call i32 @rf69_set_ook_threshold_dec(ptr noundef %23, i32 noundef %25) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i)
  %cmp23.i = icmp slt i32 %call22.i, 0
  br i1 %cmp23.i, label %if.end20.i.cleanup_crit_edge, label %if.end25.i

if.end20.i.cleanup_crit_edge:                     ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end25.i:                                       ; preds = %if.end20.i
  %26 = ptrtoint ptr %spi.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %spi.i, align 4
  %bw_mantisse.i = getelementptr inbounds %struct.pi433_device, ptr %dev, i32 0, i32 14, i32 8
  %28 = ptrtoint ptr %bw_mantisse.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %bw_mantisse.i, align 4
  %bw_exponent.i = getelementptr inbounds %struct.pi433_device, ptr %dev, i32 0, i32 14, i32 9
  %30 = ptrtoint ptr %bw_exponent.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %bw_exponent.i, align 4
  %call27.i = tail call i32 @rf69_set_bandwidth(ptr noundef %27, i32 noundef %29, i8 noundef zeroext %31) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i)
  %cmp28.i = icmp slt i32 %call27.i, 0
  br i1 %cmp28.i, label %if.end25.i.cleanup_crit_edge, label %if.end30.i

if.end25.i.cleanup_crit_edge:                     ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end30.i:                                       ; preds = %if.end25.i
  %32 = ptrtoint ptr %spi.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %spi.i, align 4
  %34 = ptrtoint ptr %bw_mantisse.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %bw_mantisse.i, align 4
  %36 = ptrtoint ptr %bw_exponent.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %bw_exponent.i, align 4
  %call34.i = tail call i32 @rf69_set_bandwidth_during_afc(ptr noundef %33, i32 noundef %35, i8 noundef zeroext %37) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34.i)
  %cmp35.i = icmp slt i32 %call34.i, 0
  br i1 %cmp35.i, label %if.end30.i.cleanup_crit_edge, label %if.end37.i

if.end30.i.cleanup_crit_edge:                     ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end37.i:                                       ; preds = %if.end30.i
  %38 = ptrtoint ptr %spi.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %spi.i, align 4
  %dagc.i = getelementptr inbounds %struct.pi433_device, ptr %dev, i32 0, i32 14, i32 10
  %40 = ptrtoint ptr %dagc.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %dagc.i, align 4
  %call39.i = tail call i32 @rf69_set_dagc(ptr noundef %39, i32 noundef %41) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39.i)
  %cmp40.i = icmp slt i32 %call39.i, 0
  br i1 %cmp40.i, label %if.end37.i.cleanup_crit_edge, label %if.end42.i

if.end37.i.cleanup_crit_edge:                     ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end42.i:                                       ; preds = %if.end37.i
  %bytes_to_drop.i = getelementptr inbounds %struct.pi433_device, ptr %dev, i32 0, i32 14, i32 17
  %42 = ptrtoint ptr %bytes_to_drop.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %bytes_to_drop.i, align 4
  %rx_bytes_to_drop.i = getelementptr inbounds %struct.pi433_device, ptr %dev, i32 0, i32 17
  %44 = ptrtoint ptr %rx_bytes_to_drop.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %rx_bytes_to_drop.i, align 4
  %enable_sync.i = getelementptr inbounds %struct.pi433_device, ptr %dev, i32 0, i32 14, i32 11
  %45 = ptrtoint ptr %enable_sync.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %enable_sync.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %46)
  %cmp43.i = icmp eq i32 %46, 1
  %47 = ptrtoint ptr %spi.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %spi.i, align 4
  br i1 %cmp43.i, label %if.then44.i, label %if.else.i

if.then44.i:                                      ; preds = %if.end42.i
  %call46.i = tail call i32 @rf69_enable_sync(ptr noundef %48) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46.i)
  %cmp47.i = icmp slt i32 %call46.i, 0
  br i1 %cmp47.i, label %if.then44.i.cleanup_crit_edge, label %if.end49.i

if.then44.i.cleanup_crit_edge:                    ; preds = %if.then44.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end49.i:                                       ; preds = %if.then44.i
  %49 = ptrtoint ptr %spi.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %spi.i, align 4
  %call51.i = tail call i32 @rf69_set_fifo_fill_condition(ptr noundef %50, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51.i)
  %cmp52.i = icmp slt i32 %call51.i, 0
  br i1 %cmp52.i, label %if.end49.i.cleanup_crit_edge, label %if.end49.i.if.end65.i_crit_edge

if.end49.i.if.end65.i_crit_edge:                  ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end65.i

if.end49.i.cleanup_crit_edge:                     ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.else.i:                                        ; preds = %if.end42.i
  %call56.i = tail call i32 @rf69_disable_sync(ptr noundef %48) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56.i)
  %cmp57.i = icmp slt i32 %call56.i, 0
  br i1 %cmp57.i, label %if.else.i.cleanup_crit_edge, label %if.end59.i

if.else.i.cleanup_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end59.i:                                       ; preds = %if.else.i
  %51 = ptrtoint ptr %spi.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %spi.i, align 4
  %call61.i = tail call i32 @rf69_set_fifo_fill_condition(ptr noundef %52, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61.i)
  %cmp62.i = icmp slt i32 %call61.i, 0
  br i1 %cmp62.i, label %if.end59.i.cleanup_crit_edge, label %if.end59.i.if.end65.i_crit_edge

if.end59.i.if.end65.i_crit_edge:                  ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end65.i

if.end59.i.cleanup_crit_edge:                     ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end65.i:                                       ; preds = %if.end59.i.if.end65.i_crit_edge, %if.end49.i.if.end65.i_crit_edge
  %enable_length_byte.i = getelementptr inbounds %struct.pi433_device, ptr %dev, i32 0, i32 14, i32 12
  %53 = ptrtoint ptr %enable_length_byte.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %enable_length_byte.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %54)
  %cmp66.i = icmp eq i32 %54, 1
  %55 = ptrtoint ptr %spi.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %spi.i, align 4
  br i1 %cmp66.i, label %if.then67.i, label %if.else73.i

if.then67.i:                                      ; preds = %if.end65.i
  %call69.i = tail call i32 @rf69_set_packet_format(ptr noundef %56, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69.i)
  %cmp70.i = icmp slt i32 %call69.i, 0
  br i1 %cmp70.i, label %if.then67.i.cleanup_crit_edge, label %if.then67.i.if.end79.i_crit_edge

if.then67.i.if.end79.i_crit_edge:                 ; preds = %if.then67.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end79.i

if.then67.i.cleanup_crit_edge:                    ; preds = %if.then67.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.else73.i:                                      ; preds = %if.end65.i
  %call75.i = tail call i32 @rf69_set_packet_format(ptr noundef %56, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75.i)
  %cmp76.i = icmp slt i32 %call75.i, 0
  br i1 %cmp76.i, label %if.else73.i.cleanup_crit_edge, label %if.else73.i.if.end79.i_crit_edge

if.else73.i.if.end79.i_crit_edge:                 ; preds = %if.else73.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end79.i

if.else73.i.cleanup_crit_edge:                    ; preds = %if.else73.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end79.i:                                       ; preds = %if.else73.i.if.end79.i_crit_edge, %if.then67.i.if.end79.i_crit_edge
  %57 = ptrtoint ptr %spi.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %spi.i, align 4
  %enable_address_filtering.i = getelementptr inbounds %struct.pi433_device, ptr %dev, i32 0, i32 14, i32 13
  %59 = ptrtoint ptr %enable_address_filtering.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %enable_address_filtering.i, align 4
  %call81.i = tail call i32 @rf69_set_address_filtering(ptr noundef %58, i32 noundef %60) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81.i)
  %cmp82.i = icmp slt i32 %call81.i, 0
  br i1 %cmp82.i, label %if.end79.i.cleanup_crit_edge, label %if.end84.i

if.end79.i.cleanup_crit_edge:                     ; preds = %if.end79.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end84.i:                                       ; preds = %if.end79.i
  %enable_crc.i = getelementptr inbounds %struct.pi433_device, ptr %dev, i32 0, i32 14, i32 14
  %61 = ptrtoint ptr %enable_crc.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %enable_crc.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %62)
  %cmp85.i = icmp eq i32 %62, 1
  %63 = ptrtoint ptr %spi.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %spi.i, align 4
  br i1 %cmp85.i, label %if.then86.i, label %if.else92.i

if.then86.i:                                      ; preds = %if.end84.i
  %call88.i = tail call i32 @rf69_enable_crc(ptr noundef %64) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call88.i)
  %cmp89.i = icmp slt i32 %call88.i, 0
  br i1 %cmp89.i, label %if.then86.i.cleanup_crit_edge, label %if.then86.i.if.end98.i_crit_edge

if.then86.i.if.end98.i_crit_edge:                 ; preds = %if.then86.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end98.i

if.then86.i.cleanup_crit_edge:                    ; preds = %if.then86.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.else92.i:                                      ; preds = %if.end84.i
  %call94.i = tail call i32 @rf69_disable_crc(ptr noundef %64) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call94.i)
  %cmp95.i = icmp slt i32 %call94.i, 0
  br i1 %cmp95.i, label %if.else92.i.cleanup_crit_edge, label %if.else92.i.if.end98.i_crit_edge

if.else92.i.if.end98.i_crit_edge:                 ; preds = %if.else92.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end98.i

if.else92.i.cleanup_crit_edge:                    ; preds = %if.else92.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end98.i:                                       ; preds = %if.else92.i.if.end98.i_crit_edge, %if.then86.i.if.end98.i_crit_edge
  %65 = ptrtoint ptr %spi.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %spi.i, align 4
  %sync_length.i = getelementptr inbounds %struct.pi433_device, ptr %dev, i32 0, i32 14, i32 15
  %67 = ptrtoint ptr %sync_length.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %sync_length.i, align 4
  %call100.i = tail call i32 @rf69_set_sync_size(ptr noundef %66, i8 noundef zeroext %68) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call100.i)
  %cmp101.i = icmp slt i32 %call100.i, 0
  br i1 %cmp101.i, label %if.end98.i.cleanup_crit_edge, label %if.end103.i

if.end98.i.cleanup_crit_edge:                     ; preds = %if.end98.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end103.i:                                      ; preds = %if.end98.i
  %69 = ptrtoint ptr %enable_length_byte.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %enable_length_byte.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %70)
  %cmp105.i = icmp eq i32 %70, 1
  br i1 %cmp105.i, label %if.then106.i, label %if.else112.i

if.then106.i:                                     ; preds = %if.end103.i
  %71 = ptrtoint ptr %spi.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %spi.i, align 4
  %call108.i = tail call i32 @rf69_set_payload_length(ptr noundef %72, i8 noundef zeroext -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call108.i)
  %cmp109.i = icmp slt i32 %call108.i, 0
  br i1 %cmp109.i, label %if.then106.i.cleanup_crit_edge, label %if.then106.i.if.end144.i_crit_edge

if.then106.i.if.end144.i_crit_edge:               ; preds = %if.then106.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end144.i

if.then106.i.cleanup_crit_edge:                   ; preds = %if.then106.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.else112.i:                                     ; preds = %if.end103.i
  %fixed_message_length.i = getelementptr inbounds %struct.pi433_device, ptr %dev, i32 0, i32 14, i32 16
  %73 = ptrtoint ptr %fixed_message_length.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %fixed_message_length.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %74)
  %cmp113.not.i = icmp eq i8 %74, 0
  br i1 %cmp113.not.i, label %if.else136.i, label %if.end122.i

if.end122.i:                                      ; preds = %if.else112.i
  %75 = ptrtoint ptr %enable_address_filtering.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %enable_address_filtering.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %cmp124.not.i = icmp ne i32 %76, 0
  %inc127.i = zext i1 %cmp124.not.i to i8
  %spec.select.i = add i8 %74, %inc127.i
  %77 = ptrtoint ptr %spi.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %spi.i, align 4
  %call131.i = tail call i32 @rf69_set_payload_length(ptr noundef %78, i8 noundef zeroext %spec.select.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call131.i)
  %cmp132.i = icmp slt i32 %call131.i, 0
  br i1 %cmp132.i, label %if.end122.i.cleanup_crit_edge, label %if.end122.i.if.end144.i_crit_edge

if.end122.i.if.end144.i_crit_edge:                ; preds = %if.end122.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end144.i

if.end122.i.cleanup_crit_edge:                    ; preds = %if.end122.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.else136.i:                                     ; preds = %if.else112.i
  %79 = ptrtoint ptr %spi.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %spi.i, align 4
  %call138.i = tail call i32 @rf69_set_payload_length(ptr noundef %80, i8 noundef zeroext 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call138.i)
  %cmp139.i = icmp slt i32 %call138.i, 0
  br i1 %cmp139.i, label %if.else136.i.cleanup_crit_edge, label %if.else136.i.if.end144.i_crit_edge

if.else136.i.if.end144.i_crit_edge:               ; preds = %if.else136.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end144.i

if.else136.i.cleanup_crit_edge:                   ; preds = %if.else136.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end144.i:                                      ; preds = %if.else136.i.if.end144.i_crit_edge, %if.end122.i.if.end144.i_crit_edge, %if.then106.i.if.end144.i_crit_edge
  %81 = ptrtoint ptr %enable_sync.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %enable_sync.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %82)
  %cmp146.i = icmp eq i32 %82, 1
  br i1 %cmp146.i, label %if.then148.i, label %if.end144.i.if.end155.i_crit_edge

if.end144.i.if.end155.i_crit_edge:                ; preds = %if.end144.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end155.i

if.then148.i:                                     ; preds = %if.end144.i
  %83 = ptrtoint ptr %spi.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %spi.i, align 4
  %sync_pattern.i = getelementptr inbounds %struct.pi433_device, ptr %dev, i32 0, i32 14, i32 18
  %call150.i = tail call i32 @rf69_set_sync_values(ptr noundef %84, ptr noundef %sync_pattern.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call150.i)
  %cmp151.i = icmp slt i32 %call150.i, 0
  br i1 %cmp151.i, label %if.then148.i.cleanup_crit_edge, label %if.then148.i.if.end155.i_crit_edge

if.then148.i.if.end155.i_crit_edge:               ; preds = %if.then148.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end155.i

if.then148.i.cleanup_crit_edge:                   ; preds = %if.then148.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end155.i:                                      ; preds = %if.then148.i.if.end155.i_crit_edge, %if.end144.i.if.end155.i_crit_edge
  %85 = ptrtoint ptr %enable_address_filtering.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %enable_address_filtering.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %cmp157.not.i = icmp eq i32 %86, 0
  br i1 %cmp157.not.i, label %if.end155.i.if.end4_crit_edge, label %if.then159.i

if.end155.i.if.end4_crit_edge:                    ; preds = %if.end155.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

if.then159.i:                                     ; preds = %if.end155.i
  %87 = ptrtoint ptr %spi.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %spi.i, align 4
  %node_address.i = getelementptr inbounds %struct.pi433_device, ptr %dev, i32 0, i32 14, i32 19
  %89 = ptrtoint ptr %node_address.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %node_address.i, align 4
  %call161.i = tail call i32 @rf69_set_node_address(ptr noundef %88, i8 noundef zeroext %90) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call161.i)
  %cmp162.i = icmp slt i32 %call161.i, 0
  br i1 %cmp162.i, label %if.then159.i.cleanup_crit_edge, label %if.end165.i

if.then159.i.cleanup_crit_edge:                   ; preds = %if.then159.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end165.i:                                      ; preds = %if.then159.i
  %91 = ptrtoint ptr %spi.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %spi.i, align 4
  %broadcast_address.i = getelementptr inbounds %struct.pi433_device, ptr %dev, i32 0, i32 14, i32 20
  %93 = ptrtoint ptr %broadcast_address.i to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %broadcast_address.i, align 1
  %call167.i = tail call i32 @rf69_set_broadcast_address(ptr noundef %92, i8 noundef zeroext %94) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call167.i)
  %cmp168.i = icmp slt i32 %call167.i, 0
  br i1 %cmp168.i, label %if.end165.i.cleanup_crit_edge, label %if.end165.i.if.end4_crit_edge

if.end165.i.if.end4_crit_edge:                    ; preds = %if.end165.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

if.end165.i.cleanup_crit_edge:                    ; preds = %if.end165.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %if.end165.i.if.end4_crit_edge, %if.end155.i.if.end4_crit_edge
  %95 = ptrtoint ptr %spi.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %spi.i, align 4
  %call5 = tail call i32 @rf69_set_dio_mapping(ptr noundef %96, i8 noundef zeroext 0, i8 noundef zeroext 3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp = icmp slt i32 %call5, 0
  br i1 %cmp, label %if.end4.cleanup_crit_edge, label %if.end7

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7:                                          ; preds = %if.end4
  %irq_state = getelementptr inbounds %struct.pi433_device, ptr %dev, i32 0, i32 7
  %97 = ptrtoint ptr %irq_state to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 3, ptr %irq_state, align 4
  %irq_num = getelementptr inbounds %struct.pi433_device, ptr %dev, i32 0, i32 6
  %98 = ptrtoint ptr %irq_num to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %irq_num, align 4
  %call9 = tail call i32 @irq_set_irq_type(i32 noundef %99, i32 noundef 1) #10
  %100 = ptrtoint ptr %spi.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %spi.i, align 4
  %call11 = tail call i32 @rf69_set_fifo_threshold(ptr noundef %101, i8 noundef zeroext 51) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %if.end7.cleanup_crit_edge, label %if.end14

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end14:                                         ; preds = %if.end7
  %102 = ptrtoint ptr %spi.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %spi.i, align 4
  %call16 = tail call i32 @rf69_set_dio_mapping(ptr noundef %103, i8 noundef zeroext 1, i8 noundef zeroext 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp17 = icmp slt i32 %call16, 0
  br i1 %cmp17, label %if.end14.cleanup_crit_edge, label %if.end19

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end19:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx21 = getelementptr %struct.pi433_device, ptr %dev, i32 0, i32 7, i32 1
  %104 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 0, ptr %arrayidx21, align 1
  %arrayidx23 = getelementptr %struct.pi433_device, ptr %dev, i32 0, i32 6, i32 1
  %105 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %arrayidx23, align 4
  %call24 = tail call i32 @irq_set_irq_type(i32 noundef %106, i32 noundef 1) #10
  %107 = ptrtoint ptr %spi.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %spi.i, align 4
  %call26 = tail call i32 @rf69_set_mode(ptr noundef %108, i32 noundef 4) #10
  %109 = tail call i32 @llvm.smin.i32(i32 %call26, i32 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %if.end14.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end165.i.cleanup_crit_edge, %if.then159.i.cleanup_crit_edge, %if.then148.i.cleanup_crit_edge, %if.else136.i.cleanup_crit_edge, %if.end122.i.cleanup_crit_edge, %if.then106.i.cleanup_crit_edge, %if.end98.i.cleanup_crit_edge, %if.else92.i.cleanup_crit_edge, %if.then86.i.cleanup_crit_edge, %if.end79.i.cleanup_crit_edge, %if.else73.i.cleanup_crit_edge, %if.then67.i.cleanup_crit_edge, %if.end59.i.cleanup_crit_edge, %if.else.i.cleanup_crit_edge, %if.end49.i.cleanup_crit_edge, %if.then44.i.cleanup_crit_edge, %if.end37.i.cleanup_crit_edge, %if.end30.i.cleanup_crit_edge, %if.end25.i.cleanup_crit_edge, %if.end20.i.cleanup_crit_edge, %if.end15.i.cleanup_crit_edge, %if.end10.i.cleanup_crit_edge, %if.end5.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call5, %if.end4.cleanup_crit_edge ], [ %call11, %if.end7.cleanup_crit_edge ], [ %call16, %if.end14.cleanup_crit_edge ], [ %109, %if.end19 ], [ %call167.i, %if.end165.i.cleanup_crit_edge ], [ %call161.i, %if.then159.i.cleanup_crit_edge ], [ %call150.i, %if.then148.i.cleanup_crit_edge ], [ %call138.i, %if.else136.i.cleanup_crit_edge ], [ %call131.i, %if.end122.i.cleanup_crit_edge ], [ %call108.i, %if.then106.i.cleanup_crit_edge ], [ %call100.i, %if.end98.i.cleanup_crit_edge ], [ %call94.i, %if.else92.i.cleanup_crit_edge ], [ %call88.i, %if.then86.i.cleanup_crit_edge ], [ %call81.i, %if.end79.i.cleanup_crit_edge ], [ %call75.i, %if.else73.i.cleanup_crit_edge ], [ %call69.i, %if.then67.i.cleanup_crit_edge ], [ %call61.i, %if.end59.i.cleanup_crit_edge ], [ %call56.i, %if.else.i.cleanup_crit_edge ], [ %call51.i, %if.end49.i.cleanup_crit_edge ], [ %call46.i, %if.then44.i.cleanup_crit_edge ], [ %call39.i, %if.end37.i.cleanup_crit_edge ], [ %call34.i, %if.end30.i.cleanup_crit_edge ], [ %call27.i, %if.end25.i.cleanup_crit_edge ], [ %call22.i, %if.end20.i.cleanup_crit_edge ], [ %call17.i, %if.end15.i.cleanup_crit_edge ], [ %call12.i, %if.end10.i.cleanup_crit_edge ], [ %call7.i, %if.end5.i.cleanup_crit_edge ], [ %call2.i, %if.end.i.cleanup_crit_edge ], [ %call.i, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rf69_set_frequency(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rf69_set_bit_rate(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rf69_set_modulation(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rf69_set_deviation(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rf69_set_pa_ramp(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rf69_set_modulation_shaping(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rf69_set_tx_start_condition(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rf69_set_preamble_length(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rf69_set_sync_size(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rf69_set_sync_values(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rf69_enable_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rf69_disable_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rf69_set_packet_format(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rf69_enable_crc(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rf69_disable_crc(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rf69_set_rssi_threshold(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rf69_set_ook_threshold_dec(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rf69_set_bandwidth(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rf69_set_bandwidth_during_afc(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rf69_set_dagc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rf69_set_fifo_fill_condition(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rf69_set_address_filtering(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rf69_set_node_address(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rf69_set_broadcast_address(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @no_llseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pi433_read(ptr nocapture noundef readonly %filp, ptr noundef %buf, i32 noundef %size, ptr nocapture noundef readnone %f_pos) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 900, i32 %size)
  %cmp = icmp ugt i32 %size, 900
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %rx_lock = getelementptr inbounds %struct.pi433_device, ptr %3, i32 0, i32 20
  tail call void @mutex_lock_nested(ptr noundef %rx_lock, i32 noundef 0) #10
  %rx_active = getelementptr inbounds %struct.pi433_device, ptr %3, i32 0, i32 24
  %4 = ptrtoint ptr %rx_active to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %rx_active, align 4, !range !202
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.end5, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mutex_unlock(ptr noundef %rx_lock) #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %6 = ptrtoint ptr %rx_active to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %rx_active, align 4
  tail call void @mutex_unlock(ptr noundef %rx_lock) #10
  %rx_buffer_size = getelementptr inbounds %struct.pi433_device, ptr %3, i32 0, i32 16
  %7 = ptrtoint ptr %rx_buffer_size to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %size, ptr %rx_buffer_size, align 4
  %call = tail call fastcc i32 @pi433_receive(ptr noundef %3)
  tail call void @mutex_lock_nested(ptr noundef %rx_lock, i32 noundef 0) #10
  %8 = ptrtoint ptr %rx_active to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %rx_active, align 4
  tail call void @mutex_unlock(ptr noundef %rx_lock) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp11 = icmp sgt i32 %call, 0
  br i1 %cmp11, label %if.then12, label %if.end5.if.end17_crit_edge

if.end5.if.end17_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

if.then12:                                        ; preds = %if.end5
  %rx_buffer = getelementptr inbounds %struct.pi433_device, ptr %3, i32 0, i32 15
  %9 = ptrtoint ptr %rx_buffer to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rx_buffer, align 4
  tail call void @__check_object_size(ptr noundef %10, i32 noundef %call, i1 noundef zeroext true) #10
  tail call void @__might_fault(ptr noundef nonnull @.str.61, i32 noundef 174) #10
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i, label %if.then12.cleanup_crit_edge, label %if.end.i.i

if.then12.cleanup_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i.i:                                       ; preds = %if.then12
  %11 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 %call, i32 -1226833920) #16, !srcloc !203
  %asmresult.i.i = extractvalue { i32, i32 } %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %copy_to_user.exit, label %if.end.i.i.cleanup_crit_edge

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

copy_to_user.exit:                                ; preds = %if.end.i.i
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %10, i32 noundef %call) #10
  %call.i12.i.i = tail call i32 @arm_copy_to_user(ptr noundef %buf, ptr noundef %10, i32 noundef %call) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool14.not = icmp eq i32 %call.i12.i.i, 0
  br i1 %tobool14.not, label %copy_to_user.exit.if.end17_crit_edge, label %copy_to_user.exit.cleanup_crit_edge

copy_to_user.exit.cleanup_crit_edge:              ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

copy_to_user.exit.if.end17_crit_edge:             ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

if.end17:                                         ; preds = %copy_to_user.exit.if.end17_crit_edge, %if.end5.if.end17_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %copy_to_user.exit.cleanup_crit_edge, %if.end.i.i.cleanup_crit_edge, %if.then12.cleanup_crit_edge, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -11, %if.then3 ], [ %call, %if.end17 ], [ -90, %entry.cleanup_crit_edge ], [ -14, %copy_to_user.exit.cleanup_crit_edge ], [ -14, %if.then12.cleanup_crit_edge ], [ -14, %if.end.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pi433_write(ptr nocapture noundef readonly %filp, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef readnone %f_pos) #3 align 64 {
entry:
  %count.addr = alloca i32, align 4
  %copied = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %count.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %count, ptr %count.addr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %copied) #10
  %1 = ptrtoint ptr %copied to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %copied, align 4, !annotation !201
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 900, i32 %count)
  %cmp = icmp ugt i32 %count, 900
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %tx_fifo_lock = getelementptr inbounds %struct.pi433_device, ptr %5, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %tx_fifo_lock, i32 noundef 0) #10
  %6 = ptrtoint ptr %count.addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %count.addr, align 4
  %add = add i32 %7, 72
  %tx_fifo = getelementptr inbounds %struct.pi433_device, ptr %5, i32 0, i32 8
  %mask = getelementptr inbounds %struct.pi433_device, ptr %5, i32 0, i32 8, i32 0, i32 0, i32 2
  %8 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mask, align 4
  %10 = ptrtoint ptr %tx_fifo to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tx_fifo, align 4
  %out = getelementptr inbounds %struct.pi433_device, ptr %5, i32 0, i32 8, i32 0, i32 0, i32 1
  %12 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %out, align 4
  %sub.neg = sub i32 %13, %11
  %add3 = add i32 %sub.neg, %9
  %sub4 = add i32 %add3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sub4)
  %cmp6 = icmp ult i32 %sub4, 2
  br i1 %cmp6, label %if.end.cond.end_crit_edge, label %cond.false

if.end.cond.end_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.false:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 @__kfifo_max_r(i32 noundef %add3, i32 noundef 1) #10
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end.cond.end_crit_edge
  %cond = phi i32 [ %call, %cond.false ], [ 0, %if.end.cond.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %cond)
  %cmp9 = icmp ugt i32 %add, %cond
  br i1 %cmp9, label %do.body, label %if.end18

do.body:                                          ; preds = %cond.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pi433_write.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pi433_write, %if.then15)) #10
          to label %do.end [label %if.then15], !srcloc !200

if.then15:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.pi433_device, ptr %5, i32 0, i32 2
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pi433_write.__UNIQUE_ID_ddebug251, ptr noundef %15, ptr noundef nonnull @.str.63, i32 noundef %add, i32 noundef %cond) #10
  br label %do.end

do.end:                                           ; preds = %if.then15, %do.body
  tail call void @mutex_unlock(ptr noundef %tx_fifo_lock) #10
  br label %cleanup

if.end18:                                         ; preds = %cond.end
  %tx_cfg = getelementptr inbounds %struct.pi433_instance, ptr %3, i32 0, i32 1
  %call22 = tail call i32 @__kfifo_in_r(ptr noundef %tx_fifo, ptr noundef %tx_cfg, i32 noundef 68, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 68, i32 %call22)
  %cmp23.not = icmp eq i32 %call22, 68
  br i1 %cmp23.not, label %if.end25, label %if.end18.do.end68_crit_edge

if.end18.do.end68_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end68

if.end25:                                         ; preds = %if.end18
  %call33 = call i32 @__kfifo_in_r(ptr noundef %tx_fifo, ptr noundef nonnull %count.addr, i32 noundef 4, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call33)
  %cmp34.not = icmp eq i32 %call33, 4
  br i1 %cmp34.not, label %if.end36, label %if.end25.do.end68_crit_edge

if.end25.do.end68_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end68

if.end36:                                         ; preds = %if.end25
  %16 = ptrtoint ptr %count.addr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %count.addr, align 4
  %call42 = call i32 @__kfifo_from_user_r(ptr noundef %tx_fifo, ptr noundef %buf, i32 noundef %17, ptr noundef nonnull %copied, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool44.not = icmp eq i32 %call42, 0
  br i1 %tobool44.not, label %lor.lhs.false, label %if.end36.do.end68_crit_edge

if.end36.do.end68_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end68

lor.lhs.false:                                    ; preds = %if.end36
  %18 = ptrtoint ptr %copied to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %copied, align 4
  %20 = ptrtoint ptr %count.addr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %count.addr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %21)
  %cmp45.not = icmp eq i32 %19, %21
  br i1 %cmp45.not, label %if.end47, label %lor.lhs.false.do.end68_crit_edge

lor.lhs.false.do.end68_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end68

if.end47:                                         ; preds = %lor.lhs.false
  call void @mutex_unlock(ptr noundef %tx_fifo_lock) #10
  %tx_wait_queue = getelementptr inbounds %struct.pi433_device, ptr %5, i32 0, i32 11
  call void @__wake_up(ptr noundef %tx_wait_queue, i32 noundef 1, i32 noundef 1, ptr noundef null) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pi433_write.__UNIQUE_ID_ddebug252, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pi433_write, %if.then61)) #10
          to label %do.end65 [label %if.then61], !srcloc !200

if.then61:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #12
  %dev62 = getelementptr inbounds %struct.pi433_device, ptr %5, i32 0, i32 2
  %22 = ptrtoint ptr %dev62 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev62, align 4
  %24 = ptrtoint ptr %copied to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %copied, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pi433_write.__UNIQUE_ID_ddebug252, ptr noundef %23, ptr noundef nonnull @.str.64, i32 noundef %25) #10
  br label %do.end65

do.end65:                                         ; preds = %if.then61, %if.end47
  %26 = ptrtoint ptr %copied to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %copied, align 4
  br label %cleanup

do.end68:                                         ; preds = %lor.lhs.false.do.end68_crit_edge, %if.end36.do.end68_crit_edge, %if.end25.do.end68_crit_edge, %if.end18.do.end68_crit_edge
  %retval1.0 = phi i32 [ %call22, %if.end18.do.end68_crit_edge ], [ %call33, %if.end25.do.end68_crit_edge ], [ %call42, %if.end36.do.end68_crit_edge ], [ 0, %lor.lhs.false.do.end68_crit_edge ]
  %dev69 = getelementptr inbounds %struct.pi433_device, ptr %5, i32 0, i32 2
  %28 = ptrtoint ptr %dev69 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev69, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %29, ptr noundef nonnull @.str.65, i32 noundef %retval1.0) #15
  call void @mutex_unlock(ptr noundef %tx_fifo_lock) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end68, %do.end65, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -11, %do.end ], [ -11, %do.end68 ], [ %27, %do.end65 ], [ -90, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %copied) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pi433_ioctl(ptr nocapture noundef readonly %filp, i32 noundef %cmd, i32 noundef %arg) #3 align 64 {
entry:
  %tx_cfg = alloca %struct.pi433_tx_cfg, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %tx_cfg) #10
  %0 = call ptr @memset(ptr %tx_cfg, i32 255, i32 68)
  %1 = inttoptr i32 %arg to ptr
  %2 = and i32 %cmd, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 29184, i32 %2)
  %cmp.not = icmp eq i32 %2, 29184
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %3 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %private_data, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %7 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.71)
  switch i32 %cmd, label %if.end3.cleanup_crit_edge [
    i32 -2142998016, label %sw.bb
    i32 1078227456, label %if.end59.i.i53
    i32 -2142211583, label %sw.bb15
    i32 1079013889, label %sw.bb20
  ]

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %if.end3
  %tx_cfg4 = getelementptr inbounds %struct.pi433_instance, ptr %4, i32 0, i32 1
  tail call void @__might_fault(ptr noundef nonnull @.str.61, i32 noundef 174) #10
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i, label %sw.bb.cleanup_crit_edge, label %if.end.i.i

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i.i:                                       ; preds = %sw.bb
  %8 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 68, i32 -1226833920) #16, !srcloc !203
  %asmresult.i.i = extractvalue { i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %copy_to_user.exit, label %if.end.i.i.cleanup_crit_edge

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

copy_to_user.exit:                                ; preds = %if.end.i.i
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %tx_cfg4, i32 noundef 68) #10
  %call.i12.i.i = tail call i32 @arm_copy_to_user(ptr noundef %1, ptr noundef %tx_cfg4, i32 noundef 68) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool5.not = icmp eq i32 %call.i12.i.i, 0
  br i1 %tobool5.not, label %copy_to_user.exit.sw.epilog_crit_edge, label %copy_to_user.exit.cleanup_crit_edge

copy_to_user.exit.cleanup_crit_edge:              ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

copy_to_user.exit.sw.epilog_crit_edge:            ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.end59.i.i53:                                   ; preds = %if.end3
  tail call void @__might_fault(ptr noundef nonnull @.str.61, i32 noundef 156) #10
  %call.i.i54 = tail call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i54, label %if.end59.i.i53.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.end59.i.i53.if.then11.i.i_crit_edge:           ; preds = %if.end59.i.i53
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.end59.i.i53
  %9 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 68, i32 -1226833920) #16, !srcloc !204
  %asmresult.i.i55 = extractvalue { i32, i32 } %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i55)
  %cmp.i6.i56 = icmp eq i32 %asmresult.i.i55, 0
  br i1 %cmp.i6.i56, label %if.end.i.i58, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !205

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i

if.end.i.i58:                                     ; preds = %land.lhs.true.i.i
  %call.i.i.i57 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %tx_cfg, i32 noundef 68) #10
  %10 = call i32 @llvm.read_register.i32(metadata !190) #10
  %and.i.i.i.i.i.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 4
  %12 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #8, !srcloc !206
  %and.i.i.i.i = and i32 %12, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #10, !srcloc !207
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !208
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %tx_cfg, ptr noundef %1, i32 noundef 68) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %12) #10, !srcloc !207
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !208
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end12, label %if.end.i.i58.if.then11.i.i_crit_edge, !prof !205

if.end.i.i58.if.then11.i.i_crit_edge:             ; preds = %if.end.i.i58
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i58.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.end59.i.i53.if.then11.i.i_crit_edge
  %res.0.i.i100 = phi i32 [ %call1.i.i.i, %if.end.i.i58.if.then11.i.i_crit_edge ], [ 68, %if.end59.i.i53.if.then11.i.i_crit_edge ], [ 68, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 68, %res.0.i.i100
  %add.ptr.i.i = getelementptr i8, ptr %tx_cfg, i32 %sub.i.i
  %13 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i100)
  br label %cleanup

if.end12:                                         ; preds = %if.end.i.i58
  call void @__sanitizer_cov_trace_pc() #12
  %tx_fifo_lock = getelementptr inbounds %struct.pi433_device, ptr %6, i32 0, i32 9
  call void @mutex_lock_nested(ptr noundef %tx_fifo_lock, i32 noundef 0) #10
  %tx_cfg13 = getelementptr inbounds %struct.pi433_instance, ptr %4, i32 0, i32 1
  %14 = call ptr @memcpy(ptr %tx_cfg13, ptr %tx_cfg, i32 68)
  call void @mutex_unlock(ptr noundef %tx_fifo_lock) #10
  br label %sw.epilog

sw.bb15:                                          ; preds = %if.end3
  %rx_cfg = getelementptr inbounds %struct.pi433_device, ptr %6, i32 0, i32 14
  tail call void @__might_fault(ptr noundef nonnull @.str.61, i32 noundef 174) #10
  %call.i.i64 = tail call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i64, label %sw.bb15.cleanup_crit_edge, label %if.end.i.i67

sw.bb15.cleanup_crit_edge:                        ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i.i67:                                     ; preds = %sw.bb15
  %15 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 80, i32 -1226833920) #16, !srcloc !203
  %asmresult.i.i65 = extractvalue { i32, i32 } %15, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i65)
  %cmp.i6.i66 = icmp eq i32 %asmresult.i.i65, 0
  br i1 %cmp.i6.i66, label %copy_to_user.exit72, label %if.end.i.i67.cleanup_crit_edge

if.end.i.i67.cleanup_crit_edge:                   ; preds = %if.end.i.i67
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

copy_to_user.exit72:                              ; preds = %if.end.i.i67
  %call.i.i.i68 = tail call zeroext i1 @__kasan_check_read(ptr noundef %rx_cfg, i32 noundef 80) #10
  %call.i12.i.i69 = tail call i32 @arm_copy_to_user(ptr noundef %1, ptr noundef %rx_cfg, i32 noundef 80) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i69)
  %tobool17.not = icmp eq i32 %call.i12.i.i69, 0
  br i1 %tobool17.not, label %copy_to_user.exit72.sw.epilog_crit_edge, label %copy_to_user.exit72.cleanup_crit_edge

copy_to_user.exit72.cleanup_crit_edge:            ; preds = %copy_to_user.exit72
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

copy_to_user.exit72.sw.epilog_crit_edge:          ; preds = %copy_to_user.exit72
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb20:                                          ; preds = %if.end3
  %rx_lock = getelementptr inbounds %struct.pi433_device, ptr %6, i32 0, i32 20
  tail call void @mutex_lock_nested(ptr noundef %rx_lock, i32 noundef 0) #10
  %rx_active = getelementptr inbounds %struct.pi433_device, ptr %6, i32 0, i32 24
  %16 = ptrtoint ptr %rx_active to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %rx_active, align 4, !range !202
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool21.not = icmp eq i8 %17, 0
  br i1 %tobool21.not, label %if.end24, label %if.then22

if.then22:                                        ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mutex_unlock(ptr noundef %rx_lock) #10
  br label %cleanup

if.end24:                                         ; preds = %sw.bb20
  %rx_cfg25 = getelementptr inbounds %struct.pi433_device, ptr %6, i32 0, i32 14
  tail call void @__might_fault(ptr noundef nonnull @.str.61, i32 noundef 156) #10
  %call.i.i77 = tail call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i77, label %if.end24.if.then11.i.i93_crit_edge, label %land.lhs.true.i.i80

if.end24.if.then11.i.i93_crit_edge:               ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i93

land.lhs.true.i.i80:                              ; preds = %if.end24
  %18 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 80, i32 -1226833920) #16, !srcloc !204
  %asmresult.i.i78 = extractvalue { i32, i32 } %18, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i78)
  %cmp.i6.i79 = icmp eq i32 %asmresult.i.i78, 0
  br i1 %cmp.i6.i79, label %if.end.i.i90, label %land.lhs.true.i.i80.if.then11.i.i93_crit_edge, !prof !205

land.lhs.true.i.i80.if.then11.i.i93_crit_edge:    ; preds = %land.lhs.true.i.i80
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i93

if.end.i.i90:                                     ; preds = %land.lhs.true.i.i80
  %call.i.i.i81 = tail call zeroext i1 @__kasan_check_write(ptr noundef %rx_cfg25, i32 noundef 80) #10
  %19 = tail call i32 @llvm.read_register.i32(metadata !190) #10
  %and.i.i.i.i.i.i82 = and i32 %19, -16384
  %20 = inttoptr i32 %and.i.i.i.i.i.i82 to ptr
  %cpu_domain.i.i.i.i.i83 = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 4
  %21 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i83) #8, !srcloc !206
  %and.i.i.i.i84 = and i32 %21, -13
  %or.i.i.i.i85 = or i32 %and.i.i.i.i84, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i85) #10, !srcloc !207
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !208
  %call1.i.i.i86 = tail call i32 @arm_copy_from_user(ptr noundef %rx_cfg25, ptr noundef %1, i32 noundef 80) #10
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %21) #10, !srcloc !207
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !208
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i86)
  %tobool4.not.i.i89 = icmp eq i32 %call1.i.i.i86, 0
  br i1 %tobool4.not.i.i89, label %if.end30, label %if.end.i.i90.if.then11.i.i93_crit_edge, !prof !205

if.end.i.i90.if.then11.i.i93_crit_edge:           ; preds = %if.end.i.i90
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i93

if.then11.i.i93:                                  ; preds = %if.end.i.i90.if.then11.i.i93_crit_edge, %land.lhs.true.i.i80.if.then11.i.i93_crit_edge, %if.end24.if.then11.i.i93_crit_edge
  %res.0.i.i88107 = phi i32 [ %call1.i.i.i86, %if.end.i.i90.if.then11.i.i93_crit_edge ], [ 80, %if.end24.if.then11.i.i93_crit_edge ], [ 80, %land.lhs.true.i.i80.if.then11.i.i93_crit_edge ]
  %sub.i.i91 = sub i32 80, %res.0.i.i88107
  %add.ptr.i.i92 = getelementptr i8, ptr %rx_cfg25, i32 %sub.i.i91
  %22 = call ptr @memset(ptr %add.ptr.i.i92, i32 0, i32 %res.0.i.i88107)
  tail call void @mutex_unlock(ptr noundef %rx_lock) #10
  br label %cleanup

if.end30:                                         ; preds = %if.end.i.i90
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mutex_unlock(ptr noundef %rx_lock) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end30, %copy_to_user.exit72.sw.epilog_crit_edge, %if.end12, %copy_to_user.exit.sw.epilog_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.then11.i.i93, %if.then22, %copy_to_user.exit72.cleanup_crit_edge, %if.end.i.i67.cleanup_crit_edge, %sw.bb15.cleanup_crit_edge, %if.then11.i.i, %copy_to_user.exit.cleanup_crit_edge, %if.end.i.i.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -11, %if.then22 ], [ -14, %if.then11.i.i93 ], [ 0, %sw.epilog ], [ -25, %entry.cleanup_crit_edge ], [ -108, %if.end.cleanup_crit_edge ], [ -14, %copy_to_user.exit.cleanup_crit_edge ], [ -14, %copy_to_user.exit72.cleanup_crit_edge ], [ -22, %if.end3.cleanup_crit_edge ], [ -14, %sw.bb.cleanup_crit_edge ], [ -14, %if.end.i.i.cleanup_crit_edge ], [ -14, %if.then11.i.i ], [ -14, %sw.bb15.cleanup_crit_edge ], [ -14, %if.end.i.i67.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %tx_cfg) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pi433_open(ptr noundef %inode, ptr noundef %filp) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @minor_lock, i32 noundef 0) #10
  %i_rdev.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 13
  %0 = ptrtoint ptr %i_rdev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i_rdev.i, align 8
  %and.i = and i32 %1, 1048575
  %call1 = tail call ptr @idr_find(ptr noundef nonnull @pi433_idr, i32 noundef %and.i) #10
  tail call void @mutex_unlock(ptr noundef nonnull @minor_lock) #10
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %do.body, label %if.end8

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pi433_open.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pi433_open, %if.then6)) #10
          to label %cleanup [label %if.then6], !srcloc !200

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %i_rdev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %i_rdev.i, align 8
  %and.i24 = and i32 %3, 1048575
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pi433_open.__UNIQUE_ID_ddebug253, ptr noundef nonnull @.str.68, i32 noundef %and.i24) #10
  br label %cleanup

if.end8:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 72) #14
  %tobool10.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool10.not, label %if.end8.cleanup_crit_edge, label %if.end12

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  %5 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call1, ptr %call7.i.i, align 8
  %bit_rate = getelementptr inbounds %struct.pi433_instance, ptr %call7.i.i, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %bit_rate to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 4711, ptr %bit_rate, align 8
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %7 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call7.i.i, ptr %private_data, align 4
  %call14 = tail call i32 @stream_open(ptr noundef %inode, ptr noundef %filp) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.end8.cleanup_crit_edge, %if.then6, %do.body
  %retval.0 = phi i32 [ 0, %if.end12 ], [ -19, %if.then6 ], [ -12, %if.end8.cleanup_crit_edge ], [ -19, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pi433_release(ptr nocapture noundef readnone %inode, ptr nocapture noundef %filp) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  tail call void @kfree(ptr noundef %1) #10
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %private_data, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pi433_receive(ptr noundef %data) unnamed_addr #3 align 64 {
entry:
  %bytes_total = alloca i32, align 4
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  %__wq_entry68 = alloca %struct.wait_queue_entry, align 4
  %__wq_entry168 = alloca %struct.wait_queue_entry, align 4
  %dummy = alloca i8, align 1
  %__wq_entry235 = alloca %struct.wait_queue_entry, align 4
  %__wq_entry306 = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %spi1 = getelementptr inbounds %struct.pi433_device, ptr %data, i32 0, i32 4
  %0 = ptrtoint ptr %spi1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spi1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bytes_total) #10
  %2 = ptrtoint ptr %bytes_total to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %bytes_total, align 4, !annotation !201
  %interrupt_rx_allowed = getelementptr inbounds %struct.pi433_device, ptr %data, i32 0, i32 26
  %3 = ptrtoint ptr %interrupt_rx_allowed to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %interrupt_rx_allowed, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pi433_receive.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pi433_receive, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !200

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev5 = getelementptr inbounds %struct.pi433_device, ptr %data, i32 0, i32 2
  %4 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev5, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pi433_receive.__UNIQUE_ID_ddebug238, ptr noundef %5, ptr noundef nonnull @.str.52) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 415) #10
  %tx_active = getelementptr inbounds %struct.pi433_device, ptr %data, i32 0, i32 25
  %6 = ptrtoint ptr %tx_active to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %tx_active, align 1, !range !202
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool12.not = icmp eq i8 %7, 0
  br i1 %tobool12.not, label %do.end.if.end30_crit_edge, label %if.then13

do.end.if.end30_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30

if.then13:                                        ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #10
  %8 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #10
  %rx_wait_queue = getelementptr inbounds %struct.pi433_device, ptr %data, i32 0, i32 21
  %call15592 = call i32 @prepare_to_wait_event(ptr noundef %rx_wait_queue, ptr noundef nonnull %__wq_entry, i32 noundef 1) #10
  %9 = ptrtoint ptr %tx_active to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %tx_active, align 1, !range !202
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool17.not593 = icmp eq i8 %10, 0
  br i1 %tobool17.not593, label %if.then13.if.end25.thread519_crit_edge, label %if.then13.if.end19_crit_edge

if.then13.if.end19_crit_edge:                     ; preds = %if.then13
  br label %if.end19

if.then13.if.end25.thread519_crit_edge:           ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25.thread519

if.end19:                                         ; preds = %cleanup.if.end19_crit_edge, %if.then13.if.end19_crit_edge
  %call15594 = phi i32 [ %call15, %cleanup.if.end19_crit_edge ], [ %call15592, %if.then13.if.end19_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15594)
  %tobool20.not = icmp eq i32 %call15594, 0
  br i1 %tobool20.not, label %cleanup, label %if.then28

cleanup:                                          ; preds = %if.end19
  call void @schedule() #10
  %call15 = call i32 @prepare_to_wait_event(ptr noundef %rx_wait_queue, ptr noundef nonnull %__wq_entry, i32 noundef 1) #10
  %11 = ptrtoint ptr %tx_active to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %tx_active, align 1, !range !202
  %tobool17.not = icmp eq i8 %12, 0
  br i1 %tobool17.not, label %cleanup.if.end25.thread519_crit_edge, label %cleanup.if.end19_crit_edge

cleanup.if.end19_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

cleanup.if.end25.thread519_crit_edge:             ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25.thread519

if.end25.thread519:                               ; preds = %cleanup.if.end25.thread519_crit_edge, %if.then13.if.end25.thread519_crit_edge
  call void @finish_wait(ptr noundef %rx_wait_queue, ptr noundef nonnull %__wq_entry) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #10
  br label %if.end30

if.then28:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #10
  %13 = ptrtoint ptr %interrupt_rx_allowed to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %interrupt_rx_allowed, align 2
  %tx_wait_queue = getelementptr inbounds %struct.pi433_device, ptr %data, i32 0, i32 11
  call void @__wake_up(ptr noundef %tx_wait_queue, i32 noundef 1, i32 noundef 1, ptr noundef null) #10
  br label %cleanup390

if.end30:                                         ; preds = %if.end25.thread519, %do.end.if.end30_crit_edge
  %free_in_fifo = getelementptr inbounds %struct.pi433_device, ptr %data, i32 0, i32 12
  %14 = ptrtoint ptr %free_in_fifo to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 66, ptr %free_in_fifo, align 4
  %rx_position = getelementptr inbounds %struct.pi433_device, ptr %data, i32 0, i32 19
  %15 = ptrtoint ptr %rx_position to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %rx_position, align 4
  %rx_bytes_dropped = getelementptr inbounds %struct.pi433_device, ptr %data, i32 0, i32 18
  %16 = ptrtoint ptr %rx_bytes_dropped to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %rx_bytes_dropped, align 4
  %call31 = call fastcc i32 @pi433_start_rx(ptr noundef %data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %while.cond.preheader, label %if.end30.cleanup390_crit_edge

if.end30.cleanup390_crit_edge:                    ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup390

while.cond.preheader:                             ; preds = %if.end30
  %tx_wait_queue40 = getelementptr inbounds %struct.pi433_device, ptr %data, i32 0, i32 11
  %dev54 = getelementptr inbounds %struct.pi433_device, ptr %data, i32 0, i32 2
  %rx_wait_queue72 = getelementptr inbounds %struct.pi433_device, ptr %data, i32 0, i32 21
  br label %while.cond

while.cond:                                       ; preds = %if.end92.while.cond_crit_edge, %while.cond.preheader
  %17 = ptrtoint ptr %spi1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %spi1, align 4
  %call36 = call zeroext i1 @rf69_get_flag(ptr noundef %18, i32 noundef 4) #10
  br i1 %call36, label %while.cond.while.end_crit_edge, label %while.body

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body:                                       ; preds = %while.cond
  %19 = ptrtoint ptr %interrupt_rx_allowed to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %interrupt_rx_allowed, align 2
  call void @__wake_up(ptr noundef %tx_wait_queue40, i32 noundef 1, i32 noundef 1, ptr noundef null) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pi433_receive.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pi433_receive, %if.then53)) #10
          to label %do.end57 [label %if.then53], !srcloc !200

if.then53:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %dev54 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev54, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pi433_receive.__UNIQUE_ID_ddebug239, ptr noundef %21, ptr noundef nonnull @.str.53) #10
  br label %do.end57

do.end57:                                         ; preds = %if.then53, %while.body
  call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 443) #10
  %22 = ptrtoint ptr %spi1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %spi1, align 4
  %call66 = call zeroext i1 @rf69_get_flag(ptr noundef %23, i32 noundef 4) #10
  br i1 %call66, label %do.end57.if.end92_crit_edge, label %if.then67

do.end57.if.end92_crit_edge:                      ; preds = %do.end57
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end92

if.then67:                                        ; preds = %do.end57
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry68) #10
  %24 = call ptr @memset(ptr %__wq_entry68, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry68, i32 noundef 0) #10
  %call73595 = call i32 @prepare_to_wait_event(ptr noundef %rx_wait_queue72, ptr noundef nonnull %__wq_entry68, i32 noundef 1) #10
  %25 = ptrtoint ptr %spi1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %spi1, align 4
  %call75596 = call zeroext i1 @rf69_get_flag(ptr noundef %26, i32 noundef 4) #10
  br i1 %call75596, label %if.then67.if.end88.thread532_crit_edge, label %if.then67.if.end77_crit_edge

if.then67.if.end77_crit_edge:                     ; preds = %if.then67
  br label %if.end77

if.then67.if.end88.thread532_crit_edge:           ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end88.thread532

if.end77:                                         ; preds = %cleanup81.if.end77_crit_edge, %if.then67.if.end77_crit_edge
  %call73597 = phi i32 [ %call73, %cleanup81.if.end77_crit_edge ], [ %call73595, %if.then67.if.end77_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73597)
  %tobool78.not = icmp eq i32 %call73597, 0
  br i1 %tobool78.not, label %cleanup81, label %if.end88

cleanup81:                                        ; preds = %if.end77
  call void @schedule() #10
  %call73 = call i32 @prepare_to_wait_event(ptr noundef %rx_wait_queue72, ptr noundef nonnull %__wq_entry68, i32 noundef 1) #10
  %27 = ptrtoint ptr %spi1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %spi1, align 4
  %call75 = call zeroext i1 @rf69_get_flag(ptr noundef %28, i32 noundef 4) #10
  br i1 %call75, label %cleanup81.if.end88.thread532_crit_edge, label %cleanup81.if.end77_crit_edge

cleanup81.if.end77_crit_edge:                     ; preds = %cleanup81
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end77

cleanup81.if.end88.thread532_crit_edge:           ; preds = %cleanup81
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end88.thread532

if.end88.thread532:                               ; preds = %cleanup81.if.end88.thread532_crit_edge, %if.then67.if.end88.thread532_crit_edge
  call void @finish_wait(ptr noundef %rx_wait_queue72, ptr noundef nonnull %__wq_entry68) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry68) #10
  br label %if.end92

if.end88:                                         ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry68) #10
  br label %abort

if.end92:                                         ; preds = %if.end88.thread532, %do.end57.if.end92_crit_edge
  %29 = ptrtoint ptr %interrupt_rx_allowed to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %interrupt_rx_allowed, align 2
  %30 = ptrtoint ptr %tx_active to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %tx_active, align 1, !range !202
  %tobool95.not = icmp eq i8 %31, 0
  br i1 %tobool95.not, label %if.end92.while.end_crit_edge, label %if.end92.while.cond_crit_edge

if.end92.while.cond_crit_edge:                    ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond

if.end92.while.end_crit_edge:                     ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %if.end92.while.end_crit_edge, %while.cond.while.end_crit_edge
  %call98 = call i32 @rf69_set_dio_mapping(ptr noundef %1, i8 noundef zeroext 0, i8 noundef zeroext 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call98)
  %cmp = icmp slt i32 %call98, 0
  br i1 %cmp, label %while.end.abort_crit_edge, label %if.end100

while.end.abort_crit_edge:                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %abort

if.end100:                                        ; preds = %while.end
  %irq_state = getelementptr inbounds %struct.pi433_device, ptr %data, i32 0, i32 7
  %32 = ptrtoint ptr %irq_state to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 1, ptr %irq_state, align 4
  %irq_num = getelementptr inbounds %struct.pi433_device, ptr %data, i32 0, i32 6
  %33 = ptrtoint ptr %irq_num to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %irq_num, align 4
  %call102 = call i32 @irq_set_irq_type(i32 noundef %34, i32 noundef 1) #10
  %fixed_message_length = getelementptr inbounds %struct.pi433_device, ptr %data, i32 0, i32 14, i32 16
  %35 = ptrtoint ptr %fixed_message_length to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %fixed_message_length, align 1
  %conv = zext i8 %36 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %cmp103.not = icmp eq i8 %36, 0
  %rx_buffer_size133 = getelementptr inbounds %struct.pi433_device, ptr %data, i32 0, i32 16
  %37 = ptrtoint ptr %rx_buffer_size133 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %rx_buffer_size133, align 4
  br i1 %cmp103.not, label %if.else, label %if.then105

if.then105:                                       ; preds = %if.end100
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %conv)
  %cmp109 = icmp ult i32 %38, %conv
  br i1 %cmp109, label %if.then105.abort_crit_edge, label %if.end112

if.then105.abort_crit_edge:                       ; preds = %if.then105
  call void @__sanitizer_cov_trace_pc() #12
  br label %abort

if.end112:                                        ; preds = %if.then105
  call void @__sanitizer_cov_trace_pc() #12
  %39 = ptrtoint ptr %bytes_total to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %conv, ptr %bytes_total, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pi433_receive.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pi433_receive, %if.then128)) #10
          to label %if.end151 [label %if.then128], !srcloc !200

if.then128:                                       ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #12
  %40 = ptrtoint ptr %dev54 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev54, align 4
  %42 = ptrtoint ptr %bytes_total to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %bytes_total, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pi433_receive.__UNIQUE_ID_ddebug240, ptr noundef %41, ptr noundef nonnull @.str.54, i32 noundef %43) #10
  br label %if.end151

if.else:                                          ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #12
  %44 = ptrtoint ptr %bytes_total to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %38, ptr %bytes_total, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pi433_receive.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pi433_receive, %if.then146)) #10
          to label %if.end151 [label %if.then146], !srcloc !200

if.then146:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %45 = ptrtoint ptr %dev54 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev54, align 4
  %47 = ptrtoint ptr %bytes_total to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %bytes_total, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pi433_receive.__UNIQUE_ID_ddebug241, ptr noundef %46, ptr noundef nonnull @.str.55, i32 noundef %48) #10
  br label %if.end151

if.end151:                                        ; preds = %if.then146, %if.else, %if.then128, %if.end112
  %enable_length_byte = getelementptr inbounds %struct.pi433_device, ptr %data, i32 0, i32 14, i32 12
  %49 = ptrtoint ptr %enable_length_byte to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %enable_length_byte, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %50)
  %cmp153 = icmp eq i32 %50, 1
  br i1 %cmp153, label %if.then155, label %if.end151.if.end218_crit_edge

if.end151.if.end218_crit_edge:                    ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end218

if.then155:                                       ; preds = %if.end151
  call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 478) #10
  %51 = ptrtoint ptr %free_in_fifo to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %free_in_fifo, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 66, i8 %52)
  %cmp165 = icmp ult i8 %52, 66
  br i1 %cmp165, label %if.then155.if.end193_crit_edge, label %if.then167

if.then155.if.end193_crit_edge:                   ; preds = %if.then155
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end193

if.then167:                                       ; preds = %if.then155
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry168) #10
  %53 = call ptr @memset(ptr %__wq_entry168, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry168, i32 noundef 0) #10
  %fifo_wait_queue = getelementptr inbounds %struct.pi433_device, ptr %data, i32 0, i32 23
  %call172599 = call i32 @prepare_to_wait_event(ptr noundef %fifo_wait_queue, ptr noundef nonnull %__wq_entry168, i32 noundef 1) #10
  %54 = ptrtoint ptr %free_in_fifo to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %free_in_fifo, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 66, i8 %55)
  %cmp175600 = icmp ult i8 %55, 66
  br i1 %cmp175600, label %if.then167.if.end189.thread546_crit_edge, label %if.then167.if.end178_crit_edge

if.then167.if.end178_crit_edge:                   ; preds = %if.then167
  br label %if.end178

if.then167.if.end189.thread546_crit_edge:         ; preds = %if.then167
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end189.thread546

if.end178:                                        ; preds = %cleanup182.if.end178_crit_edge, %if.then167.if.end178_crit_edge
  %call172601 = phi i32 [ %call172, %cleanup182.if.end178_crit_edge ], [ %call172599, %if.then167.if.end178_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call172601)
  %tobool179.not = icmp eq i32 %call172601, 0
  br i1 %tobool179.not, label %cleanup182, label %if.end189

cleanup182:                                       ; preds = %if.end178
  call void @schedule() #10
  %call172 = call i32 @prepare_to_wait_event(ptr noundef %fifo_wait_queue, ptr noundef nonnull %__wq_entry168, i32 noundef 1) #10
  %56 = ptrtoint ptr %free_in_fifo to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %free_in_fifo, align 4
  %cmp175 = icmp ult i8 %57, 66
  br i1 %cmp175, label %cleanup182.if.end189.thread546_crit_edge, label %cleanup182.if.end178_crit_edge

cleanup182.if.end178_crit_edge:                   ; preds = %cleanup182
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end178

cleanup182.if.end189.thread546_crit_edge:         ; preds = %cleanup182
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end189.thread546

if.end189.thread546:                              ; preds = %cleanup182.if.end189.thread546_crit_edge, %if.then167.if.end189.thread546_crit_edge
  call void @finish_wait(ptr noundef %fifo_wait_queue, ptr noundef nonnull %__wq_entry168) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry168) #10
  br label %if.end193

if.end189:                                        ; preds = %if.end178
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry168) #10
  br label %abort

if.end193:                                        ; preds = %if.end189.thread546, %if.then155.if.end193_crit_edge
  %call194 = call i32 @rf69_read_fifo(ptr noundef %1, ptr noundef nonnull %bytes_total, i32 noundef 1) #10
  %58 = ptrtoint ptr %bytes_total to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %bytes_total, align 4
  %rx_buffer_size195 = getelementptr inbounds %struct.pi433_device, ptr %data, i32 0, i32 16
  %60 = ptrtoint ptr %rx_buffer_size195 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %rx_buffer_size195, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %59, i32 %61)
  %cmp196 = icmp ugt i32 %59, %61
  br i1 %cmp196, label %if.end193.abort_crit_edge, label %if.end199

if.end193.abort_crit_edge:                        ; preds = %if.end193
  call void @__sanitizer_cov_trace_pc() #12
  br label %abort

if.end199:                                        ; preds = %if.end193
  call void @__sanitizer_cov_trace_pc() #12
  %62 = ptrtoint ptr %free_in_fifo to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %free_in_fifo, align 4
  %inc = add i8 %63, 1
  store i8 %inc, ptr %free_in_fifo, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pi433_receive.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pi433_receive, %if.then213)) #10
          to label %if.end218 [label %if.then213], !srcloc !200

if.then213:                                       ; preds = %if.end199
  call void @__sanitizer_cov_trace_pc() #12
  %64 = ptrtoint ptr %dev54 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %dev54, align 4
  %66 = ptrtoint ptr %bytes_total to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %bytes_total, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pi433_receive.__UNIQUE_ID_ddebug242, ptr noundef %65, ptr noundef nonnull @.str.56, i32 noundef %67) #10
  br label %if.end218

if.end218:                                        ; preds = %if.then213, %if.end199, %if.end151.if.end218_crit_edge
  %retval2.0 = phi i32 [ 0, %if.then213 ], [ %call98, %if.end151.if.end218_crit_edge ], [ 0, %if.end199 ]
  %enable_address_filtering = getelementptr inbounds %struct.pi433_device, ptr %data, i32 0, i32 14, i32 13
  %68 = ptrtoint ptr %enable_address_filtering to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %enable_address_filtering, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %cmp220.not = icmp eq i32 %69, 0
  br i1 %cmp220.not, label %if.end218.if.end285_crit_edge, label %if.then222

if.end218.if.end285_crit_edge:                    ; preds = %if.end218
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end285

if.then222:                                       ; preds = %if.end218
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %dummy) #10
  %70 = ptrtoint ptr %dummy to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 -1, ptr %dummy, align 1, !annotation !201
  %71 = ptrtoint ptr %bytes_total to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %bytes_total, align 4
  %dec = add i32 %72, -1
  store i32 %dec, ptr %bytes_total, align 4
  call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 499) #10
  %73 = ptrtoint ptr %free_in_fifo to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %free_in_fifo, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 66, i8 %74)
  %cmp232 = icmp ult i8 %74, 66
  br i1 %cmp232, label %if.then222.if.end261_crit_edge, label %if.then234

if.then222.if.end261_crit_edge:                   ; preds = %if.then222
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end261

if.then234:                                       ; preds = %if.then222
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry235) #10
  %75 = call ptr @memset(ptr %__wq_entry235, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry235, i32 noundef 0) #10
  %fifo_wait_queue239 = getelementptr inbounds %struct.pi433_device, ptr %data, i32 0, i32 23
  %call240603 = call i32 @prepare_to_wait_event(ptr noundef %fifo_wait_queue239, ptr noundef nonnull %__wq_entry235, i32 noundef 1) #10
  %76 = ptrtoint ptr %free_in_fifo to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %free_in_fifo, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 66, i8 %77)
  %cmp243604 = icmp ult i8 %77, 66
  br i1 %cmp243604, label %if.then234.if.end257.thread561_crit_edge, label %if.then234.if.end246_crit_edge

if.then234.if.end246_crit_edge:                   ; preds = %if.then234
  br label %if.end246

if.then234.if.end257.thread561_crit_edge:         ; preds = %if.then234
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end257.thread561

if.end246:                                        ; preds = %cleanup250.if.end246_crit_edge, %if.then234.if.end246_crit_edge
  %call240605 = phi i32 [ %call240, %cleanup250.if.end246_crit_edge ], [ %call240603, %if.then234.if.end246_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call240605)
  %tobool247.not = icmp eq i32 %call240605, 0
  br i1 %tobool247.not, label %cleanup250, label %cleanup282.thread567

cleanup250:                                       ; preds = %if.end246
  call void @schedule() #10
  %call240 = call i32 @prepare_to_wait_event(ptr noundef %fifo_wait_queue239, ptr noundef nonnull %__wq_entry235, i32 noundef 1) #10
  %78 = ptrtoint ptr %free_in_fifo to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %free_in_fifo, align 4
  %cmp243 = icmp ult i8 %79, 66
  br i1 %cmp243, label %cleanup250.if.end257.thread561_crit_edge, label %cleanup250.if.end246_crit_edge

cleanup250.if.end246_crit_edge:                   ; preds = %cleanup250
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end246

cleanup250.if.end257.thread561_crit_edge:         ; preds = %cleanup250
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end257.thread561

if.end257.thread561:                              ; preds = %cleanup250.if.end257.thread561_crit_edge, %if.then234.if.end257.thread561_crit_edge
  call void @finish_wait(ptr noundef %fifo_wait_queue239, ptr noundef nonnull %__wq_entry235) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry235) #10
  br label %if.end261

cleanup282.thread567:                             ; preds = %if.end246
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry235) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %dummy) #10
  br label %abort

if.end261:                                        ; preds = %if.end257.thread561, %if.then222.if.end261_crit_edge
  %call262 = call i32 @rf69_read_fifo(ptr noundef %1, ptr noundef nonnull %dummy, i32 noundef 1) #10
  %80 = ptrtoint ptr %free_in_fifo to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %free_in_fifo, align 4
  %inc264 = add i8 %81, 1
  store i8 %inc264, ptr %free_in_fifo, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pi433_receive.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pi433_receive, %cleanup282.thread)) #10
          to label %cleanup282 [label %cleanup282.thread], !srcloc !200

cleanup282.thread:                                ; preds = %if.end261
  call void @__sanitizer_cov_trace_pc() #12
  %82 = ptrtoint ptr %dev54 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %dev54, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pi433_receive.__UNIQUE_ID_ddebug243, ptr noundef %83, ptr noundef nonnull @.str.57) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %dummy) #10
  br label %if.end285

cleanup282:                                       ; preds = %if.end261
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %dummy) #10
  br label %if.end285

if.end285:                                        ; preds = %cleanup282, %cleanup282.thread, %if.end218.if.end285_crit_edge
  %retval2.1 = phi i32 [ 0, %cleanup282 ], [ %retval2.0, %if.end218.if.end285_crit_edge ], [ 0, %cleanup282.thread ]
  %84 = ptrtoint ptr %rx_position to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %rx_position, align 4
  %86 = ptrtoint ptr %bytes_total to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %bytes_total, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %85, i32 %87)
  %cmp288611 = icmp ult i32 %85, %87
  br i1 %cmp288611, label %while.body290.lr.ph, label %if.end285.abort_crit_edge

if.end285.abort_crit_edge:                        ; preds = %if.end285
  call void @__sanitizer_cov_trace_pc() #12
  br label %abort

while.body290.lr.ph:                              ; preds = %if.end285
  %fifo_wait_queue310 = getelementptr inbounds %struct.pi433_device, ptr %data, i32 0, i32 23
  %rx_bytes_to_drop = getelementptr inbounds %struct.pi433_device, ptr %data, i32 0, i32 17
  %rx_buffer = getelementptr inbounds %struct.pi433_device, ptr %data, i32 0, i32 15
  br label %while.body290

while.body290:                                    ; preds = %if.end373.while.body290_crit_edge, %while.body290.lr.ph
  %88 = ptrtoint ptr %spi1 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %spi1, align 4
  %call292 = call zeroext i1 @rf69_get_flag(ptr noundef %89, i32 noundef 13) #10
  br i1 %call292, label %while.body290.if.end333_crit_edge, label %if.then293

while.body290.if.end333_crit_edge:                ; preds = %while.body290
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end333

if.then293:                                       ; preds = %while.body290
  call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 512) #10
  %90 = ptrtoint ptr %free_in_fifo to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %free_in_fifo, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 66, i8 %91)
  %cmp303 = icmp ult i8 %91, 66
  br i1 %cmp303, label %if.then293.if.end333_crit_edge, label %if.then305

if.then293.if.end333_crit_edge:                   ; preds = %if.then293
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end333

if.then305:                                       ; preds = %if.then293
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry306) #10
  %92 = call ptr @memset(ptr %__wq_entry306, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry306, i32 noundef 0) #10
  %call311607 = call i32 @prepare_to_wait_event(ptr noundef %fifo_wait_queue310, ptr noundef nonnull %__wq_entry306, i32 noundef 1) #10
  %93 = ptrtoint ptr %free_in_fifo to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %free_in_fifo, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 66, i8 %94)
  %cmp314608 = icmp ult i8 %94, 66
  br i1 %cmp314608, label %if.then305.if.end328.thread579_crit_edge, label %if.then305.if.end317_crit_edge

if.then305.if.end317_crit_edge:                   ; preds = %if.then305
  br label %if.end317

if.then305.if.end328.thread579_crit_edge:         ; preds = %if.then305
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end328.thread579

if.end317:                                        ; preds = %cleanup321.if.end317_crit_edge, %if.then305.if.end317_crit_edge
  %call311609 = phi i32 [ %call311, %cleanup321.if.end317_crit_edge ], [ %call311607, %if.then305.if.end317_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call311609)
  %tobool318.not = icmp eq i32 %call311609, 0
  br i1 %tobool318.not, label %cleanup321, label %if.end328

cleanup321:                                       ; preds = %if.end317
  call void @schedule() #10
  %call311 = call i32 @prepare_to_wait_event(ptr noundef %fifo_wait_queue310, ptr noundef nonnull %__wq_entry306, i32 noundef 1) #10
  %95 = ptrtoint ptr %free_in_fifo to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %free_in_fifo, align 4
  %cmp314 = icmp ult i8 %96, 66
  br i1 %cmp314, label %cleanup321.if.end328.thread579_crit_edge, label %cleanup321.if.end317_crit_edge

cleanup321.if.end317_crit_edge:                   ; preds = %cleanup321
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end317

cleanup321.if.end328.thread579_crit_edge:         ; preds = %cleanup321
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end328.thread579

if.end328.thread579:                              ; preds = %cleanup321.if.end328.thread579_crit_edge, %if.then305.if.end328.thread579_crit_edge
  call void @finish_wait(ptr noundef %fifo_wait_queue310, ptr noundef nonnull %__wq_entry306) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry306) #10
  br label %if.end333

if.end328:                                        ; preds = %if.end317
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry306) #10
  br label %abort

if.end333:                                        ; preds = %if.end328.thread579, %if.then293.if.end333_crit_edge, %while.body290.if.end333_crit_edge
  %97 = ptrtoint ptr %rx_bytes_to_drop to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %rx_bytes_to_drop, align 4
  %99 = ptrtoint ptr %rx_bytes_dropped to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %rx_bytes_dropped, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %98, i32 %100)
  %cmp335 = icmp ugt i32 %98, %100
  br i1 %cmp335, label %if.then337, label %if.else340

if.then337:                                       ; preds = %if.end333
  call void @__sanitizer_cov_trace_pc() #12
  %sub = sub i32 %98, %100
  br label %if.end343

if.else340:                                       ; preds = %if.end333
  call void @__sanitizer_cov_trace_pc() #12
  %101 = ptrtoint ptr %bytes_total to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %bytes_total, align 4
  %103 = ptrtoint ptr %rx_position to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %rx_position, align 4
  %sub342 = sub i32 %102, %104
  br label %if.end343

if.end343:                                        ; preds = %if.else340, %if.then337
  %bytes_to_read.0 = phi i32 [ %sub, %if.then337 ], [ %sub342, %if.else340 ]
  %105 = ptrtoint ptr %free_in_fifo to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %free_in_fifo, align 4
  %conv345 = zext i8 %106 to i32
  %sub346 = sub nsw i32 66, %conv345
  %107 = call i32 @llvm.smin.i32(i32 %bytes_to_read.0, i32 %sub346)
  %108 = ptrtoint ptr %rx_buffer to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %rx_buffer, align 4
  %110 = ptrtoint ptr %rx_position to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %rx_position, align 4
  %arrayidx355 = getelementptr i8, ptr %109, i32 %111
  %call356 = call i32 @rf69_read_fifo(ptr noundef %1, ptr noundef %arrayidx355, i32 noundef %107) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call356)
  %tobool357.not = icmp eq i32 %call356, 0
  br i1 %tobool357.not, label %if.end359, label %if.end343.abort_crit_edge

if.end343.abort_crit_edge:                        ; preds = %if.end343
  call void @__sanitizer_cov_trace_pc() #12
  br label %abort

if.end359:                                        ; preds = %if.end343
  %112 = ptrtoint ptr %free_in_fifo to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %free_in_fifo, align 4
  %114 = trunc i32 %107 to i8
  %conv362 = add i8 %113, %114
  store i8 %conv362, ptr %free_in_fifo, align 4
  %115 = ptrtoint ptr %rx_bytes_to_drop to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %rx_bytes_to_drop, align 4
  %117 = ptrtoint ptr %rx_bytes_dropped to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %rx_bytes_dropped, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %116, i32 %118)
  %cmp365 = icmp ugt i32 %116, %118
  br i1 %cmp365, label %if.end359.if.end373_crit_edge, label %if.else370

if.end359.if.end373_crit_edge:                    ; preds = %if.end359
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end373

if.else370:                                       ; preds = %if.end359
  call void @__sanitizer_cov_trace_pc() #12
  %119 = ptrtoint ptr %rx_position to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %rx_position, align 4
  br label %if.end373

if.end373:                                        ; preds = %if.else370, %if.end359.if.end373_crit_edge
  %.sink = phi i32 [ %120, %if.else370 ], [ %118, %if.end359.if.end373_crit_edge ]
  %rx_position.sink = phi ptr [ %rx_position, %if.else370 ], [ %rx_bytes_dropped, %if.end359.if.end373_crit_edge ]
  %add372 = add i32 %.sink, %107
  %121 = ptrtoint ptr %rx_position.sink to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %add372, ptr %rx_position.sink, align 4
  %122 = ptrtoint ptr %rx_position to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %rx_position, align 4
  %124 = ptrtoint ptr %bytes_total to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %bytes_total, align 4
  %cmp288 = icmp ult i32 %123, %125
  br i1 %cmp288, label %if.end373.while.body290_crit_edge, label %if.end373.abort_crit_edge

if.end373.abort_crit_edge:                        ; preds = %if.end373
  call void @__sanitizer_cov_trace_pc() #12
  br label %abort

if.end373.while.body290_crit_edge:                ; preds = %if.end373
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body290

abort:                                            ; preds = %if.end373.abort_crit_edge, %if.end343.abort_crit_edge, %if.end328, %if.end285.abort_crit_edge, %cleanup282.thread567, %if.end193.abort_crit_edge, %if.end189, %if.then105.abort_crit_edge, %while.end.abort_crit_edge, %if.end88
  %retval2.3 = phi i32 [ %call73597, %if.end88 ], [ %call98, %while.end.abort_crit_edge ], [ %call172601, %if.end189 ], [ %call311609, %if.end328 ], [ -1, %if.then105.abort_crit_edge ], [ -1, %if.end193.abort_crit_edge ], [ %call240605, %cleanup282.thread567 ], [ %retval2.1, %if.end285.abort_crit_edge ], [ %call356, %if.end343.abort_crit_edge ], [ 0, %if.end373.abort_crit_edge ]
  %126 = ptrtoint ptr %interrupt_rx_allowed to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 1, ptr %interrupt_rx_allowed, align 2
  %127 = ptrtoint ptr %spi1 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %spi1, align 4
  %call377 = call i32 @rf69_set_mode(ptr noundef %128, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call377)
  %tobool378.not = icmp eq i32 %call377, 0
  br i1 %tobool378.not, label %abort.if.end385_crit_edge, label %do.end382

abort.if.end385_crit_edge:                        ; preds = %abort
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end385

do.end382:                                        ; preds = %abort
  call void @__sanitizer_cov_trace_pc() #12
  %call384 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58) #15
  br label %if.end385

if.end385:                                        ; preds = %do.end382, %abort.if.end385_crit_edge
  call void @__wake_up(ptr noundef %tx_wait_queue40, i32 noundef 1, i32 noundef 1, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval2.3)
  %tobool387.not = icmp eq i32 %retval2.3, 0
  br i1 %tobool387.not, label %if.else389, label %if.end385.cleanup390_crit_edge

if.end385.cleanup390_crit_edge:                   ; preds = %if.end385
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup390

if.else389:                                       ; preds = %if.end385
  call void @__sanitizer_cov_trace_pc() #12
  %129 = ptrtoint ptr %bytes_total to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %bytes_total, align 4
  br label %cleanup390

cleanup390:                                       ; preds = %if.else389, %if.end385.cleanup390_crit_edge, %if.end30.cleanup390_crit_edge, %if.then28
  %retval.0 = phi i32 [ %call15594, %if.then28 ], [ %130, %if.else389 ], [ %call31, %if.end30.cleanup390_crit_edge ], [ %retval2.3, %if.end385.cleanup390_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bytes_total) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rf69_get_flag(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rf69_read_fifo(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

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
declare dso_local i32 @__kfifo_max_r(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__kfifo_in_r(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__kfifo_from_user_r(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_find(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stream_open(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_remove(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__unregister_chrdev(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

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
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 82)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 82)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind readonly }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !19, !21, !23, !25, !26, !27, !28, !30, !31, !33, !34, !36, !37, !39, !40, !42, !43, !45, !46, !48, !49, !51, !52, !54, !55, !57, !58, !60, !62, !63, !64, !66, !67, !69, !71, !72, !74, !75, !77, !78, !80, !82, !83, !84, !86, !87, !89, !90, !92, !93, !94, !96, !97, !99, !100, !102, !103, !104, !106, !107, !108, !109, !110, !111, !113, !114, !115, !117, !118, !120, !121, !122, !124, !125, !127, !128, !130, !131, !133, !134, !136, !137, !139, !140, !142, !144, !145, !146, !148, !149, !151, !152, !154, !155, !157, !158, !160, !161, !163, !164, !165, !167, !168, !170, !172, !174, !175, !176, !178, !179, !181, !182, !183, !184, !186, !187, !188}
!llvm.named.register.sp = !{!190}
!llvm.module.flags = !{!191, !192, !193, !194, !195, !196, !197, !198}
!llvm.ident = !{!199}

!0 = !{ptr @__initcall__kmod_pi433__267_1354_pi433_init6, !1, !"__initcall__kmod_pi433__267_1354_pi433_init6", i1 false, i1 false}
!1 = !{!"../drivers/staging/pi433/pi433_if.c", i32 1354, i32 1}
!2 = !{ptr @__exitcall_pi433_exit, !3, !"__exitcall_pi433_exit", i1 false, i1 false}
!3 = !{!"../drivers/staging/pi433/pi433_if.c", i32 1362, i32 1}
!4 = !{ptr @__UNIQUE_ID_author268, !5, !"__UNIQUE_ID_author268", i1 false, i1 false}
!5 = !{!"../drivers/staging/pi433/pi433_if.c", i32 1364, i32 1}
!6 = !{ptr @__UNIQUE_ID_description269, !7, !"__UNIQUE_ID_description269", i1 false, i1 false}
!7 = !{!"../drivers/staging/pi433/pi433_if.c", i32 1365, i32 1}
!8 = !{ptr @__UNIQUE_ID_file270, !9, !"__UNIQUE_ID_file270", i1 false, i1 false}
!9 = !{!"../drivers/staging/pi433/pi433_if.c", i32 1366, i32 1}
!10 = !{ptr @__UNIQUE_ID_license271, !9, !"__UNIQUE_ID_license271", i1 false, i1 false}
!11 = !{ptr @__UNIQUE_ID_alias272, !12, !"__UNIQUE_ID_alias272", i1 false, i1 false}
!12 = !{!"../drivers/staging/pi433/pi433_if.c", i32 1367, i32 1}
!13 = !{ptr @pi433_dev, !14, !"pi433_dev", i1 false, i1 false}
!14 = !{!"../drivers/staging/pi433/pi433_if.c", i32 53, i32 14}
!15 = !{ptr @pi433_class, !16, !"pi433_class", i1 false, i1 false}
!16 = !{!"../drivers/staging/pi433/pi433_if.c", i32 57, i32 22}
!17 = !{ptr @.str, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/staging/pi433/pi433_if.c", i32 1333, i32 62}
!19 = !{ptr @pi433_init.__key, !20, !"__key", i1 false, i1 false}
!20 = !{!"../drivers/staging/pi433/pi433_if.c", i32 1337, i32 16}
!21 = !{ptr @pi433_spi_driver, !22, !"pi433_spi_driver", i1 false, i1 false}
!22 = !{!"../drivers/staging/pi433/pi433_if.c", i32 1298, i32 26}
!23 = !{ptr @.str.1, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/staging/pi433/pi433_if.c", i32 1110, i32 3}
!25 = !{ptr @.str.2, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.3, !24, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @pi433_probe.__UNIQUE_ID_ddebug257, !24, !"__UNIQUE_ID_ddebug257", i1 false, i1 false}
!28 = !{ptr @.str.4, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/staging/pi433/pi433_if.c", i32 1114, i32 2}
!30 = !{ptr @pi433_probe.__UNIQUE_ID_ddebug258, !29, !"__UNIQUE_ID_ddebug258", i1 false, i1 false}
!31 = !{ptr @.str.5, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/staging/pi433/pi433_if.c", i32 1125, i32 3}
!33 = !{ptr @pi433_probe.__UNIQUE_ID_ddebug259, !32, !"__UNIQUE_ID_ddebug259", i1 false, i1 false}
!34 = !{ptr @.str.6, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/staging/pi433/pi433_if.c", i32 1128, i32 3}
!36 = !{ptr @pi433_probe.__UNIQUE_ID_ddebug260, !35, !"__UNIQUE_ID_ddebug260", i1 false, i1 false}
!37 = !{ptr @pi433_probe.__key, !38, !"__key", i1 false, i1 false}
!38 = !{!"../drivers/staging/pi433/pi433_if.c", i32 1151, i32 2}
!39 = !{ptr @.str.7, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @pi433_probe.__key.8, !41, !"__key", i1 false, i1 false}
!41 = !{!"../drivers/staging/pi433/pi433_if.c", i32 1152, i32 2}
!42 = !{ptr @.str.9, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @pi433_probe.__key.10, !44, !"__key", i1 false, i1 false}
!44 = !{!"../drivers/staging/pi433/pi433_if.c", i32 1153, i32 2}
!45 = !{ptr @.str.11, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @pi433_probe.__key.12, !47, !"__key", i1 false, i1 false}
!47 = !{!"../drivers/staging/pi433/pi433_if.c", i32 1159, i32 2}
!48 = !{ptr @.str.13, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @pi433_probe.__key.14, !50, !"__key", i1 false, i1 false}
!50 = !{!"../drivers/staging/pi433/pi433_if.c", i32 1160, i32 2}
!51 = !{ptr @.str.15, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.16, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/staging/pi433/pi433_if.c", i32 1165, i32 3}
!54 = !{ptr @pi433_probe.__UNIQUE_ID_ddebug261, !53, !"__UNIQUE_ID_ddebug261", i1 false, i1 false}
!55 = !{ptr @.str.17, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/staging/pi433/pi433_if.c", i32 1195, i32 3}
!57 = !{ptr @pi433_probe.__UNIQUE_ID_ddebug262, !56, !"__UNIQUE_ID_ddebug262", i1 false, i1 false}
!58 = !{ptr @.str.18, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/staging/pi433/pi433_if.c", i32 1205, i32 9}
!60 = !{ptr @.str.19, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/staging/pi433/pi433_if.c", i32 1208, i32 3}
!62 = !{ptr @pi433_probe._entry, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @pi433_probe._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.20, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/staging/pi433/pi433_if.c", i32 1212, i32 3}
!66 = !{ptr @pi433_probe.__UNIQUE_ID_ddebug263, !65, !"__UNIQUE_ID_ddebug263", i1 false, i1 false}
!67 = !{ptr @.str.21, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/staging/pi433/pi433_if.c", i32 1219, i32 27}
!69 = !{ptr @.str.22, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/staging/pi433/pi433_if.c", i32 1224, i32 3}
!71 = !{ptr @pi433_probe.__UNIQUE_ID_ddebug264, !70, !"__UNIQUE_ID_ddebug264", i1 false, i1 false}
!72 = !{ptr @.str.23, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/staging/pi433/pi433_if.c", i32 1232, i32 3}
!74 = !{ptr @pi433_probe.__UNIQUE_ID_ddebug265, !73, !"__UNIQUE_ID_ddebug265", i1 false, i1 false}
!75 = !{ptr @.str.24, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/staging/pi433/pi433_if.c", i32 1240, i32 3}
!77 = !{ptr @pi433_probe.__UNIQUE_ID_ddebug266, !76, !"__UNIQUE_ID_ddebug266", i1 false, i1 false}
!78 = !{ptr @.str.25, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/staging/pi433/pi433_if.c", i32 987, i32 32}
!80 = !{ptr @.str.26, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/staging/pi433/pi433_if.c", i32 992, i32 4}
!82 = !{ptr @.str.27, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @setup_gpio.__UNIQUE_ID_ddebug254, !81, !"__UNIQUE_ID_ddebug254", i1 false, i1 false}
!84 = !{ptr @.str.28, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/staging/pi433/pi433_if.c", i32 998, i32 4}
!86 = !{ptr @setup_gpio.__UNIQUE_ID_ddebug255, !85, !"__UNIQUE_ID_ddebug255", i1 false, i1 false}
!87 = !{ptr @.str.29, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/staging/pi433/pi433_if.c", i32 1031, i32 3}
!89 = !{ptr @setup_gpio.__UNIQUE_ID_ddebug256, !88, !"__UNIQUE_ID_ddebug256", i1 false, i1 false}
!90 = !{ptr @.str.30, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/staging/pi433/pi433_if.c", i32 122, i32 3}
!92 = !{ptr @.str.31, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @DIO0_irq_handler.__UNIQUE_ID_ddebug234, !91, !"__UNIQUE_ID_ddebug234", i1 false, i1 false}
!94 = !{ptr @.str.32, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/staging/pi433/pi433_if.c", i32 125, i32 3}
!96 = !{ptr @DIO0_irq_handler.__UNIQUE_ID_ddebug235, !95, !"__UNIQUE_ID_ddebug235", i1 false, i1 false}
!97 = !{ptr @.str.33, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/staging/pi433/pi433_if.c", i32 128, i32 3}
!99 = !{ptr @DIO0_irq_handler.__UNIQUE_ID_ddebug236, !98, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!100 = !{ptr @.str.34, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/staging/pi433/pi433_if.c", i32 148, i32 2}
!102 = !{ptr @.str.35, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @DIO1_irq_handler.__UNIQUE_ID_ddebug237, !101, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!104 = !{ptr @.str.36, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/staging/pi433/pi433_if.c", i32 1061, i32 3}
!106 = !{ptr @.str.37, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @.str.38, !105, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @.str.39, !105, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @pi433_get_minor._entry, !105, !"_entry", i1 false, i1 false}
!110 = !{ptr @pi433_get_minor._entry_ptr, !105, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.40, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/staging/pi433/pi433_if.c", i32 55, i32 8}
!113 = !{ptr @.str.41, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @minor_lock, !112, !"minor_lock", i1 false, i1 false}
!115 = !{ptr @.str.42, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/staging/pi433/pi433_if.c", i32 54, i32 8}
!117 = !{ptr @pi433_idr, !116, !"pi433_idr", i1 false, i1 false}
!118 = !{ptr @.str.43, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/staging/pi433/pi433_if.c", i32 568, i32 3}
!120 = !{ptr @.str.44, !119, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @pi433_tx_thread.__UNIQUE_ID_ddebug244, !119, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!122 = !{ptr @.str.45, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/staging/pi433/pi433_if.c", i32 583, i32 4}
!124 = !{ptr @pi433_tx_thread.__UNIQUE_ID_ddebug245, !123, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!125 = !{ptr @.str.46, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/staging/pi433/pi433_if.c", i32 591, i32 4}
!127 = !{ptr @pi433_tx_thread.__UNIQUE_ID_ddebug246, !126, !"__UNIQUE_ID_ddebug246", i1 false, i1 false}
!128 = !{ptr @.str.47, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/staging/pi433/pi433_if.c", i32 628, i32 3}
!130 = !{ptr @pi433_tx_thread.__UNIQUE_ID_ddebug247, !129, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!131 = !{ptr @.str.48, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/staging/pi433/pi433_if.c", i32 727, i32 5}
!133 = !{ptr @pi433_tx_thread.__UNIQUE_ID_ddebug248, !132, !"__UNIQUE_ID_ddebug248", i1 false, i1 false}
!134 = !{ptr @.str.49, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/staging/pi433/pi433_if.c", i32 733, i32 3}
!136 = !{ptr @pi433_tx_thread.__UNIQUE_ID_ddebug249, !135, !"__UNIQUE_ID_ddebug249", i1 false, i1 false}
!137 = !{ptr @.str.50, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/staging/pi433/pi433_if.c", i32 742, i32 3}
!139 = !{ptr @pi433_tx_thread.__UNIQUE_ID_ddebug250, !138, !"__UNIQUE_ID_ddebug250", i1 false, i1 false}
!140 = !{ptr @pi433_fops, !141, !"pi433_fops", i1 false, i1 false}
!141 = !{!"../drivers/staging/pi433/pi433_if.c", i32 1077, i32 37}
!142 = !{ptr @.str.51, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/staging/pi433/pi433_if.c", i32 414, i32 2}
!144 = !{ptr @.str.52, !143, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @pi433_receive.__UNIQUE_ID_ddebug238, !143, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!146 = !{ptr @.str.53, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/staging/pi433/pi433_if.c", i32 440, i32 3}
!148 = !{ptr @pi433_receive.__UNIQUE_ID_ddebug239, !147, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!149 = !{ptr @.str.54, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/staging/pi433/pi433_if.c", i32 467, i32 3}
!151 = !{ptr @pi433_receive.__UNIQUE_ID_ddebug240, !150, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!152 = !{ptr @.str.55, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/staging/pi433/pi433_if.c", i32 471, i32 3}
!154 = !{ptr @pi433_receive.__UNIQUE_ID_ddebug241, !153, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!155 = !{ptr @.str.56, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/staging/pi433/pi433_if.c", i32 488, i32 3}
!157 = !{ptr @pi433_receive.__UNIQUE_ID_ddebug242, !156, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!158 = !{ptr @.str.57, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/staging/pi433/pi433_if.c", i32 505, i32 3}
!160 = !{ptr @pi433_receive.__UNIQUE_ID_ddebug243, !159, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!161 = !{ptr @.str.58, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/staging/pi433/pi433_if.c", i32 546, i32 3}
!163 = !{ptr @pi433_receive._entry, !162, !"_entry", i1 false, i1 false}
!164 = !{ptr @pi433_receive._entry_ptr, !162, !"_entry_ptr", i1 false, i1 false}
!165 = distinct !{null, !166, !"__already_done", i1 false, i1 false}
!166 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!167 = !{ptr @.str.59, !166, !"<string literal>", i1 false, i1 false}
!168 = !{ptr @.str.60, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!170 = !{ptr @.str.61, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!172 = !{ptr @.str.62, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/staging/pi433/pi433_if.c", i32 837, i32 3}
!174 = !{ptr @.str.63, !173, !"<string literal>", i1 false, i1 false}
!175 = !{ptr @pi433_write.__UNIQUE_ID_ddebug251, !173, !"__UNIQUE_ID_ddebug251", i1 false, i1 false}
!176 = !{ptr @.str.64, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/staging/pi433/pi433_if.c", i32 860, i32 2}
!178 = !{ptr @pi433_write.__UNIQUE_ID_ddebug252, !177, !"__UNIQUE_ID_ddebug252", i1 false, i1 false}
!179 = !{ptr @.str.65, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/staging/pi433/pi433_if.c", i32 865, i32 2}
!181 = !{ptr @.str.66, !180, !"<string literal>", i1 false, i1 false}
!182 = !{ptr @pi433_write._entry, !180, !"_entry", i1 false, i1 false}
!183 = !{ptr @pi433_write._entry_ptr, !180, !"_entry_ptr", i1 false, i1 false}
!184 = !{ptr @.str.67, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/staging/pi433/pi433_if.c", i32 942, i32 3}
!186 = !{ptr @.str.68, !185, !"<string literal>", i1 false, i1 false}
!187 = !{ptr @pi433_open.__UNIQUE_ID_ddebug253, !185, !"__UNIQUE_ID_ddebug253", i1 false, i1 false}
!188 = !{ptr @pi433_dt_ids, !189, !"pi433_dt_ids", i1 false, i1 false}
!189 = !{!"../drivers/staging/pi433/pi433_if.c", i32 1291, i32 34}
!190 = !{!"sp"}
!191 = !{i32 1, !"wchar_size", i32 2}
!192 = !{i32 1, !"min_enum_size", i32 4}
!193 = !{i32 8, !"branch-target-enforcement", i32 0}
!194 = !{i32 8, !"sign-return-address", i32 0}
!195 = !{i32 8, !"sign-return-address-all", i32 0}
!196 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!197 = !{i32 7, !"uwtable", i32 1}
!198 = !{i32 7, !"frame-pointer", i32 2}
!199 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!200 = !{i64 2148986217, i64 2148986222, i64 2148986235, i64 2148986279, i64 2148986313, i64 2148986334}
!201 = !{!"auto-init"}
!202 = !{i8 0, i8 2}
!203 = !{i64 2152095449, i64 2152095474}
!204 = !{i64 2152094768, i64 2152094793}
!205 = !{!"branch_weights", i32 2000, i32 1}
!206 = !{i64 4590323}
!207 = !{i64 4590520}
!208 = !{i64 2152075753}
