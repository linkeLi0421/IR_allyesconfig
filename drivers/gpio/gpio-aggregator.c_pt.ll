; ModuleID = '/llk/IR_all_yes/drivers/gpio/gpio-aggregator.c_pt.bc'
source_filename = "../drivers/gpio/gpio-aggregator.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
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
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.driver_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.gpio_aggregator = type { ptr, ptr, [0 x i8] }
%struct.gpiod_lookup_table = type { %struct.list_head, ptr, [0 x %struct.gpiod_lookup] }
%struct.gpiod_lookup = type { ptr, i16, ptr, i32, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.68, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.68 = type { ptr }
%struct.gpiochip_fwd = type { %struct.gpio_chip, ptr, %union.anon.69, [0 x i32] }
%union.anon.69 = type { %struct.mutex }
%struct.platform_device_info = type { ptr, ptr, i8, ptr, i32, ptr, i32, ptr, i32, i64, ptr }

@gpio_aggregator_lock = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @gpio_aggregator_lock, i64 52), ptr getelementptr (i8, ptr @gpio_aggregator_lock, i64 52) }, ptr @gpio_aggregator_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@gpio_aggregator_idr = internal global { %struct.idr, [36 x i8] } { %struct.idr { %struct.xarray { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.2, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, i32 67108868, ptr null }, i32 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@__initcall__kmod_gpio_aggregator__224_525_gpio_aggregator_init6 = internal global ptr @gpio_aggregator_init, section ".initcall6.init", align 4
@gpio_aggregator_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @gpio_aggregator_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.3, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @gpio_aggregator_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @gpio_aggregator_groups, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_gpio_aggregator_exit = internal global ptr @gpio_aggregator_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author225 = internal constant [68 x i8] c"gpio_aggregator.author=Geert Uytterhoeven <geert+renesas@glider.be>\00", section ".modinfo", align 1
@__UNIQUE_ID_description226 = internal constant [44 x i8] c"gpio_aggregator.description=GPIO Aggregator\00", section ".modinfo", align 1
@__UNIQUE_ID_file227 = internal constant [50 x i8] c"gpio_aggregator.file=drivers/gpio/gpio-aggregator\00", section ".modinfo", align 1
@__UNIQUE_ID_license228 = internal constant [31 x i8] c"gpio_aggregator.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"gpio_aggregator_lock.wait_lock\00", [33 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"gpio_aggregator_lock\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"gpio_aggregator_idr.xa_lock\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"gpio-aggregator\00", [16 x i8] zeroinitializer }, align 32
@gpio_aggregator_dt_ids = internal constant { [1 x %struct.of_device_id], [60 x i8] } zeroinitializer, align 32
@gpio_aggregator_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @gpio_aggregator_group, ptr null], [24 x i8] zeroinitializer }, align 32
@gpiochip_fwd_create.__UNIQUE_ID_ddebug223 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, i8 0, i8 108, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"gpio_aggregator\00", [16 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"gpiochip_fwd_create\00", [44 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/gpio/gpio-aggregator.c\00", [33 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%u => gpio %d irq %d\0A\00", [42 x i8] zeroinitializer }, align 32
@gpiochip_fwd_create.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&fwd->mlock\00", [20 x i8] zeroinitializer }, align 32
@gpiochip_fwd_create.__key.9 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&fwd->slock\00", [20 x i8] zeroinitializer }, align 32
@gpiochip_fwd_create.lock_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@gpiochip_fwd_create.request_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@gpio_aggregator_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @gpio_aggregator_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@gpio_aggregator_attrs = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @driver_attr_new_device, ptr @driver_attr_delete_device, ptr null], [20 x i8] zeroinitializer }, align 32
@driver_attr_new_device = internal global { %struct.driver_attribute, [36 x i8] } { %struct.driver_attribute { %struct.attribute { ptr @.str.11, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @new_device_store }, [36 x i8] zeroinitializer }, align 32
@driver_attr_delete_device = internal global { %struct.driver_attribute, [36 x i8] } { %struct.driver_attribute { %struct.attribute { ptr @.str.18, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @delete_device_store }, [36 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"new_device\00", [21 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s.%d\00", [26 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@aggr_parse._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.6, i32 89, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013gpio-aggregator: Cannot parse %s: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"aggr_parse\00", [21 x i8] zeroinitializer }, align 32
@aggr_parse._entry_ptr = internal global ptr @aggr_parse._entry, section ".printk_index", align 4
@aggr_parse._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.14, ptr @.str.6, i32 103, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013gpio-aggregator: No GPIOs specified\0A\00", [57 x i8] zeroinitializer }, align 32
@aggr_parse._entry_ptr.17 = internal global ptr @aggr_parse._entry.15, section ".printk_index", align 4
@.str.18 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"delete_device\00", [18 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"gpio-aggregator.\00", [47 x i8] zeroinitializer }, align 32
@___asan_gen_.20 = private unnamed_addr constant [21 x i8] c"gpio_aggregator_lock\00", align 1
@___asan_gen_.23 = private unnamed_addr constant [20 x i8] c"gpio_aggregator_idr\00", align 1
@___asan_gen_.26 = private unnamed_addr constant [23 x i8] c"gpio_aggregator_driver\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 512, i32 31 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 37, i32 8 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 38, i32 8 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 515, i32 11 }
@___asan_gen_.41 = private unnamed_addr constant [23 x i8] c"gpio_aggregator_dt_ids\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 502, i32 34 }
@___asan_gen_.44 = private unnamed_addr constant [23 x i8] c"gpio_aggregator_groups\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 431, i32 3 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 456, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 458, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant [9 x i8] c"lock_key\00", align 1
@___asan_gen_.74 = private unnamed_addr constant [12 x i8] c"request_key\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 460, i32 10 }
@___asan_gen_.77 = private unnamed_addr constant [22 x i8] c"gpio_aggregator_group\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 219, i32 1 }
@___asan_gen_.80 = private unnamed_addr constant [22 x i8] c"gpio_aggregator_attrs\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 214, i32 26 }
@___asan_gen_.83 = private unnamed_addr constant [23 x i8] c"driver_attr_new_device\00", align 1
@___asan_gen_.86 = private unnamed_addr constant [26 x i8] c"driver_attr_delete_device\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 178, i32 8 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 142, i32 48 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 89, i32 4 }
@___asan_gen_.104 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 103, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 212, i32 8 }
@___asan_gen_.113 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.114 = private constant [34 x i8] c"../drivers/gpio/gpio-aggregator.c\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 196, i32 27 }
@llvm.compiler.used = appending global [43 x ptr] [ptr @__UNIQUE_ID_author225, ptr @__UNIQUE_ID_description226, ptr @__UNIQUE_ID_file227, ptr @__UNIQUE_ID_license228, ptr @__exitcall_gpio_aggregator_exit, ptr @__initcall__kmod_gpio_aggregator__224_525_gpio_aggregator_init6, ptr @aggr_parse._entry, ptr @aggr_parse._entry.15, ptr @aggr_parse._entry_ptr, ptr @aggr_parse._entry_ptr.17, ptr @gpio_aggregator_exit, ptr @gpio_aggregator_idr_remove, ptr @gpio_aggregator_remove_all, ptr @gpio_aggregator_lock, ptr @gpio_aggregator_idr, ptr @gpio_aggregator_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @gpio_aggregator_dt_ids, ptr @gpio_aggregator_groups, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @gpiochip_fwd_create.__key, ptr @.str.8, ptr @gpiochip_fwd_create.__key.9, ptr @.str.10, ptr @gpiochip_fwd_create.lock_key, ptr @gpiochip_fwd_create.request_key, ptr @gpio_aggregator_group, ptr @gpio_aggregator_attrs, ptr @driver_attr_new_device, ptr @driver_attr_delete_device, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.18, ptr @.str.19], section "llvm.metadata"
@0 = internal global [32 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_aggregator_lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_aggregator_idr to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_aggregator_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_aggregator_dt_ids to i32), i32 196, i32 256, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_aggregator_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpiochip_fwd_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpiochip_fwd_create.__key.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpiochip_fwd_create.lock_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpiochip_fwd_create.request_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_aggregator_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_aggregator_attrs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @driver_attr_new_device to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @driver_attr_delete_device to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aggr_parse._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aggr_parse._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @gpio_aggregator_idr_remove(i32 noundef %id, ptr noundef %p, ptr nocapture noundef readnone %data) #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @gpio_aggregator_free(ptr noundef %p)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @gpio_aggregator_free(ptr noundef %aggr) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev = getelementptr inbounds %struct.gpio_aggregator, ptr %aggr, i32 0, i32 1
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 4
  tail call void @platform_device_unregister(ptr noundef %1) #10
  %2 = ptrtoint ptr %aggr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %aggr, align 4
  tail call void @gpiod_remove_lookup_table(ptr noundef %3) #10
  %4 = ptrtoint ptr %aggr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %aggr, align 4
  %dev_id = getelementptr inbounds %struct.gpiod_lookup_table, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev_id, align 4
  tail call void @kfree(ptr noundef %7) #10
  %8 = ptrtoint ptr %aggr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %aggr, align 4
  tail call void @kfree(ptr noundef %9) #10
  tail call void @kfree(ptr noundef %aggr) #10
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @gpio_aggregator_remove_all() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mutex_lock_nested(ptr noundef nonnull @gpio_aggregator_lock, i32 noundef 0) #10
  %call = tail call i32 @idr_for_each(ptr noundef nonnull @gpio_aggregator_idr, ptr noundef nonnull @gpio_aggregator_idr_remove, ptr noundef null) #10
  tail call void @idr_destroy(ptr noundef nonnull @gpio_aggregator_idr) #10
  tail call void @mutex_unlock(ptr noundef nonnull @gpio_aggregator_lock) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @idr_for_each(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @idr_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @gpio_aggregator_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @gpio_aggregator_driver, ptr noundef null) #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @gpio_aggregator_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @gpio_aggregator_remove_all() #13
  tail call void @platform_driver_unregister(ptr noundef nonnull @gpio_aggregator_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_remove_lookup_table(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpio_aggregator_probe(ptr noundef %pdev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call i32 @gpiod_count(ptr noundef %dev1, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %call, i32 4) #10
  %1 = extractvalue { i32, i1 } %0, 1
  br i1 %1, label %if.end.cleanup_crit_edge, label %devm_kmalloc_array.exit, !prof !72

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

devm_kmalloc_array.exit:                          ; preds = %if.end
  %2 = extractvalue { i32, i1 } %0, 0
  %call5.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef %2, i32 noundef 3264) #10
  %tobool.not = icmp eq ptr %call5.i, null
  br i1 %tobool.not, label %devm_kmalloc_array.exit.cleanup_crit_edge, label %for.cond.preheader

devm_kmalloc_array.exit.cleanup_crit_edge:        ; preds = %devm_kmalloc_array.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond.preheader:                               ; preds = %devm_kmalloc_array.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp544.not = icmp eq i32 %call, 0
  br i1 %cmp544.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.045, 1
  %exitcond.not = icmp eq i32 %inc, %call
  br i1 %exitcond.not, label %for.cond.for.end_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.045 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %call6 = tail call ptr @devm_gpiod_get_index(ptr noundef %dev1, ptr noundef null, i32 noundef %i.045, i32 noundef 0) #10
  %arrayidx = getelementptr ptr, ptr %call5.i, i32 %i.045
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call6, ptr %arrayidx, align 4
  %cmp.i = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then9, label %for.cond

if.then9:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %call6 to i32
  br label %cleanup

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %call13 = tail call fastcc ptr @gpiochip_fwd_create(ptr noundef %dev1, i32 noundef %call, ptr noundef nonnull %call5.i)
  %cmp.i41 = icmp ugt ptr %call13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i41, label %if.then15, label %if.end17

if.then15:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %5 = ptrtoint ptr %call13 to i32
  br label %cleanup

if.end17:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call13, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %if.then15, %if.then9, %devm_kmalloc_array.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %4, %if.then9 ], [ %5, %if.then15 ], [ 0, %if.end17 ], [ %call, %entry.cleanup_crit_edge ], [ -12, %devm_kmalloc_array.exit.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_count(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_index(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @gpiochip_fwd_create(ptr noundef %dev, i32 noundef %ngpios, ptr noundef %descs) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %init_name.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.dev_name.exit_crit_edge

entry.dev_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_name.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %entry.dev_name.exit_crit_edge
  %retval.0.i94 = phi ptr [ %3, %if.end.i ], [ %1, %entry.dev_name.exit_crit_edge ]
  %sub = add i32 %ngpios, 31
  %div93 = lshr i32 %sub, 5
  %add1 = add i32 %div93, %ngpios
  %4 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add1, i32 4) #10
  %5 = extractvalue { i32, i1 } %4, 1
  %6 = extractvalue { i32, i1 } %4, 0
  %spec.select.i = tail call i32 @llvm.uadd.sat.i32(i32 %6, i32 444) #10
  %retval.0.i95 = select i1 %5, i32 -1, i32 %spec.select.i
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %retval.0.i95, i32 noundef 3520) #10
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %dev_name.exit.cleanup_crit_edge, label %for.cond.preheader

dev_name.exit.cleanup_crit_edge:                  ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond.preheader:                               ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ngpios)
  %cmp97.not = icmp eq i32 %ngpios, 0
  br i1 %cmp97.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %can_sleep = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 23
  %set_config26 = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 14
  br label %for.body

for.body:                                         ; preds = %if.end27.for.body_crit_edge, %for.body.lr.ph
  %i.098 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end27.for.body_crit_edge ]
  %arrayidx = getelementptr ptr, ptr %descs, i32 %i.098
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx, align 4
  %call6 = tail call ptr @gpiod_to_chip(ptr noundef %8) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gpiochip_fwd_create.__UNIQUE_ID_ddebug223, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@gpiochip_fwd_create, %do.end)) #10
          to label %if.then12 [label %do.end], !srcloc !73

if.then12:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx, align 4
  %call14 = tail call i32 @desc_to_gpio(ptr noundef %10) #10
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx, align 4
  %call16 = tail call i32 @gpiod_to_irq(ptr noundef %12) #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @gpiochip_fwd_create.__UNIQUE_ID_ddebug223, ptr noundef %dev, ptr noundef nonnull @.str.7, i32 noundef %i.098, i32 noundef %call14, i32 noundef %call16) #10
  br label %do.end

do.end:                                           ; preds = %if.then12, %for.body
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx, align 4
  %call19 = tail call i32 @gpiod_cansleep(ptr noundef %14) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %do.end.if.end22_crit_edge, label %if.then21

do.end.if.end22_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22

if.then21:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %15 = ptrtoint ptr %can_sleep to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %can_sleep, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %do.end.if.end22_crit_edge
  %tobool23.not = icmp eq ptr %call6, null
  br i1 %tobool23.not, label %if.end22.if.end27_crit_edge, label %land.lhs.true

if.end22.if.end27_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

land.lhs.true:                                    ; preds = %if.end22
  %set_config = getelementptr inbounds %struct.gpio_chip, ptr %call6, i32 0, i32 14
  %16 = ptrtoint ptr %set_config to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %set_config, align 4
  %tobool24.not = icmp eq ptr %17, null
  br i1 %tobool24.not, label %land.lhs.true.if.end27_crit_edge, label %if.then25

land.lhs.true.if.end27_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

if.then25:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %18 = ptrtoint ptr %set_config26 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @gpio_fwd_set_config, ptr %set_config26, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.then25, %land.lhs.true.if.end27_crit_edge, %if.end22.if.end27_crit_edge
  %inc = add nuw i32 %i.098, 1
  %exitcond.not = icmp eq i32 %inc, %ngpios
  br i1 %exitcond.not, label %if.end27.for.end_crit_edge, label %if.end27.for.body_crit_edge

if.end27.for.body_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

if.end27.for.end_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %if.end27.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %19 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %retval.0.i94, ptr %call.i, align 4
  %parent29 = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 2
  %20 = ptrtoint ptr %parent29 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %dev, ptr %parent29, align 4
  %owner = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 4
  %21 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %owner, align 4
  %get_direction = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 7
  %22 = ptrtoint ptr %get_direction to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @gpio_fwd_get_direction, ptr %get_direction, align 4
  %direction_input = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 8
  %23 = ptrtoint ptr %direction_input to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @gpio_fwd_direction_input, ptr %direction_input, align 4
  %direction_output = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 9
  %24 = ptrtoint ptr %direction_output to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @gpio_fwd_direction_output, ptr %direction_output, align 4
  %get = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 10
  %25 = ptrtoint ptr %get to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @gpio_fwd_get, ptr %get, align 4
  %get_multiple = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 11
  %26 = ptrtoint ptr %get_multiple to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @gpio_fwd_get_multiple_locked, ptr %get_multiple, align 4
  %set = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 12
  %27 = ptrtoint ptr %set to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @gpio_fwd_set, ptr %set, align 4
  %set_multiple = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 13
  %28 = ptrtoint ptr %set_multiple to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @gpio_fwd_set_multiple_locked, ptr %set_multiple, align 4
  %to_irq = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 15
  %29 = ptrtoint ptr %to_irq to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @gpio_fwd_to_irq, ptr %to_irq, align 4
  %base = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 19
  %30 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 -1, ptr %base, align 4
  %conv = trunc i32 %ngpios to i16
  %ngpio = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 20
  %31 = ptrtoint ptr %ngpio to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %conv, ptr %ngpio, align 4
  %descs30 = getelementptr inbounds %struct.gpiochip_fwd, ptr %call.i, i32 0, i32 1
  %32 = ptrtoint ptr %descs30 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %descs, ptr %descs30, align 4
  %can_sleep31 = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 23
  %33 = ptrtoint ptr %can_sleep31 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %can_sleep31, align 4, !range !74
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool32.not = icmp eq i8 %34, 0
  %35 = getelementptr inbounds %struct.gpiochip_fwd, ptr %call.i, i32 0, i32 2
  br i1 %tobool32.not, label %do.body37, label %do.body34

do.body34:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__mutex_init(ptr noundef %35, ptr noundef nonnull @.str.8, ptr noundef nonnull @gpiochip_fwd_create.__key) #10
  br label %if.end41

do.body37:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__raw_spin_lock_init(ptr noundef %35, ptr noundef nonnull @.str.10, ptr noundef nonnull @gpiochip_fwd_create.__key.9, i16 noundef signext 3) #10
  br label %if.end41

if.end41:                                         ; preds = %do.body37, %do.body34
  %call43 = tail call i32 @devm_gpiochip_add_data_with_key(ptr noundef %dev, ptr noundef nonnull %call.i, ptr noundef nonnull %call.i, ptr noundef nonnull @gpiochip_fwd_create.lock_key, ptr noundef nonnull @gpiochip_fwd_create.request_key) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  %36 = inttoptr i32 %call43 to ptr
  %spec.select = select i1 %tobool44.not, ptr %call.i, ptr %36
  br label %cleanup

cleanup:                                          ; preds = %if.end41, %dev_name.exit.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -12 to ptr), %dev_name.exit.cleanup_crit_edge ], [ %spec.select, %if.end41 ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiod_to_chip(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @desc_to_gpio(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_to_irq(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_cansleep(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpio_fwd_set_config(ptr noundef %chip, i32 noundef %offset, i32 noundef %config) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #10
  %descs = getelementptr inbounds %struct.gpiochip_fwd, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %descs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %descs, align 4
  %arrayidx = getelementptr ptr, ptr %1, i32 %offset
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %call1 = tail call i32 @gpiod_set_config(ptr noundef %3, i32 noundef %config) #10
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpio_fwd_get_direction(ptr noundef %chip, i32 noundef %offset) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #10
  %descs = getelementptr inbounds %struct.gpiochip_fwd, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %descs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %descs, align 4
  %arrayidx = getelementptr ptr, ptr %1, i32 %offset
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %call1 = tail call i32 @gpiod_get_direction(ptr noundef %3) #10
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpio_fwd_direction_input(ptr noundef %chip, i32 noundef %offset) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #10
  %descs = getelementptr inbounds %struct.gpiochip_fwd, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %descs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %descs, align 4
  %arrayidx = getelementptr ptr, ptr %1, i32 %offset
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %call1 = tail call i32 @gpiod_direction_input(ptr noundef %3) #10
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpio_fwd_direction_output(ptr noundef %chip, i32 noundef %offset, i32 noundef %value) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #10
  %descs = getelementptr inbounds %struct.gpiochip_fwd, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %descs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %descs, align 4
  %arrayidx = getelementptr ptr, ptr %1, i32 %offset
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %call1 = tail call i32 @gpiod_direction_output(ptr noundef %3, i32 noundef %value) #10
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpio_fwd_get(ptr noundef %chip, i32 noundef %offset) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #10
  %can_sleep = getelementptr inbounds %struct.gpio_chip, ptr %chip, i32 0, i32 23
  %0 = ptrtoint ptr %can_sleep to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %can_sleep, align 4, !range !74
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  %descs2 = getelementptr inbounds %struct.gpiochip_fwd, ptr %call, i32 0, i32 1
  %2 = ptrtoint ptr %descs2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %descs2, align 4
  %arrayidx3 = getelementptr ptr, ptr %3, i32 %offset
  %4 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx3, align 4
  br i1 %tobool.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1 = tail call i32 @gpiod_get_value_cansleep(ptr noundef %5) #10
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call4 = tail call i32 @gpiod_get_value(ptr noundef %5) #10
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call1, %cond.true ], [ %call4, %cond.false ]
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpio_fwd_get_multiple_locked(ptr noundef %chip, ptr noundef %mask, ptr nocapture noundef %bits) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #10
  %can_sleep = getelementptr inbounds %struct.gpio_chip, ptr %chip, i32 0, i32 23
  %0 = ptrtoint ptr %can_sleep to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %can_sleep, align 4, !range !74
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  %2 = getelementptr inbounds %struct.gpiochip_fwd, ptr %call, i32 0, i32 2
  br i1 %tobool.not, label %do.body2, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mutex_lock_nested(ptr noundef %2, i32 noundef 0) #10
  %call1 = tail call fastcc i32 @gpio_fwd_get_multiple(ptr noundef %call, ptr noundef %mask, ptr noundef %bits)
  tail call void @mutex_unlock(ptr noundef %2) #10
  br label %if.end

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #10
  %call7 = tail call fastcc i32 @gpio_fwd_get_multiple(ptr noundef %call, ptr noundef %mask, ptr noundef %bits)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %call4) #10
  br label %if.end

if.end:                                           ; preds = %do.body2, %if.then
  %error.0 = phi i32 [ %call1, %if.then ], [ %call7, %do.body2 ]
  ret i32 %error.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gpio_fwd_set(ptr noundef %chip, i32 noundef %offset, i32 noundef %value) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #10
  %can_sleep = getelementptr inbounds %struct.gpio_chip, ptr %chip, i32 0, i32 23
  %0 = ptrtoint ptr %can_sleep to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %can_sleep, align 4, !range !74
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  %descs1 = getelementptr inbounds %struct.gpiochip_fwd, ptr %call, i32 0, i32 1
  %2 = ptrtoint ptr %descs1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %descs1, align 4
  %arrayidx2 = getelementptr ptr, ptr %3, i32 %offset
  %4 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx2, align 4
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @gpiod_set_value_cansleep(ptr noundef %5, i32 noundef %value) #10
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @gpiod_set_value(ptr noundef %5, i32 noundef %value) #10
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gpio_fwd_set_multiple_locked(ptr noundef %chip, ptr noundef %mask, ptr noundef %bits) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #10
  %can_sleep = getelementptr inbounds %struct.gpio_chip, ptr %chip, i32 0, i32 23
  %0 = ptrtoint ptr %can_sleep to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %can_sleep, align 4, !range !74
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  %2 = getelementptr inbounds %struct.gpiochip_fwd, ptr %call, i32 0, i32 2
  br i1 %tobool.not, label %do.body1, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mutex_lock_nested(ptr noundef %2, i32 noundef 0) #10
  tail call fastcc void @gpio_fwd_set_multiple(ptr noundef %call, ptr noundef %mask, ptr noundef %bits)
  tail call void @mutex_unlock(ptr noundef %2) #10
  br label %if.end

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #10
  tail call fastcc void @gpio_fwd_set_multiple(ptr noundef %call, ptr noundef %mask, ptr noundef %bits)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %call3) #10
  br label %if.end

if.end:                                           ; preds = %do.body1, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpio_fwd_to_irq(ptr noundef %chip, i32 noundef %offset) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #10
  %descs = getelementptr inbounds %struct.gpiochip_fwd, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %descs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %descs, align 4
  %arrayidx = getelementptr ptr, ptr %1, i32 %offset
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %call1 = tail call i32 @gpiod_to_irq(ptr noundef %3) #10
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_gpiochip_add_data_with_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_get_data(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_set_config(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_get_direction(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_direction_input(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_direction_output(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_get_value_cansleep(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_get_value(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gpio_fwd_get_multiple(ptr noundef %fwd, ptr noundef %mask, ptr nocapture noundef %bits) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tmp = getelementptr inbounds %struct.gpiochip_fwd, ptr %fwd, i32 0, i32 3
  %ngpio = getelementptr inbounds %struct.gpio_chip, ptr %fwd, i32 0, i32 20
  %0 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %ngpio, align 4
  %conv = zext i16 %1 to i32
  %sub = add nuw nsw i32 %conv, 31
  %div80 = lshr i32 %sub, 5
  %arrayidx = getelementptr %struct.gpiochip_fwd, ptr %fwd, i32 0, i32 3, i32 %div80
  tail call void @__bitmap_clear(ptr noundef %tmp, i32 noundef 0, i32 noundef %conv) #10
  %2 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %ngpio, align 4
  %conv8 = zext i16 %3 to i32
  %call = tail call i32 @_find_next_bit_be(ptr noundef %mask, i32 noundef %conv8, i32 noundef 0) #10
  %4 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %ngpio, align 4
  %conv1183 = zext i16 %5 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %conv1183)
  %cmp84 = icmp ult i32 %call, %conv1183
  br i1 %cmp84, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %descs13 = getelementptr inbounds %struct.gpiochip_fwd, ptr %fwd, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %j.086 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %i.085 = phi i32 [ %call, %for.body.lr.ph ], [ %call20, %for.body.for.body_crit_edge ]
  %6 = ptrtoint ptr %descs13 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %descs13, align 4
  %arrayidx14 = getelementptr ptr, ptr %7, i32 %i.085
  %8 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx14, align 4
  %inc = add i32 %j.086, 1
  %arrayidx15 = getelementptr ptr, ptr %arrayidx, i32 %j.086
  %10 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %arrayidx15, align 4
  %11 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %ngpio, align 4
  %conv18 = zext i16 %12 to i32
  %add19 = add nuw i32 %i.085, 1
  %call20 = tail call i32 @_find_next_bit_be(ptr noundef %mask, i32 noundef %conv18, i32 noundef %add19) #10
  %13 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %ngpio, align 4
  %conv11 = zext i16 %14 to i32
  %cmp = icmp ult i32 %call20, %conv11
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %j.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %inc, %for.body.for.end_crit_edge ]
  %can_sleep = getelementptr inbounds %struct.gpio_chip, ptr %fwd, i32 0, i32 23
  %15 = ptrtoint ptr %can_sleep to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %can_sleep, align 4, !range !74
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not = icmp eq i8 %16, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %call22 = tail call i32 @gpiod_get_array_value_cansleep(i32 noundef %j.0.lcssa, ptr noundef %arrayidx, ptr noundef null, ptr noundef %tmp) #10
  br label %if.end

if.else:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %call23 = tail call i32 @gpiod_get_array_value(i32 noundef %j.0.lcssa, ptr noundef %arrayidx, ptr noundef null, ptr noundef %tmp) #10
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %error.0 = phi i32 [ %call22, %if.then ], [ %call23, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %error.0)
  %tobool24.not = icmp eq i32 %error.0, 0
  br i1 %tobool24.not, label %if.end26, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end26:                                         ; preds = %if.end
  %17 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %ngpio, align 4
  %conv29 = zext i16 %18 to i32
  %call30 = tail call i32 @_find_next_bit_be(ptr noundef %mask, i32 noundef %conv29, i32 noundef 0) #10
  %19 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %ngpio, align 4
  %conv3487 = zext i16 %20 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call30, i32 %conv3487)
  %cmp3588 = icmp ult i32 %call30, %conv3487
  br i1 %cmp3588, label %if.end26.for.body37_crit_edge, label %if.end26.cleanup_crit_edge

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end26.for.body37_crit_edge:                    ; preds = %if.end26
  br label %for.body37

for.body37:                                       ; preds = %__assign_bit.exit.for.body37_crit_edge, %if.end26.for.body37_crit_edge
  %j.190 = phi i32 [ %inc38, %__assign_bit.exit.for.body37_crit_edge ], [ 0, %if.end26.for.body37_crit_edge ]
  %i.189 = phi i32 [ %call46, %__assign_bit.exit.for.body37_crit_edge ], [ %call30, %if.end26.for.body37_crit_edge ]
  %inc38 = add i32 %j.190, 1
  %div3.i = lshr i32 %j.190, 5
  %arrayidx.i = getelementptr i32, ptr %tmp, i32 %div3.i
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %j.190, 31
  %23 = shl nuw i32 1, %and.i
  %24 = and i32 %22, %23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool40.not = icmp eq i32 %24, 0
  %rem.i.i = and i32 %i.189, 31
  %shl.i.i = shl nuw i32 1, %rem.i.i
  %div2.i.i = lshr i32 %i.189, 5
  %add.ptr.i.i = getelementptr i32, ptr %bits, i32 %div2.i.i
  br i1 %tobool40.not, label %if.else.i, label %if.then.i81

if.then.i81:                                      ; preds = %for.body37
  call void @__sanitizer_cov_trace_pc() #12
  %25 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %add.ptr.i.i, align 4
  %or.i.i = or i32 %26, %shl.i.i
  br label %__assign_bit.exit

if.else.i:                                        ; preds = %for.body37
  call void @__sanitizer_cov_trace_pc() #12
  %neg.i.i = xor i32 %shl.i.i, -1
  %27 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %add.ptr.i.i, align 4
  %and.i.i82 = and i32 %28, %neg.i.i
  br label %__assign_bit.exit

__assign_bit.exit:                                ; preds = %if.else.i, %if.then.i81
  %and.i.sink.i = phi i32 [ %and.i.i82, %if.else.i ], [ %or.i.i, %if.then.i81 ]
  %29 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %and.i.sink.i, ptr %add.ptr.i.i, align 4
  %30 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %ngpio, align 4
  %conv44 = zext i16 %31 to i32
  %add45 = add nuw i32 %i.189, 1
  %call46 = tail call i32 @_find_next_bit_be(ptr noundef %mask, i32 noundef %conv44, i32 noundef %add45) #10
  %32 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %ngpio, align 4
  %conv34 = zext i16 %33 to i32
  %cmp35 = icmp ult i32 %call46, %conv34
  br i1 %cmp35, label %__assign_bit.exit.for.body37_crit_edge, label %__assign_bit.exit.cleanup_crit_edge

__assign_bit.exit.cleanup_crit_edge:              ; preds = %__assign_bit.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

__assign_bit.exit.for.body37_crit_edge:           ; preds = %__assign_bit.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body37

cleanup:                                          ; preds = %__assign_bit.exit.cleanup_crit_edge, %if.end26.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %error.0, %if.end.cleanup_crit_edge ], [ 0, %if.end26.cleanup_crit_edge ], [ 0, %__assign_bit.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_get_array_value_cansleep(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_get_array_value(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bitmap_clear(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @gpio_fwd_set_multiple(ptr noundef %fwd, ptr noundef %mask, ptr noundef %bits) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tmp = getelementptr inbounds %struct.gpiochip_fwd, ptr %fwd, i32 0, i32 3
  %ngpio = getelementptr inbounds %struct.gpio_chip, ptr %fwd, i32 0, i32 20
  %0 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %ngpio, align 4
  %conv = zext i16 %1 to i32
  %sub = add nuw nsw i32 %conv, 31
  %div41 = lshr i32 %sub, 5
  %arrayidx = getelementptr %struct.gpiochip_fwd, ptr %fwd, i32 0, i32 3, i32 %div41
  %call = tail call i32 @_find_next_bit_be(ptr noundef %mask, i32 noundef %conv, i32 noundef 0) #10
  %2 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %ngpio, align 4
  %conv842 = zext i16 %3 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %conv842)
  %cmp43 = icmp ult i32 %call, %conv842
  br i1 %cmp43, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %descs11 = getelementptr inbounds %struct.gpiochip_fwd, ptr %fwd, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %__assign_bit.exit.for.body_crit_edge, %for.body.lr.ph
  %j.045 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %__assign_bit.exit.for.body_crit_edge ]
  %i.044 = phi i32 [ %call, %for.body.lr.ph ], [ %call18, %__assign_bit.exit.for.body_crit_edge ]
  %div3.i = lshr i32 %i.044, 5
  %arrayidx.i = getelementptr i32, ptr %bits, i32 %div3.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %i.044, 31
  %6 = shl nuw i32 1, %and.i
  %7 = and i32 %5, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  %rem.i.i = and i32 %j.045, 31
  %shl.i.i = shl nuw i32 1, %rem.i.i
  %div2.i.i = lshr i32 %j.045, 5
  %add.ptr.i.i = getelementptr i32, ptr %tmp, i32 %div2.i.i
  br i1 %tobool.not, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %add.ptr.i.i, align 4
  %or.i.i = or i32 %9, %shl.i.i
  br label %__assign_bit.exit

if.else.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %neg.i.i = xor i32 %shl.i.i, -1
  %10 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %add.ptr.i.i, align 4
  %and.i.i = and i32 %11, %neg.i.i
  br label %__assign_bit.exit

__assign_bit.exit:                                ; preds = %if.else.i, %if.then.i
  %and.i.sink.i = phi i32 [ %and.i.i, %if.else.i ], [ %or.i.i, %if.then.i ]
  %12 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %and.i.sink.i, ptr %add.ptr.i.i, align 4
  %13 = ptrtoint ptr %descs11 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %descs11, align 4
  %arrayidx12 = getelementptr ptr, ptr %14, i32 %i.044
  %15 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx12, align 4
  %inc = add i32 %j.045, 1
  %arrayidx13 = getelementptr ptr, ptr %arrayidx, i32 %j.045
  %17 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %16, ptr %arrayidx13, align 4
  %18 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %ngpio, align 4
  %conv16 = zext i16 %19 to i32
  %add17 = add nuw i32 %i.044, 1
  %call18 = tail call i32 @_find_next_bit_be(ptr noundef %mask, i32 noundef %conv16, i32 noundef %add17) #10
  %20 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %ngpio, align 4
  %conv8 = zext i16 %21 to i32
  %cmp = icmp ult i32 %call18, %conv8
  br i1 %cmp, label %__assign_bit.exit.for.body_crit_edge, label %__assign_bit.exit.for.end_crit_edge

__assign_bit.exit.for.end_crit_edge:              ; preds = %__assign_bit.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

__assign_bit.exit.for.body_crit_edge:             ; preds = %__assign_bit.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %__assign_bit.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %j.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %inc, %__assign_bit.exit.for.end_crit_edge ]
  %can_sleep = getelementptr inbounds %struct.gpio_chip, ptr %fwd, i32 0, i32 23
  %22 = ptrtoint ptr %can_sleep to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %can_sleep, align 4, !range !74
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool20.not = icmp eq i8 %23, 0
  br i1 %tobool20.not, label %if.else, label %if.then

if.then:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %call21 = tail call i32 @gpiod_set_array_value_cansleep(i32 noundef %j.0.lcssa, ptr noundef %arrayidx, ptr noundef null, ptr noundef %tmp) #10
  br label %if.end

if.else:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %call22 = tail call i32 @gpiod_set_array_value(i32 noundef %j.0.lcssa, ptr noundef %arrayidx, ptr noundef null, ptr noundef %tmp) #10
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_set_array_value_cansleep(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_set_array_value(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @new_device_store(ptr nocapture noundef readnone %driver, ptr nocapture noundef readonly %buf, i32 noundef %count) #1 align 64 {
entry:
  %pdevinfo.i.i = alloca %struct.platform_device_info, align 8
  %name.i = alloca ptr, align 4
  %offsets.i = alloca ptr, align 4
  %p.i = alloca ptr, align 4
  %error.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add1 = add i32 %count, 9
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add1, i32 noundef 3520) #14
  %tobool.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %args = getelementptr inbounds %struct.gpio_aggregator, ptr %call9.i.i, i32 0, i32 2
  %add2 = add i32 %count, 1
  %0 = call ptr @memcpy(ptr %args, ptr %buf, i32 %add2)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i65 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 32) #15
  %2 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7.i.i65, ptr %call9.i.i, align 128
  %tobool6.not = icmp eq ptr %call7.i.i65, null
  br i1 %tobool6.not, label %if.end.free_ga_crit_edge, label %if.end8

if.end.free_ga_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %free_ga

if.end8:                                          ; preds = %if.end
  tail call void @mutex_lock_nested(ptr noundef nonnull @gpio_aggregator_lock, i32 noundef 0) #10
  %call9 = tail call i32 @idr_alloc(ptr noundef nonnull @gpio_aggregator_idr, ptr noundef nonnull %call9.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 3264) #10
  tail call void @mutex_unlock(ptr noundef nonnull @gpio_aggregator_lock) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp = icmp slt i32 %call9, 0
  br i1 %cmp, label %if.end8.free_table_crit_edge, label %if.end11

if.end8.free_table_crit_edge:                     ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %free_table

if.end11:                                         ; preds = %if.end8
  %call12 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.3, i32 noundef %call9) #10
  %3 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %call9.i.i, align 128
  %dev_id = getelementptr inbounds %struct.gpiod_lookup_table, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %dev_id to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call12, ptr %dev_id, align 4
  %6 = load ptr, ptr %call9.i.i, align 128
  %dev_id15 = getelementptr inbounds %struct.gpiod_lookup_table, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %dev_id15 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev_id15, align 4
  %tobool16.not = icmp eq ptr %8, null
  br i1 %tobool16.not, label %if.end11.remove_idr_crit_edge, label %if.end18

if.end11.remove_idr_crit_edge:                    ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %remove_idr

if.end18:                                         ; preds = %if.end11
  %call.i = tail call ptr @skip_spaces(ptr noundef %args) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %name.i) #10
  %9 = ptrtoint ptr %name.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 -1 to ptr), ptr %name.i, align 4, !annotation !75
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %offsets.i) #10
  %10 = ptrtoint ptr %offsets.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 -1 to ptr), ptr %offsets.i, align 4, !annotation !75
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %p.i) #10
  %11 = ptrtoint ptr %p.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 -1 to ptr), ptr %p.i, align 4, !annotation !75
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %error.i) #10
  %12 = ptrtoint ptr %error.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %error.i, align 4
  %call2.i = tail call ptr @bitmap_alloc(i32 noundef 2048, i32 noundef 3264) #10
  %tobool.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool.not.i, label %aggr_parse.exit.thread, label %if.end.i

