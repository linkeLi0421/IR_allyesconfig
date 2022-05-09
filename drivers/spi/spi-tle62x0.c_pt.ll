; ModuleID = '/llk/IR_all_yes/drivers/spi/spi-tle62x0.c_pt.bc'
source_filename = "../drivers/spi/spi-tle62x0.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.atomic_t = type { i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.tle62x0_pdata = type { i32, i32 }
%struct.tle62x0_state = type { ptr, %struct.mutex, i32, i32, [4 x i8], [4 x i8] }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.spi_delay = type { i16, i8 }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }

@__initcall__kmod_spi_tle62x0__234_312_tle62x0_driver_init6 = internal global ptr @tle62x0_driver_init, section ".initcall6.init", align 4
@tle62x0_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr null, ptr @tle62x0_probe, ptr @tle62x0_remove, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__exitcall_tle62x0_driver_exit = internal global ptr @tle62x0_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author235 = internal constant [48 x i8] c"spi_tle62x0.author=Ben Dooks <ben@simtec.co.uk>\00", section ".modinfo", align 1
@__UNIQUE_ID_description236 = internal constant [43 x i8] c"spi_tle62x0.description=TLE62x0 SPI driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file237 = internal constant [41 x i8] c"spi_tle62x0.file=drivers/spi/spi-tle62x0\00", section ".modinfo", align 1
@__UNIQUE_ID_license238 = internal constant [27 x i8] c"spi_tle62x0.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias239 = internal constant [30 x i8] c"spi_tle62x0.alias=spi:tle62x0\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"tle62x0\00", [24 x i8] zeroinitializer }, align 32
@tle62x0_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 248, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"no device data specified\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"tle62x0_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/spi/spi-tle62x0.c\00", [38 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@tle62x0_probe._entry_ptr = internal global ptr @tle62x0_probe._entry, section ".printk_index", align 4
@tle62x0_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&st->lock\00", [22 x i8] zeroinitializer }, align 32
@dev_attr_status_show = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.13, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @tle62x0_status_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@tle62x0_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 264, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"cannot create status attribute\0A\00", [32 x i8] zeroinitializer }, align 32
@tle62x0_probe._entry_ptr.9 = internal global ptr @tle62x0_probe._entry.7, section ".printk_index", align 4
@gpio_attrs = internal constant { [16 x ptr], [32 x i8] } { [16 x ptr] [ptr @dev_attr_gpio1, ptr @dev_attr_gpio2, ptr @dev_attr_gpio3, ptr @dev_attr_gpio4, ptr @dev_attr_gpio5, ptr @dev_attr_gpio6, ptr @dev_attr_gpio7, ptr @dev_attr_gpio8, ptr @dev_attr_gpio9, ptr @dev_attr_gpio10, ptr @dev_attr_gpio11, ptr @dev_attr_gpio12, ptr @dev_attr_gpio13, ptr @dev_attr_gpio14, ptr @dev_attr_gpio15, ptr @dev_attr_gpio16], [32 x i8] zeroinitializer }, align 32
@tle62x0_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 271, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"cannot create gpio attribute\0A\00", [34 x i8] zeroinitializer }, align 32
@tle62x0_probe._entry_ptr.12 = internal global ptr @tle62x0_probe._entry.10, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.13 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"status_show\00", [20 x i8] zeroinitializer }, align 32
@tle62x0_status_show.__UNIQUE_ID_ddebug231 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.15, ptr @.str.3, ptr @.str.16, i8 0, i8 27, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"spi_tle62x0\00", [20 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"tle62x0_status_show\00", [44 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"tle62x0_read() returned %d\0A\00", [36 x i8] zeroinitializer }, align 32
@tle62x0_status_show.__UNIQUE_ID_ddebug232 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.15, ptr @.str.3, ptr @.str.17, i8 0, i8 29, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"byte %d is %02x\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s \00", [28 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"N\00", [30 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"V\00", [30 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"O\00", [30 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"G\00", [30 x i8] zeroinitializer }, align 32
@dev_attr_gpio1 = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.24, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @tle62x0_gpio_show, ptr @tle62x0_gpio_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_gpio2 = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.30, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @tle62x0_gpio_show, ptr @tle62x0_gpio_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_gpio3 = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.31, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @tle62x0_gpio_show, ptr @tle62x0_gpio_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_gpio4 = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.32, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @tle62x0_gpio_show, ptr @tle62x0_gpio_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_gpio5 = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.33, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @tle62x0_gpio_show, ptr @tle62x0_gpio_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_gpio6 = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.34, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @tle62x0_gpio_show, ptr @tle62x0_gpio_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_gpio7 = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.35, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @tle62x0_gpio_show, ptr @tle62x0_gpio_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_gpio8 = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.36, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @tle62x0_gpio_show, ptr @tle62x0_gpio_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_gpio9 = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.37, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @tle62x0_gpio_show, ptr @tle62x0_gpio_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_gpio10 = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.38, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @tle62x0_gpio_show, ptr @tle62x0_gpio_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_gpio11 = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.39, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @tle62x0_gpio_show, ptr @tle62x0_gpio_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_gpio12 = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.40, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @tle62x0_gpio_show, ptr @tle62x0_gpio_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_gpio13 = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.41, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @tle62x0_gpio_show, ptr @tle62x0_gpio_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_gpio14 = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.42, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @tle62x0_gpio_show, ptr @tle62x0_gpio_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_gpio15 = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.43, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @tle62x0_gpio_show, ptr @tle62x0_gpio_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_gpio16 = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.44, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @tle62x0_gpio_show, ptr @tle62x0_gpio_store }, [36 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpio1\00", [26 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%d\00", [29 x i8] zeroinitializer }, align 32
@tle62x0_gpio_store.__UNIQUE_ID_ddebug233 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.26, ptr @.str.3, ptr @.str.27, i8 0, i8 40, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tle62x0_gpio_store\00", [45 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"setting gpio %d to %ld\0A\00", [40 x i8] zeroinitializer }, align 32
@tle62x0_write.__UNIQUE_ID_ddebug230 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.28, ptr @.str.3, ptr @.str.29, i8 0, i8 13, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"tle62x0_write\00", [18 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"buff %3ph\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpio2\00", [26 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpio3\00", [26 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpio4\00", [26 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpio5\00", [26 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpio6\00", [26 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpio7\00", [26 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpio8\00", [26 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpio9\00", [26 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio10\00", [25 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio11\00", [25 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio12\00", [25 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio13\00", [25 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio14\00", [25 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio15\00", [25 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio16\00", [25 x i8] zeroinitializer }, align 32
@switch.table.tle62x0_status_show = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.22, ptr @.str.21, ptr @.str.20, ptr @.str.19], [16 x i8] zeroinitializer }, align 32
@___asan_gen_.45 = private unnamed_addr constant [15 x i8] c"tle62x0_driver\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 304, i32 26 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 306, i32 11 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 248, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 260, i32 2 }
@___asan_gen_.75 = private unnamed_addr constant [21 x i8] c"dev_attr_status_show\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 264, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant [11 x i8] c"gpio_attrs\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 208, i32 33 }
@___asan_gen_.87 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 271, i32 4 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 131, i32 8 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 108, i32 2 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 118, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 122, i32 21 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 84, i32 10 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 86, i32 10 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 88, i32 10 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 90, i32 10 }
@___asan_gen_.123 = private unnamed_addr constant [15 x i8] c"dev_attr_gpio1\00", align 1
@___asan_gen_.126 = private unnamed_addr constant [15 x i8] c"dev_attr_gpio2\00", align 1
@___asan_gen_.129 = private unnamed_addr constant [15 x i8] c"dev_attr_gpio3\00", align 1
@___asan_gen_.132 = private unnamed_addr constant [15 x i8] c"dev_attr_gpio4\00", align 1
@___asan_gen_.135 = private unnamed_addr constant [15 x i8] c"dev_attr_gpio5\00", align 1
@___asan_gen_.138 = private unnamed_addr constant [15 x i8] c"dev_attr_gpio6\00", align 1
@___asan_gen_.141 = private unnamed_addr constant [15 x i8] c"dev_attr_gpio7\00", align 1
@___asan_gen_.144 = private unnamed_addr constant [15 x i8] c"dev_attr_gpio8\00", align 1
@___asan_gen_.147 = private unnamed_addr constant [15 x i8] c"dev_attr_gpio9\00", align 1
@___asan_gen_.150 = private unnamed_addr constant [16 x i8] c"dev_attr_gpio10\00", align 1
@___asan_gen_.153 = private unnamed_addr constant [16 x i8] c"dev_attr_gpio11\00", align 1
@___asan_gen_.156 = private unnamed_addr constant [16 x i8] c"dev_attr_gpio12\00", align 1
@___asan_gen_.159 = private unnamed_addr constant [16 x i8] c"dev_attr_gpio13\00", align 1
@___asan_gen_.162 = private unnamed_addr constant [16 x i8] c"dev_attr_gpio14\00", align 1
@___asan_gen_.165 = private unnamed_addr constant [16 x i8] c"dev_attr_gpio15\00", align 1
@___asan_gen_.168 = private unnamed_addr constant [16 x i8] c"dev_attr_gpio16\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 175, i32 8 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 144, i32 25 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 160, i32 2 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 52, i32 2 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 177, i32 8 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 179, i32 8 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 181, i32 8 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 183, i32 8 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 185, i32 8 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 187, i32 8 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 189, i32 8 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 191, i32 8 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 193, i32 8 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 195, i32 8 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 197, i32 8 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 199, i32 8 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 201, i32 8 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 203, i32 8 }
@___asan_gen_.231 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.232 = private constant [29 x i8] c"../drivers/spi/spi-tle62x0.c\00", align 1
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 205, i32 8 }
@___asan_gen_.234 = private unnamed_addr constant [33 x i8] c"switch.table.tle62x0_status_show\00", align 1
@llvm.compiler.used = appending global [75 x ptr] [ptr @__UNIQUE_ID_alias239, ptr @__UNIQUE_ID_author235, ptr @__UNIQUE_ID_description236, ptr @__UNIQUE_ID_file237, ptr @__UNIQUE_ID_license238, ptr @__exitcall_tle62x0_driver_exit, ptr @__initcall__kmod_spi_tle62x0__234_312_tle62x0_driver_init6, ptr @tle62x0_driver_exit, ptr @tle62x0_probe._entry, ptr @tle62x0_probe._entry.10, ptr @tle62x0_probe._entry.7, ptr @tle62x0_probe._entry_ptr, ptr @tle62x0_probe._entry_ptr.12, ptr @tle62x0_probe._entry_ptr.9, ptr @tle62x0_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @tle62x0_probe.__key, ptr @.str.6, ptr @dev_attr_status_show, ptr @.str.8, ptr @gpio_attrs, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @dev_attr_gpio1, ptr @dev_attr_gpio2, ptr @dev_attr_gpio3, ptr @dev_attr_gpio4, ptr @dev_attr_gpio5, ptr @dev_attr_gpio6, ptr @dev_attr_gpio7, ptr @dev_attr_gpio8, ptr @dev_attr_gpio9, ptr @dev_attr_gpio10, ptr @dev_attr_gpio11, ptr @dev_attr_gpio12, ptr @dev_attr_gpio13, ptr @dev_attr_gpio14, ptr @dev_attr_gpio15, ptr @dev_attr_gpio16, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @switch.table.tle62x0_status_show], section "llvm.metadata"
@0 = internal global [64 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tle62x0_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tle62x0_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tle62x0_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_status_show to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tle62x0_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_attrs to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tle62x0_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_gpio1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_gpio2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_gpio3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_gpio4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_gpio5 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_gpio6 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_gpio7 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_gpio8 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_gpio9 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_gpio10 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_gpio11 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_gpio12 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_gpio13 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_gpio14 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_gpio15 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_gpio16 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.tle62x0_status_show to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tle62x0_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @tle62x0_driver) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @tle62x0_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @tle62x0_driver, i32 0, i32 4)) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tle62x0_probe(ptr noundef %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %platform_data.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.1) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 112) #11
  %cmp3 = icmp eq ptr %call7.i.i, null
  br i1 %cmp3, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %3 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %spi, ptr %call7.i.i, align 8
  %gpio_count = getelementptr inbounds %struct.tle62x0_pdata, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %gpio_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %gpio_count, align 4
  %nr_gpio = getelementptr inbounds %struct.tle62x0_state, ptr %call7.i.i, i32 0, i32 2
  %6 = ptrtoint ptr %nr_gpio to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %nr_gpio, align 8
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %1, align 4
  %gpio_state = getelementptr inbounds %struct.tle62x0_state, ptr %call7.i.i, i32 0, i32 3
  %9 = ptrtoint ptr %gpio_state to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %gpio_state, align 4
  %lock = getelementptr inbounds %struct.tle62x0_state, ptr %call7.i.i, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.6, ptr noundef nonnull @tle62x0_probe.__key) #7
  %call10 = tail call i32 @device_create_file(ptr noundef %spi, ptr noundef nonnull @dev_attr_status_show) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool.not = icmp eq i32 %call10, 0
  br i1 %tobool.not, label %for.cond.preheader, label %do.end14

for.cond.preheader:                               ; preds = %if.end5
  %10 = ptrtoint ptr %gpio_count to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %gpio_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp1860.not = icmp eq i32 %11, 0
  br i1 %cmp1860.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

do.end14:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.8) #10
  br label %err_status

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %ptr.061 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr [16 x ptr], ptr @gpio_attrs, i32 0, i32 %ptr.061
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx, align 4
  %call20 = tail call i32 @device_create_file(ptr noundef %spi, ptr noundef %13) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %for.inc, label %do.end25