aggr_parse.exit.thread:                           ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %error.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %p.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %offsets.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %name.i) #10
  br label %free_dev_id

if.end.i:                                         ; preds = %if.end18
  %call3.i = call ptr @next_arg(ptr noundef %call.i, ptr noundef nonnull %name.i, ptr noundef nonnull %p.i) #10
  %13 = ptrtoint ptr %call3.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %call3.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool4.not89.i = icmp eq i8 %14, 0
  br i1 %tobool4.not89.i, label %if.end.i.do.end32.i_crit_edge, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  br label %while.body.i

if.end.i.do.end32.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end32.i

while.body.i:                                     ; preds = %while.cond.backedge.i.while.body.i_crit_edge, %if.end.i.while.body.i_crit_edge
  %args.092.i = phi ptr [ %args.0.be.i, %while.cond.backedge.i.while.body.i_crit_edge ], [ %call3.i, %if.end.i.while.body.i_crit_edge ]
  %n.090.i = phi i32 [ %n.0.be.i, %while.cond.backedge.i.while.body.i_crit_edge ], [ 0, %if.end.i.while.body.i_crit_edge ]
  %call5.i = call ptr @next_arg(ptr noundef %args.092.i, ptr noundef nonnull %offsets.i, ptr noundef nonnull %p.i) #10
  %15 = ptrtoint ptr %offsets.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %offsets.i, align 4
  %call6.i = call ptr @get_options(ptr noundef %16, i32 noundef 0, ptr noundef nonnull %error.i) #10
  %17 = ptrtoint ptr %p.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call6.i, ptr %p.i, align 4
  %18 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp.i = icmp eq i32 %19, 0
  br i1 %cmp.i, label %while.body.i.if.then8.i_crit_edge, label %lor.lhs.false.i

while.body.i.if.then8.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then8.i

lor.lhs.false.i:                                  ; preds = %while.body.i
  %20 = ptrtoint ptr %call6.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %call6.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool7.not.i = icmp eq i8 %21, 0
  br i1 %tobool7.not.i, label %if.end13.i, label %lor.lhs.false.i.if.then8.i_crit_edge

lor.lhs.false.i.if.then8.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then8.i

if.then8.i:                                       ; preds = %lor.lhs.false.i.if.then8.i_crit_edge, %while.body.i.if.then8.i_crit_edge
  %22 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %name.i, align 4
  %24 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %call9.i.i, align 128
  %add.i.i = add i32 %n.090.i, 2
  %26 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add.i.i, i32 20) #10
  %27 = extractvalue { i32, i1 } %26, 1
  %28 = extractvalue { i32, i1 } %26, 0
  %spec.select.i.i.i68 = call i32 @llvm.uadd.sat.i32(i32 %28, i32 12) #10
  %retval.0.i.i.i = select i1 %27, i32 -1, i32 %spec.select.i.i.i68
  %call2.i.i = call noalias ptr @krealloc(ptr noundef %25, i32 noundef %retval.0.i.i.i, i32 noundef 3264) #16
  %tobool.not.i.i = icmp eq ptr %call2.i.i, null
  br i1 %tobool.not.i.i, label %aggr_add_gpio.exit.i, label %if.end12.i