do.end25:                                         ; preds = %for.body
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.11) #10
  %dec62 = add i32 %ptr.061, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %dec62)
  %cmp2863 = icmp sgt i32 %dec62, -1
  br i1 %cmp2863, label %do.end25.while.body_crit_edge, label %do.end25.while.end_crit_edge

do.end25.while.end_crit_edge:                     ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

do.end25.while.body_crit_edge:                    ; preds = %do.end25
  br label %while.body

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %ptr.061, 1
  %14 = ptrtoint ptr %gpio_count to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %gpio_count, align 4
  %cmp18 = icmp ult i32 %inc, %15
  br i1 %cmp18, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %16 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  br label %cleanup

while.body:                                       ; preds = %while.body.while.body_crit_edge, %do.end25.while.body_crit_edge
  %dec64 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ %dec62, %do.end25.while.body_crit_edge ]
  %arrayidx30 = getelementptr [16 x ptr], ptr @gpio_attrs, i32 0, i32 %dec64
  %17 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx30, align 4
  tail call void @device_remove_file(ptr noundef %spi, ptr noundef %18) #7
  %dec = add nsw i32 %dec64, -1
  %cmp28 = icmp sgt i32 %dec64, 0
  br i1 %cmp28, label %while.body.while.body_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.end:                                        ; preds = %while.body.while.end_crit_edge, %do.end25.while.end_crit_edge
  tail call void @device_remove_file(ptr noundef %spi, ptr noundef nonnull @dev_attr_status_show) #7
  br label %err_status