aggr_add_gpio.exit.i:                             ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #12
  %29 = ptrtoint ptr %error.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 -12, ptr %error.i, align 4
  br label %aggr_parse.exit

if.end12.i:                                       ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.i.i = getelementptr %struct.gpiod_lookup_table, ptr %call2.i.i, i32 0, i32 2, i32 %n.090.i
  %30 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %23, ptr %arrayidx.i.i, align 4
  %.compoundliteral.sroa.2.0.arrayidx.sroa_idx.i.i = getelementptr inbounds i8, ptr %arrayidx.i.i, i32 4
  %31 = ptrtoint ptr %.compoundliteral.sroa.2.0.arrayidx.sroa_idx.i.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 -1, ptr %.compoundliteral.sroa.2.0.arrayidx.sroa_idx.i.i, align 4
  %.compoundliteral.sroa.37.0.arrayidx.sroa_idx.i.i = getelementptr inbounds i8, ptr %arrayidx.i.i, i32 8
  %32 = ptrtoint ptr %.compoundliteral.sroa.37.0.arrayidx.sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %.compoundliteral.sroa.37.0.arrayidx.sroa_idx.i.i, align 4
  %.compoundliteral.sroa.4.0.arrayidx.sroa_idx.i.i = getelementptr inbounds i8, ptr %arrayidx.i.i, i32 12
  %33 = ptrtoint ptr %.compoundliteral.sroa.4.0.arrayidx.sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %n.090.i, ptr %.compoundliteral.sroa.4.0.arrayidx.sroa_idx.i.i, align 4
  %.compoundliteral.sroa.5.0.arrayidx.sroa_idx.i.i = getelementptr inbounds i8, ptr %arrayidx.i.i, i32 16
  %34 = ptrtoint ptr %.compoundliteral.sroa.5.0.arrayidx.sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %.compoundliteral.sroa.5.0.arrayidx.sroa_idx.i.i, align 4
  %inc.i.i = add i32 %n.090.i, 1
  %arrayidx5.i.i = getelementptr %struct.gpiod_lookup_table, ptr %call2.i.i, i32 0, i32 2, i32 %inc.i.i
  %35 = call ptr @memset(ptr %arrayidx5.i.i, i32 0, i32 20)
  %36 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call2.i.i, ptr %call9.i.i, align 128
  %37 = ptrtoint ptr %error.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %error.i, align 4
  %38 = ptrtoint ptr %offsets.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %offsets.i, align 4
  %40 = ptrtoint ptr %name.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %39, ptr %name.i, align 4
  br label %while.cond.backedge.i

while.cond.backedge.i:                            ; preds = %for.end.i, %if.end12.i
  %n.0.be.i = phi i32 [ %inc.i.i, %if.end12.i ], [ %n.2.lcssa.i, %for.end.i ]
  %args.0.be.i = phi ptr [ %call5.i, %if.end12.i ], [ %call27.i, %for.end.i ]
  %41 = ptrtoint ptr %args.0.be.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %args.0.be.i, align 1
  %tobool4.not.i = icmp eq i8 %42, 0
  br i1 %tobool4.not.i, label %while.end.i, label %while.cond.backedge.i.while.body.i_crit_edge

while.cond.backedge.i.while.body.i_crit_edge:     ; preds = %while.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

if.end13.i:                                       ; preds = %lor.lhs.false.i
  %43 = ptrtoint ptr %offsets.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %offsets.i, align 4
  %call14.i = call i32 @bitmap_parselist(ptr noundef %44, ptr noundef nonnull %call2.i, i32 noundef 2048) #10
  %45 = ptrtoint ptr %error.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %call14.i, ptr %error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %tobool15.not.i = icmp eq i32 %call14.i, 0
  br i1 %tobool15.not.i, label %if.end18.i, label %do.end.i

do.end.i:                                         ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #12
  %46 = ptrtoint ptr %offsets.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %offsets.i, align 4
  %call17.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %47, i32 noundef %call14.i) #17
  br label %aggr_parse.exit