err_status:                                       ; preds = %while.end, %do.end14
  %ret.0 = phi i32 [ %call10, %do.end14 ], [ %call20, %while.end ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %err_status, %for.end, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %ret.0, %err_status ], [ 0, %for.end ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tle62x0_remove(ptr noundef %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %nr_gpio = getelementptr inbounds %struct.tle62x0_state, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %nr_gpio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nr_gpio, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp7.not = icmp eq i32 %3, 0
  br i1 %cmp7.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %ptr.08 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr [16 x ptr], ptr @gpio_attrs, i32 0, i32 %ptr.08
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  tail call void @device_remove_file(ptr noundef %spi, ptr noundef %5) #7
  %inc = add nuw i32 %ptr.08, 1
  %6 = ptrtoint ptr %nr_gpio to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nr_gpio, align 4
  %cmp = icmp ult i32 %inc, %7
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @device_remove_file(ptr noundef %spi, ptr noundef nonnull @dev_attr_status_show) #7
  tail call void @kfree(ptr noundef %1) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_create_file(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_remove_file(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tle62x0_status_show(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  %xfer.i = alloca %struct.spi_transfer, align 4
  %msg.i = alloca %struct.spi_message, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %rx_buff = getelementptr inbounds %struct.tle62x0_state, ptr %1, i32 0, i32 5
  %lock = getelementptr inbounds %struct.tle62x0_state, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %tx_buff.i = getelementptr inbounds %struct.tle62x0_state, ptr %1, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %xfer.i) #7
  %2 = getelementptr inbounds i8, ptr %xfer.i, i32 12
  %3 = call ptr @memset(ptr %2, i32 0, i32 84)
  %4 = ptrtoint ptr %xfer.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %tx_buff.i, ptr %xfer.i, align 4
  %rx_buf.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i, i32 0, i32 1
  %5 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %rx_buff, ptr %rx_buf.i, align 4
  %len.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i, i32 0, i32 2
  %nr_gpio.i = getelementptr inbounds %struct.tle62x0_state, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %nr_gpio.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nr_gpio.i, align 4
  %8 = lshr i32 %7, 2
  %div12.i = and i32 %8, 536870911
  %9 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %div12.i, ptr %len.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i) #7
  %10 = getelementptr inbounds i8, ptr %msg.i, i32 8
  %11 = ptrtoint ptr %tx_buff.i to i32
  call void @__asan_storeN_noabort(i32 %11, i32 4)
  store i32 0, ptr %tx_buff.i, align 1
  %12 = call ptr @memset(ptr %10, i32 0, i32 40)
  %13 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %msg.i, ptr %msg.i, align 4
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %msg.i, ptr %prev.i.i.i.i, align 4
  %resources.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i, i32 0, i32 10
  %15 = ptrtoint ptr %resources.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %resources.i.i.i, ptr %resources.i.i.i, align 4
  %prev.i2.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i, i32 0, i32 10, i32 1
  %16 = ptrtoint ptr %prev.i2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %resources.i.i.i, ptr %prev.i2.i.i.i, align 4
  %transfer_list.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i, i32 0, i32 18
  %call.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i, ptr noundef nonnull %msg.i, ptr noundef nonnull %msg.i) #7
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %entry.tle62x0_read.exit_crit_edge

entry.tle62x0_read.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %tle62x0_read.exit

if.end.i.i.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %transfer_list.i.i, ptr %prev.i.i.i.i, align 4
  %18 = ptrtoint ptr %transfer_list.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %msg.i, ptr %transfer_list.i.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i, i32 0, i32 18, i32 1
  %19 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %msg.i, ptr %prev3.i.i.i.i, align 4
  %20 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %transfer_list.i.i, ptr %msg.i, align 4
  br label %tle62x0_read.exit

tle62x0_read.exit:                                ; preds = %if.end.i.i.i.i, %entry.tle62x0_read.exit_crit_edge
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 4
  %call.i = call i32 @spi_sync(ptr noundef %22, ptr noundef nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %xfer.i) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tle62x0_status_show.__UNIQUE_ID_ddebug231, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@tle62x0_status_show, %do.end)) #7
          to label %if.then [label %do.end], !srcloc !127

if.then:                                          ; preds = %tle62x0_read.exit
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tle62x0_status_show.__UNIQUE_ID_ddebug231, ptr noundef %dev, ptr noundef nonnull @.str.16, i32 noundef %call.i) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %tle62x0_read.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.then6, label %for.cond.preheader

for.cond.preheader:                               ; preds = %do.end
  %23 = ptrtoint ptr %nr_gpio.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %nr_gpio.i, align 4
  %25 = and i32 %24, 2147483644
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp979.not = icmp eq i32 %25, 0
  br i1 %cmp979.not, label %for.cond.preheader.for.cond30.preheader_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.cond30.preheader_crit_edge: ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond30.preheader

if.then6:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @mutex_unlock(ptr noundef %lock) #7
  br label %cleanup

for.cond30.preheader:                             ; preds = %for.inc.for.cond30.preheader_crit_edge, %for.cond.preheader.for.cond30.preheader_crit_edge
  %26 = phi i32 [ %24, %for.cond.preheader.for.cond30.preheader_crit_edge ], [ %32, %for.inc.for.cond30.preheader_crit_edge ]
  %fault.0.lcssa = phi i32 [ 0, %for.cond.preheader.for.cond30.preheader_crit_edge ], [ %or, %for.inc.for.cond30.preheader_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp3283.not = icmp eq i32 %26, 0
  br i1 %cmp3283.not, label %for.cond30.preheader.for.end39_crit_edge, label %for.cond30.preheader.for.body34_crit_edge

for.cond30.preheader.for.body34_crit_edge:        ; preds = %for.cond30.preheader
  br label %for.body34

for.cond30.preheader.for.end39_crit_edge:         ; preds = %for.cond30.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end39

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %ptr.081 = phi i32 [ %add, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %fault.080 = phi i32 [ %or, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %shl = shl i32 %fault.080, 8
  %arrayidx = getelementptr i8, ptr %rx_buff, i32 %ptr.081
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %28 to i32
  %or = or i32 %shl, %conv
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tle62x0_status_show.__UNIQUE_ID_ddebug232, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@tle62x0_status_show, %for.inc)) #7
          to label %if.then24 [label %for.inc], !srcloc !127

if.then24:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %29 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx, align 1
  %conv26 = zext i8 %30 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tle62x0_status_show.__UNIQUE_ID_ddebug232, ptr noundef %dev, ptr noundef nonnull @.str.17, i32 noundef %ptr.081, i32 noundef %conv26) #7
  br label %for.inc

for.inc:                                          ; preds = %if.then24, %for.body
  %add = add nuw nsw i32 %ptr.081, 1
  %31 = ptrtoint ptr %nr_gpio.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %nr_gpio.i, align 4
  %33 = lshr i32 %32, 2
  %div70 = and i32 %33, 536870911
  %cmp9 = icmp ult i32 %add, %div70
  br i1 %cmp9, label %for.inc.for.body_crit_edge, label %for.inc.for.cond30.preheader_crit_edge

for.inc.for.cond30.preheader_crit_edge:           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond30.preheader

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body34:                                       ; preds = %for.body34.for.body34_crit_edge, %for.cond30.preheader.for.body34_crit_edge
  %bp.085 = phi ptr [ %add.ptr, %for.body34.for.body34_crit_edge ], [ %buf, %for.cond30.preheader.for.body34_crit_edge ]
  %ptr.184 = phi i32 [ %inc, %for.body34.for.body34_crit_edge ], [ 0, %for.cond30.preheader.for.body34_crit_edge ]
  %mul35 = shl i32 %ptr.184, 1
  %shr = lshr i32 %fault.0.lcssa, %mul35
  %and.i = and i32 %shr, 3
  %switch.gep = getelementptr inbounds [4 x ptr], ptr @switch.table.tle62x0_status_show, i32 0, i32 %and.i
  %34 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %34)
  %switch.load = load ptr, ptr %switch.gep, align 4
  %call37 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %bp.085, ptr noundef nonnull @.str.18, ptr noundef nonnull %switch.load)
  %add.ptr = getelementptr i8, ptr %bp.085, i32 %call37
  %inc = add nuw i32 %ptr.184, 1
  %35 = ptrtoint ptr %nr_gpio.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %nr_gpio.i, align 4
  %cmp32 = icmp ult i32 %inc, %36
  br i1 %cmp32, label %for.body34.for.body34_crit_edge, label %for.body34.for.end39_crit_edge

for.body34.for.end39_crit_edge:                   ; preds = %for.body34
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end39

for.body34.for.body34_crit_edge:                  ; preds = %for.body34
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body34

for.end39:                                        ; preds = %for.body34.for.end39_crit_edge, %for.cond30.preheader.for.end39_crit_edge
  %bp.0.lcssa = phi ptr [ %buf, %for.cond30.preheader.for.end39_crit_edge ], [ %add.ptr, %for.body34.for.end39_crit_edge ]
  %incdec.ptr = getelementptr i8, ptr %bp.0.lcssa, i32 1
  %37 = ptrtoint ptr %bp.0.lcssa to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 10, ptr %bp.0.lcssa, align 1
  call void @mutex_unlock(ptr noundef %lock) #7
  %sub.ptr.lhs.cast = ptrtoint ptr %incdec.ptr to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %buf to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  br label %cleanup