if.end18.i:                                       ; preds = %if.end13.i
  %call19.i = call i32 @_find_next_bit_be(ptr noundef nonnull %call2.i, i32 noundef 2048, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %call19.i)
  %cmp2086.i = icmp ult i32 %call19.i, 2048
  br i1 %cmp2086.i, label %if.end18.i.for.body.i_crit_edge, label %if.end18.i.for.end.i_crit_edge

if.end18.i.for.end.i_crit_edge:                   ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

if.end18.i.for.body.i_crit_edge:                  ; preds = %if.end18.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end18.i.for.body.i_crit_edge
  %i.088.i = phi i32 [ %call26.i, %for.inc.i.for.body.i_crit_edge ], [ %call19.i, %if.end18.i.for.body.i_crit_edge ]
  %n.287.i = phi i32 [ %inc.i64.i, %for.inc.i.for.body.i_crit_edge ], [ %n.090.i, %if.end18.i.for.body.i_crit_edge ]
  %48 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %name.i, align 4
  %50 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %call9.i.i, align 128
  %add.i54.i = add i32 %n.287.i, 2
  %52 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add.i54.i, i32 20) #10
  %53 = extractvalue { i32, i1 } %52, 1
  %54 = extractvalue { i32, i1 } %52, 0
  %spec.select.i.i55.i = call i32 @llvm.uadd.sat.i32(i32 %54, i32 12) #10
  %retval.0.i.i56.i = select i1 %53, i32 -1, i32 %spec.select.i.i55.i
  %call2.i57.i = call noalias ptr @krealloc(ptr noundef %51, i32 noundef %retval.0.i.i56.i, i32 noundef 3264) #16
  %tobool.not.i58.i = icmp eq ptr %call2.i57.i, null
  br i1 %tobool.not.i58.i, label %aggr_add_gpio.exit68.i, label %for.inc.i

aggr_add_gpio.exit68.i:                           ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %55 = ptrtoint ptr %error.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 -12, ptr %error.i, align 4
  br label %aggr_parse.exit