cleanup:                                          ; preds = %for.end39, %if.then6
  %retval.0 = phi i32 [ %call.i, %if.then6 ], [ %sub.ptr.sub, %for.end39 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_sync(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tle62x0_gpio_show(ptr nocapture noundef readonly %dev, ptr noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %cmp1.i = icmp eq ptr %attr, @dev_attr_gpio1
  br i1 %cmp1.i, label %entry.to_gpio_num.exit_crit_edge, label %for.inc.i

entry.to_gpio_num.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %to_gpio_num.exit

for.inc.i:                                        ; preds = %entry
  %cmp1.1.i = icmp eq ptr %attr, @dev_attr_gpio2
  br i1 %cmp1.1.i, label %for.inc.i.to_gpio_num.exit_crit_edge, label %for.inc.1.i

for.inc.i.to_gpio_num.exit_crit_edge:             ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %to_gpio_num.exit

for.inc.1.i:                                      ; preds = %for.inc.i
  %cmp1.2.i = icmp eq ptr %attr, @dev_attr_gpio3
  br i1 %cmp1.2.i, label %for.inc.1.i.to_gpio_num.exit_crit_edge, label %for.inc.2.i

for.inc.1.i.to_gpio_num.exit_crit_edge:           ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %to_gpio_num.exit

for.inc.2.i:                                      ; preds = %for.inc.1.i
  %cmp1.3.i = icmp eq ptr %attr, @dev_attr_gpio4
  br i1 %cmp1.3.i, label %for.inc.2.i.to_gpio_num.exit_crit_edge, label %for.inc.3.i

for.inc.2.i.to_gpio_num.exit_crit_edge:           ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %to_gpio_num.exit

for.inc.3.i:                                      ; preds = %for.inc.2.i
  %cmp1.4.i = icmp eq ptr %attr, @dev_attr_gpio5
  br i1 %cmp1.4.i, label %for.inc.3.i.to_gpio_num.exit_crit_edge, label %for.inc.4.i

for.inc.3.i.to_gpio_num.exit_crit_edge:           ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %to_gpio_num.exit

for.inc.4.i:                                      ; preds = %for.inc.3.i
  %cmp1.5.i = icmp eq ptr %attr, @dev_attr_gpio6
  br i1 %cmp1.5.i, label %for.inc.4.i.to_gpio_num.exit_crit_edge, label %for.inc.5.i

for.inc.4.i.to_gpio_num.exit_crit_edge:           ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %to_gpio_num.exit

for.inc.5.i:                                      ; preds = %for.inc.4.i
  %cmp1.6.i = icmp eq ptr %attr, @dev_attr_gpio7
  br i1 %cmp1.6.i, label %for.inc.5.i.to_gpio_num.exit_crit_edge, label %for.inc.6.i

for.inc.5.i.to_gpio_num.exit_crit_edge:           ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %to_gpio_num.exit

for.inc.6.i:                                      ; preds = %for.inc.5.i
  %cmp1.7.i = icmp eq ptr %attr, @dev_attr_gpio8
  br i1 %cmp1.7.i, label %for.inc.6.i.to_gpio_num.exit_crit_edge, label %for.inc.7.i

for.inc.6.i.to_gpio_num.exit_crit_edge:           ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %to_gpio_num.exit

for.inc.7.i:                                      ; preds = %for.inc.6.i
  %cmp1.8.i = icmp eq ptr %attr, @dev_attr_gpio9
  br i1 %cmp1.8.i, label %for.inc.7.i.to_gpio_num.exit_crit_edge, label %for.inc.8.i

for.inc.7.i.to_gpio_num.exit_crit_edge:           ; preds = %for.inc.7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %to_gpio_num.exit

for.inc.8.i:                                      ; preds = %for.inc.7.i
  %cmp1.9.i = icmp eq ptr %attr, @dev_attr_gpio10
  br i1 %cmp1.9.i, label %for.inc.8.i.to_gpio_num.exit_crit_edge, label %for.inc.9.i

for.inc.8.i.to_gpio_num.exit_crit_edge:           ; preds = %for.inc.8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %to_gpio_num.exit

for.inc.9.i:                                      ; preds = %for.inc.8.i
  %cmp1.10.i = icmp eq ptr %attr, @dev_attr_gpio11
  br i1 %cmp1.10.i, label %for.inc.9.i.to_gpio_num.exit_crit_edge, label %for.inc.10.i

for.inc.9.i.to_gpio_num.exit_crit_edge:           ; preds = %for.inc.9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %to_gpio_num.exit

for.inc.10.i:                                     ; preds = %for.inc.9.i
  %cmp1.11.i = icmp eq ptr %attr, @dev_attr_gpio12
  br i1 %cmp1.11.i, label %for.inc.10.i.to_gpio_num.exit_crit_edge, label %for.inc.11.i

for.inc.10.i.to_gpio_num.exit_crit_edge:          ; preds = %for.inc.10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %to_gpio_num.exit

for.inc.11.i:                                     ; preds = %for.inc.10.i
  %cmp1.12.i = icmp eq ptr %attr, @dev_attr_gpio13
  br i1 %cmp1.12.i, label %for.inc.11.i.to_gpio_num.exit_crit_edge, label %for.inc.12.i

for.inc.11.i.to_gpio_num.exit_crit_edge:          ; preds = %for.inc.11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %to_gpio_num.exit

for.inc.12.i:                                     ; preds = %for.inc.11.i
  %cmp1.13.i = icmp eq ptr %attr, @dev_attr_gpio14
  br i1 %cmp1.13.i, label %for.inc.12.i.to_gpio_num.exit_crit_edge, label %for.inc.13.i

for.inc.12.i.to_gpio_num.exit_crit_edge:          ; preds = %for.inc.12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %to_gpio_num.exit

for.inc.13.i:                                     ; preds = %for.inc.12.i
  %cmp1.14.i = icmp eq ptr %attr, @dev_attr_gpio15
  br i1 %cmp1.14.i, label %for.inc.13.i.to_gpio_num.exit_crit_edge, label %for.inc.14.i

for.inc.13.i.to_gpio_num.exit_crit_edge:          ; preds = %for.inc.13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %to_gpio_num.exit

for.inc.14.i:                                     ; preds = %for.inc.13.i
  call void @__sanitizer_cov_trace_pc() #9
  %cmp1.15.i = icmp eq ptr %attr, @dev_attr_gpio16
  %spec.select.i = select i1 %cmp1.15.i, i32 15, i32 -1
  br label %to_gpio_num.exit

to_gpio_num.exit:                                 ; preds = %for.inc.14.i, %for.inc.13.i.to_gpio_num.exit_crit_edge, %for.inc.12.i.to_gpio_num.exit_crit_edge, %for.inc.11.i.to_gpio_num.exit_crit_edge, %for.inc.10.i.to_gpio_num.exit_crit_edge, %for.inc.9.i.to_gpio_num.exit_crit_edge, %for.inc.8.i.to_gpio_num.exit_crit_edge, %for.inc.7.i.to_gpio_num.exit_crit_edge, %for.inc.6.i.to_gpio_num.exit_crit_edge, %for.inc.5.i.to_gpio_num.exit_crit_edge, %for.inc.4.i.to_gpio_num.exit_crit_edge, %for.inc.3.i.to_gpio_num.exit_crit_edge, %for.inc.2.i.to_gpio_num.exit_crit_edge, %for.inc.1.i.to_gpio_num.exit_crit_edge, %for.inc.i.to_gpio_num.exit_crit_edge, %entry.to_gpio_num.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %entry.to_gpio_num.exit_crit_edge ], [ 1, %for.inc.i.to_gpio_num.exit_crit_edge ], [ 2, %for.inc.1.i.to_gpio_num.exit_crit_edge ], [ 3, %for.inc.2.i.to_gpio_num.exit_crit_edge ], [ 4, %for.inc.3.i.to_gpio_num.exit_crit_edge ], [ 5, %for.inc.4.i.to_gpio_num.exit_crit_edge ], [ 6, %for.inc.5.i.to_gpio_num.exit_crit_edge ], [ 7, %for.inc.6.i.to_gpio_num.exit_crit_edge ], [ 8, %for.inc.7.i.to_gpio_num.exit_crit_edge ], [ 9, %for.inc.8.i.to_gpio_num.exit_crit_edge ], [ 10, %for.inc.9.i.to_gpio_num.exit_crit_edge ], [ 11, %for.inc.10.i.to_gpio_num.exit_crit_edge ], [ 12, %for.inc.11.i.to_gpio_num.exit_crit_edge ], [ 13, %for.inc.12.i.to_gpio_num.exit_crit_edge ], [ 14, %for.inc.13.i.to_gpio_num.exit_crit_edge ], [ %spec.select.i, %for.inc.14.i ]
  %lock = getelementptr inbounds %struct.tle62x0_state, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %gpio_state = getelementptr inbounds %struct.tle62x0_state, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %gpio_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %gpio_state, align 4
  %shr = lshr i32 %3, %retval.0.i
  %and = and i32 %shr, 1
  tail call void @mutex_unlock(ptr noundef %lock) #7
  %call3 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.25, i32 noundef %and) #7
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tle62x0_gpio_store(ptr noundef %dev, ptr noundef readnone %attr, ptr noundef %buf, i32 noundef %len) #2 align 64 {
entry:
  %msg.i.i.i = alloca %struct.spi_message, align 4
  %t.i.i = alloca %struct.spi_transfer, align 4
  %endp = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %cmp1.i = icmp eq ptr %attr, @dev_attr_gpio1
  br i1 %cmp1.i, label %entry.to_gpio_num.exit_crit_edge, label %for.inc.i

entry.to_gpio_num.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %to_gpio_num.exit

for.inc.i:                                        ; preds = %entry
  %cmp1.1.i = icmp eq ptr %attr, @dev_attr_gpio2
  br i1 %cmp1.1.i, label %for.inc.i.to_gpio_num.exit_crit_edge, label %for.inc.1.i

for.inc.i.to_gpio_num.exit_crit_edge:             ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %to_gpio_num.exit

for.inc.1.i:                                      ; preds = %for.inc.i
  %cmp1.2.i = icmp eq ptr %attr, @dev_attr_gpio3
  br i1 %cmp1.2.i, label %for.inc.1.i.to_gpio_num.exit_crit_edge, label %for.inc.2.i

for.inc.1.i.to_gpio_num.exit_crit_edge:           ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %to_gpio_num.exit

for.inc.2.i:                                      ; preds = %for.inc.1.i
  %cmp1.3.i = icmp eq ptr %attr, @dev_attr_gpio4
  br i1 %cmp1.3.i, label %for.inc.2.i.to_gpio_num.exit_crit_edge, label %for.inc.3.i

for.inc.2.i.to_gpio_num.exit_crit_edge:           ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %to_gpio_num.exit

for.inc.3.i:                                      ; preds = %for.inc.2.i
  %cmp1.4.i = icmp eq ptr %attr, @dev_attr_gpio5
  br i1 %cmp1.4.i, label %for.inc.3.i.to_gpio_num.exit_crit_edge, label %for.inc.4.i

for.inc.3.i.to_gpio_num.exit_crit_edge:           ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %to_gpio_num.exit

for.inc.4.i:                                      ; preds = %for.inc.3.i
  %cmp1.5.i = icmp eq ptr %attr, @dev_attr_gpio6
  br i1 %cmp1.5.i, label %for.inc.4.i.to_gpio_num.exit_crit_edge, label %for.inc.5.i

for.inc.4.i.to_gpio_num.exit_crit_edge:           ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %to_gpio_num.exit

for.inc.5.i:                                      ; preds = %for.inc.4.i
  %cmp1.6.i = icmp eq ptr %attr, @dev_attr_gpio7
  br i1 %cmp1.6.i, label %for.inc.5.i.to_gpio_num.exit_crit_edge, label %for.inc.6.i

for.inc.5.i.to_gpio_num.exit_crit_edge:           ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %to_gpio_num.exit

for.inc.6.i:                                      ; preds = %for.inc.5.i
  %cmp1.7.i = icmp eq ptr %attr, @dev_attr_gpio8
  br i1 %cmp1.7.i, label %for.inc.6.i.to_gpio_num.exit_crit_edge, label %for.inc.7.i

for.inc.6.i.to_gpio_num.exit_crit_edge:           ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %to_gpio_num.exit

for.inc.7.i:                                      ; preds = %for.inc.6.i
  %cmp1.8.i = icmp eq ptr %attr, @dev_attr_gpio9
  br i1 %cmp1.8.i, label %for.inc.7.i.to_gpio_num.exit_crit_edge, label %for.inc.8.i

for.inc.7.i.to_gpio_num.exit_crit_edge:           ; preds = %for.inc.7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %to_gpio_num.exit

for.inc.8.i:                                      ; preds = %for.inc.7.i
  %cmp1.9.i = icmp eq ptr %attr, @dev_attr_gpio10
  br i1 %cmp1.9.i, label %for.inc.8.i.to_gpio_num.exit_crit_edge, label %for.inc.9.i

for.inc.8.i.to_gpio_num.exit_crit_edge:           ; preds = %for.inc.8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %to_gpio_num.exit

for.inc.9.i:                                      ; preds = %for.inc.8.i
  %cmp1.10.i = icmp eq ptr %attr, @dev_attr_gpio11
  br i1 %cmp1.10.i, label %for.inc.9.i.to_gpio_num.exit_crit_edge, label %for.inc.10.i

for.inc.9.i.to_gpio_num.exit_crit_edge:           ; preds = %for.inc.9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %to_gpio_num.exit

for.inc.10.i:                                     ; preds = %for.inc.9.i
  %cmp1.11.i = icmp eq ptr %attr, @dev_attr_gpio12
  br i1 %cmp1.11.i, label %for.inc.10.i.to_gpio_num.exit_crit_edge, label %for.inc.11.i

for.inc.10.i.to_gpio_num.exit_crit_edge:          ; preds = %for.inc.10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %to_gpio_num.exit

for.inc.11.i:                                     ; preds = %for.inc.10.i
  %cmp1.12.i = icmp eq ptr %attr, @dev_attr_gpio13
  br i1 %cmp1.12.i, label %for.inc.11.i.to_gpio_num.exit_crit_edge, label %for.inc.12.i

for.inc.11.i.to_gpio_num.exit_crit_edge:          ; preds = %for.inc.11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %to_gpio_num.exit

for.inc.12.i:                                     ; preds = %for.inc.11.i
  %cmp1.13.i = icmp eq ptr %attr, @dev_attr_gpio14
  br i1 %cmp1.13.i, label %for.inc.12.i.to_gpio_num.exit_crit_edge, label %for.inc.13.i

for.inc.12.i.to_gpio_num.exit_crit_edge:          ; preds = %for.inc.12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %to_gpio_num.exit

for.inc.13.i:                                     ; preds = %for.inc.12.i
  %cmp1.14.i = icmp eq ptr %attr, @dev_attr_gpio15
  br i1 %cmp1.14.i, label %for.inc.13.i.to_gpio_num.exit_crit_edge, label %for.inc.14.i

for.inc.13.i.to_gpio_num.exit_crit_edge:          ; preds = %for.inc.13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %to_gpio_num.exit

for.inc.14.i:                                     ; preds = %for.inc.13.i
  call void @__sanitizer_cov_trace_pc() #9
  %cmp1.15.i = icmp eq ptr %attr, @dev_attr_gpio16
  %spec.select.i = select i1 %cmp1.15.i, i32 15, i32 -1
  br label %to_gpio_num.exit

to_gpio_num.exit:                                 ; preds = %for.inc.14.i, %for.inc.13.i.to_gpio_num.exit_crit_edge, %for.inc.12.i.to_gpio_num.exit_crit_edge, %for.inc.11.i.to_gpio_num.exit_crit_edge, %for.inc.10.i.to_gpio_num.exit_crit_edge, %for.inc.9.i.to_gpio_num.exit_crit_edge, %for.inc.8.i.to_gpio_num.exit_crit_edge, %for.inc.7.i.to_gpio_num.exit_crit_edge, %for.inc.6.i.to_gpio_num.exit_crit_edge, %for.inc.5.i.to_gpio_num.exit_crit_edge, %for.inc.4.i.to_gpio_num.exit_crit_edge, %for.inc.3.i.to_gpio_num.exit_crit_edge, %for.inc.2.i.to_gpio_num.exit_crit_edge, %for.inc.1.i.to_gpio_num.exit_crit_edge, %for.inc.i.to_gpio_num.exit_crit_edge, %entry.to_gpio_num.exit_crit_edge
  %retval.0.i28 = phi i32 [ 0, %entry.to_gpio_num.exit_crit_edge ], [ 1, %for.inc.i.to_gpio_num.exit_crit_edge ], [ 2, %for.inc.1.i.to_gpio_num.exit_crit_edge ], [ 3, %for.inc.2.i.to_gpio_num.exit_crit_edge ], [ 4, %for.inc.3.i.to_gpio_num.exit_crit_edge ], [ 5, %for.inc.4.i.to_gpio_num.exit_crit_edge ], [ 6, %for.inc.5.i.to_gpio_num.exit_crit_edge ], [ 7, %for.inc.6.i.to_gpio_num.exit_crit_edge ], [ 8, %for.inc.7.i.to_gpio_num.exit_crit_edge ], [ 9, %for.inc.8.i.to_gpio_num.exit_crit_edge ], [ 10, %for.inc.9.i.to_gpio_num.exit_crit_edge ], [ 11, %for.inc.10.i.to_gpio_num.exit_crit_edge ], [ 12, %for.inc.11.i.to_gpio_num.exit_crit_edge ], [ 13, %for.inc.12.i.to_gpio_num.exit_crit_edge ], [ 14, %for.inc.13.i.to_gpio_num.exit_crit_edge ], [ %spec.select.i, %for.inc.14.i ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %endp) #7
  %2 = ptrtoint ptr %endp to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %endp, align 4, !annotation !128
  %call2 = call i32 @simple_strtoul(ptr noundef %buf, ptr noundef nonnull %endp, i32 noundef 0) #7
  %3 = ptrtoint ptr %endp to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %endp, align 4
  %cmp = icmp eq ptr %4, %buf
  br i1 %cmp, label %to_gpio_num.exit.cleanup_crit_edge, label %do.body

to_gpio_num.exit.cleanup_crit_edge:               ; preds = %to_gpio_num.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %to_gpio_num.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tle62x0_gpio_store.__UNIQUE_ID_ddebug233, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@tle62x0_gpio_store, %do.end)) #7
          to label %if.then7 [label %do.end], !srcloc !127

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tle62x0_gpio_store.__UNIQUE_ID_ddebug233, ptr noundef %dev, ptr noundef nonnull @.str.27, i32 noundef %retval.0.i28, i32 noundef %call2) #7
  br label %do.end

do.end:                                           ; preds = %if.then7, %do.body
  %lock = getelementptr inbounds %struct.tle62x0_state, ptr %1, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool9.not = icmp eq i32 %call2, 0
  %shl11 = shl nuw nsw i32 1, %retval.0.i28
  br i1 %tobool9.not, label %if.else, label %if.then10

if.then10:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %gpio_state = getelementptr inbounds %struct.tle62x0_state, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %gpio_state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %gpio_state, align 4
  %or = or i32 %6, %shl11
  store i32 %or, ptr %gpio_state, align 4
  br label %if.end13

if.else:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %neg = xor i32 %shl11, -1
  %gpio_state12 = getelementptr inbounds %struct.tle62x0_state, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %gpio_state12 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %gpio_state12, align 4
  %and = and i32 %8, %neg
  store i32 %and, ptr %gpio_state12, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.else, %if.then10
  %tx_buff.i = getelementptr inbounds %struct.tle62x0_state, ptr %1, i32 0, i32 4
  %gpio_state1.i = getelementptr inbounds %struct.tle62x0_state, ptr %1, i32 0, i32 3
  %9 = ptrtoint ptr %gpio_state1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %gpio_state1.i, align 4
  %11 = ptrtoint ptr %tx_buff.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 -1, ptr %tx_buff.i, align 1
  %nr_gpio.i = getelementptr inbounds %struct.tle62x0_state, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %nr_gpio.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %nr_gpio.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %13)
  %cmp.i = icmp eq i32 %13, 16
  br i1 %cmp.i, label %if.then.i, label %if.end13.do.body.i_crit_edge