for.inc.i:                                        ; preds = %for.body.i
  %arrayidx.i59.i = getelementptr %struct.gpiod_lookup_table, ptr %call2.i57.i, i32 0, i32 2, i32 %n.287.i
  %conv.i.i = trunc i32 %i.088.i to i16
  %56 = ptrtoint ptr %arrayidx.i59.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %49, ptr %arrayidx.i59.i, align 4
  %.compoundliteral.sroa.2.0.arrayidx.sroa_idx.i60.i = getelementptr inbounds i8, ptr %arrayidx.i59.i, i32 4
  %57 = ptrtoint ptr %.compoundliteral.sroa.2.0.arrayidx.sroa_idx.i60.i to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %conv.i.i, ptr %.compoundliteral.sroa.2.0.arrayidx.sroa_idx.i60.i, align 4
  %.compoundliteral.sroa.37.0.arrayidx.sroa_idx.i61.i = getelementptr inbounds i8, ptr %arrayidx.i59.i, i32 8
  %58 = ptrtoint ptr %.compoundliteral.sroa.37.0.arrayidx.sroa_idx.i61.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr null, ptr %.compoundliteral.sroa.37.0.arrayidx.sroa_idx.i61.i, align 4
  %.compoundliteral.sroa.4.0.arrayidx.sroa_idx.i62.i = getelementptr inbounds i8, ptr %arrayidx.i59.i, i32 12
  %59 = ptrtoint ptr %.compoundliteral.sroa.4.0.arrayidx.sroa_idx.i62.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %n.287.i, ptr %.compoundliteral.sroa.4.0.arrayidx.sroa_idx.i62.i, align 4
  %.compoundliteral.sroa.5.0.arrayidx.sroa_idx.i63.i = getelementptr inbounds i8, ptr %arrayidx.i59.i, i32 16
  %60 = ptrtoint ptr %.compoundliteral.sroa.5.0.arrayidx.sroa_idx.i63.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 0, ptr %.compoundliteral.sroa.5.0.arrayidx.sroa_idx.i63.i, align 4
  %inc.i64.i = add i32 %n.287.i, 1
  %arrayidx5.i65.i = getelementptr %struct.gpiod_lookup_table, ptr %call2.i57.i, i32 0, i32 2, i32 %inc.i64.i
  %61 = call ptr @memset(ptr %arrayidx5.i65.i, i32 0, i32 20)
  %62 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %call2.i57.i, ptr %call9.i.i, align 128
  %63 = ptrtoint ptr %error.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 0, ptr %error.i, align 4
  %add.i = add nuw nsw i32 %i.088.i, 1
  %call26.i = call i32 @_find_next_bit_be(ptr noundef nonnull %call2.i, i32 noundef 2048, i32 noundef %add.i) #10
  %cmp20.i = icmp ult i32 %call26.i, 2048
  br i1 %cmp20.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.for.end.i_crit_edge

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.end18.i.for.end.i_crit_edge
  %n.2.lcssa.i = phi i32 [ %n.090.i, %if.end18.i.for.end.i_crit_edge ], [ %inc.i64.i, %for.inc.i.for.end.i_crit_edge ]
  %call27.i = call ptr @next_arg(ptr noundef %call5.i, ptr noundef nonnull %name.i, ptr noundef nonnull %p.i) #10
  br label %while.cond.backedge.i

while.end.i:                                      ; preds = %while.cond.backedge.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.0.be.i)
  %tobool28.not.i = icmp eq i32 %n.0.be.i, 0
  br i1 %tobool28.not.i, label %while.end.i.do.end32.i_crit_edge, label %while.end.i.aggr_parse.exit_crit_edge

while.end.i.aggr_parse.exit_crit_edge:            ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %aggr_parse.exit

while.end.i.do.end32.i_crit_edge:                 ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end32.i

do.end32.i:                                       ; preds = %while.end.i.do.end32.i_crit_edge, %if.end.i.do.end32.i_crit_edge
  %call34.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #17
  %64 = ptrtoint ptr %error.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 -22, ptr %error.i, align 4
  br label %aggr_parse.exit

aggr_parse.exit:                                  ; preds = %do.end32.i, %while.end.i.aggr_parse.exit_crit_edge, %aggr_add_gpio.exit68.i, %do.end.i, %aggr_add_gpio.exit.i
  call void @bitmap_free(ptr noundef nonnull %call2.i) #10
  %65 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %error.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %error.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %p.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %offsets.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %name.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool20.not = icmp eq i32 %66, 0
  br i1 %tobool20.not, label %if.end22, label %aggr_parse.exit.free_dev_id_crit_edge

aggr_parse.exit.free_dev_id_crit_edge:            ; preds = %aggr_parse.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %free_dev_id

if.end22:                                         ; preds = %aggr_parse.exit
  %67 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %call9.i.i, align 128
  call void @gpiod_add_lookup_table(ptr noundef %68) #10
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %pdevinfo.i.i) #10
  %69 = getelementptr inbounds i8, ptr %pdevinfo.i.i, i32 8
  %70 = call ptr @memset(ptr %69, i32 255, i32 48)
  %71 = ptrtoint ptr %pdevinfo.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr null, ptr %pdevinfo.i.i, align 8
  %fwnode.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 1
  %72 = ptrtoint ptr %fwnode.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr null, ptr %fwnode.i.i, align 4
  %73 = ptrtoint ptr %69 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 0, ptr %69, align 8
  %name2.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 3
  %74 = ptrtoint ptr %name2.i.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr @.str.3, ptr %name2.i.i, align 4
  %id3.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 4
  %75 = ptrtoint ptr %id3.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %call9, ptr %id3.i.i, align 8
  %res4.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 5
  %dma_mask.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 9
  %76 = ptrtoint ptr %dma_mask.i.i to i32
  call void @__asan_store8_noabort(i32 %76)
  store i64 0, ptr %dma_mask.i.i, align 8
  %properties.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 10
  %77 = ptrtoint ptr %properties.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr null, ptr %properties.i.i, align 8
  %78 = call ptr @memset(ptr %res4.i.i, i32 0, i32 16)
  %call.i.i = call ptr @platform_device_register_full(ptr noundef nonnull %pdevinfo.i.i) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %pdevinfo.i.i) #10
  %cmp.i69 = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i69, label %if.then26, label %if.end28

if.then26:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  %79 = ptrtoint ptr %call.i.i to i32
  %80 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %call9.i.i, align 128
  call void @gpiod_remove_lookup_table(ptr noundef %81) #10
  br label %free_dev_id

if.end28:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  %pdev29 = getelementptr inbounds %struct.gpio_aggregator, ptr %call9.i.i, i32 0, i32 1
  %82 = ptrtoint ptr %pdev29 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %call.i.i, ptr %pdev29, align 4
  br label %cleanup

free_dev_id:                                      ; preds = %if.then26, %aggr_parse.exit.free_dev_id_crit_edge, %aggr_parse.exit.thread
  %res.0 = phi i32 [ %66, %aggr_parse.exit.free_dev_id_crit_edge ], [ %79, %if.then26 ], [ -12, %aggr_parse.exit.thread ]
  %83 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %call9.i.i, align 128
  %dev_id32 = getelementptr inbounds %struct.gpiod_lookup_table, ptr %84, i32 0, i32 1
  %85 = ptrtoint ptr %dev_id32 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %dev_id32, align 4
  call void @kfree(ptr noundef %86) #10
  br label %remove_idr

remove_idr:                                       ; preds = %free_dev_id, %if.end11.remove_idr_crit_edge
  %res.1 = phi i32 [ %res.0, %free_dev_id ], [ -12, %if.end11.remove_idr_crit_edge ]
  call void @mutex_lock_nested(ptr noundef nonnull @gpio_aggregator_lock, i32 noundef 0) #10
  %call33 = call ptr @idr_remove(ptr noundef nonnull @gpio_aggregator_idr, i32 noundef %call9) #10
  call void @mutex_unlock(ptr noundef nonnull @gpio_aggregator_lock) #10
  br label %free_table

free_table:                                       ; preds = %remove_idr, %if.end8.free_table_crit_edge
  %res.2 = phi i32 [ %res.1, %remove_idr ], [ %call9, %if.end8.free_table_crit_edge ]
  %87 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %call9.i.i, align 128
  call void @kfree(ptr noundef %88) #10
  br label %free_ga