if.end13.do.body.i_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

if.then.i:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  %shr.i = lshr i32 %10, 8
  %conv3.i = trunc i32 %10 to i8
  %arrayidx4.i = getelementptr %struct.tle62x0_state, ptr %1, i32 0, i32 4, i32 2
  %14 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv3.i, ptr %arrayidx4.i, align 1
  br label %do.body.i

do.body.i:                                        ; preds = %if.then.i, %if.end13.do.body.i_crit_edge
  %conv5.sink.in.i = phi i32 [ %shr.i, %if.then.i ], [ %10, %if.end13.do.body.i_crit_edge ]
  %conv5.sink.i = trunc i32 %conv5.sink.in.i to i8
  %15 = getelementptr %struct.tle62x0_state, ptr %1, i32 0, i32 4, i32 1
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv5.sink.i, ptr %15, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tle62x0_write.__UNIQUE_ID_ddebug230, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@tle62x0_gpio_store, %do.end.i)) #7
          to label %if.then10.i [label %do.end.i], !srcloc !127

if.then10.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tle62x0_write.__UNIQUE_ID_ddebug230, ptr noundef %18, ptr noundef nonnull @.str.29, ptr noundef %tx_buff.i) #7
  br label %do.end.i

do.end.i:                                         ; preds = %if.then10.i, %do.body.i
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 4
  %21 = ptrtoint ptr %nr_gpio.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %nr_gpio.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %22)
  %cmp14.i = icmp eq i32 %22, 16
  %cond.i = select i1 %cmp14.i, i32 3, i32 2
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i) #7
  %23 = getelementptr inbounds i8, ptr %t.i.i, i32 4
  %24 = call ptr @memset(ptr %23, i32 0, i32 92)
  %25 = ptrtoint ptr %t.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %tx_buff.i, ptr %t.i.i, align 4
  %len1.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 2
  %26 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %cond.i, ptr %len1.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i) #7
  %27 = getelementptr inbounds i8, ptr %msg.i.i.i, i32 8
  %28 = call ptr @memset(ptr %27, i32 0, i32 40)
  %29 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %msg.i.i.i, ptr %msg.i.i.i, align 4
  %prev.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i, i32 0, i32 1
  %30 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %msg.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10
  %31 = ptrtoint ptr %resources.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %resources.i.i.i.i.i.i, ptr %resources.i.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10, i32 1
  %32 = ptrtoint ptr %prev.i2.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %resources.i.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i, ptr noundef nonnull %msg.i.i.i) #7
  br i1 %call.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i, label %do.end.i.tle62x0_write.exit_crit_edge

do.end.i.tle62x0_write.exit_crit_edge:            ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tle62x0_write.exit

if.end.i.i.i.i.i.i.i:                             ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %33 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %transfer_list.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %34 = ptrtoint ptr %transfer_list.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %msg.i.i.i, ptr %transfer_list.i.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18, i32 1
  %35 = ptrtoint ptr %prev3.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %msg.i.i.i, ptr %prev3.i.i.i.i.i.i.i, align 4
  %36 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %transfer_list.i.i.i.i.i, ptr %msg.i.i.i, align 4
  br label %tle62x0_write.exit

tle62x0_write.exit:                               ; preds = %if.end.i.i.i.i.i.i.i, %do.end.i.tle62x0_write.exit_crit_edge
  %call.i.i.i = call i32 @spi_sync(ptr noundef %20, ptr noundef nonnull %msg.i.i.i) #7
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i) #7
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i) #7
  call void @mutex_unlock(ptr noundef %lock) #7
  br label %cleanup

cleanup:                                          ; preds = %tle62x0_write.exit, %to_gpio_num.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %len, %tle62x0_write.exit ], [ -22, %to_gpio_num.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %endp) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_strtoul(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 64)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 64)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !29, !30, !31, !33, !34, !35, !37, !38, !40, !41, !42, !43, !45, !46, !48, !50, !52, !54, !56, !58, !60, !62, !63, !65, !67, !68, !69, !71, !72, !73, !75, !76, !78, !79, !81, !82, !84, !85, !87, !88, !90, !91, !93, !94, !96, !97, !99, !100, !102, !103, !105, !106, !108, !109, !111, !112, !114, !115, !117}
!llvm.module.flags = !{!118, !119, !120, !121, !122, !123, !124, !125}
!llvm.ident = !{!126}