free_ga:                                          ; preds = %free_table, %if.end.free_ga_crit_edge
  %res.3 = phi i32 [ %res.2, %free_table ], [ -12, %if.end.free_ga_crit_edge ]
  call void @kfree(ptr noundef nonnull %call9.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %free_ga, %if.end28, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %res.3, %free_ga ], [ %count, %if.end28 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @idr_alloc(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_add_lookup_table(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_remove(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skip_spaces(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bitmap_alloc(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @next_arg(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_options(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bitmap_parselist(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @bitmap_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(1)
declare dso_local noalias ptr @krealloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_register_full(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @delete_device_store(ptr nocapture noundef readnone %driver, ptr noundef %buf, i32 noundef %count) #1 align 64 {
entry:
  %id = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %id) #10
  %0 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %id, align 4, !annotation !75
  %call1.i = tail call i32 @strncmp(ptr noundef %buf, ptr noundef nonnull dereferenceable(17) @.str.19, i32 noundef 16) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i.not = icmp eq i32 %call1.i, 0
  br i1 %cmp.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, ptr %buf, i32 16
  %call1 = call i32 @kstrtouint(ptr noundef %add.ptr, i32 noundef 10, ptr noundef nonnull %id) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @mutex_lock_nested(ptr noundef nonnull @gpio_aggregator_lock, i32 noundef 0) #10
  %1 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %id, align 4
  %call5 = call ptr @idr_remove(ptr noundef nonnull @gpio_aggregator_idr, i32 noundef %2) #10
  call void @mutex_unlock(ptr noundef nonnull @gpio_aggregator_lock) #10
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %if.end4.cleanup_crit_edge, label %if.end8

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  %pdev.i = getelementptr inbounds %struct.gpio_aggregator, ptr %call5, i32 0, i32 1
  %3 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pdev.i, align 4
  call void @platform_device_unregister(ptr noundef %4) #10
  %5 = ptrtoint ptr %call5 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %call5, align 4
  call void @gpiod_remove_lookup_table(ptr noundef %6) #10
  %7 = ptrtoint ptr %call5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %call5, align 4
  %dev_id.i = getelementptr inbounds %struct.gpiod_lookup_table, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %dev_id.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev_id.i, align 4
  call void @kfree(ptr noundef %10) #10
  %11 = ptrtoint ptr %call5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %call5, align 4
  call void @kfree(ptr noundef %12) #10
  call void @kfree(ptr noundef nonnull %call5) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end8 ], [ -22, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ], [ -2, %if.end4.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %id) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { nounwind allocsize(1) }
attributes #17 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !14, !15, !17, !18, !20, !22, !24, !25, !26, !27, !28, !30, !31, !33, !34, !36, !37, !39, !41, !42, !44, !46, !47, !49, !51, !52, !53, !54, !56, !57, !58, !60, !61}
!llvm.module.flags = !{!63, !64, !65, !66, !67, !68, !69, !70}
!llvm.ident = !{!71}

!0 = !{ptr @__initcall__kmod_gpio_aggregator__224_525_gpio_aggregator_init6, !1, !"__initcall__kmod_gpio_aggregator__224_525_gpio_aggregator_init6", i1 false, i1 false}
!1 = !{!"../drivers/gpio/gpio-aggregator.c", i32 525, i32 1}
!2 = !{ptr @__exitcall_gpio_aggregator_exit, !3, !"__exitcall_gpio_aggregator_exit", i1 false, i1 false}
!3 = !{!"../drivers/gpio/gpio-aggregator.c", i32 532, i32 1}
!4 = !{ptr @__UNIQUE_ID_author225, !5, !"__UNIQUE_ID_author225", i1 false, i1 false}
!5 = !{!"../drivers/gpio/gpio-aggregator.c", i32 534, i32 1}
!6 = !{ptr @__UNIQUE_ID_description226, !7, !"__UNIQUE_ID_description226", i1 false, i1 false}
!7 = !{!"../drivers/gpio/gpio-aggregator.c", i32 535, i32 1}
!8 = !{ptr @__UNIQUE_ID_file227, !9, !"__UNIQUE_ID_file227", i1 false, i1 false}
!9 = !{!"../drivers/gpio/gpio-aggregator.c", i32 536, i32 1}
!10 = !{ptr @__UNIQUE_ID_license228, !9, !"__UNIQUE_ID_license228", i1 false, i1 false}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/gpio/gpio-aggregator.c", i32 37, i32 8}
!13 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @gpio_aggregator_lock, !12, !"gpio_aggregator_lock", i1 false, i1 false}
!15 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/gpio/gpio-aggregator.c", i32 38, i32 8}
!17 = !{ptr @gpio_aggregator_idr, !16, !"gpio_aggregator_idr", i1 false, i1 false}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpio/gpio-aggregator.c", i32 515, i32 11}
!20 = !{ptr @gpio_aggregator_driver, !21, !"gpio_aggregator_driver", i1 false, i1 false}
!21 = !{!"../drivers/gpio/gpio-aggregator.c", i32 512, i32 31}
!22 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpio/gpio-aggregator.c", i32 431, i32 3}
!24 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @gpiochip_fwd_create.__UNIQUE_ID_ddebug223, !23, !"__UNIQUE_ID_ddebug223", i1 false, i1 false}
!28 = !{ptr @gpiochip_fwd_create.__key, !29, !"__key", i1 false, i1 false}
!29 = !{!"../drivers/gpio/gpio-aggregator.c", i32 456, i32 3}
!30 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @gpiochip_fwd_create.__key.9, !32, !"__key", i1 false, i1 false}
!32 = !{!"../drivers/gpio/gpio-aggregator.c", i32 458, i32 3}
!33 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @gpiochip_fwd_create.lock_key, !35, !"lock_key", i1 false, i1 false}
!35 = !{!"../drivers/gpio/gpio-aggregator.c", i32 460, i32 10}
!36 = !{ptr @gpiochip_fwd_create.request_key, !35, !"request_key", i1 false, i1 false}
!37 = !{ptr @gpio_aggregator_dt_ids, !38, !"gpio_aggregator_dt_ids", i1 false, i1 false}
!38 = !{!"../drivers/gpio/gpio-aggregator.c", i32 502, i32 34}
!39 = !{ptr @gpio_aggregator_groups, !40, !"gpio_aggregator_groups", i1 false, i1 false}
!40 = !{!"../drivers/gpio/gpio-aggregator.c", i32 219, i32 1}
!41 = !{ptr @gpio_aggregator_group, !40, !"gpio_aggregator_group", i1 false, i1 false}
!42 = !{ptr @gpio_aggregator_attrs, !43, !"gpio_aggregator_attrs", i1 false, i1 false}
!43 = !{!"../drivers/gpio/gpio-aggregator.c", i32 214, i32 26}
!44 = !{ptr @.str.11, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/gpio/gpio-aggregator.c", i32 178, i32 8}
!46 = !{ptr @driver_attr_new_device, !45, !"driver_attr_new_device", i1 false, i1 false}
!47 = !{ptr @.str.12, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/gpio/gpio-aggregator.c", i32 142, i32 48}
!49 = !{ptr @.str.13, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/gpio/gpio-aggregator.c", i32 89, i32 4}
!51 = !{ptr @.str.14, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @aggr_parse._entry, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @aggr_parse._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.16, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/gpio/gpio-aggregator.c", i32 103, i32 3}
!56 = !{ptr @aggr_parse._entry.15, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @aggr_parse._entry_ptr.17, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.18, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/gpio/gpio-aggregator.c", i32 212, i32 8}
!60 = !{ptr @driver_attr_delete_device, !59, !"driver_attr_delete_device", i1 false, i1 false}
!61 = !{ptr @.str.19, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/gpio/gpio-aggregator.c", i32 196, i32 27}
!63 = !{i32 1, !"wchar_size", i32 2}
!64 = !{i32 1, !"min_enum_size", i32 4}
!65 = !{i32 8, !"branch-target-enforcement", i32 0}
!66 = !{i32 8, !"sign-return-address", i32 0}
!67 = !{i32 8, !"sign-return-address-all", i32 0}
!68 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!69 = !{i32 7, !"uwtable", i32 1}
!70 = !{i32 7, !"frame-pointer", i32 2}
!71 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!72 = !{!"branch_weights", i32 1, i32 2000}
!73 = !{i64 2148887694, i64 2148887699, i64 2148887712, i64 2148887756, i64 2148887790, i64 2148887811}
!74 = !{i8 0, i8 2}
!75 = !{!"auto-init"}