!0 = !{ptr @__initcall__kmod_spi_tle62x0__234_312_tle62x0_driver_init6, !1, !"__initcall__kmod_spi_tle62x0__234_312_tle62x0_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/spi/spi-tle62x0.c", i32 312, i32 1}
!2 = !{ptr @__exitcall_tle62x0_driver_exit, !1, !"__exitcall_tle62x0_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author235, !4, !"__UNIQUE_ID_author235", i1 false, i1 false}
!4 = !{!"../drivers/spi/spi-tle62x0.c", i32 314, i32 1}
!5 = !{ptr @__UNIQUE_ID_description236, !6, !"__UNIQUE_ID_description236", i1 false, i1 false}
!6 = !{!"../drivers/spi/spi-tle62x0.c", i32 315, i32 1}
!7 = !{ptr @__UNIQUE_ID_file237, !8, !"__UNIQUE_ID_file237", i1 false, i1 false}
!8 = !{!"../drivers/spi/spi-tle62x0.c", i32 316, i32 1}
!9 = !{ptr @__UNIQUE_ID_license238, !8, !"__UNIQUE_ID_license238", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias239, !11, !"__UNIQUE_ID_alias239", i1 false, i1 false}
!11 = !{!"../drivers/spi/spi-tle62x0.c", i32 317, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/spi/spi-tle62x0.c", i32 306, i32 11}
!14 = !{ptr @tle62x0_driver, !15, !"tle62x0_driver", i1 false, i1 false}
!15 = !{!"../drivers/spi/spi-tle62x0.c", i32 304, i32 26}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/spi/spi-tle62x0.c", i32 248, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @tle62x0_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @tle62x0_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @tle62x0_probe.__key, !25, !"__key", i1 false, i1 false}
!25 = !{!"../drivers/spi/spi-tle62x0.c", i32 260, i32 2}
!26 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/spi/spi-tle62x0.c", i32 264, i32 3}
!29 = !{ptr @tle62x0_probe._entry.7, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @tle62x0_probe._entry_ptr.9, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/spi/spi-tle62x0.c", i32 271, i32 4}
!33 = !{ptr @tle62x0_probe._entry.10, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @tle62x0_probe._entry_ptr.12, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/spi/spi-tle62x0.c", i32 131, i32 8}
!37 = !{ptr @dev_attr_status_show, !36, !"dev_attr_status_show", i1 false, i1 false}
!38 = !{ptr @.str.14, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/spi/spi-tle62x0.c", i32 108, i32 2}
!40 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @tle62x0_status_show.__UNIQUE_ID_ddebug231, !39, !"__UNIQUE_ID_ddebug231", i1 false, i1 false}
!43 = !{ptr @.str.17, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/spi/spi-tle62x0.c", i32 118, i32 3}
!45 = !{ptr @tle62x0_status_show.__UNIQUE_ID_ddebug232, !44, !"__UNIQUE_ID_ddebug232", i1 false, i1 false}
!46 = !{ptr @.str.18, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/spi/spi-tle62x0.c", i32 122, i32 21}
!48 = !{ptr @.str.19, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/spi/spi-tle62x0.c", i32 84, i32 10}
!50 = !{ptr @.str.20, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/spi/spi-tle62x0.c", i32 86, i32 10}
!52 = !{ptr @.str.21, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/spi/spi-tle62x0.c", i32 88, i32 10}
!54 = !{ptr @.str.22, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/spi/spi-tle62x0.c", i32 90, i32 10}
!56 = distinct !{null, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/spi/spi-tle62x0.c", i32 93, i32 9}
!58 = !{ptr @gpio_attrs, !59, !"gpio_attrs", i1 false, i1 false}
!59 = !{!"../drivers/spi/spi-tle62x0.c", i32 208, i32 33}
!60 = !{ptr @.str.24, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/spi/spi-tle62x0.c", i32 175, i32 8}
!62 = !{ptr @dev_attr_gpio1, !61, !"dev_attr_gpio1", i1 false, i1 false}
!63 = !{ptr @.str.25, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/spi/spi-tle62x0.c", i32 144, i32 25}
!65 = !{ptr @.str.26, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/spi/spi-tle62x0.c", i32 160, i32 2}
!67 = !{ptr @.str.27, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @tle62x0_gpio_store.__UNIQUE_ID_ddebug233, !66, !"__UNIQUE_ID_ddebug233", i1 false, i1 false}
!69 = !{ptr @.str.28, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/spi/spi-tle62x0.c", i32 52, i32 2}
!71 = !{ptr @.str.29, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @tle62x0_write.__UNIQUE_ID_ddebug230, !70, !"__UNIQUE_ID_ddebug230", i1 false, i1 false}
!73 = !{ptr @.str.30, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/spi/spi-tle62x0.c", i32 177, i32 8}
!75 = !{ptr @dev_attr_gpio2, !74, !"dev_attr_gpio2", i1 false, i1 false}
!76 = !{ptr @.str.31, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/spi/spi-tle62x0.c", i32 179, i32 8}
!78 = !{ptr @dev_attr_gpio3, !77, !"dev_attr_gpio3", i1 false, i1 false}
!79 = !{ptr @.str.32, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/spi/spi-tle62x0.c", i32 181, i32 8}
!81 = !{ptr @dev_attr_gpio4, !80, !"dev_attr_gpio4", i1 false, i1 false}
!82 = !{ptr @.str.33, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/spi/spi-tle62x0.c", i32 183, i32 8}
!84 = !{ptr @dev_attr_gpio5, !83, !"dev_attr_gpio5", i1 false, i1 false}
!85 = !{ptr @.str.34, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/spi/spi-tle62x0.c", i32 185, i32 8}
!87 = !{ptr @dev_attr_gpio6, !86, !"dev_attr_gpio6", i1 false, i1 false}
!88 = !{ptr @.str.35, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/spi/spi-tle62x0.c", i32 187, i32 8}
!90 = !{ptr @dev_attr_gpio7, !89, !"dev_attr_gpio7", i1 false, i1 false}
!91 = !{ptr @.str.36, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/spi/spi-tle62x0.c", i32 189, i32 8}
!93 = !{ptr @dev_attr_gpio8, !92, !"dev_attr_gpio8", i1 false, i1 false}
!94 = !{ptr @.str.37, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/spi/spi-tle62x0.c", i32 191, i32 8}
!96 = !{ptr @dev_attr_gpio9, !95, !"dev_attr_gpio9", i1 false, i1 false}
!97 = !{ptr @.str.38, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/spi/spi-tle62x0.c", i32 193, i32 8}
!99 = !{ptr @dev_attr_gpio10, !98, !"dev_attr_gpio10", i1 false, i1 false}
!100 = !{ptr @.str.39, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/spi/spi-tle62x0.c", i32 195, i32 8}
!102 = !{ptr @dev_attr_gpio11, !101, !"dev_attr_gpio11", i1 false, i1 false}
!103 = !{ptr @.str.40, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/spi/spi-tle62x0.c", i32 197, i32 8}
!105 = !{ptr @dev_attr_gpio12, !104, !"dev_attr_gpio12", i1 false, i1 false}
!106 = !{ptr @.str.41, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/spi/spi-tle62x0.c", i32 199, i32 8}
!108 = !{ptr @dev_attr_gpio13, !107, !"dev_attr_gpio13", i1 false, i1 false}
!109 = !{ptr @.str.42, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/spi/spi-tle62x0.c", i32 201, i32 8}
!111 = !{ptr @dev_attr_gpio14, !110, !"dev_attr_gpio14", i1 false, i1 false}
!112 = !{ptr @.str.43, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/spi/spi-tle62x0.c", i32 203, i32 8}
!114 = !{ptr @dev_attr_gpio15, !113, !"dev_attr_gpio15", i1 false, i1 false}
!115 = !{ptr @.str.44, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/spi/spi-tle62x0.c", i32 205, i32 8}
!117 = !{ptr @dev_attr_gpio16, !116, !"dev_attr_gpio16", i1 false, i1 false}
!118 = !{i32 1, !"wchar_size", i32 2}
!119 = !{i32 1, !"min_enum_size", i32 4}
!120 = !{i32 8, !"branch-target-enforcement", i32 0}
!121 = !{i32 8, !"sign-return-address", i32 0}
!122 = !{i32 8, !"sign-return-address-all", i32 0}
!123 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!124 = !{i32 7, !"uwtable", i32 1}
!125 = !{i32 7, !"frame-pointer", i32 2}
!126 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!127 = !{i64 2148282700, i64 2148282705, i64 2148282718, i64 2148282762, i64 2148282796, i64 2148282817}
!128 = !{!"auto-init"}
